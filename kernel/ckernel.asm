; Disassembly of file: ckernel.o
; Tue Aug 13 18:16:35 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000024(d)
        call    _initBootInfo                           ; 0011 _ E8, 000025A3
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000024(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_357]                       ; 001E _ 0F B7. 05, 00000028(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000015C(d)
        movzx   eax, word [?_358]                       ; 002B _ 0F B7. 05, 0000002A(d)
        cwde                                            ; 0032 _ 98
        mov     dword [_ysize], eax                     ; 0033 _ A3, 00000160(d)
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
        call    _init_palette                           ; 014B _ E8, 00002533
        call    _init_keyboard                          ; 0150 _ E8, 00002A9C
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
        mov     ecx, dword [_ysize]                     ; 018F _ 8B. 0D, 00000160(d)
        mov     edx, dword [_xsize]                     ; 0195 _ 8B. 15, 0000015C(d)
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
        mov     edx, dword [_xsize]                     ; 01E0 _ 8B. 15, 0000015C(d)
        mov     eax, dword [_ysize]                     ; 01E6 _ A1, 00000160(d)
        imul    eax, edx                                ; 01EB _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EE _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F4 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F8 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01FB _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0200 _ A3, 00000164(d)
        mov     ebx, dword [_ysize]                     ; 0205 _ 8B. 1D, 00000160(d)
        mov     ecx, dword [_xsize]                     ; 020B _ 8B. 0D, 0000015C(d)
        mov     edx, dword [_buf_back]                  ; 0211 _ 8B. 15, 00000164(d)
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
        mov     ecx, dword [_ysize]                     ; 0265 _ 8B. 0D, 00000160(d)
        mov     edx, dword [_xsize]                     ; 026B _ 8B. 15, 0000015C(d)
        mov     eax, dword [_buf_back]                  ; 0271 _ A1, 00000164(d)
        mov     dword [esp+8H], ecx                     ; 0276 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 027A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027E _ 89. 04 24
        call    _init_screen8                           ; 0281 _ E8, 00001E6B
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000180(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00002685
        mov     edx, dword [_sht_back]                  ; 029A _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 02A0 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 02A5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B9 _ 89. 04 24
        call    _sheet_slide                            ; 02BC _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02C1 _ A1, 0000015C(d)
        sub     eax, 16                                 ; 02C6 _ 83. E8, 10
        mov     edx, eax                                ; 02C9 _ 89. C2
        shr     edx, 31                                 ; 02CB _ C1. EA, 1F
        add     eax, edx                                ; 02CE _ 01. D0
        sar     eax, 1                                  ; 02D0 _ D1. F8
        mov     dword [_mx], eax                        ; 02D2 _ A3, 00000154(d)
        mov     eax, dword [_ysize]                     ; 02D7 _ A1, 00000160(d)
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
        mov     dword [esp+4H], ?_328                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00002CE1
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
        call    _enable_mouse                           ; 038A _ E8, 0000289D
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2351], eax               ; 039C _ A3, 000002A4(d)
        mov     eax, dword [_task_a.2351]               ; 03A1 _ A1, 000002A4(d)
        mov     dword [?_359], eax                      ; 03A6 _ A3, 00000044(d)
        mov     eax, dword [_task_a.2351]               ; 03AB _ A1, 000002A4(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000294(d)
        mov     eax, dword [_task_a.2351]               ; 03B5 _ A1, 000002A4(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        call    _launch_console                         ; 03D2 _ E8, 000006F4
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
        jmp     ?_009                                   ; 043E _ E9, 00000380

?_002:  mov     dword [esp], _keyinfo                   ; 0443 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 044A _ E8, 00000000(rel)
        test    eax, eax                                ; 044F _ 85. C0
        je      ?_008                                   ; 0451 _ 0F 84, 0000033B
        call    _io_sti                                 ; 0457 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 045C _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 0463 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0468 _ 89. 45, C8
        mov     eax, dword [ebp-38H]                    ; 046B _ 8B. 45, C8
        mov     dword [esp], eax                        ; 046E _ 89. 04 24
        call    _transferScanCode                       ; 0471 _ E8, 00000518
        mov     eax, dword [_KEY_CONTROL]               ; 0476 _ A1, 00000118(d)
        cmp     dword [ebp-38H], eax                    ; 047B _ 39. 45, C8
        jnz     ?_003                                   ; 047E _ 75, 44
        mov     eax, dword [_key_shift]                 ; 0480 _ A1, 00000004(d)
        test    eax, eax                                ; 0485 _ 85. C0
        jz      ?_003                                   ; 0487 _ 74, 3B
        mov     eax, dword [_task_cons]                 ; 0489 _ A1, 00000290(d)
        mov     eax, dword [eax+34H]                    ; 048E _ 8B. 40, 34
        test    eax, eax                                ; 0491 _ 85. C0
        jz      ?_003                                   ; 0493 _ 74, 2F
        mov     dword [esp], ?_329                      ; 0495 _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 049C _ E8, 000014E8
        call    _io_cli                                 ; 04A1 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 04A6 _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 04AB _ 89. 45, B0
        mov     eax, _kill_process                      ; 04AE _ B8, 00000C9C(d)
        mov     edx, dword [_task_cons]                 ; 04B3 _ 8B. 15, 00000290(d)
        sub     eax, dword [ebp-50H]                    ; 04B9 _ 2B. 45, B0
        mov     dword [edx+4CH], eax                    ; 04BC _ 89. 42, 4C
        call    _io_sti                                 ; 04BF _ E8, 00000000(rel)
?_003:  cmp     dword [ebp-38H], 15                     ; 04C4 _ 83. 7D, C8, 0F
        jne     ?_006                                   ; 04C8 _ 0F 85, 0000019A
        mov     dword [ebp-18H], -1                     ; 04CE _ C7. 45, E8, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 04D5 _ 83. 7D, EC, 00
        jne     ?_004                                   ; 04D9 _ 0F 85, 00000089
        mov     dword [ebp-14H], 1                      ; 04DF _ C7. 45, EC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 04E6 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 04EC _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 04F1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_330                   ; 04F9 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 0501 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0505 _ 89. 04 24
        call    _make_wtitle8                           ; 0508 _ E8, 00002EBF
        mov     eax, dword [_shtctl]                    ; 050D _ A1, 00000284(d)
        mov     dword [esp+0CH], 1                      ; 0512 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_331                   ; 051A _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 0522 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0525 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0529 _ 89. 04 24
        call    _make_wtitle8                           ; 052C _ E8, 00002E9B
        mov     edx, dword [_shtMsgBox]                 ; 0531 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0537 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 053C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0544 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 054C _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 054F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0553 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0557 _ 89. 04 24
        call    _set_cursor                             ; 055A _ E8, 00000356
        mov     dword [ebp-18H], 87                     ; 055F _ C7. 45, E8, 00000057
        jmp     ?_005                                   ; 0566 _ EB, 71

?_004:  mov     dword [ebp-14H], 0                      ; 0568 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 056F _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0575 _ A1, 00000284(d)
        mov     dword [esp+0CH], 1                      ; 057A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_330                   ; 0582 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 058A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 058E _ 89. 04 24
        call    _make_wtitle8                           ; 0591 _ E8, 00002E36
        mov     eax, dword [_shtctl]                    ; 0596 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 059B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_331                   ; 05A3 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 05AB _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05AE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05B2 _ 89. 04 24
        call    _make_wtitle8                           ; 05B5 _ E8, 00002E12
        mov     eax, dword [_task_cons]                 ; 05BA _ A1, 00000290(d)
        add     eax, 16                                 ; 05BF _ 83. C0, 10
        mov     dword [esp+4H], 88                      ; 05C2 _ C7. 44 24, 04, 00000058
        mov     dword [esp], eax                        ; 05CA _ 89. 04 24
        call    _fifo8_put                              ; 05CD _ E8, 00000000(rel)
        mov     dword [ebp-18H], 88                     ; 05D2 _ C7. 45, E8, 00000058
?_005:  mov     eax, dword [_shtMsgBox]                 ; 05D9 _ A1, 00000280(d)
        mov     ecx, dword [eax+4H]                     ; 05DE _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 05E1 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 05E7 _ A1, 00000284(d)
        mov     dword [esp+14H], 21                     ; 05EC _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 05F4 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 05F8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0600 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0608 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 060C _ 89. 04 24
        call    _sheet_refresh                          ; 060F _ E8, 00000000(rel)
        mov     eax, dword [ebp-34H]                    ; 0614 _ 8B. 45, CC
        mov     edx, dword [eax+4H]                     ; 0617 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 061A _ A1, 00000284(d)
        mov     dword [esp+14H], 21                     ; 061F _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 0627 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 062B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0633 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-34H]                    ; 063B _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 063E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0642 _ 89. 04 24
        call    _sheet_refresh                          ; 0645 _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 064A _ 8B. 15, 00000290(d)
        mov     eax, dword [_task_a.2351]               ; 0650 _ A1, 000002A4(d)
        mov     ecx, dword [ebp-18H]                    ; 0655 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0658 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 065C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0660 _ 89. 04 24
        call    _send_message                           ; 0663 _ E8, 00000000(rel)
?_006:  cmp     dword [ebp-14H], 0                      ; 0668 _ 83. 7D, EC, 00
        jne     ?_007                                   ; 066C _ 0F 85, 000000D7
        mov     eax, dword [ebp-38H]                    ; 0672 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0675 _ 89. 04 24
        call    _transferScanCode                       ; 0678 _ E8, 00000311
        test    al, al                                  ; 067D _ 84. C0
        je      ?_009                                   ; 067F _ 0F 84, 0000013E
        cmp     dword [ebp-0CH], 143                    ; 0685 _ 81. 7D, F4, 0000008F
        jg      ?_009                                   ; 068C _ 0F 8F, 00000131
        mov     edx, dword [_shtMsgBox]                 ; 0692 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0698 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 069D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 06A5 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06AD _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06B0 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _set_cursor                             ; 06BB _ E8, 000001F5
        mov     eax, dword [ebp-38H]                    ; 06C0 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 06C3 _ 89. 04 24
        call    _transferScanCode                       ; 06C6 _ E8, 000002C3
        mov     byte [ebp-51H], al                      ; 06CB _ 88. 45, AF
        movzx   eax, byte [ebp-51H]                     ; 06CE _ 0F B6. 45, AF
        mov     byte [ebp-66H], al                      ; 06D2 _ 88. 45, 9A
        mov     byte [ebp-65H], 0                       ; 06D5 _ C6. 45, 9B, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06D9 _ 8B. 0D, 00000280(d)
        mov     edx, dword [_shtctl]                    ; 06DF _ 8B. 15, 00000284(d)
        lea     eax, [ebp-66H]                          ; 06E5 _ 8D. 45, 9A
        mov     dword [esp+14H], eax                    ; 06E8 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 06EC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06F4 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06FC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06FF _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0703 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0707 _ 89. 14 24
        call    _showString                             ; 070A _ E8, 00001ECB
        add     dword [ebp-0CH], 8                      ; 070F _ 83. 45, F4, 08
        mov     dword [ebp-48H], 1                      ; 0713 _ C7. 45, B8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 071A _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0720 _ A1, 00000284(d)
        mov     ecx, dword [ebp-10H]                    ; 0725 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0728 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 072C _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0734 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0737 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 073B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 073F _ 89. 04 24
        call    _set_cursor                             ; 0742 _ E8, 0000016E
        jmp     ?_009                                   ; 0747 _ EB, 7A

?_007:  mov     eax, dword [ebp-38H]                    ; 0749 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 074C _ 89. 04 24
        call    _isSpecialKey                           ; 074F _ E8, 000001E8
        test    eax, eax                                ; 0754 _ 85. C0
        jnz     ?_009                                   ; 0756 _ 75, 6B
        mov     eax, dword [ebp-38H]                    ; 0758 _ 8B. 45, C8
        movzx   eax, al                                 ; 075B _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 075E _ 8B. 15, 00000290(d)
        add     edx, 16                                 ; 0764 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0767 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 076B _ 89. 14 24
        call    _fifo8_put                              ; 076E _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0773 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 077A _ E8, 00000000(rel)
        test    eax, eax                                ; 077F _ 85. C0
        jnz     ?_009                                   ; 0781 _ 75, 40
        mov     eax, dword [_task_a.2351]               ; 0783 _ A1, 000002A4(d)
        mov     dword [esp], eax                        ; 0788 _ 89. 04 24
        call    _task_sleep                             ; 078B _ E8, 00000000(rel)
        jmp     ?_009                                   ; 0790 _ EB, 31

?_008:  mov     dword [esp], _mouseinfo                 ; 0792 _ C7. 04 24, 00000048(d)
        call    _fifo8_status                           ; 0799 _ E8, 00000000(rel)
        test    eax, eax                                ; 079E _ 85. C0
        jz      ?_009                                   ; 07A0 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 07A2 _ 8B. 0D, 0000028C(d)
        mov     edx, dword [_sht_back]                  ; 07A8 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 07AE _ A1, 00000284(d)
        mov     dword [esp+8H], ecx                     ; 07B3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07B7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07BB _ 89. 04 24
        call    _show_mouse_info                        ; 07BE _ E8, 00001D3E
?_009:  mov     dword [esp], _timerinfo                 ; 07C3 _ C7. 04 24, 00000130(d)
        call    _fifo8_status                           ; 07CA _ E8, 00000000(rel)
        test    eax, eax                                ; 07CF _ 85. C0
        je      ?_001                                   ; 07D1 _ 0F 84, FFFFFC34
        call    _io_sti                                 ; 07D7 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 07DC _ C7. 04 24, 00000130(d)
        call    _fifo8_get                              ; 07E3 _ E8, 00000000(rel)
        mov     dword [ebp-58H], eax                    ; 07E8 _ 89. 45, A8
        cmp     dword [ebp-58H], 0                      ; 07EB _ 83. 7D, A8, 00
        jz      ?_010                                   ; 07EF _ 74, 24
        mov     dword [esp+8H], 0                       ; 07F1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 07F9 _ C7. 44 24, 04, 00000130(d)
        mov     eax, dword [ebp-28H]                    ; 0801 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0804 _ 89. 04 24
        call    _timer_init                             ; 0807 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 080C _ C7. 45, F0, 00000000
        jmp     ?_011                                   ; 0813 _ EB, 22

?_010:  mov     dword [esp+8H], 1                       ; 0815 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 081D _ C7. 44 24, 04, 00000130(d)
        mov     eax, dword [ebp-28H]                    ; 0825 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0828 _ 89. 04 24
        call    _timer_init                             ; 082B _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0830 _ C7. 45, F0, 00000007
?_011:  mov     dword [esp+4H], 50                      ; 0837 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 083F _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0842 _ 89. 04 24
        call    _timer_settime                          ; 0845 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 084A _ 83. 7D, EC, 00
        jnz     ?_012                                   ; 084E _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 0850 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0856 _ A1, 00000284(d)
        mov     ecx, dword [ebp-10H]                    ; 085B _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 085E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0862 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 086A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 086D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0871 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0875 _ 89. 04 24
        call    _set_cursor                             ; 0878 _ E8, 00000038
        jmp     ?_001                                   ; 087D _ E9, FFFFFB89

?_012:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 0882 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0888 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 088D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0895 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 089D _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 08A0 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A8 _ 89. 04 24
        call    _set_cursor                             ; 08AB _ E8, 00000005
        jmp     ?_001                                   ; 08B0 _ E9, FFFFFB56

_set_cursor:; Function begin
        push    ebp                                     ; 08B5 _ 55
        mov     ebp, esp                                ; 08B6 _ 89. E5
        push    esi                                     ; 08B8 _ 56
        push    ebx                                     ; 08B9 _ 53
        sub     esp, 32                                 ; 08BA _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 08BD _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 08C0 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 08C3 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 08C6 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 08C9 _ 8B. 45, 18
        movzx   eax, al                                 ; 08CC _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 08CF _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 08D2 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 08D5 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 08D8 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 08DA _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 08DE _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 08E2 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 08E5 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 08E9 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 08EC _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 08F0 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 08F4 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 08F8 _ 89. 14 24
        call    _boxfill8                               ; 08FB _ E8, 00001E4E
        mov     eax, dword [ebp+14H]                    ; 0900 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 0903 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 0906 _ 8B. 45, 10
        add     eax, 8                                  ; 0909 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 090C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0910 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0914 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0917 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 091B _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 091E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0922 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0925 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0929 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 092C _ 89. 04 24
        call    _sheet_refresh                          ; 092F _ E8, 00000000(rel)
        nop                                             ; 0934 _ 90
        add     esp, 32                                 ; 0935 _ 83. C4, 20
        pop     ebx                                     ; 0938 _ 5B
        pop     esi                                     ; 0939 _ 5E
        pop     ebp                                     ; 093A _ 5D
        ret                                             ; 093B _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 093C _ 55
        mov     ebp, esp                                ; 093D _ 89. E5
        sub     esp, 24                                 ; 093F _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0942 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0945 _ 89. 04 24
        call    _transferScanCode                       ; 0948 _ E8, 00000041
        cmp     dword [ebp+8H], 58                      ; 094D _ 83. 7D, 08, 3A
        jz      ?_013                                   ; 0951 _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 0953 _ 83. 7D, 08, 1D
        jz      ?_013                                   ; 0957 _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0959 _ 81. 7D, 08, 000000BA
        jz      ?_013                                   ; 0960 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0962 _ 83. 7D, 08, 2A
        jz      ?_013                                   ; 0966 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0968 _ 83. 7D, 08, 36
        jz      ?_013                                   ; 096C _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 096E _ 81. 7D, 08, 000000AA
        jz      ?_013                                   ; 0975 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0977 _ 81. 7D, 08, 000000B6
        jnz     ?_014                                   ; 097E _ 75, 07
?_013:  mov     eax, 1                                  ; 0980 _ B8, 00000001
        jmp     ?_015                                   ; 0985 _ EB, 05

?_014:  mov     eax, 0                                  ; 0987 _ B8, 00000000
?_015:  leave                                           ; 098C _ C9
        ret                                             ; 098D _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 098E _ 55
        mov     ebp, esp                                ; 098F _ 89. E5
        sub     esp, 16                                 ; 0991 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0994 _ 83. 7D, 08, 2A
        jnz     ?_016                                   ; 0998 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 099A _ A1, 00000004(d)
        or      eax, 01H                                ; 099F _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 09A2 _ A3, 00000004(d)
?_016:  cmp     dword [ebp+8H], 54                      ; 09A7 _ 83. 7D, 08, 36
        jnz     ?_017                                   ; 09AB _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09AD _ A1, 00000004(d)
        or      eax, 02H                                ; 09B2 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 09B5 _ A3, 00000004(d)
?_017:  cmp     dword [ebp+8H], 170                     ; 09BA _ 81. 7D, 08, 000000AA
        jnz     ?_018                                   ; 09C1 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09C3 _ A1, 00000004(d)
        and     eax, 0FFFFFFFEH                         ; 09C8 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 09CB _ A3, 00000004(d)
?_018:  cmp     dword [ebp+8H], 182                     ; 09D0 _ 81. 7D, 08, 000000B6
        jnz     ?_019                                   ; 09D7 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09D9 _ A1, 00000004(d)
        and     eax, 0FFFFFFFDH                         ; 09DE _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 09E1 _ A3, 00000004(d)
?_019:  cmp     dword [ebp+8H], 58                      ; 09E6 _ 83. 7D, 08, 3A
        jnz     ?_021                                   ; 09EA _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 09EC _ A1, 00000008(d)
        test    eax, eax                                ; 09F1 _ 85. C0
        jnz     ?_020                                   ; 09F3 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 09F5 _ C7. 05, 00000008(d), 00000001
        jmp     ?_021                                   ; 09FF _ EB, 0A

?_020:  mov     dword [_caps_lock], 0                   ; 0A01 _ C7. 05, 00000008(d), 00000000
?_021:  cmp     dword [ebp+8H], 42                      ; 0A0B _ 83. 7D, 08, 2A
        jz      ?_022                                   ; 0A0F _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0A11 _ 83. 7D, 08, 36
        jz      ?_022                                   ; 0A15 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0A17 _ 81. 7D, 08, 000000AA
        jz      ?_022                                   ; 0A1E _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0A20 _ 81. 7D, 08, 000000B6
        jz      ?_022                                   ; 0A27 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0A29 _ 83. 7D, 08, 53
        jg      ?_022                                   ; 0A2D _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0A2F _ 83. 7D, 08, 3A
        jnz     ?_023                                   ; 0A33 _ 75, 0A
?_022:  mov     eax, 0                                  ; 0A35 _ B8, 00000000
        jmp     ?_028                                   ; 0A3A _ E9, 0000008A

?_023:  mov     byte [ebp-1H], 0                        ; 0A3F _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0A43 _ A1, 00000004(d)
        test    eax, eax                                ; 0A48 _ 85. C0
        jnz     ?_024                                   ; 0A4A _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0A4C _ 83. 7D, 08, 53
        jg      ?_024                                   ; 0A50 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0A52 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A55 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A5A _ 0F B6. 00
        test    al, al                                  ; 0A5D _ 84. C0
        jz      ?_024                                   ; 0A5F _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0A61 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A64 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A69 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A6C _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0A6F _ 80. 7D, FF, 40
        jle     ?_026                                   ; 0A73 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0A75 _ 80. 7D, FF, 5A
        jg      ?_026                                   ; 0A79 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0A7B _ A1, 00000008(d)
        test    eax, eax                                ; 0A80 _ 85. C0
        jnz     ?_026                                   ; 0A82 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0A84 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0A88 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0A8B _ 88. 45, FF
        jmp     ?_026                                   ; 0A8E _ EB, 34

?_024:  mov     eax, dword [_key_shift]                 ; 0A90 _ A1, 00000004(d)
        test    eax, eax                                ; 0A95 _ 85. C0
        jz      ?_025                                   ; 0A97 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0A99 _ 83. 7D, 08, 7F
        jg      ?_025                                   ; 0A9D _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0A9F _ 8B. 45, 08
        add     eax, _keytable1                         ; 0AA2 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AA7 _ 0F B6. 00
        test    al, al                                  ; 0AAA _ 84. C0
        jz      ?_025                                   ; 0AAC _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0AAE _ 8B. 45, 08
        add     eax, _keytable1                         ; 0AB1 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AB6 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AB9 _ 88. 45, FF
        jmp     ?_027                                   ; 0ABC _ EB, 07

?_025:  mov     byte [ebp-1H], 0                        ; 0ABE _ C6. 45, FF, 00
        jmp     ?_027                                   ; 0AC2 _ EB, 01

?_026:  nop                                             ; 0AC4 _ 90
?_027:  movzx   eax, byte [ebp-1H]                      ; 0AC5 _ 0F B6. 45, FF
?_028:  leave                                           ; 0AC9 _ C9
        ret                                             ; 0ACA _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0ACB _ 55
        mov     ebp, esp                                ; 0ACC _ 89. E5
        sub     esp, 56                                 ; 0ACE _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 0AD1 _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 0AD6 _ 89. 04 24
        call    _sheet_alloc                            ; 0AD9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0ADE _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0AE1 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0AE6 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0AEE _ 89. 04 24
        call    _memman_alloc_4k                        ; 0AF1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0AF6 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0AF9 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0B01 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0B09 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0B11 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0B14 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0B18 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B1B _ 89. 04 24
        call    _sheet_setbuf                           ; 0B1E _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0B23 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 0B28 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_331                   ; 0B30 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0B38 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0B3B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B3F _ 89. 04 24
        call    _make_window8                           ; 0B42 _ E8, 000025C0
        mov     dword [esp+14H], 0                      ; 0B47 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0B4F _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0B57 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B5F _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B67 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B6F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B72 _ 89. 04 24
        call    _make_textbox8                          ; 0B75 _ E8, 00002990
        call    _task_alloc                             ; 0B7A _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0B7F _ 89. 45, EC
        call    _get_addr_code32                        ; 0B82 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B87 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0B8A _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0B8D _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B97 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0B9A _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0BA4 _ 8B. 45, E8
        neg     eax                                     ; 0BA7 _ F7. D8
        add     eax, _console_task                      ; 0BA9 _ 05, 00001467(d)
        mov     edx, eax                                ; 0BAE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0BB0 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0BB3 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0BB6 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0BB9 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BC0 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0BC3 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0BCA _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0BCD _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0BD4 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0BD7 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0BE1 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0BE4 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BEE _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0BF1 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 0BFB _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0BFE _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 0C01 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 0C04 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0C07 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0C0A _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C0D _ 8B. 40, 64
        add     eax, 4                                  ; 0C10 _ 83. C0, 04
        mov     edx, eax                                ; 0C13 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0C15 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0C18 _ 89. 02
        mov     eax, dword [_memman]                    ; 0C1A _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0C1F _ 89. 04 24
        call    _memman_total                           ; 0C22 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0C27 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0C29 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C2C _ 8B. 40, 64
        add     eax, 8                                  ; 0C2F _ 83. C0, 08
        mov     dword [eax], edx                        ; 0C32 _ 89. 10
        mov     dword [esp+8H], 5                       ; 0C34 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0C3C _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0C44 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0C47 _ 89. 04 24
        call    _task_run                               ; 0C4A _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C4F _ A1, 00000284(d)
        mov     dword [esp+0CH], 4                      ; 0C54 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 0C5C _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 0C64 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C67 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6B _ 89. 04 24
        call    _sheet_slide                            ; 0C6E _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C73 _ A1, 00000284(d)
        mov     dword [esp+8H], 1                       ; 0C78 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 0C80 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C83 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C87 _ 89. 04 24
        call    _sheet_updown                           ; 0C8A _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 0C8F _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 0C92 _ A3, 00000290(d)
        mov     eax, dword [ebp-0CH]                    ; 0C97 _ 8B. 45, F4
        leave                                           ; 0C9A _ C9
        ret                                             ; 0C9B _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0C9C _ 55
        mov     ebp, esp                                ; 0C9D _ 89. E5
        sub     esp, 24                                 ; 0C9F _ 83. EC, 18
        mov     edx, dword [_g_Console]                 ; 0CA2 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 0CA8 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0CAD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CB1 _ 89. 04 24
        call    _cons_newline                           ; 0CB4 _ E8, 00001308
        mov     eax, dword [?_352]                      ; 0CB9 _ A1, 00000014(d)
        add     eax, 16                                 ; 0CBE _ 83. C0, 10
        mov     dword [?_352], eax                      ; 0CC1 _ A3, 00000014(d)
        mov     eax, dword [_task_cons]                 ; 0CC6 _ A1, 00000290(d)
        add     eax, 48                                 ; 0CCB _ 83. C0, 30
        mov     dword [esp], eax                        ; 0CCE _ 89. 04 24
        call    _asm_end_app                            ; 0CD1 _ E8, 00000000(rel)
        nop                                             ; 0CD6 _ 90
        leave                                           ; 0CD7 _ C9
        ret                                             ; 0CD8 _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0CD9 _ 55
        mov     ebp, esp                                ; 0CDA _ 89. E5
        push    ebx                                     ; 0CDC _ 53
        sub     esp, 68                                 ; 0CDD _ 83. EC, 44
        mov     dword [ebp-0CH], 78848                  ; 0CE0 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0CE7 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0CEC _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0CF4 _ 89. 04 24
        call    _memman_alloc                           ; 0CF7 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0CFC _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0CFF _ 8B. 45, E8
        add     eax, 12                                 ; 0D02 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0D05 _ C6. 00, 00
        jmp     ?_036                                   ; 0D08 _ E9, 0000012A

?_029:  mov     dword [ebp-10H], 0                      ; 0D0D _ C7. 45, F0, 00000000
        jmp     ?_031                                   ; 0D14 _ EB, 2A

?_030:  mov     edx, dword [ebp-0CH]                    ; 0D16 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D19 _ 8B. 45, F0
        add     eax, edx                                ; 0D1C _ 01. D0
        movzx   eax, byte [eax]                         ; 0D1E _ 0F B6. 00
        test    al, al                                  ; 0D21 _ 84. C0
        jz      ?_032                                   ; 0D23 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0D25 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D28 _ 8B. 45, F0
        add     eax, edx                                ; 0D2B _ 01. D0
        movzx   ecx, byte [eax]                         ; 0D2D _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0D30 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D33 _ 8B. 45, E8
        add     eax, edx                                ; 0D36 _ 01. D0
        mov     edx, ecx                                ; 0D38 _ 89. CA
        mov     byte [eax], dl                          ; 0D3A _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D3C _ 83. 45, F0, 01
?_031:  cmp     dword [ebp-10H], 7                      ; 0D40 _ 83. 7D, F0, 07
        jle     ?_030                                   ; 0D44 _ 7E, D0
        jmp     ?_033                                   ; 0D46 _ EB, 01

?_032:  nop                                             ; 0D48 _ 90
?_033:  mov     dword [ebp-14H], 0                      ; 0D49 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0D50 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D53 _ 8B. 45, E8
        add     eax, edx                                ; 0D56 _ 01. D0
        mov     byte [eax], 46                          ; 0D58 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0D5B _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0D5F _ C7. 45, EC, 00000000
        jmp     ?_035                                   ; 0D66 _ EB, 22

?_034:  mov     edx, dword [ebp-0CH]                    ; 0D68 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0D6B _ 8B. 45, EC
        add     eax, edx                                ; 0D6E _ 01. D0
        add     eax, 8                                  ; 0D70 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0D73 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0D76 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D79 _ 8B. 45, E8
        add     eax, edx                                ; 0D7C _ 01. D0
        mov     edx, ecx                                ; 0D7E _ 89. CA
        mov     byte [eax], dl                          ; 0D80 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D82 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0D86 _ 83. 45, EC, 01
?_035:  cmp     dword [ebp-14H], 2                      ; 0D8A _ 83. 7D, EC, 02
        jle     ?_034                                   ; 0D8E _ 7E, D8
        mov     ecx, dword [?_352]                      ; 0D90 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 0D96 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0D9C _ A1, 00000284(d)
        mov     ebx, dword [ebp-18H]                    ; 0DA1 _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0DA4 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0DA8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0DB0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0DB4 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0DBC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DC0 _ 89. 04 24
        call    _showString                             ; 0DC3 _ E8, 00001812
        mov     dword [ebp-1CH], 136                    ; 0DC8 _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0DCF _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0DD2 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0DD5 _ 89. 04 24
        call    _intToHexStr                            ; 0DD8 _ E8, 00001D5E
        mov     dword [ebp-20H], eax                    ; 0DDD _ 89. 45, E0
        mov     ecx, dword [?_352]                      ; 0DE0 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 0DE6 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0DEC _ A1, 00000284(d)
        mov     ebx, dword [ebp-20H]                    ; 0DF1 _ 8B. 5D, E0
        mov     dword [esp+14H], ebx                    ; 0DF4 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0DF8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0E00 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-1CH]                    ; 0E04 _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0E07 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0E0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E0F _ 89. 04 24
        call    _showString                             ; 0E12 _ E8, 000017C3
        mov     edx, dword [_g_Console]                 ; 0E17 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 0E1D _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0E22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E26 _ 89. 04 24
        call    _cons_newline                           ; 0E29 _ E8, 00001193
        mov     dword [?_352], eax                      ; 0E2E _ A3, 00000014(d)
        add     dword [ebp-0CH], 32                     ; 0E33 _ 83. 45, F4, 20
?_036:  mov     eax, dword [ebp-0CH]                    ; 0E37 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0E3A _ 0F B6. 00
        test    al, al                                  ; 0E3D _ 84. C0
        jne     ?_029                                   ; 0E3F _ 0F 85, FFFFFEC8
        mov     edx, dword [ebp-18H]                    ; 0E45 _ 8B. 55, E8
        mov     eax, dword [_memman]                    ; 0E48 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0E4D _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0E55 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E59 _ 89. 04 24
        call    _memman_free                            ; 0E5C _ E8, 00000000(rel)
        nop                                             ; 0E61 _ 90
        add     esp, 68                                 ; 0E62 _ 83. C4, 44
        pop     ebx                                     ; 0E65 _ 5B
        pop     ebp                                     ; 0E66 _ 5D
        ret                                             ; 0E67 _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0E68 _ 55
        mov     ebp, esp                                ; 0E69 _ 89. E5
        push    esi                                     ; 0E6B _ 56
        push    ebx                                     ; 0E6C _ 53
        sub     esp, 96                                 ; 0E6D _ 83. EC, 60
        mov     eax, dword [_memman]                    ; 0E70 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0E75 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0E7D _ 89. 04 24
        call    _memman_alloc                           ; 0E80 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0E85 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0E88 _ 8B. 45, DC
        add     eax, 12                                 ; 0E8B _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0E8E _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0E91 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0E98 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0E9F _ C7. 45, F0, 00000005
        jmp     ?_038                                   ; 0EA6 _ EB, 2C

?_037:  mov     edx, dword [ebp-10H]                    ; 0EA8 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0EAB _ 8B. 45, 08
        add     eax, edx                                ; 0EAE _ 01. D0
        movzx   eax, byte [eax]                         ; 0EB0 _ 0F B6. 00
        test    al, al                                  ; 0EB3 _ 84. C0
        jz      ?_039                                   ; 0EB5 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0EB7 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0EBA _ 8B. 45, 08
        add     eax, edx                                ; 0EBD _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0EBF _ 8B. 4D, F4
        mov     edx, dword [ebp-24H]                    ; 0EC2 _ 8B. 55, DC
        add     edx, ecx                                ; 0EC5 _ 01. CA
        movzx   eax, byte [eax]                         ; 0EC7 _ 0F B6. 00
        mov     byte [edx], al                          ; 0ECA _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0ECC _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0ED0 _ 83. 45, F0, 01
?_038:  cmp     dword [ebp-10H], 16                     ; 0ED4 _ 83. 7D, F0, 10
        jle     ?_037                                   ; 0ED8 _ 7E, CE
        jmp     ?_040                                   ; 0EDA _ EB, 01

?_039:  nop                                             ; 0EDC _ 90
?_040:  mov     edx, dword [ebp-0CH]                    ; 0EDD _ 8B. 55, F4
        mov     eax, dword [ebp-24H]                    ; 0EE0 _ 8B. 45, DC
        add     eax, edx                                ; 0EE3 _ 01. D0
        mov     byte [eax], 0                           ; 0EE5 _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 0EE8 _ C7. 45, EC, 00013400
        jmp     ?_055                                   ; 0EEF _ E9, 00000241

?_041:  mov     byte [ebp-2DH], 0                       ; 0EF4 _ C6. 45, D3, 00
        mov     dword [ebp-18H], 0                      ; 0EF8 _ C7. 45, E8, 00000000
        jmp     ?_043                                   ; 0EFF _ EB, 2A

?_042:  mov     edx, dword [ebp-14H]                    ; 0F01 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0F04 _ 8B. 45, E8
        add     eax, edx                                ; 0F07 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F09 _ 0F B6. 00
        test    al, al                                  ; 0F0C _ 84. C0
        jz      ?_044                                   ; 0F0E _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 0F10 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0F13 _ 8B. 45, E8
        add     eax, edx                                ; 0F16 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F18 _ 0F B6. 00
        mov     ecx, eax                                ; 0F1B _ 89. C1
        lea     eax, [ebp-39H]                          ; 0F1D _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F20 _ 8B. 55, E8
        add     eax, edx                                ; 0F23 _ 01. D0
        mov     byte [eax], cl                          ; 0F25 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0F27 _ 83. 45, E8, 01
?_043:  cmp     dword [ebp-18H], 7                      ; 0F2B _ 83. 7D, E8, 07
        jle     ?_042                                   ; 0F2F _ 7E, D0
        jmp     ?_045                                   ; 0F31 _ EB, 01

?_044:  nop                                             ; 0F33 _ 90
?_045:  mov     dword [ebp-1CH], 0                      ; 0F34 _ C7. 45, E4, 00000000
        lea     eax, [ebp-39H]                          ; 0F3B _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F3E _ 8B. 55, E8
        add     eax, edx                                ; 0F41 _ 01. D0
        mov     byte [eax], 46                          ; 0F43 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 0F46 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 0F4A _ C7. 45, E4, 00000000
        jmp     ?_047                                   ; 0F51 _ EB, 22

?_046:  mov     edx, dword [ebp-14H]                    ; 0F53 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 0F56 _ 8B. 45, E4
        add     eax, edx                                ; 0F59 _ 01. D0
        add     eax, 8                                  ; 0F5B _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 0F5E _ 0F B6. 00
        mov     ecx, eax                                ; 0F61 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0F63 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F66 _ 8B. 55, E8
        add     eax, edx                                ; 0F69 _ 01. D0
        mov     byte [eax], cl                          ; 0F6B _ 88. 08
        add     dword [ebp-18H], 1                      ; 0F6D _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 0F71 _ 83. 45, E4, 01
?_047:  cmp     dword [ebp-1CH], 2                      ; 0F75 _ 83. 7D, E4, 02
        jle     ?_046                                   ; 0F79 _ 7E, D8
        lea     eax, [ebp-39H]                          ; 0F7B _ 8D. 45, C7
        mov     dword [esp+4H], eax                     ; 0F7E _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0F82 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0F85 _ 89. 04 24
        call    _strcmp                                 ; 0F88 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 0F8D _ 83. F8, 01
        jne     ?_054                                   ; 0F90 _ 0F 85, 0000019B
        mov     dword [ebp-28H], 88064                  ; 0F96 _ C7. 45, D8, 00015800
        mov     eax, dword [ebp-14H]                    ; 0F9D _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 0FA0 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 0FA4 _ 0F B7. C0
        shl     eax, 9                                  ; 0FA7 _ C1. E0, 09
        add     dword [ebp-28H], eax                    ; 0FAA _ 01. 45, D8
        mov     eax, dword [ebp-14H]                    ; 0FAD _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 0FB0 _ 8B. 40, 1C
        mov     dword [ebp-2CH], eax                    ; 0FB3 _ 89. 45, D4
        mov     dword [ebp-20H], 0                      ; 0FB6 _ C7. 45, E0, 00000000
        mov     dword [?_351], 16                       ; 0FBD _ C7. 05, 00000010(d), 00000010
        mov     dword [ebp-20H], 0                      ; 0FC7 _ C7. 45, E0, 00000000
        jmp     ?_053                                   ; 0FCE _ E9, 0000014F

?_048:  mov     edx, dword [ebp-20H]                    ; 0FD3 _ 8B. 55, E0
        mov     eax, dword [ebp-28H]                    ; 0FD6 _ 8B. 45, D8
        add     eax, edx                                ; 0FD9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0FDB _ 0F B6. 00
        mov     byte [ebp-3BH], al                      ; 0FDE _ 88. 45, C5
        mov     byte [ebp-3AH], 0                       ; 0FE1 _ C6. 45, C6, 00
        movzx   eax, byte [ebp-3BH]                     ; 0FE5 _ 0F B6. 45, C5
        cmp     al, 9                                   ; 0FE9 _ 3C, 09
        jnz     ?_050                                   ; 0FEB _ 75, 7C
?_049:  mov     ebx, dword [?_352]                      ; 0FED _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_351]                      ; 0FF3 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0FF9 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0FFF _ A1, 00000284(d)
        mov     dword [esp+14H], ?_332                  ; 1004 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 100C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1014 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1018 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 101C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1020 _ 89. 04 24
        call    _showString                             ; 1023 _ E8, 000015B2
        mov     eax, dword [?_351]                      ; 1028 _ A1, 00000010(d)
        add     eax, 8                                  ; 102D _ 83. C0, 08
        mov     dword [?_351], eax                      ; 1030 _ A3, 00000010(d)
        mov     eax, dword [?_351]                      ; 1035 _ A1, 00000010(d)
        cmp     eax, 248                                ; 103A _ 3D, 000000F8
        jnz     ?_049                                   ; 103F _ 75, AC
        mov     dword [?_351], 8                        ; 1041 _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 104B _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 1051 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1056 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 105A _ 89. 04 24
        call    _cons_newline                           ; 105D _ E8, 00000F5F
        mov     dword [?_352], eax                      ; 1062 _ A3, 00000014(d)
        jmp     ?_049                                   ; 1067 _ EB, 84

?_050:  movzx   eax, byte [ebp-3BH]                     ; 1069 _ 0F B6. 45, C5
        cmp     al, 10                                  ; 106D _ 3C, 0A
        jnz     ?_051                                   ; 106F _ 75, 2B
        mov     dword [?_351], 8                        ; 1071 _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 107B _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 1081 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1086 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 108A _ 89. 04 24
        call    _cons_newline                           ; 108D _ E8, 00000F2F
        mov     dword [?_352], eax                      ; 1092 _ A3, 00000014(d)
        jmp     ?_052                                   ; 1097 _ E9, 00000082

?_051:  movzx   eax, byte [ebp-3BH]                     ; 109C _ 0F B6. 45, C5
        cmp     al, 13                                  ; 10A0 _ 3C, 0D
        jz      ?_052                                   ; 10A2 _ 74, 7A
        mov     esi, dword [?_352]                      ; 10A4 _ 8B. 35, 00000014(d)
        mov     ebx, dword [?_351]                      ; 10AA _ 8B. 1D, 00000010(d)
        mov     ecx, dword [_g_Console]                 ; 10B0 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_shtctl]                    ; 10B6 _ 8B. 15, 00000284(d)
        lea     eax, [ebp-3BH]                          ; 10BC _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 10BF _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 10C3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 10CB _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 10CF _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 10D3 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 10D7 _ 89. 14 24
        call    _showString                             ; 10DA _ E8, 000014FB
        mov     eax, dword [?_351]                      ; 10DF _ A1, 00000010(d)
        add     eax, 8                                  ; 10E4 _ 83. C0, 08
        mov     dword [?_351], eax                      ; 10E7 _ A3, 00000010(d)
        mov     eax, dword [?_351]                      ; 10EC _ A1, 00000010(d)
        cmp     eax, 248                                ; 10F1 _ 3D, 000000F8
        jnz     ?_052                                   ; 10F6 _ 75, 26
        mov     dword [?_351], 16                       ; 10F8 _ C7. 05, 00000010(d), 00000010
        mov     edx, dword [_g_Console]                 ; 1102 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 1108 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 110D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1111 _ 89. 04 24
        call    _cons_newline                           ; 1114 _ E8, 00000EA8
        mov     dword [?_352], eax                      ; 1119 _ A3, 00000014(d)
?_052:  add     dword [ebp-20H], 1                      ; 111E _ 83. 45, E0, 01
?_053:  mov     eax, dword [ebp-20H]                    ; 1122 _ 8B. 45, E0
        cmp     eax, dword [ebp-2CH]                    ; 1125 _ 3B. 45, D4
        jl      ?_048                                   ; 1128 _ 0F 8C, FFFFFEA5
        nop                                             ; 112E _ 90
        jmp     ?_056                                   ; 112F _ EB, 12

?_054:  add     dword [ebp-14H], 32                     ; 1131 _ 83. 45, EC, 20
?_055:  mov     eax, dword [ebp-14H]                    ; 1135 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1138 _ 0F B6. 00
        test    al, al                                  ; 113B _ 84. C0
        jne     ?_041                                   ; 113D _ 0F 85, FFFFFDB1
?_056:  mov     edx, dword [_g_Console]                 ; 1143 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 1149 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 114E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1152 _ 89. 04 24
        call    _cons_newline                           ; 1155 _ E8, 00000E67
        mov     dword [?_352], eax                      ; 115A _ A3, 00000014(d)
        mov     edx, dword [ebp-24H]                    ; 115F _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 1162 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1167 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 116F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1173 _ 89. 04 24
        call    _memman_free                            ; 1176 _ E8, 00000000(rel)
        mov     dword [?_351], 16                       ; 117B _ C7. 05, 00000010(d), 00000010
        nop                                             ; 1185 _ 90
        add     esp, 96                                 ; 1186 _ 83. C4, 60
        pop     ebx                                     ; 1189 _ 5B
        pop     esi                                     ; 118A _ 5E
        pop     ebp                                     ; 118B _ 5D
        ret                                             ; 118C _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 118D _ 55
        mov     ebp, esp                                ; 118E _ 89. E5
        push    ebx                                     ; 1190 _ 53
        sub     esp, 52                                 ; 1191 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1194 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 1197 _ 8D. 90, 000003FF
        test    eax, eax                                ; 119D _ 85. C0
        cmovs   eax, edx                                ; 119F _ 0F 48. C2
        sar     eax, 10                                 ; 11A2 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 11A5 _ 89. 04 24
        call    _intToHexStr                            ; 11A8 _ E8, 0000198E
        mov     dword [ebp-0CH], eax                    ; 11AD _ 89. 45, F4
        mov     ecx, dword [?_352]                      ; 11B0 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 11B6 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 11BC _ A1, 00000284(d)
        mov     dword [esp+14H], ?_333                  ; 11C1 _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 11C9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11D1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 11D5 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 11DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11E1 _ 89. 04 24
        call    _showString                             ; 11E4 _ E8, 000013F1
        mov     ecx, dword [?_352]                      ; 11E9 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 11EF _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 11F5 _ A1, 00000284(d)
        mov     ebx, dword [ebp-0CH]                    ; 11FA _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 11FD _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1201 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1209 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 120D _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1215 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1219 _ 89. 04 24
        call    _showString                             ; 121C _ E8, 000013B9
        mov     ecx, dword [?_352]                      ; 1221 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 1227 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 122D _ A1, 00000284(d)
        mov     dword [esp+14H], ?_334                  ; 1232 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 123A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1242 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1246 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 124E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1252 _ 89. 04 24
        call    _showString                             ; 1255 _ E8, 00001380
        mov     edx, dword [_g_Console]                 ; 125A _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_352]                      ; 1260 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1265 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1269 _ 89. 04 24
        call    _cons_newline                           ; 126C _ E8, 00000D50
        mov     dword [?_352], eax                      ; 1271 _ A3, 00000014(d)
        nop                                             ; 1276 _ 90
        add     esp, 52                                 ; 1277 _ 83. C4, 34
        pop     ebx                                     ; 127A _ 5B
        pop     ebp                                     ; 127B _ 5D
        ret                                             ; 127C _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 127D _ 55
        mov     ebp, esp                                ; 127E _ 89. E5
        sub     esp, 56                                 ; 1280 _ 83. EC, 38
        mov     dword [ebp-0CH], 8                      ; 1283 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 128A _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 1291 _ C7. 45, F0, 0000001C
        jmp     ?_060                                   ; 1298 _ EB, 37

?_057:  mov     dword [ebp-0CH], 8                      ; 129A _ C7. 45, F4, 00000008
        jmp     ?_059                                   ; 12A1 _ EB, 21

?_058:  mov     eax, dword [_g_Console]                 ; 12A3 _ A1, 0000000C(d)
        mov     edx, dword [eax]                        ; 12A8 _ 8B. 10
        mov     eax, dword [_g_Console]                 ; 12AA _ A1, 0000000C(d)
        mov     eax, dword [eax+4H]                     ; 12AF _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 12B2 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 12B6 _ 8B. 4D, F4
        add     eax, ecx                                ; 12B9 _ 01. C8
        add     eax, edx                                ; 12BB _ 01. D0
        mov     byte [eax], 0                           ; 12BD _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 12C0 _ 83. 45, F4, 01
?_059:  cmp     dword [ebp-0CH], 247                    ; 12C4 _ 81. 7D, F4, 000000F7
        jle     ?_058                                   ; 12CB _ 7E, D6
        add     dword [ebp-10H], 1                      ; 12CD _ 83. 45, F0, 01
?_060:  cmp     dword [ebp-10H], 155                    ; 12D1 _ 81. 7D, F0, 0000009B
        jle     ?_057                                   ; 12D8 _ 7E, C0
        mov     edx, dword [_g_Console]                 ; 12DA _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 12E0 _ A1, 00000284(d)
        mov     dword [esp+14H], 156                    ; 12E5 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 12ED _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 12F5 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 12FD _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1305 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1309 _ 89. 04 24
        call    _sheet_refresh                          ; 130C _ E8, 00000000(rel)
        mov     dword [?_352], 28                       ; 1311 _ C7. 05, 00000014(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 131B _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1321 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_335                  ; 1326 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 132E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1336 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 133E _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1346 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 134A _ 89. 04 24
        call    _showString                             ; 134D _ E8, 00001288
        nop                                             ; 1352 _ 90
        leave                                           ; 1353 _ C9
        ret                                             ; 1354 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 1355 _ 55
        mov     ebp, esp                                ; 1356 _ 89. E5
        sub     esp, 56                                 ; 1358 _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 135B _ C7. 44 24, 04, 00000298(d)
        mov     dword [esp], ?_336                      ; 1363 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 136A _ E8, 00002435
        call    _get_addr_gdt                           ; 136F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1374 _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 1377 _ A1, 00000298(d)
        mov     edx, eax                                ; 137C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 137E _ 8B. 45, F4
        add     eax, 88                                 ; 1381 _ 83. C0, 58
        mov     dword [esp+0CH], 16634                  ; 1384 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 138C _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1390 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 1398 _ 89. 04 24
        call    _set_segmdesc                           ; 139B _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 13A0 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 13A5 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 13AD _ 89. 04 24
        call    _memman_alloc_4k                        ; 13B0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 13B5 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 13B8 _ 8B. 45, F0
        mov     dword [?_361], eax                      ; 13BB _ A3, 0000029C(d)
        mov     edx, dword [ebp-10H]                    ; 13C0 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 13C3 _ 8B. 45, F4
        add     eax, 96                                 ; 13C6 _ 83. C0, 60
        mov     dword [esp+0CH], 16626                  ; 13C9 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 13D1 _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 13D5 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 13DD _ 89. 04 24
        call    _set_segmdesc                           ; 13E0 _ E8, 00000000(rel)
        call    _task_now                               ; 13E5 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 13EA _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 13ED _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 13F0 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-14H]                    ; 13F7 _ 8B. 45, EC
        add     eax, 48                                 ; 13FA _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 13FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 96                     ; 1401 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 1409 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 1411 _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 1419 _ C7. 04 24, 00000000
        call    _start_app                              ; 1420 _ E8, 00000000(rel)
        mov     eax, dword [?_362]                      ; 1425 _ A1, 000002A0(d)
        mov     ecx, eax                                ; 142A _ 89. C1
        mov     eax, dword [_buffer]                    ; 142C _ A1, 00000298(d)
        mov     edx, eax                                ; 1431 _ 89. C2
        mov     eax, dword [_memman]                    ; 1433 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 1438 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 143C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1440 _ 89. 04 24
        call    _memman_free_4k                         ; 1443 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 1448 _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 144B _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 1450 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1458 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 145C _ 89. 04 24
        call    _memman_free_4k                         ; 145F _ E8, 00000000(rel)
        nop                                             ; 1464 _ 90
        leave                                           ; 1465 _ C9
        ret                                             ; 1466 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 1467 _ 55
        mov     ebp, esp                                ; 1468 _ 89. E5
        push    ebx                                     ; 146A _ 53
        sub     esp, 84                                 ; 146B _ 83. EC, 54
        call    _task_now                               ; 146E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1473 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1476 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 147D _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1484 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 148B _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 1490 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1498 _ 89. 04 24
        call    _memman_alloc                           ; 149B _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 14A0 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 14A3 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 14A8 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 14B0 _ 89. 04 24
        call    _memman_alloc                           ; 14B3 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 14B8 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 14BB _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 14BE _ A3, 0000000C(d)
        mov     dword [?_351], 16                       ; 14C3 _ C7. 05, 00000010(d), 00000010
        mov     dword [?_352], 28                       ; 14CD _ C7. 05, 00000014(d), 0000001C
        mov     dword [?_353], -1                       ; 14D7 _ C7. 05, 00000018(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 14E1 _ 8B. 45, F0
        add     eax, 16                                 ; 14E4 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 14E7 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 14EA _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 14EE _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 14F1 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 14F5 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 14FD _ 89. 04 24
        call    _fifo8_init                             ; 1500 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 1505 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 150A _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 150D _ 8B. 45, F0
        add     eax, 16                                 ; 1510 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1513 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 151B _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 151F _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1522 _ 89. 04 24
        call    _timer_init                             ; 1525 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 152A _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1532 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1535 _ 89. 04 24
        call    _timer_settime                          ; 1538 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 153D _ 8B. 45, DC
        mov     dword [?_356], eax                      ; 1540 _ A3, 00000020(d)
        mov     eax, dword [_shtctl]                    ; 1545 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_335                  ; 154A _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1552 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 155A _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1562 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 156A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 156D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1571 _ 89. 04 24
        call    _showString                             ; 1574 _ E8, 00001061
        mov     dword [ebp-28H], 0                      ; 1579 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 1580 _ C7. 45, D4, 00013400
        mov     dword [ebp-30H], 0                      ; 1587 _ C7. 45, D0, 00000000
?_061:  call    _io_cli                                 ; 158E _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1593 _ 8B. 45, F0
        add     eax, 16                                 ; 1596 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1599 _ 89. 04 24
        call    _fifo8_status                           ; 159C _ E8, 00000000(rel)
        test    eax, eax                                ; 15A1 _ 85. C0
        jnz     ?_062                                   ; 15A3 _ 75, 07
        call    _io_sti                                 ; 15A5 _ E8, 00000000(rel)
        jmp     ?_061                                   ; 15AA _ EB, E2
; _console_task End of function

?_062:  ; Local function
        call    _io_sti                                 ; 15AC _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 15B1 _ 8B. 45, F0
        add     eax, 16                                 ; 15B4 _ 83. C0, 10
        mov     dword [esp], eax                        ; 15B7 _ 89. 04 24
        call    _fifo8_get                              ; 15BA _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 15BF _ 89. 45, CC
        cmp     dword [ebp-30H], 1                      ; 15C2 _ 83. 7D, D0, 01
        jnz     ?_063                                   ; 15C6 _ 75, 37
        mov     edx, dword [_sht_back]                  ; 15C8 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 15CE _ A1, 00000284(d)
        mov     dword [esp+14H], ?_337                  ; 15D3 _ C7. 44 24, 14, 0000003A(d)
        mov     dword [esp+10H], 0                      ; 15DB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 232                    ; 15E3 _ C7. 44 24, 0C, 000000E8
        mov     dword [esp+8H], 0                       ; 15EB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 15F3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15F7 _ 89. 04 24
        call    _showString                             ; 15FA _ E8, 00000FDB
?_063:  cmp     dword [ebp-34H], 1                      ; 15FF _ 83. 7D, CC, 01
        jg      ?_066                                   ; 1603 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1605 _ 83. 7D, F4, 00
        js      ?_066                                   ; 1609 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 160B _ 83. 7D, CC, 00
        jz      ?_064                                   ; 160F _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1611 _ 8B. 45, F0
        add     eax, 16                                 ; 1614 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1617 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 161F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1623 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1626 _ 89. 04 24
        call    _timer_init                             ; 1629 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 162E _ C7. 45, F4, 00000007
        jmp     ?_065                                   ; 1635 _ EB, 24

?_064:  mov     eax, dword [ebp-10H]                    ; 1637 _ 8B. 45, F0
        add     eax, 16                                 ; 163A _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 163D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1645 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1649 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 164C _ 89. 04 24
        call    _timer_init                             ; 164F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1654 _ C7. 45, F4, 00000000
?_065:  mov     dword [esp+4H], 50                      ; 165B _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1663 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1666 _ 89. 04 24
        call    _timer_settime                          ; 1669 _ E8, 00000000(rel)
        jmp     ?_076                                   ; 166E _ E9, 000002D8

?_066:  cmp     dword [ebp-34H], 87                     ; 1673 _ 83. 7D, CC, 57
        jnz     ?_067                                   ; 1677 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1679 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1680 _ 8B. 45, F0
        add     eax, 16                                 ; 1683 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1686 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 168E _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1692 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1695 _ 89. 04 24
        call    _timer_init                             ; 1698 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 169D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 16A5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 16A8 _ 89. 04 24
        call    _timer_settime                          ; 16AB _ E8, 00000000(rel)
        jmp     ?_076                                   ; 16B0 _ E9, 00000296

?_067:  cmp     dword [ebp-34H], 88                     ; 16B5 _ 83. 7D, CC, 58
        jnz     ?_068                                   ; 16B9 _ 75, 59
        mov     ecx, dword [?_352]                      ; 16BB _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_351]                      ; 16C1 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 16C7 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 16CC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 16D4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 16D8 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 16DC _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16DF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16E3 _ 89. 04 24
        call    _set_cursor                             ; 16E6 _ E8, FFFFF1CA
        mov     dword [ebp-0CH], -1                     ; 16EB _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 16F2 _ A1, 00000294(d)
        mov     dword [esp+8H], 0                       ; 16F7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 16FF _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1707 _ 89. 04 24
        call    _task_run                               ; 170A _ E8, 00000000(rel)
        jmp     ?_076                                   ; 170F _ E9, 00000237

?_068:  cmp     dword [ebp-34H], 28                     ; 1714 _ 83. 7D, CC, 1C
        jne     ?_074                                   ; 1718 _ 0F 85, 00000141
        mov     ecx, dword [?_352]                      ; 171E _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_351]                      ; 1724 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 172A _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 172F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1737 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 173B _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 173F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1742 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1746 _ 89. 04 24
        call    _set_cursor                             ; 1749 _ E8, FFFFF167
        mov     eax, dword [?_351]                      ; 174E _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1753 _ 8D. 50, 07
        test    eax, eax                                ; 1756 _ 85. C0
        cmovs   eax, edx                                ; 1758 _ 0F 48. C2
        sar     eax, 3                                  ; 175B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 175E _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1761 _ 8B. 45, E0
        add     eax, edx                                ; 1764 _ 01. D0
        mov     byte [eax], 0                           ; 1766 _ C6. 00, 00
        mov     eax, dword [?_352]                      ; 1769 _ A1, 00000014(d)
        mov     edx, dword [ebp+8H]                     ; 176E _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1771 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1775 _ 89. 04 24
        call    _cons_newline                           ; 1778 _ E8, 00000844
        mov     dword [?_352], eax                      ; 177D _ A3, 00000014(d)
        mov     dword [esp+4H], ?_338                   ; 1782 _ C7. 44 24, 04, 0000004B(d)
        mov     eax, dword [ebp-20H]                    ; 178A _ 8B. 45, E0
        mov     dword [esp], eax                        ; 178D _ 89. 04 24
        call    _strcmp                                 ; 1790 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1795 _ 83. F8, 01
        jnz     ?_069                                   ; 1798 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 179A _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 179D _ 89. 04 24
        call    _cmd_mem                                ; 17A0 _ E8, FFFFF9E8
        jmp     ?_073                                   ; 17A5 _ E9, 000000A6

?_069:  mov     dword [esp+4H], ?_339                   ; 17AA _ C7. 44 24, 04, 0000004F(d)
        mov     eax, dword [ebp-20H]                    ; 17B2 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17B5 _ 89. 04 24
        call    _strcmp                                 ; 17B8 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17BD _ 83. F8, 01
        jnz     ?_070                                   ; 17C0 _ 75, 0A
        call    _cmd_cls                                ; 17C2 _ E8, FFFFFAB6
        jmp     ?_073                                   ; 17C7 _ E9, 00000084

?_070:  mov     dword [esp+4H], ?_340                   ; 17CC _ C7. 44 24, 04, 00000053(d)
        mov     eax, dword [ebp-20H]                    ; 17D4 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17D7 _ 89. 04 24
        call    _strcmp                                 ; 17DA _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17DF _ 83. F8, 01
        jnz     ?_071                                   ; 17E2 _ 75, 11
        mov     dword [_g_hlt], 1                       ; 17E4 _ C7. 05, 00000000(d), 00000001
        call    _cmd_hlt                                ; 17EE _ E8, FFFFFB62
        jmp     ?_073                                   ; 17F3 _ EB, 5B

?_071:  mov     dword [esp+4H], ?_341                   ; 17F5 _ C7. 44 24, 04, 00000057(d)
        mov     eax, dword [ebp-20H]                    ; 17FD _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1800 _ 89. 04 24
        call    _strcmp                                 ; 1803 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1808 _ 83. F8, 01
        jnz     ?_072                                   ; 180B _ 75, 07
        call    _cmd_dir                                ; 180D _ E8, FFFFF4C7
        jmp     ?_073                                   ; 1812 _ EB, 3C

?_072:  mov     eax, dword [ebp-20H]                    ; 1814 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1817 _ 0F B6. 00
        cmp     al, 116                                 ; 181A _ 3C, 74
        jnz     ?_073                                   ; 181C _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 181E _ 8B. 45, E0
        add     eax, 1                                  ; 1821 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1824 _ 0F B6. 00
        cmp     al, 121                                 ; 1827 _ 3C, 79
        jnz     ?_073                                   ; 1829 _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 182B _ 8B. 45, E0
        add     eax, 2                                  ; 182E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1831 _ 0F B6. 00
        cmp     al, 112                                 ; 1834 _ 3C, 70
        jnz     ?_073                                   ; 1836 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1838 _ 8B. 45, E0
        add     eax, 3                                  ; 183B _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 183E _ 0F B6. 00
        cmp     al, 101                                 ; 1841 _ 3C, 65
        jnz     ?_073                                   ; 1843 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 1845 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1848 _ 89. 04 24
        call    _cmd_type                               ; 184B _ E8, FFFFF618
?_073:  mov     dword [?_351], 16                       ; 1850 _ C7. 05, 00000010(d), 00000010
        jmp     ?_076                                   ; 185A _ E9, 000000EC

?_074:  cmp     dword [ebp-34H], 14                     ; 185F _ 83. 7D, CC, 0E
        jnz     ?_075                                   ; 1863 _ 75, 79
        mov     eax, dword [?_351]                      ; 1865 _ A1, 00000010(d)
        cmp     eax, 8                                  ; 186A _ 83. F8, 08
        jle     ?_075                                   ; 186D _ 7E, 6F
        mov     ecx, dword [?_352]                      ; 186F _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_351]                      ; 1875 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 187B _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 1880 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1888 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 188C _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1890 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1893 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1897 _ 89. 04 24
        call    _set_cursor                             ; 189A _ E8, FFFFF016
        mov     eax, dword [?_351]                      ; 189F _ A1, 00000010(d)
        sub     eax, 8                                  ; 18A4 _ 83. E8, 08
        mov     dword [?_351], eax                      ; 18A7 _ A3, 00000010(d)
        mov     ecx, dword [?_352]                      ; 18AC _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_351]                      ; 18B2 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 18B8 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 18BD _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 18C5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18C9 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18CD _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18D4 _ 89. 04 24
        call    _set_cursor                             ; 18D7 _ E8, FFFFEFD9
        jmp     ?_076                                   ; 18DC _ EB, 6D

?_075:  mov     eax, dword [ebp-34H]                    ; 18DE _ 8B. 45, CC
        mov     dword [esp], eax                        ; 18E1 _ 89. 04 24
        call    _transferScanCode                       ; 18E4 _ E8, FFFFF0A5
        mov     byte [ebp-35H], al                      ; 18E9 _ 88. 45, CB
        mov     eax, dword [?_351]                      ; 18EC _ A1, 00000010(d)
        cmp     eax, 239                                ; 18F1 _ 3D, 000000EF
        jg      ?_076                                   ; 18F6 _ 7F, 53
        cmp     byte [ebp-35H], 0                       ; 18F8 _ 80. 7D, CB, 00
        jz      ?_076                                   ; 18FC _ 74, 4D
        mov     eax, dword [?_351]                      ; 18FE _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1903 _ 8D. 50, 07
        test    eax, eax                                ; 1906 _ 85. C0
        cmovs   eax, edx                                ; 1908 _ 0F 48. C2
        sar     eax, 3                                  ; 190B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 190E _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1911 _ 8B. 45, E0
        add     edx, eax                                ; 1914 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1916 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 191A _ 88. 02
        mov     eax, dword [?_351]                      ; 191C _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1921 _ 8D. 50, 07
        test    eax, eax                                ; 1924 _ 85. C0
        cmovs   eax, edx                                ; 1926 _ 0F 48. C2
        sar     eax, 3                                  ; 1929 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 192C _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 192F _ 8B. 45, E0
        add     eax, edx                                ; 1932 _ 01. D0
        mov     byte [eax], 0                           ; 1934 _ C6. 00, 00
        movsx   eax, byte [ebp-35H]                     ; 1937 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 193B _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1943 _ 89. 04 24
        call    _cons_putchar                           ; 1946 _ E8, 000005CF
?_076:  cmp     dword [ebp-0CH], 0                      ; 194B _ 83. 7D, F4, 00
        js      ?_061                                   ; 194F _ 0F 88, FFFFFC39
        mov     ecx, dword [?_352]                      ; 1955 _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_351]                      ; 195B _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 1961 _ A1, 00000284(d)
        mov     ebx, dword [ebp-0CH]                    ; 1966 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 1969 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 196D _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1971 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1975 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1978 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 197C _ 89. 04 24
        call    _set_cursor                             ; 197F _ E8, FFFFEF31
        jmp     ?_061                                   ; 1984 _ E9, FFFFFC05

_cons_putstr:; Function begin
        push    ebp                                     ; 1989 _ 55
        mov     ebp, esp                                ; 198A _ 89. E5
        sub     esp, 24                                 ; 198C _ 83. EC, 18
        jmp     ?_078                                   ; 198F _ EB, 1D

?_077:  mov     eax, dword [ebp+8H]                     ; 1991 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1994 _ 0F B6. 00
        movsx   eax, al                                 ; 1997 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 199A _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 19A2 _ 89. 04 24
        call    _cons_putchar                           ; 19A5 _ E8, 00000570
        add     dword [ebp+8H], 1                       ; 19AA _ 83. 45, 08, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 19AE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19B1 _ 0F B6. 00
        test    al, al                                  ; 19B4 _ 84. C0
        jnz     ?_077                                   ; 19B6 _ 75, D9
        nop                                             ; 19B8 _ 90
        leave                                           ; 19B9 _ C9
        ret                                             ; 19BA _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 19BB _ 55
        mov     ebp, esp                                ; 19BC _ 89. E5
        sub     esp, 72                                 ; 19BE _ 83. EC, 48
        mov     eax, dword [ebp+14H]                    ; 19C1 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 19C4 _ 2B. 45, 0C
        mov     dword [ebp-1CH], eax                    ; 19C7 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 19CA _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 19CD _ 2B. 45, 10
        mov     dword [ebp-20H], eax                    ; 19D0 _ 89. 45, E0
        mov     eax, dword [ebp+0CH]                    ; 19D3 _ 8B. 45, 0C
        shl     eax, 10                                 ; 19D6 _ C1. E0, 0A
        mov     dword [ebp-10H], eax                    ; 19D9 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 19DC _ 8B. 45, 10
        shl     eax, 10                                 ; 19DF _ C1. E0, 0A
        mov     dword [ebp-14H], eax                    ; 19E2 _ 89. 45, EC
        cmp     dword [ebp-1CH], 0                      ; 19E5 _ 83. 7D, E4, 00
        jns     ?_079                                   ; 19E9 _ 79, 03
        neg     dword [ebp-1CH]                         ; 19EB _ F7. 5D, E4
?_079:  cmp     dword [ebp-20H], 0                      ; 19EE _ 83. 7D, E0, 00
        jns     ?_080                                   ; 19F2 _ 79, 03
        neg     dword [ebp-20H]                         ; 19F4 _ F7. 5D, E0
?_080:  mov     eax, dword [ebp-1CH]                    ; 19F7 _ 8B. 45, E4
        cmp     eax, dword [ebp-20H]                    ; 19FA _ 3B. 45, E0
        jl      ?_084                                   ; 19FD _ 7C, 53
        mov     eax, dword [ebp-1CH]                    ; 19FF _ 8B. 45, E4
        add     eax, 1                                  ; 1A02 _ 83. C0, 01
        mov     dword [ebp-18H], eax                    ; 1A05 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1A08 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1A0B _ 3B. 45, 14
        jle     ?_081                                   ; 1A0E _ 7E, 09
        mov     dword [ebp-1CH], -1024                  ; 1A10 _ C7. 45, E4, FFFFFC00
        jmp     ?_082                                   ; 1A17 _ EB, 07

?_081:  mov     dword [ebp-1CH], 1024                   ; 1A19 _ C7. 45, E4, 00000400
?_082:  mov     eax, dword [ebp+10H]                    ; 1A20 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A23 _ 3B. 45, 18
        jg      ?_083                                   ; 1A26 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1A28 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A2B _ 2B. 45, 10
        add     eax, 1                                  ; 1A2E _ 83. C0, 01
        shl     eax, 10                                 ; 1A31 _ C1. E0, 0A
        cdq                                             ; 1A34 _ 99
        idiv    dword [ebp-18H]                         ; 1A35 _ F7. 7D, E8
        mov     dword [ebp-20H], eax                    ; 1A38 _ 89. 45, E0
        jmp     ?_088                                   ; 1A3B _ EB, 66

?_083:  mov     eax, dword [ebp+18H]                    ; 1A3D _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A40 _ 2B. 45, 10
        sub     eax, 1                                  ; 1A43 _ 83. E8, 01
        shl     eax, 10                                 ; 1A46 _ C1. E0, 0A
        cdq                                             ; 1A49 _ 99
        idiv    dword [ebp-18H]                         ; 1A4A _ F7. 7D, E8
        mov     dword [ebp-20H], eax                    ; 1A4D _ 89. 45, E0
        jmp     ?_088                                   ; 1A50 _ EB, 51

?_084:  mov     eax, dword [ebp-20H]                    ; 1A52 _ 8B. 45, E0
        add     eax, 1                                  ; 1A55 _ 83. C0, 01
        mov     dword [ebp-18H], eax                    ; 1A58 _ 89. 45, E8
        mov     eax, dword [ebp+10H]                    ; 1A5B _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A5E _ 3B. 45, 18
        jle     ?_085                                   ; 1A61 _ 7E, 09
        mov     dword [ebp-20H], -1024                  ; 1A63 _ C7. 45, E0, FFFFFC00
        jmp     ?_086                                   ; 1A6A _ EB, 07

?_085:  mov     dword [ebp-20H], 1024                   ; 1A6C _ C7. 45, E0, 00000400
?_086:  mov     eax, dword [ebp+0CH]                    ; 1A73 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1A76 _ 3B. 45, 14
        jg      ?_087                                   ; 1A79 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1A7B _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1A7E _ 2B. 45, 0C
        add     eax, 1                                  ; 1A81 _ 83. C0, 01
        shl     eax, 10                                 ; 1A84 _ C1. E0, 0A
        cdq                                             ; 1A87 _ 99
        idiv    dword [ebp-18H]                         ; 1A88 _ F7. 7D, E8
        mov     dword [ebp-1CH], eax                    ; 1A8B _ 89. 45, E4
        jmp     ?_088                                   ; 1A8E _ EB, 13

?_087:  mov     eax, dword [ebp+14H]                    ; 1A90 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1A93 _ 2B. 45, 0C
        sub     eax, 1                                  ; 1A96 _ 83. E8, 01
        shl     eax, 10                                 ; 1A99 _ C1. E0, 0A
        cdq                                             ; 1A9C _ 99
        idiv    dword [ebp-18H]                         ; 1A9D _ F7. 7D, E8
        mov     dword [ebp-1CH], eax                    ; 1AA0 _ 89. 45, E4
?_088:  mov     dword [ebp-0CH], 0                      ; 1AA3 _ C7. 45, F4, 00000000
        jmp     ?_090                                   ; 1AAA _ EB, 35

?_089:  mov     eax, dword [ebp+8H]                     ; 1AAC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1AAF _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1AB1 _ 8B. 45, EC
        sar     eax, 10                                 ; 1AB4 _ C1. F8, 0A
        mov     ecx, eax                                ; 1AB7 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 1AB9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1ABC _ 8B. 40, 04
        imul    eax, ecx                                ; 1ABF _ 0F AF. C1
        mov     ecx, dword [ebp-10H]                    ; 1AC2 _ 8B. 4D, F0
        sar     ecx, 10                                 ; 1AC5 _ C1. F9, 0A
        add     eax, ecx                                ; 1AC8 _ 01. C8
        add     eax, edx                                ; 1ACA _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 1ACC _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 1ACF _ 88. 10
        mov     eax, dword [ebp-1CH]                    ; 1AD1 _ 8B. 45, E4
        add     dword [ebp-10H], eax                    ; 1AD4 _ 01. 45, F0
        mov     eax, dword [ebp-20H]                    ; 1AD7 _ 8B. 45, E0
        add     dword [ebp-14H], eax                    ; 1ADA _ 01. 45, EC
        add     dword [ebp-0CH], 1                      ; 1ADD _ 83. 45, F4, 01
?_090:  mov     eax, dword [ebp-0CH]                    ; 1AE1 _ 8B. 45, F4
        cmp     eax, dword [ebp-18H]                    ; 1AE4 _ 3B. 45, E8
        jl      ?_089                                   ; 1AE7 _ 7C, C3
        mov     edx, dword [_buf_back]                  ; 1AE9 _ 8B. 15, 00000164(d)
        mov     eax, dword [_shtctl]                    ; 1AEF _ A1, 00000284(d)
        mov     dword [esp+14H], 102                    ; 1AF4 _ C7. 44 24, 14, 00000066
        mov     dword [esp+10H], 7                      ; 1AFC _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 200                    ; 1B04 _ C7. 44 24, 0C, 000000C8
        mov     dword [esp+8H], 100                     ; 1B0C _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 1B14 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B18 _ 89. 04 24
        call    _showString                             ; 1B1B _ E8, 00000ABA
        nop                                             ; 1B20 _ 90
        leave                                           ; 1B21 _ C9
        ret                                             ; 1B22 _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 1B23 _ 55
        mov     ebp, esp                                ; 1B24 _ 89. E5
        sub     esp, 40                                 ; 1B26 _ 83. EC, 28
        mov     eax, dword [?_356]                      ; 1B29 _ A1, 00000020(d)
        mov     dword [ebp-0CH], eax                    ; 1B2E _ 89. 45, F4
?_091:  mov     eax, dword [ebp+8H]                     ; 1B31 _ 8B. 45, 08
        add     eax, 16                                 ; 1B34 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B37 _ 89. 04 24
        call    _fifo8_status                           ; 1B3A _ E8, 00000000(rel)
        test    eax, eax                                ; 1B3F _ 85. C0
        jnz     ?_092                                   ; 1B41 _ 75, 22
        cmp     dword [ebp+0CH], 0                      ; 1B43 _ 83. 7D, 0C, 00
        jne     ?_095                                   ; 1B47 _ 0F 85, 00000088
        call    _io_sti                                 ; 1B4D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1B52 _ 8B. 45, 10
        add     eax, 28                                 ; 1B55 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 1B58 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 1B5E _ B8, 00000000
        jmp     ?_096                                   ; 1B63 _ EB, 76

?_092:  mov     eax, dword [ebp+8H]                     ; 1B65 _ 8B. 45, 08
        add     eax, 16                                 ; 1B68 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B6B _ 89. 04 24
        call    _fifo8_get                              ; 1B6E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1B73 _ 89. 45, F0
        cmp     dword [ebp-10H], 1                      ; 1B76 _ 83. 7D, F0, 01
        jg      ?_093                                   ; 1B7A _ 7F, 32
        mov     eax, dword [ebp+8H]                     ; 1B7C _ 8B. 45, 08
        add     eax, 16                                 ; 1B7F _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1B82 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1B8A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1B8E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1B91 _ 89. 04 24
        call    _timer_init                             ; 1B94 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1B99 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-0CH]                    ; 1BA1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BA4 _ 89. 04 24
        call    _timer_settime                          ; 1BA7 _ E8, 00000000(rel)
        jmp     ?_091                                   ; 1BAC _ EB, 83

?_093:  cmp     dword [ebp-10H], 2                      ; 1BAE _ 83. 7D, F0, 02
        jnz     ?_094                                   ; 1BB2 _ 75, 0F
        mov     dword [?_353], 7                        ; 1BB4 _ C7. 05, 00000018(d), 00000007
        jmp     ?_091                                   ; 1BBE _ E9, FFFFFF6E

?_094:  mov     eax, dword [ebp+10H]                    ; 1BC3 _ 8B. 45, 10
        add     eax, 28                                 ; 1BC6 _ 83. C0, 1C
        mov     edx, dword [ebp-10H]                    ; 1BC9 _ 8B. 55, F0
        mov     dword [eax], edx                        ; 1BCC _ 89. 10
        mov     eax, 0                                  ; 1BCE _ B8, 00000000
        jmp     ?_096                                   ; 1BD3 _ EB, 06

?_095:  nop                                             ; 1BD5 _ 90
        jmp     ?_091                                   ; 1BD6 _ E9, FFFFFF56
; _handle_keyboard End of function

?_096:  ; Local function
        leave                                           ; 1BDB _ C9
        ret                                             ; 1BDC _ C3

_kernel_api:; Function begin
        push    ebp                                     ; 1BDD _ 55
        mov     ebp, esp                                ; 1BDE _ 89. E5
        push    esi                                     ; 1BE0 _ 56
        push    ebx                                     ; 1BE1 _ 53
        sub     esp, 48                                 ; 1BE2 _ 83. EC, 30
        call    _task_now                               ; 1BE5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1BEA _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 1BED _ 8D. 45, 24
        add     eax, 4                                  ; 1BF0 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 1BF3 _ 89. 45, F0
        cmp     dword [ebp+1CH], 1                      ; 1BF6 _ 83. 7D, 1C, 01
        jnz     ?_097                                   ; 1BFA _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 1BFC _ 8B. 45, 24
        movsx   eax, al                                 ; 1BFF _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1C02 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1C0A _ 89. 04 24
        call    _cons_putchar                           ; 1C0D _ E8, 00000308
        jmp     ?_107                                   ; 1C12 _ E9, 000002F7

?_097:  cmp     dword [ebp+1CH], 2                      ; 1C17 _ 83. 7D, 1C, 02
        jnz     ?_098                                   ; 1C1B _ 75, 18
        mov     edx, dword [_buffer]                    ; 1C1D _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+18H]                    ; 1C23 _ 8B. 45, 18
        add     eax, edx                                ; 1C26 _ 01. D0
        mov     dword [esp], eax                        ; 1C28 _ 89. 04 24
        call    _cons_putstr                            ; 1C2B _ E8, FFFFFD59
        jmp     ?_107                                   ; 1C30 _ E9, 000002D9

?_098:  cmp     dword [ebp+1CH], 4                      ; 1C35 _ 83. 7D, 1C, 04
        jnz     ?_099                                   ; 1C39 _ 75, 17
        mov     eax, dword [ebp-0CH]                    ; 1C3B _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 1C3E _ C7. 40, 34, 00000000
        mov     eax, dword [_task_cons]                 ; 1C45 _ A1, 00000290(d)
        add     eax, 48                                 ; 1C4A _ 83. C0, 30
        jmp     ?_108                                   ; 1C4D _ E9, 000002C1

?_099:  cmp     dword [ebp+1CH], 5                      ; 1C52 _ 83. 7D, 1C, 05
        jne     ?_100                                   ; 1C56 _ 0F 85, 000000BA
        mov     eax, dword [_shtctl]                    ; 1C5C _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 1C61 _ 89. 04 24
        call    _sheet_alloc                            ; 1C64 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1C69 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 1C6C _ 8B. 55, 24
        mov     ecx, dword [?_361]                      ; 1C6F _ 8B. 0D, 0000029C(d)
        mov     eax, dword [ebp+18H]                    ; 1C75 _ 8B. 45, 18
        add     eax, ecx                                ; 1C78 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1C7A _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1C7E _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1C81 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1C85 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1C88 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C8C _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 1C90 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 1C93 _ 89. 04 24
        call    _sheet_setbuf                           ; 1C96 _ E8, 00000000(rel)
        mov     edx, dword [_buffer]                    ; 1C9B _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+20H]                    ; 1CA1 _ 8B. 45, 20
        add     edx, eax                                ; 1CA4 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1CA6 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 1CAB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 1CB3 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1CB7 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1CBA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CBE _ 89. 04 24
        call    _make_window8                           ; 1CC1 _ E8, 00001441
        mov     eax, dword [_shtctl]                    ; 1CC6 _ A1, 00000284(d)
        mov     dword [esp+0CH], 50                     ; 1CCB _ C7. 44 24, 0C, 00000032
        mov     dword [esp+8H], 100                     ; 1CD3 _ C7. 44 24, 08, 00000064
        mov     edx, dword [ebp-14H]                    ; 1CDB _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1CDE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CE2 _ 89. 04 24
        call    _sheet_slide                            ; 1CE5 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1CEA _ A1, 00000284(d)
        mov     dword [esp+8H], 3                       ; 1CEF _ C7. 44 24, 08, 00000003
        mov     edx, dword [ebp-14H]                    ; 1CF7 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1CFA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CFE _ 89. 04 24
        call    _sheet_updown                           ; 1D01 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D06 _ 8B. 45, F0
        add     eax, 28                                 ; 1D09 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 1D0C _ 8B. 55, EC
        mov     dword [eax], edx                        ; 1D0F _ 89. 10
        jmp     ?_107                                   ; 1D11 _ E9, 000001F8

?_100:  cmp     dword [ebp+1CH], 6                      ; 1D16 _ 83. 7D, 1C, 06
        jne     ?_101                                   ; 1D1A _ 0F 85, 00000087
        mov     eax, dword [ebp+18H]                    ; 1D20 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1D23 _ 89. 45, EC
        mov     edx, dword [_buffer]                    ; 1D26 _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+10H]                    ; 1D2C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1D2F _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 1D32 _ 8B. 45, 24
        movsx   eax, al                                 ; 1D35 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 1D38 _ 8B. 15, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1D3E _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 1D42 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 1D46 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 1D49 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D4D _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1D50 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 1D54 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 1D57 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1D5B _ 89. 14 24
        call    _showString                             ; 1D5E _ E8, 00000877
        mov     eax, dword [ebp+8H]                     ; 1D63 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 1D66 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 1D69 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 1D6C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D73 _ 8B. 45, 0C
        add     edx, eax                                ; 1D76 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1D78 _ A1, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1D7D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D81 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1D85 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1D88 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1D8C _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1D8F _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1D93 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1D96 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D9A _ 89. 04 24
        call    _sheet_refresh                          ; 1D9D _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1DA2 _ E9, 00000167

?_101:  cmp     dword [ebp+1CH], 7                      ; 1DA7 _ 83. 7D, 1C, 07
        jnz     ?_102                                   ; 1DAB _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 1DAD _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1DB0 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 1DB3 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 1DB6 _ 8B. 45, 10
        movzx   eax, al                                 ; 1DB9 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 1DBC _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 1DBF _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 1DC2 _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 1DC5 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 1DC7 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 1DCA _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 1DCE _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 1DD1 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 1DD5 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 1DD8 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1DDC _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 1DE0 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1DE4 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1DE8 _ 89. 14 24
        call    _boxfill8                               ; 1DEB _ E8, 0000095E
        mov     eax, dword [ebp+8H]                     ; 1DF0 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 1DF3 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1DF6 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 1DF9 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 1DFC _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1DFF _ A1, 00000284(d)
        mov     dword [esp+14H], ebx                    ; 1E04 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 1E08 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1E0C _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1E0F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E13 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1E17 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1E1A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E1E _ 89. 04 24
        call    _sheet_refresh                          ; 1E21 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1E26 _ E9, 000000E3

?_102:  cmp     dword [ebp+1CH], 11                     ; 1E2B _ 83. 7D, 1C, 0B
        jnz     ?_103                                   ; 1E2F _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 1E31 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1E34 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 1E37 _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 1E3A _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 1E3D _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1E3F _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1E42 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 1E45 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 1E49 _ 8B. 4D, 0C
        add     eax, ecx                                ; 1E4C _ 01. C8
        add     eax, edx                                ; 1E4E _ 01. D0
        mov     edx, ebx                                ; 1E50 _ 89. DA
        mov     byte [eax], dl                          ; 1E52 _ 88. 10
        jmp     ?_107                                   ; 1E54 _ E9, 000000B5

?_103:  cmp     dword [ebp+1CH], 12                     ; 1E59 _ 83. 7D, 1C, 0C
        jnz     ?_104                                   ; 1E5D _ 75, 38
        mov     eax, dword [ebp+18H]                    ; 1E5F _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1E62 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 1E65 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1E68 _ A1, 00000284(d)
        mov     ecx, dword [ebp+8H]                     ; 1E6D _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 1E70 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 1E74 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 1E77 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1E7B _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1E7E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E82 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1E86 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1E89 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E8D _ 89. 04 24
        call    _sheet_refresh                          ; 1E90 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1E95 _ EB, 77

?_104:  cmp     dword [ebp+1CH], 13                     ; 1E97 _ 83. 7D, 1C, 0D
        jnz     ?_105                                   ; 1E9B _ 75, 36
        mov     eax, dword [ebp+18H]                    ; 1E9D _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1EA0 _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 1EA3 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 1EA6 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1EA9 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 1EAD _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 1EB0 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 1EB4 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 1EB7 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 1EBB _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 1EBE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1EC2 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 1EC6 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 1EC9 _ 89. 04 24
        call    _api_linewin                            ; 1ECC _ E8, FFFFFAEA
        jmp     ?_107                                   ; 1ED1 _ EB, 3B

?_105:  cmp     dword [ebp+1CH], 14                     ; 1ED3 _ 83. 7D, 1C, 0E
        jnz     ?_106                                   ; 1ED7 _ 75, 16
        mov     edx, dword [ebp+18H]                    ; 1ED9 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 1EDC _ A1, 00000284(d)
        mov     dword [esp+4H], edx                     ; 1EE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EE5 _ 89. 04 24
        call    _sheet_free                             ; 1EE8 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1EED _ EB, 1F

?_106:  cmp     dword [ebp+1CH], 15                     ; 1EEF _ 83. 7D, 1C, 0F
        jnz     ?_107                                   ; 1EF3 _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 1EF5 _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 1EF8 _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 1EFB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1EFF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1F03 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1F06 _ 89. 04 24
        call    _handle_keyboard                        ; 1F09 _ E8, FFFFFC15
?_107:  mov     eax, 0                                  ; 1F0E _ B8, 00000000
?_108:  add     esp, 48                                 ; 1F13 _ 83. C4, 30
        pop     ebx                                     ; 1F16 _ 5B
        pop     esi                                     ; 1F17 _ 5E
        pop     ebp                                     ; 1F18 _ 5D
        ret                                             ; 1F19 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 1F1A _ 55
        mov     ebp, esp                                ; 1F1B _ 89. E5
        push    ebx                                     ; 1F1D _ 53
        sub     esp, 52                                 ; 1F1E _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1F21 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1F24 _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1F27 _ 88. 45, F4
        mov     eax, edx                                ; 1F2A _ 89. D0
        mov     byte [ebp-10H], al                      ; 1F2C _ 88. 45, F0
        mov     ebx, dword [?_352]                      ; 1F2F _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_351]                      ; 1F35 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1F3B _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1F41 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 1F46 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 1F4E _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1F52 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1F56 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F5A _ 89. 04 24
        call    _set_cursor                             ; 1F5D _ E8, FFFFE953
        movzx   eax, byte [ebp-0CH]                     ; 1F62 _ 0F B6. 45, F4
        mov     byte [?_354], al                        ; 1F66 _ A2, 0000001C(d)
        mov     byte [?_355], 0                         ; 1F6B _ C6. 05, 0000001D(d), 00
        mov     ebx, dword [?_352]                      ; 1F72 _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_351]                      ; 1F78 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1F7E _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1F84 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_354                  ; 1F89 _ C7. 44 24, 14, 0000001C(d)
        mov     dword [esp+10H], 7                      ; 1F91 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1F99 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1F9D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1FA1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FA5 _ 89. 04 24
        call    _showString                             ; 1FA8 _ E8, 0000062D
        mov     eax, dword [?_351]                      ; 1FAD _ A1, 00000010(d)
        add     eax, 8                                  ; 1FB2 _ 83. C0, 08
        mov     dword [?_351], eax                      ; 1FB5 _ A3, 00000010(d)
        nop                                             ; 1FBA _ 90
        add     esp, 52                                 ; 1FBB _ 83. C4, 34
        pop     ebx                                     ; 1FBE _ 5B
        pop     ebp                                     ; 1FBF _ 5D
        ret                                             ; 1FC0 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 1FC1 _ 55
        mov     ebp, esp                                ; 1FC2 _ 89. E5
        push    ebx                                     ; 1FC4 _ 53
        sub     esp, 52                                 ; 1FC5 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 1FC8 _ 81. 7D, 08, 0000008B
        jg      ?_109                                   ; 1FCF _ 7F, 09
        add     dword [ebp+8H], 16                      ; 1FD1 _ 83. 45, 08, 10
        jmp     ?_118                                   ; 1FD5 _ E9, 000000DB

?_109:  mov     dword [ebp-10H], 28                     ; 1FDA _ C7. 45, F0, 0000001C
        jmp     ?_113                                   ; 1FE1 _ EB, 50

?_110:  mov     dword [ebp-0CH], 8                      ; 1FE3 _ C7. 45, F4, 00000008
        jmp     ?_112                                   ; 1FEA _ EB, 3A

?_111:  mov     eax, dword [ebp+0CH]                    ; 1FEC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1FEF _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 1FF1 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 1FF4 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 1FF7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FFA _ 8B. 40, 04
        imul    eax, ecx                                ; 1FFD _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2000 _ 8B. 4D, F4
        add     eax, ecx                                ; 2003 _ 01. C8
        add     eax, edx                                ; 2005 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2007 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 200A _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 200C _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 200F _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2012 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2016 _ 8B. 5D, F4
        add     edx, ebx                                ; 2019 _ 01. DA
        add     edx, ecx                                ; 201B _ 01. CA
        movzx   eax, byte [eax]                         ; 201D _ 0F B6. 00
        mov     byte [edx], al                          ; 2020 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2022 _ 83. 45, F4, 01
?_112:  cmp     dword [ebp-0CH], 247                    ; 2026 _ 81. 7D, F4, 000000F7
        jle     ?_111                                   ; 202D _ 7E, BD
        add     dword [ebp-10H], 1                      ; 202F _ 83. 45, F0, 01
?_113:  cmp     dword [ebp-10H], 139                    ; 2033 _ 81. 7D, F0, 0000008B
        jle     ?_110                                   ; 203A _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 203C _ C7. 45, F0, 0000008C
        jmp     ?_117                                   ; 2043 _ EB, 33

?_114:  mov     dword [ebp-0CH], 8                      ; 2045 _ C7. 45, F4, 00000008
        jmp     ?_116                                   ; 204C _ EB, 1D

?_115:  mov     eax, dword [ebp+0CH]                    ; 204E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2051 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2053 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2056 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2059 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 205D _ 8B. 4D, F4
        add     eax, ecx                                ; 2060 _ 01. C8
        add     eax, edx                                ; 2062 _ 01. D0
        mov     byte [eax], 0                           ; 2064 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2067 _ 83. 45, F4, 01
?_116:  cmp     dword [ebp-0CH], 247                    ; 206B _ 81. 7D, F4, 000000F7
        jle     ?_115                                   ; 2072 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2074 _ 83. 45, F0, 01
?_117:  cmp     dword [ebp-10H], 155                    ; 2078 _ 81. 7D, F0, 0000009B
        jle     ?_114                                   ; 207F _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2081 _ A1, 00000284(d)
        mov     dword [esp+14H], 156                    ; 2086 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 208E _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2096 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 209E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 20A6 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 20A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20AD _ 89. 04 24
        call    _sheet_refresh                          ; 20B0 _ E8, 00000000(rel)
?_118:  mov     eax, dword [_shtctl]                    ; 20B5 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_335                  ; 20BA _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 20C2 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 20CA _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 20CD _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 20D1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 20D9 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 20DC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20E0 _ 89. 04 24
        call    _showString                             ; 20E3 _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 20E8 _ 8B. 45, 08
        add     esp, 52                                 ; 20EB _ 83. C4, 34
        pop     ebx                                     ; 20EE _ 5B
        pop     ebp                                     ; 20EF _ 5D
        ret                                             ; 20F0 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 20F1 _ 55
        mov     ebp, esp                                ; 20F2 _ 89. E5
        push    ebx                                     ; 20F4 _ 53
        sub     esp, 36                                 ; 20F5 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 20F8 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 20FB _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 20FE _ 8B. 45, 0C
        sub     eax, 1                                  ; 2101 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2104 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2108 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 210C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2114 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 211C _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2124 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2127 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 212B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 212E _ 89. 04 24
        call    _boxfill8                               ; 2131 _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 2136 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2139 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 213C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 213F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2142 _ 8B. 45, 10
        sub     eax, 28                                 ; 2145 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2148 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 214C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2150 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2154 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 215C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2164 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2167 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 216B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 216E _ 89. 04 24
        call    _boxfill8                               ; 2171 _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 2176 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2179 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 217C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 217F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2182 _ 8B. 45, 10
        sub     eax, 27                                 ; 2185 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2188 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 218C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2190 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2194 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 219C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 21A4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 21A7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 21AB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 21AE _ 89. 04 24
        call    _boxfill8                               ; 21B1 _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 21B6 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 21B9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 21BC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 21BF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 21C2 _ 8B. 45, 10
        sub     eax, 26                                 ; 21C5 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 21C8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 21CC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 21D0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 21D4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 21DC _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 21E4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 21E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 21EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 21EE _ 89. 04 24
        call    _boxfill8                               ; 21F1 _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 21F6 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 21F9 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 21FC _ 8B. 45, 10
        sub     eax, 24                                 ; 21FF _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2202 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2206 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 220E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2212 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 221A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2222 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2225 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2229 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 222C _ 89. 04 24
        call    _boxfill8                               ; 222F _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 2234 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2237 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 223A _ 8B. 45, 10
        sub     eax, 24                                 ; 223D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2240 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2244 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 224C _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2250 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2258 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2260 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2263 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2267 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 226A _ 89. 04 24
        call    _boxfill8                               ; 226D _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 2272 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2275 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2278 _ 8B. 45, 10
        sub     eax, 4                                  ; 227B _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 227E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2282 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 228A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 228E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2296 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 229E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22A8 _ 89. 04 24
        call    _boxfill8                               ; 22AB _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 22B0 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 22B3 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 22B6 _ 8B. 45, 10
        sub     eax, 23                                 ; 22B9 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 22BC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 22C0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 22C8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 22CC _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 22D4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 22DC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22DF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22E6 _ 89. 04 24
        call    _boxfill8                               ; 22E9 _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 22EE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 22F1 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 22F4 _ 8B. 45, 10
        sub     eax, 3                                  ; 22F7 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 22FA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 22FE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2306 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 230A _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2312 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 231A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 231D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2321 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2324 _ 89. 04 24
        call    _boxfill8                               ; 2327 _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 232C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 232F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2332 _ 8B. 45, 10
        sub     eax, 24                                 ; 2335 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2338 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 233C _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2344 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2348 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2350 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2358 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 235B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 235F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2362 _ 89. 04 24
        call    _boxfill8                               ; 2365 _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 236A _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 236D _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2370 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2373 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2376 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2379 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 237C _ 8B. 45, 0C
        sub     eax, 47                                 ; 237F _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2382 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2386 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 238A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 238E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2392 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 239A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 239D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23A1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23A4 _ 89. 04 24
        call    _boxfill8                               ; 23A7 _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 23AC _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 23AF _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 23B2 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 23B5 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 23B8 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 23BB _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 23BE _ 8B. 45, 0C
        sub     eax, 47                                 ; 23C1 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 23C4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 23C8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 23CC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 23D0 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 23D4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 23DC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 23DF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23E6 _ 89. 04 24
        call    _boxfill8                               ; 23E9 _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 23EE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 23F1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 23F4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 23F7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 23FA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 23FD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2400 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2403 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2406 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 240A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 240E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2412 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2416 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 241E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2421 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2425 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2428 _ 89. 04 24
        call    _boxfill8                               ; 242B _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 2430 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2433 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2436 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2439 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 243C _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 243F _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2442 _ 8B. 45, 0C
        sub     eax, 3                                  ; 2445 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2448 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 244C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2450 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2454 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2458 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2460 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2463 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2467 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 246A _ 89. 04 24
        call    _boxfill8                               ; 246D _ E8, 000002DC
        nop                                             ; 2472 _ 90
        add     esp, 36                                 ; 2473 _ 83. C4, 24
        pop     ebx                                     ; 2476 _ 5B
        pop     ebp                                     ; 2477 _ 5D
        ret                                             ; 2478 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2479 _ 55
        mov     ebp, esp                                ; 247A _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 247C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 247F _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 2482 _ A1, 00000154(d)
        add     eax, edx                                ; 2487 _ 01. D0
        mov     dword [_mx], eax                        ; 2489 _ A3, 00000154(d)
        mov     eax, dword [ebp+10H]                    ; 248E _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 2491 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 2494 _ A1, 00000158(d)
        add     eax, edx                                ; 2499 _ 01. D0
        mov     dword [_my], eax                        ; 249B _ A3, 00000158(d)
        mov     eax, dword [_mx]                        ; 24A0 _ A1, 00000154(d)
        test    eax, eax                                ; 24A5 _ 85. C0
        jns     ?_119                                   ; 24A7 _ 79, 0A
        mov     dword [_mx], 0                          ; 24A9 _ C7. 05, 00000154(d), 00000000
?_119:  mov     eax, dword [_my]                        ; 24B3 _ A1, 00000158(d)
        test    eax, eax                                ; 24B8 _ 85. C0
        jns     ?_120                                   ; 24BA _ 79, 0A
        mov     dword [_my], 0                          ; 24BC _ C7. 05, 00000158(d), 00000000
?_120:  mov     edx, dword [_xsize]                     ; 24C6 _ 8B. 15, 0000015C(d)
        mov     eax, dword [_mx]                        ; 24CC _ A1, 00000154(d)
        cmp     edx, eax                                ; 24D1 _ 39. C2
        jg      ?_121                                   ; 24D3 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 24D5 _ A1, 0000015C(d)
        sub     eax, 1                                  ; 24DA _ 83. E8, 01
        mov     dword [_mx], eax                        ; 24DD _ A3, 00000154(d)
?_121:  mov     edx, dword [_ysize]                     ; 24E2 _ 8B. 15, 00000160(d)
        mov     eax, dword [_my]                        ; 24E8 _ A1, 00000158(d)
        cmp     edx, eax                                ; 24ED _ 39. C2
        jg      ?_122                                   ; 24EF _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 24F1 _ A1, 00000160(d)
        sub     eax, 1                                  ; 24F6 _ 83. E8, 01
        mov     dword [_my], eax                        ; 24F9 _ A3, 00000158(d)
?_122:  nop                                             ; 24FE _ 90
        pop     ebp                                     ; 24FF _ 5D
        ret                                             ; 2500 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2501 _ 55
        mov     ebp, esp                                ; 2502 _ 89. E5
        sub     esp, 40                                 ; 2504 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 2507 _ A1, 00000164(d)
        mov     dword [ebp-0CH], eax                    ; 250C _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 250F _ C6. 45, F3, 00
        call    _io_sti                                 ; 2513 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2518 _ C7. 04 24, 00000048(d)
        call    _fifo8_get                              ; 251F _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 2524 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 2527 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 252B _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 252F _ C7. 04 24, 00000120(d)
        call    _mouse_decode                           ; 2536 _ E8, 00000787
        test    eax, eax                                ; 253B _ 85. C0
        jz      ?_123                                   ; 253D _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 253F _ C7. 44 24, 08, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 2547 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 254A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 254E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2551 _ 89. 04 24
        call    _computeMousePosition                   ; 2554 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 2559 _ 8B. 15, 00000158(d)
        mov     eax, dword [_mx]                        ; 255F _ A1, 00000154(d)
        mov     dword [esp+0CH], edx                    ; 2564 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2568 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 256C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 256F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2573 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2576 _ 89. 04 24
        call    _sheet_slide                            ; 2579 _ E8, 00000000(rel)
        mov     eax, dword [?_360]                      ; 257E _ A1, 0000012C(d)
        and     eax, 01H                                ; 2583 _ 83. E0, 01
        test    eax, eax                                ; 2586 _ 85. C0
        jz      ?_123                                   ; 2588 _ 74, 2C
        mov     eax, dword [_my]                        ; 258A _ A1, 00000158(d)
        lea     ecx, [eax-8H]                           ; 258F _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 2592 _ A1, 00000154(d)
        lea     edx, [eax-50H]                          ; 2597 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 259A _ A1, 00000280(d)
        mov     dword [esp+0CH], ecx                    ; 259F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25A3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25A7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25AB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25AE _ 89. 04 24
        call    _sheet_slide                            ; 25B1 _ E8, 00000000(rel)
?_123:  nop                                             ; 25B6 _ 90
        leave                                           ; 25B7 _ C9
        ret                                             ; 25B8 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 25B9 _ 55
        mov     ebp, esp                                ; 25BA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 25BC _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 25BF _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 25C5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 25C8 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 25CE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 25D1 _ 66: C7. 40, 06, 01E0
        nop                                             ; 25D7 _ 90
        pop     ebp                                     ; 25D8 _ 5D
        ret                                             ; 25D9 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 25DA _ 55
        mov     ebp, esp                                ; 25DB _ 89. E5
        push    ebx                                     ; 25DD _ 53
        sub     esp, 68                                 ; 25DE _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 25E1 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 25E4 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 25E7 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 25EA _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 25ED _ C7. 45, F0, 00000000
        jmp     ?_125                                   ; 25F4 _ EB, 4B

?_124:  mov     eax, dword [ebp+1CH]                    ; 25F6 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 25F9 _ 0F B6. 00
        movzx   eax, al                                 ; 25FC _ 0F B6. C0
        shl     eax, 4                                  ; 25FF _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2602 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2608 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 260C _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 260F _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2612 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2615 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2617 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 261B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 261F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2622 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2626 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2629 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 262D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2631 _ 89. 14 24
        call    _showFont8                              ; 2634 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 2639 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 263D _ 83. 45, 1C, 01
?_125:  mov     eax, dword [ebp+1CH]                    ; 2641 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2644 _ 0F B6. 00
        test    al, al                                  ; 2647 _ 84. C0
        jnz     ?_124                                   ; 2649 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 264B _ 8B. 45, 14
        add     eax, 16                                 ; 264E _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2651 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2655 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2658 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 265C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 265F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2663 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2666 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 266A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 266D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2671 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2674 _ 89. 04 24
        call    _sheet_refresh                          ; 2677 _ E8, 00000000(rel)
        nop                                             ; 267C _ 90
        add     esp, 68                                 ; 267D _ 83. C4, 44
        pop     ebx                                     ; 2680 _ 5B
        pop     ebp                                     ; 2681 _ 5D
        ret                                             ; 2682 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 2683 _ 55
        mov     ebp, esp                                ; 2684 _ 89. E5
        sub     esp, 24                                 ; 2686 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2584         ; 2689 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 2691 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2699 _ C7. 04 24, 00000000
        call    _set_palette                            ; 26A0 _ E8, 00000003
        nop                                             ; 26A5 _ 90
        leave                                           ; 26A6 _ C9
        ret                                             ; 26A7 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 26A8 _ 55
        mov     ebp, esp                                ; 26A9 _ 89. E5
        sub     esp, 40                                 ; 26AB _ 83. EC, 28
        call    _io_load_eflags                         ; 26AE _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 26B3 _ 89. 45, F0
        call    _io_cli                                 ; 26B6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 26BB _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 26BE _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 26C2 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 26C9 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 26CE _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 26D1 _ 89. 45, F4
        jmp     ?_127                                   ; 26D4 _ EB, 62

?_126:  mov     eax, dword [ebp+10H]                    ; 26D6 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 26D9 _ 0F B6. 00
        shr     al, 2                                   ; 26DC _ C0. E8, 02
        movzx   eax, al                                 ; 26DF _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 26E2 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 26E6 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 26ED _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 26F2 _ 8B. 45, 10
        add     eax, 1                                  ; 26F5 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 26F8 _ 0F B6. 00
        shr     al, 2                                   ; 26FB _ C0. E8, 02
        movzx   eax, al                                 ; 26FE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2701 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2705 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 270C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2711 _ 8B. 45, 10
        add     eax, 2                                  ; 2714 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 2717 _ 0F B6. 00
        shr     al, 2                                   ; 271A _ C0. E8, 02
        movzx   eax, al                                 ; 271D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2720 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2724 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 272B _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 2730 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2734 _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp-0CH]                    ; 2738 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 273B _ 3B. 45, 0C
        jle     ?_126                                   ; 273E _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 2740 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2743 _ 89. 04 24
        call    _io_store_eflags                        ; 2746 _ E8, 00000000(rel)
        nop                                             ; 274B _ 90
        leave                                           ; 274C _ C9
        ret                                             ; 274D _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 274E _ 55
        mov     ebp, esp                                ; 274F _ 89. E5
        sub     esp, 20                                 ; 2751 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2754 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2757 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 275A _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 275D _ 89. 45, F8
        jmp     ?_131                                   ; 2760 _ EB, 31

?_128:  mov     eax, dword [ebp+14H]                    ; 2762 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2765 _ 89. 45, FC
        jmp     ?_130                                   ; 2768 _ EB, 1D

?_129:  mov     eax, dword [ebp-8H]                     ; 276A _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 276D _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 2771 _ 8B. 55, FC
        add     eax, edx                                ; 2774 _ 01. D0
        mov     edx, eax                                ; 2776 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2778 _ 8B. 45, 08
        add     edx, eax                                ; 277B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 277D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2781 _ 88. 02
        add     dword [ebp-4H], 1                       ; 2783 _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp-4H]                     ; 2787 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 278A _ 3B. 45, 1C
        jle     ?_129                                   ; 278D _ 7E, DB
        add     dword [ebp-8H], 1                       ; 278F _ 83. 45, F8, 01
?_131:  mov     eax, dword [ebp-8H]                     ; 2793 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 2796 _ 3B. 45, 20
        jle     ?_128                                   ; 2799 _ 7E, C7
        nop                                             ; 279B _ 90
        leave                                           ; 279C _ C9
        ret                                             ; 279D _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 279E _ 55
        mov     ebp, esp                                ; 279F _ 89. E5
        sub     esp, 20                                 ; 27A1 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 27A4 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 27A7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 27AA _ C7. 45, FC, 00000000
        jmp     ?_141                                   ; 27B1 _ E9, 0000015C

?_132:  mov     edx, dword [ebp-4H]                     ; 27B6 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 27B9 _ 8B. 45, 1C
        add     eax, edx                                ; 27BC _ 01. D0
        movzx   eax, byte [eax]                         ; 27BE _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 27C1 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 27C4 _ 80. 7D, FB, 00
        jns     ?_133                                   ; 27C8 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 27CA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 27CD _ 8B. 45, FC
        add     eax, edx                                ; 27D0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 27D2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 27D6 _ 8B. 55, 10
        add     eax, edx                                ; 27D9 _ 01. D0
        mov     edx, eax                                ; 27DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        add     edx, eax                                ; 27E0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 27E2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 27E6 _ 88. 02
?_133:  movsx   eax, byte [ebp-5H]                      ; 27E8 _ 0F BE. 45, FB
        and     eax, 40H                                ; 27EC _ 83. E0, 40
        test    eax, eax                                ; 27EF _ 85. C0
        jz      ?_134                                   ; 27F1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 27F3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 27F6 _ 8B. 45, FC
        add     eax, edx                                ; 27F9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 27FB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 27FF _ 8B. 55, 10
        add     eax, edx                                ; 2802 _ 01. D0
        lea     edx, [eax+1H]                           ; 2804 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2807 _ 8B. 45, 08
        add     edx, eax                                ; 280A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 280C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2810 _ 88. 02
?_134:  movsx   eax, byte [ebp-5H]                      ; 2812 _ 0F BE. 45, FB
        and     eax, 20H                                ; 2816 _ 83. E0, 20
        test    eax, eax                                ; 2819 _ 85. C0
        jz      ?_135                                   ; 281B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 281D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2820 _ 8B. 45, FC
        add     eax, edx                                ; 2823 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2825 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2829 _ 8B. 55, 10
        add     eax, edx                                ; 282C _ 01. D0
        lea     edx, [eax+2H]                           ; 282E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2831 _ 8B. 45, 08
        add     edx, eax                                ; 2834 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2836 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 283A _ 88. 02
?_135:  movsx   eax, byte [ebp-5H]                      ; 283C _ 0F BE. 45, FB
        and     eax, 10H                                ; 2840 _ 83. E0, 10
        test    eax, eax                                ; 2843 _ 85. C0
        jz      ?_136                                   ; 2845 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2847 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 284A _ 8B. 45, FC
        add     eax, edx                                ; 284D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 284F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2853 _ 8B. 55, 10
        add     eax, edx                                ; 2856 _ 01. D0
        lea     edx, [eax+3H]                           ; 2858 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 285B _ 8B. 45, 08
        add     edx, eax                                ; 285E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2860 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2864 _ 88. 02
?_136:  movsx   eax, byte [ebp-5H]                      ; 2866 _ 0F BE. 45, FB
        and     eax, 08H                                ; 286A _ 83. E0, 08
        test    eax, eax                                ; 286D _ 85. C0
        jz      ?_137                                   ; 286F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2871 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2874 _ 8B. 45, FC
        add     eax, edx                                ; 2877 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2879 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 287D _ 8B. 55, 10
        add     eax, edx                                ; 2880 _ 01. D0
        lea     edx, [eax+4H]                           ; 2882 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2885 _ 8B. 45, 08
        add     edx, eax                                ; 2888 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 288A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 288E _ 88. 02
?_137:  movsx   eax, byte [ebp-5H]                      ; 2890 _ 0F BE. 45, FB
        and     eax, 04H                                ; 2894 _ 83. E0, 04
        test    eax, eax                                ; 2897 _ 85. C0
        jz      ?_138                                   ; 2899 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 289B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 289E _ 8B. 45, FC
        add     eax, edx                                ; 28A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 28A3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 28A7 _ 8B. 55, 10
        add     eax, edx                                ; 28AA _ 01. D0
        lea     edx, [eax+5H]                           ; 28AC _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 28AF _ 8B. 45, 08
        add     edx, eax                                ; 28B2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 28B4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 28B8 _ 88. 02
?_138:  movsx   eax, byte [ebp-5H]                      ; 28BA _ 0F BE. 45, FB
        and     eax, 02H                                ; 28BE _ 83. E0, 02
        test    eax, eax                                ; 28C1 _ 85. C0
        jz      ?_139                                   ; 28C3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 28C5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 28C8 _ 8B. 45, FC
        add     eax, edx                                ; 28CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 28CD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 28D1 _ 8B. 55, 10
        add     eax, edx                                ; 28D4 _ 01. D0
        lea     edx, [eax+6H]                           ; 28D6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 28D9 _ 8B. 45, 08
        add     edx, eax                                ; 28DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 28DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 28E2 _ 88. 02
?_139:  movsx   eax, byte [ebp-5H]                      ; 28E4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 28E8 _ 83. E0, 01
        test    eax, eax                                ; 28EB _ 85. C0
        jz      ?_140                                   ; 28ED _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 28EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 28F2 _ 8B. 45, FC
        add     eax, edx                                ; 28F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 28F7 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 28FB _ 8B. 55, 10
        add     eax, edx                                ; 28FE _ 01. D0
        lea     edx, [eax+7H]                           ; 2900 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2903 _ 8B. 45, 08
        add     edx, eax                                ; 2906 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2908 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 290C _ 88. 02
?_140:  add     dword [ebp-4H], 1                       ; 290E _ 83. 45, FC, 01
?_141:  cmp     dword [ebp-4H], 15                      ; 2912 _ 83. 7D, FC, 0F
        jle     ?_132                                   ; 2916 _ 0F 8E, FFFFFE9A
        nop                                             ; 291C _ 90
        leave                                           ; 291D _ C9
        ret                                             ; 291E _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 291F _ 55
        mov     ebp, esp                                ; 2920 _ 89. E5
        sub     esp, 20                                 ; 2922 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 2925 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 2928 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 292B _ C7. 45, F8, 00000000
        jmp     ?_148                                   ; 2932 _ E9, 000000B1

?_142:  mov     dword [ebp-4H], 0                       ; 2937 _ C7. 45, FC, 00000000
        jmp     ?_147                                   ; 293E _ E9, 00000097

?_143:  mov     eax, dword [ebp-8H]                     ; 2943 _ 8B. 45, F8
        shl     eax, 4                                  ; 2946 _ C1. E0, 04
        mov     edx, eax                                ; 2949 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 294B _ 8B. 45, FC
        add     eax, edx                                ; 294E _ 01. D0
        add     eax, _cursor.2631                       ; 2950 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2955 _ 0F B6. 00
        cmp     al, 42                                  ; 2958 _ 3C, 2A
        jnz     ?_144                                   ; 295A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 295C _ 8B. 45, F8
        shl     eax, 4                                  ; 295F _ C1. E0, 04
        mov     edx, eax                                ; 2962 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2964 _ 8B. 45, FC
        add     eax, edx                                ; 2967 _ 01. D0
        mov     edx, eax                                ; 2969 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 296B _ 8B. 45, 08
        add     eax, edx                                ; 296E _ 01. D0
        mov     byte [eax], 0                           ; 2970 _ C6. 00, 00
?_144:  mov     eax, dword [ebp-8H]                     ; 2973 _ 8B. 45, F8
        shl     eax, 4                                  ; 2976 _ C1. E0, 04
        mov     edx, eax                                ; 2979 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 297B _ 8B. 45, FC
        add     eax, edx                                ; 297E _ 01. D0
        add     eax, _cursor.2631                       ; 2980 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2985 _ 0F B6. 00
        cmp     al, 79                                  ; 2988 _ 3C, 4F
        jnz     ?_145                                   ; 298A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 298C _ 8B. 45, F8
        shl     eax, 4                                  ; 298F _ C1. E0, 04
        mov     edx, eax                                ; 2992 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2994 _ 8B. 45, FC
        add     eax, edx                                ; 2997 _ 01. D0
        mov     edx, eax                                ; 2999 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 299B _ 8B. 45, 08
        add     eax, edx                                ; 299E _ 01. D0
        mov     byte [eax], 7                           ; 29A0 _ C6. 00, 07
?_145:  mov     eax, dword [ebp-8H]                     ; 29A3 _ 8B. 45, F8
        shl     eax, 4                                  ; 29A6 _ C1. E0, 04
        mov     edx, eax                                ; 29A9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 29AB _ 8B. 45, FC
        add     eax, edx                                ; 29AE _ 01. D0
        add     eax, _cursor.2631                       ; 29B0 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 29B5 _ 0F B6. 00
        cmp     al, 46                                  ; 29B8 _ 3C, 2E
        jnz     ?_146                                   ; 29BA _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 29BC _ 8B. 45, F8
        shl     eax, 4                                  ; 29BF _ C1. E0, 04
        mov     edx, eax                                ; 29C2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 29C4 _ 8B. 45, FC
        add     eax, edx                                ; 29C7 _ 01. D0
        mov     edx, eax                                ; 29C9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 29CB _ 8B. 45, 08
        add     edx, eax                                ; 29CE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 29D0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 29D4 _ 88. 02
?_146:  add     dword [ebp-4H], 1                       ; 29D6 _ 83. 45, FC, 01
?_147:  cmp     dword [ebp-4H], 15                      ; 29DA _ 83. 7D, FC, 0F
        jle     ?_143                                   ; 29DE _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 29E4 _ 83. 45, F8, 01
?_148:  cmp     dword [ebp-8H], 15                      ; 29E8 _ 83. 7D, F8, 0F
        jle     ?_142                                   ; 29EC _ 0F 8E, FFFFFF45
        nop                                             ; 29F2 _ 90
        leave                                           ; 29F3 _ C9
        ret                                             ; 29F4 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 29F5 _ 55
        mov     ebp, esp                                ; 29F6 _ 89. E5
        push    ebx                                     ; 29F8 _ 53
        sub     esp, 16                                 ; 29F9 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 29FC _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2A03 _ EB, 4E

?_149:  mov     dword [ebp-8H], 0                       ; 2A05 _ C7. 45, F8, 00000000
        jmp     ?_151                                   ; 2A0C _ EB, 39

?_150:  mov     eax, dword [ebp-0CH]                    ; 2A0E _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 2A11 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 2A15 _ 8B. 55, F8
        add     eax, edx                                ; 2A18 _ 01. D0
        mov     edx, eax                                ; 2A1A _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2A1C _ 8B. 45, 20
        add     eax, edx                                ; 2A1F _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2A21 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2A24 _ 8B. 55, F4
        add     edx, ecx                                ; 2A27 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 2A29 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2A2D _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 2A30 _ 8B. 4D, F8
        add     ecx, ebx                                ; 2A33 _ 01. D9
        add     edx, ecx                                ; 2A35 _ 01. CA
        mov     ecx, edx                                ; 2A37 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2A39 _ 8B. 55, 08
        add     edx, ecx                                ; 2A3C _ 01. CA
        movzx   eax, byte [eax]                         ; 2A3E _ 0F B6. 00
        mov     byte [edx], al                          ; 2A41 _ 88. 02
        add     dword [ebp-8H], 1                       ; 2A43 _ 83. 45, F8, 01
?_151:  mov     eax, dword [ebp-8H]                     ; 2A47 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 2A4A _ 3B. 45, 10
        jl      ?_150                                   ; 2A4D _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 2A4F _ 83. 45, F4, 01
?_152:  mov     eax, dword [ebp-0CH]                    ; 2A53 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2A56 _ 3B. 45, 14
        jl      ?_149                                   ; 2A59 _ 7C, AA
        nop                                             ; 2A5B _ 90
        add     esp, 16                                 ; 2A5C _ 83. C4, 10
        pop     ebx                                     ; 2A5F _ 5B
        pop     ebp                                     ; 2A60 _ 5D
        ret                                             ; 2A61 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 2A62 _ 55
        mov     ebp, esp                                ; 2A63 _ 89. E5
        sub     esp, 40                                 ; 2A65 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2A68 _ A1, 00000024(d)
        mov     dword [ebp-0CH], eax                    ; 2A6D _ 89. 45, F4
        movzx   eax, word [?_357]                       ; 2A70 _ 0F B7. 05, 00000028(d)
        cwde                                            ; 2A77 _ 98
        mov     dword [ebp-10H], eax                    ; 2A78 _ 89. 45, F0
        movzx   eax, word [?_358]                       ; 2A7B _ 0F B7. 05, 0000002A(d)
        cwde                                            ; 2A82 _ 98
        mov     dword [ebp-14H], eax                    ; 2A83 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2A86 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2A8E _ C7. 04 24, 00000020
        call    _io_out8                                ; 2A95 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 2A9A _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 2A9E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2AA5 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 2AAA _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2AAD _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 2AB1 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 2AB5 _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 2ABC _ E8, 00000000(rel)
        nop                                             ; 2AC1 _ 90
        leave                                           ; 2AC2 _ C9
        ret                                             ; 2AC3 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 2AC4 _ 55
        mov     ebp, esp                                ; 2AC5 _ 89. E5
        sub     esp, 4                                  ; 2AC7 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2ACA _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2ACD _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2AD0 _ 80. 7D, FC, 09
        jle     ?_153                                   ; 2AD4 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 2AD6 _ 0F B6. 45, FC
        add     eax, 55                                 ; 2ADA _ 83. C0, 37
        jmp     ?_154                                   ; 2ADD _ EB, 07

?_153:  movzx   eax, byte [ebp-4H]                      ; 2ADF _ 0F B6. 45, FC
        add     eax, 48                                 ; 2AE3 _ 83. C0, 30
?_154:  leave                                           ; 2AE6 _ C9
        ret                                             ; 2AE7 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 2AE8 _ 55
        mov     ebp, esp                                ; 2AE9 _ 89. E5
        sub     esp, 24                                 ; 2AEB _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2AEE _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 2AF1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2AF4 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2AFB _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2AFF _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2B02 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2B05 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 2B09 _ 89. 04 24
        call    _charToHexVal                           ; 2B0C _ E8, FFFFFFB3
        mov     byte [?_327], al                        ; 2B11 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 2B16 _ 0F B6. 45, EC
        shr     al, 4                                   ; 2B1A _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2B1D _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2B20 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2B24 _ 0F BE. C0
        mov     dword [esp], eax                        ; 2B27 _ 89. 04 24
        call    _charToHexVal                           ; 2B2A _ E8, FFFFFF95
        mov     byte [?_326], al                        ; 2B2F _ A2, 00000112(d)
        mov     eax, _keyval                            ; 2B34 _ B8, 00000110(d)
        leave                                           ; 2B39 _ C9
        ret                                             ; 2B3A _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2B3B _ 55
        mov     ebp, esp                                ; 2B3C _ 89. E5
        sub     esp, 16                                 ; 2B3E _ 83. EC, 10
        mov     byte [_str.2679], 48                    ; 2B41 _ C6. 05, 000003B4(d), 30
        mov     byte [?_363], 88                        ; 2B48 _ C6. 05, 000003B5(d), 58
        mov     byte [?_364], 0                         ; 2B4F _ C6. 05, 000003BE(d), 00
        mov     dword [ebp-4H], 2                       ; 2B56 _ C7. 45, FC, 00000002
        jmp     ?_156                                   ; 2B5D _ EB, 0F

?_155:  mov     eax, dword [ebp-4H]                     ; 2B5F _ 8B. 45, FC
        add     eax, _str.2679                          ; 2B62 _ 05, 000003B4(d)
        mov     byte [eax], 48                          ; 2B67 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2B6A _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 9                       ; 2B6E _ 83. 7D, FC, 09
        jle     ?_155                                   ; 2B72 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2B74 _ C7. 45, F8, 00000009
        jmp     ?_160                                   ; 2B7B _ EB, 42

?_157:  mov     eax, dword [ebp+8H]                     ; 2B7D _ 8B. 45, 08
        and     eax, 0FH                                ; 2B80 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 2B83 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        shr     eax, 4                                  ; 2B89 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2B8C _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 2B8F _ 83. 7D, F4, 09
        jle     ?_158                                   ; 2B93 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 2B95 _ 8B. 45, F4
        add     eax, 55                                 ; 2B98 _ 83. C0, 37
        mov     edx, eax                                ; 2B9B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2B9D _ 8B. 45, F8
        add     eax, _str.2679                          ; 2BA0 _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2BA5 _ 88. 10
        jmp     ?_159                                   ; 2BA7 _ EB, 12

?_158:  mov     eax, dword [ebp-0CH]                    ; 2BA9 _ 8B. 45, F4
        add     eax, 48                                 ; 2BAC _ 83. C0, 30
        mov     edx, eax                                ; 2BAF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2BB1 _ 8B. 45, F8
        add     eax, _str.2679                          ; 2BB4 _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2BB9 _ 88. 10
?_159:  sub     dword [ebp-8H], 1                       ; 2BBB _ 83. 6D, F8, 01
?_160:  cmp     dword [ebp-8H], 1                       ; 2BBF _ 83. 7D, F8, 01
        jle     ?_161                                   ; 2BC3 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2BC5 _ 83. 7D, 08, 00
        jnz     ?_157                                   ; 2BC9 _ 75, B2
?_161:  mov     eax, _str.2679                          ; 2BCB _ B8, 000003B4(d)
        leave                                           ; 2BD0 _ C9
        ret                                             ; 2BD1 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 2BD2 _ 55
        mov     ebp, esp                                ; 2BD3 _ 89. E5
        sub     esp, 24                                 ; 2BD5 _ 83. EC, 18
?_162:  mov     dword [esp], 100                        ; 2BD8 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 2BDF _ E8, 00000000(rel)
        and     eax, 02H                                ; 2BE4 _ 83. E0, 02
        test    eax, eax                                ; 2BE7 _ 85. C0
        jz      ?_163                                   ; 2BE9 _ 74, 02
        jmp     ?_162                                   ; 2BEB _ EB, EB
; _wait_KBC_sendready End of function

?_163:  ; Local function
        nop                                             ; 2BED _ 90
        nop                                             ; 2BEE _ 90
        leave                                           ; 2BEF _ C9
        ret                                             ; 2BF0 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 2BF1 _ 55
        mov     ebp, esp                                ; 2BF2 _ 89. E5
        sub     esp, 24                                 ; 2BF4 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2BF7 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2BFC _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2C04 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2C0B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2C10 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 2C15 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 2C1D _ C7. 04 24, 00000060
        call    _io_out8                                ; 2C24 _ E8, 00000000(rel)
        nop                                             ; 2C29 _ 90
        leave                                           ; 2C2A _ C9
        ret                                             ; 2C2B _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 2C2C _ 55
        mov     ebp, esp                                ; 2C2D _ 89. E5
        sub     esp, 24                                 ; 2C2F _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2C32 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 2C37 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 2C3F _ C7. 04 24, 00000064
        call    _io_out8                                ; 2C46 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2C4B _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 2C50 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2C58 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2C5F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2C64 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2C67 _ C6. 40, 03, 00
        nop                                             ; 2C6B _ 90
        leave                                           ; 2C6C _ C9
        ret                                             ; 2C6D _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 2C6E _ 55
        mov     ebp, esp                                ; 2C6F _ 89. E5
        sub     esp, 40                                 ; 2C71 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2C74 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2C7C _ C7. 04 24, 000000A0
        call    _io_out8                                ; 2C83 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 2C88 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2C90 _ C7. 04 24, 00000020
        call    _io_out8                                ; 2C97 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 2C9C _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2CA3 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 2CA8 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2CAB _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 2CAF _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 2CB3 _ C7. 04 24, 00000048(d)
        call    _fifo8_put                              ; 2CBA _ E8, 00000000(rel)
        nop                                             ; 2CBF _ 90
        leave                                           ; 2CC0 _ C9
        ret                                             ; 2CC1 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 2CC2 _ 55
        mov     ebp, esp                                ; 2CC3 _ 89. E5
        sub     esp, 4                                  ; 2CC5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2CC8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2CCB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2CCE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2CD1 _ 0F B6. 40, 03
        test    al, al                                  ; 2CD5 _ 84. C0
        jnz     ?_165                                   ; 2CD7 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2CD9 _ 80. 7D, FC, FA
        jnz     ?_164                                   ; 2CDD _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2CDF _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2CE2 _ C6. 40, 03, 01
?_164:  mov     eax, 0                                  ; 2CE6 _ B8, 00000000
        jmp     ?_172                                   ; 2CEB _ E9, 0000010F

?_165:  mov     eax, dword [ebp+8H]                     ; 2CF0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2CF3 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2CF7 _ 3C, 01
        jnz     ?_167                                   ; 2CF9 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2CFB _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2CFF _ 25, 000000C8
        cmp     eax, 8                                  ; 2D04 _ 83. F8, 08
        jnz     ?_166                                   ; 2D07 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 2D09 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2D0C _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2D10 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2D12 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2D15 _ C6. 40, 03, 02
?_166:  mov     eax, 0                                  ; 2D19 _ B8, 00000000
        jmp     ?_172                                   ; 2D1E _ E9, 000000DC

?_167:  mov     eax, dword [ebp+8H]                     ; 2D23 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2D26 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2D2A _ 3C, 02
        jnz     ?_168                                   ; 2D2C _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 2D2E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2D31 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2D35 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 2D38 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2D3B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2D3F _ B8, 00000000
        jmp     ?_172                                   ; 2D44 _ E9, 000000B6

?_168:  mov     eax, dword [ebp+8H]                     ; 2D49 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2D4C _ 0F B6. 40, 03
        cmp     al, 3                                   ; 2D50 _ 3C, 03
        jne     ?_171                                   ; 2D52 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 2D58 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2D5B _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 2D5F _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 2D62 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2D65 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2D69 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2D6C _ 0F B6. 00
        movzx   eax, al                                 ; 2D6F _ 0F B6. C0
        and     eax, 07H                                ; 2D72 _ 83. E0, 07
        mov     edx, eax                                ; 2D75 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2D77 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2D7A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2D7D _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2D80 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2D84 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2D87 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2D8A _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2D8D _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2D90 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 2D94 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2D97 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 2D9A _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 2D9D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2DA0 _ 0F B6. 00
        movzx   eax, al                                 ; 2DA3 _ 0F B6. C0
        and     eax, 10H                                ; 2DA6 _ 83. E0, 10
        test    eax, eax                                ; 2DA9 _ 85. C0
        jz      ?_169                                   ; 2DAB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2DAD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DB0 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2DB3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2DB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DBA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2DBD _ 89. 50, 04
?_169:  mov     eax, dword [ebp+8H]                     ; 2DC0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2DC3 _ 0F B6. 00
        movzx   eax, al                                 ; 2DC6 _ 0F B6. C0
        and     eax, 20H                                ; 2DC9 _ 83. E0, 20
        test    eax, eax                                ; 2DCC _ 85. C0
        jz      ?_170                                   ; 2DCE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2DD0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DD3 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2DD6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2DDB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DDD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2DE0 _ 89. 50, 08
?_170:  mov     eax, dword [ebp+8H]                     ; 2DE3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DE6 _ 8B. 40, 08
        neg     eax                                     ; 2DE9 _ F7. D8
        mov     edx, eax                                ; 2DEB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DED _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2DF0 _ 89. 50, 08
        mov     eax, 1                                  ; 2DF3 _ B8, 00000001
        jmp     ?_172                                   ; 2DF8 _ EB, 05

?_171:  mov     eax, 4294967295                         ; 2DFA _ B8, FFFFFFFF
?_172:  leave                                           ; 2DFF _ C9
        ret                                             ; 2E00 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 2E01 _ 55
        mov     ebp, esp                                ; 2E02 _ 89. E5
        sub     esp, 72                                 ; 2E04 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 2E07 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 2E0E _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 2E15 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 2E1C _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 2E23 _ 8B. 15, 00000160(d)
        mov     eax, dword [ebp+0CH]                    ; 2E29 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2E2C _ 8B. 00
        mov     dword [esp+8H], edx                     ; 2E2E _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 2E32 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 2E35 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2E39 _ 89. 04 24
        call    _init_screen8                           ; 2E3C _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 2E41 _ 8B. 45, 20
        movsx   eax, al                                 ; 2E44 _ 0F BE. C0
        mov     dword [esp+14H], ?_342                  ; 2E47 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], eax                    ; 2E4F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2E53 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2E56 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2E5A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2E5D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2E61 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E64 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E68 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E6B _ 89. 04 24
        call    _showString                             ; 2E6E _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 2E73 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2E76 _ 89. 04 24
        call    _intToHexStr                            ; 2E79 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 2E7E _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2E81 _ 8B. 45, 20
        movsx   eax, al                                 ; 2E84 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 2E87 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 2E8A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E8E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2E92 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2E95 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2E99 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2E9C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2EA0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EA3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EA7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EAA _ 89. 04 24
        call    _showString                             ; 2EAD _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 2EB2 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2EB6 _ 8B. 45, 20
        movsx   eax, al                                 ; 2EB9 _ 0F BE. C0
        mov     dword [esp+14H], ?_343                  ; 2EBC _ C7. 44 24, 14, 00000065(d)
        mov     dword [esp+10H], eax                    ; 2EC4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2EC8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2ECB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2ECF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2ED2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2ED6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2ED9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EDD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EE0 _ 89. 04 24
        call    _showString                             ; 2EE3 _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 2EE8 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2EEB _ 8B. 00
        mov     dword [esp], eax                        ; 2EED _ 89. 04 24
        call    _intToHexStr                            ; 2EF0 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 2EF5 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2EF8 _ 8B. 45, 20
        movsx   eax, al                                 ; 2EFB _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 2EFE _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 2F01 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2F05 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2F09 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2F0C _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2F10 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2F13 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2F17 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F1A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F1E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F21 _ 89. 04 24
        call    _showString                             ; 2F24 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 2F29 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2F2D _ 8B. 45, 20
        movsx   eax, al                                 ; 2F30 _ 0F BE. C0
        mov     dword [esp+14H], ?_344                  ; 2F33 _ C7. 44 24, 14, 00000071(d)
        mov     dword [esp+10H], eax                    ; 2F3B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2F3F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2F42 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2F46 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2F49 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2F4D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F50 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F54 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F57 _ 89. 04 24
        call    _showString                             ; 2F5A _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 2F5F _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2F62 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 2F65 _ 89. 04 24
        call    _intToHexStr                            ; 2F68 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 2F6D _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 2F70 _ 8B. 45, 20
        movsx   eax, al                                 ; 2F73 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 2F76 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 2F79 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2F7D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2F81 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2F84 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2F88 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2F8B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2F8F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F92 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F96 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F99 _ 89. 04 24
        call    _showString                             ; 2F9C _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 2FA1 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2FA5 _ 8B. 45, 20
        movsx   eax, al                                 ; 2FA8 _ 0F BE. C0
        mov     dword [esp+14H], ?_345                  ; 2FAB _ C7. 44 24, 14, 0000007D(d)
        mov     dword [esp+10H], eax                    ; 2FB3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2FB7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2FBA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2FBE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2FC1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2FC5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FC8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FCC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FCF _ 89. 04 24
        call    _showString                             ; 2FD2 _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 2FD7 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 2FDA _ 8B. 40, 08
        mov     dword [esp], eax                        ; 2FDD _ 89. 04 24
        call    _intToHexStr                            ; 2FE0 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 2FE5 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 2FE8 _ 8B. 45, 20
        movsx   eax, al                                 ; 2FEB _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 2FEE _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 2FF1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2FF5 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2FF9 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2FFC _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3000 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3003 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3007 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 300A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 300E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3011 _ 89. 04 24
        call    _showString                             ; 3014 _ E8, FFFFF5C1
        nop                                             ; 3019 _ 90
        leave                                           ; 301A _ C9
        ret                                             ; 301B _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 301C _ 55
        mov     ebp, esp                                ; 301D _ 89. E5
        sub     esp, 56                                 ; 301F _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3022 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3025 _ 89. 04 24
        call    _sheet_alloc                            ; 3028 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 302D _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 3030 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3035 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 303D _ 89. 04 24
        call    _memman_alloc_4k                        ; 3040 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3045 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3048 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 3050 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3058 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 3060 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3063 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3067 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 306A _ 89. 04 24
        call    _sheet_setbuf                           ; 306D _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 3072 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 307A _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 307D _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3081 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3084 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3088 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 308B _ 89. 04 24
        call    _make_window8                           ; 308E _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 3093 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 309B _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 30A3 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 30AB _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 30B3 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 30BB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 30BE _ 89. 04 24
        call    _make_textbox8                          ; 30C1 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 30C6 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 30CE _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 30D6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 30D9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30DD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30E0 _ 89. 04 24
        call    _sheet_slide                            ; 30E3 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 30E8 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 30F0 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 30F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30FA _ 89. 04 24
        call    _sheet_updown                           ; 30FD _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3102 _ 8B. 45, F4
        leave                                           ; 3105 _ C9
        ret                                             ; 3106 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3107 _ 55
        mov     ebp, esp                                ; 3108 _ 89. E5
        push    ebx                                     ; 310A _ 53
        sub     esp, 68                                 ; 310B _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 310E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3111 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3114 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3117 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 311A _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 311D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3120 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3123 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3126 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3129 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 312C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 312F _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3131 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3139 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 313D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3145 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 314D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3155 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3158 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 315C _ 89. 04 24
        call    _boxfill8                               ; 315F _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3164 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3167 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 316A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 316D _ 8B. 00
        mov     dword [esp+18H], 1                      ; 316F _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3177 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 317B _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3183 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 318B _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3193 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3196 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 319A _ 89. 04 24
        call    _boxfill8                               ; 319D _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 31A2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 31A5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 31A8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 31AB _ 8B. 00
        mov     dword [esp+18H], edx                    ; 31AD _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 31B1 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 31B9 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 31C1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 31C9 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 31D1 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 31D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 31D8 _ 89. 04 24
        call    _boxfill8                               ; 31DB _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 31E0 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 31E3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 31E6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 31E9 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 31EB _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 31EF _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 31F7 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 31FF _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3207 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 320F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3212 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3216 _ 89. 04 24
        call    _boxfill8                               ; 3219 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 321E _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3221 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3224 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3227 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 322A _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 322D _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3230 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3233 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3235 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3239 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 323D _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3245 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3249 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3251 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3254 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3258 _ 89. 04 24
        call    _boxfill8                               ; 325B _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 3260 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3263 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3266 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3269 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 326C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 326F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3272 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3275 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3277 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 327B _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 327F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3287 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 328B _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3293 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3296 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 329A _ 89. 04 24
        call    _boxfill8                               ; 329D _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 32A2 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 32A5 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 32A8 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 32AB _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 32AE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 32B1 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 32B3 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 32B7 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 32BB _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 32C3 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 32CB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 32D3 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 32D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 32DA _ 89. 04 24
        call    _boxfill8                               ; 32DD _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 32E2 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 32E5 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 32E8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 32EB _ 8B. 00
        mov     dword [esp+18H], 20                     ; 32ED _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 32F5 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 32F9 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3301 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 3309 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3311 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3314 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3318 _ 89. 04 24
        call    _boxfill8                               ; 331B _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 3320 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3323 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3326 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3329 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 332C _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 332F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3332 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3335 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3337 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 333B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 333F _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3343 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 334B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3353 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3356 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 335A _ 89. 04 24
        call    _boxfill8                               ; 335D _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 3362 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3365 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3368 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 336B _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 336E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3371 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3374 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3377 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3379 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 337D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3381 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3385 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 338D _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3395 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3398 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 339C _ 89. 04 24
        call    _boxfill8                               ; 339F _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 33A4 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 33A8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 33AC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 33AF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 33B3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 33B6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33BA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33BD _ 89. 04 24
        call    _make_wtitle8                           ; 33C0 _ E8, 00000007
        nop                                             ; 33C5 _ 90
        add     esp, 68                                 ; 33C6 _ 83. C4, 44
        pop     ebx                                     ; 33C9 _ 5B
        pop     ebp                                     ; 33CA _ 5D
        ret                                             ; 33CB _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 33CC _ 55
        mov     ebp, esp                                ; 33CD _ 89. E5
        push    ebx                                     ; 33CF _ 53
        sub     esp, 68                                 ; 33D0 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 33D3 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 33D6 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 33D9 _ 80. 7D, E4, 00
        jz      ?_173                                   ; 33DD _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 33DF _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 33E3 _ C6. 45, ED, 0C
        jmp     ?_174                                   ; 33E7 _ EB, 08

?_173:  mov     byte [ebp-12H], 8                       ; 33E9 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 33ED _ C6. 45, ED, 0F
?_174:  mov     eax, dword [ebp+0CH]                    ; 33F1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 33F4 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 33F7 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 33FA _ 0F B6. 45, ED
        movzx   eax, al                                 ; 33FE _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3401 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3404 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3407 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 340A _ 8B. 12
        mov     dword [esp+18H], 20                     ; 340C _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3414 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 3418 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3420 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 3428 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 342C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3430 _ 89. 14 24
        call    _boxfill8                               ; 3433 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 3438 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 343C _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 343F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3443 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3447 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 344F _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3457 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 345A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 345E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3461 _ 89. 04 24
        call    _showString                             ; 3464 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 3469 _ C7. 45, F0, 00000000
        jmp     ?_182                                   ; 3470 _ E9, 00000084

?_175:  mov     dword [ebp-0CH], 0                      ; 3475 _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 347C _ EB, 71

?_176:  mov     eax, dword [ebp-10H]                    ; 347E _ 8B. 45, F0
        shl     eax, 4                                  ; 3481 _ C1. E0, 04
        mov     edx, eax                                ; 3484 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3486 _ 8B. 45, F4
        add     eax, edx                                ; 3489 _ 01. D0
        add     eax, _closebtn.2750                     ; 348B _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 3490 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 3493 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 3496 _ 80. 7D, EF, 40
        jnz     ?_177                                   ; 349A _ 75, 06
        mov     byte [ebp-11H], 0                       ; 349C _ C6. 45, EF, 00
        jmp     ?_180                                   ; 34A0 _ EB, 1C

?_177:  cmp     byte [ebp-11H], 36                      ; 34A2 _ 80. 7D, EF, 24
        jnz     ?_178                                   ; 34A6 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 34A8 _ C6. 45, EF, 0F
        jmp     ?_180                                   ; 34AC _ EB, 10

?_178:  cmp     byte [ebp-11H], 81                      ; 34AE _ 80. 7D, EF, 51
        jnz     ?_179                                   ; 34B2 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 34B4 _ C6. 45, EF, 08
        jmp     ?_180                                   ; 34B8 _ EB, 04

?_179:  mov     byte [ebp-11H], 7                       ; 34BA _ C6. 45, EF, 07
?_180:  mov     eax, dword [ebp+0CH]                    ; 34BE _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 34C1 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 34C3 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 34C6 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 34C9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 34CC _ 8B. 40, 04
        imul    eax, edx                                ; 34CF _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 34D2 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 34D5 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 34D8 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 34DB _ 8B. 55, F4
        add     edx, ebx                                ; 34DE _ 01. DA
        add     eax, edx                                ; 34E0 _ 01. D0
        lea     edx, [ecx+eax]                          ; 34E2 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 34E5 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 34E9 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 34EB _ 83. 45, F4, 01
?_181:  cmp     dword [ebp-0CH], 15                     ; 34EF _ 83. 7D, F4, 0F
        jle     ?_176                                   ; 34F3 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 34F5 _ 83. 45, F0, 01
?_182:  cmp     dword [ebp-10H], 13                     ; 34F9 _ 83. 7D, F0, 0D
        jle     ?_175                                   ; 34FD _ 0F 8E, FFFFFF72
        nop                                             ; 3503 _ 90
        add     esp, 68                                 ; 3504 _ 83. C4, 44
        pop     ebx                                     ; 3507 _ 5B
        pop     ebp                                     ; 3508 _ 5D
        ret                                             ; 3509 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 350A _ 55
        mov     ebp, esp                                ; 350B _ 89. E5
        push    edi                                     ; 350D _ 57
        push    esi                                     ; 350E _ 56
        push    ebx                                     ; 350F _ 53
        sub     esp, 44                                 ; 3510 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 3513 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3516 _ 8B. 45, 14
        add     eax, edx                                ; 3519 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 351B _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 351E _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3521 _ 8B. 45, 18
        add     eax, edx                                ; 3524 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 3526 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 3529 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 352C _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 352F _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3532 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3535 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3538 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 353B _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 353E _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3541 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3544 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3547 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 354A _ 8B. 00
        mov     dword [esp+18H], edi                    ; 354C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3550 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3554 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3558 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 355C _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3564 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3568 _ 89. 04 24
        call    _boxfill8                               ; 356B _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 3570 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3573 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 3576 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 3579 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 357C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 357F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3582 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3585 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3588 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 358B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 358E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3591 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3593 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3597 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 359B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 359F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 35A3 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 35AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 35AF _ 89. 04 24
        call    _boxfill8                               ; 35B2 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 35B7 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 35BA _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 35BD _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 35C0 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 35C3 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 35C6 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 35C9 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 35CC _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 35CF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 35D2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 35D5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 35D8 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 35DA _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 35DE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 35E2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 35E6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 35EA _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 35F2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 35F6 _ 89. 04 24
        call    _boxfill8                               ; 35F9 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 35FE _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 3601 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3604 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 3607 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 360A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 360D _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 3610 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 3613 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3616 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3619 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 361C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 361F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3621 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3625 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3629 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 362D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3631 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3639 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 363D _ 89. 04 24
        call    _boxfill8                               ; 3640 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3645 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3648 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 364B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 364E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3651 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3654 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3657 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 365A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 365D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3660 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3662 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3666 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3669 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 366D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3671 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3675 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 367D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3681 _ 89. 04 24
        call    _boxfill8                               ; 3684 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3689 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 368C _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 368F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3692 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3695 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3698 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 369B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 369E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36A1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36A4 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 36A6 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 36A9 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 36AD _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 36B1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 36B5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 36B9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 36C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 36C5 _ 89. 04 24
        call    _boxfill8                               ; 36C8 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 36CD _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 36D0 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 36D3 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 36D6 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 36D9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 36DC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 36DF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 36E2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36E5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36E8 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 36EA _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 36EE _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 36F1 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 36F5 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 36F9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 36FD _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3705 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3709 _ 89. 04 24
        call    _boxfill8                               ; 370C _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 3711 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3714 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 3717 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 371A _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 371D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3720 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3723 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3726 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3729 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 372C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 372F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3732 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3734 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3738 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 373C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3740 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3744 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 374C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3750 _ 89. 04 24
        call    _boxfill8                               ; 3753 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3758 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 375B _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 375E _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3761 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3764 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3767 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 376A _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 376D _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 3770 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3773 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3775 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3778 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 377C _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 377F _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 3783 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3787 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 378B _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 378F _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3793 _ 89. 14 24
        call    _boxfill8                               ; 3796 _ E8, FFFFEFB3
        nop                                             ; 379B _ 90
        add     esp, 44                                 ; 379C _ 83. C4, 2C
        pop     ebx                                     ; 379F _ 5B
        pop     esi                                     ; 37A0 _ 5E
        pop     edi                                     ; 37A1 _ 5F
        pop     ebp                                     ; 37A2 _ 5D
        ret                                             ; 37A3 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 37A4 _ 55
        mov     ebp, esp                                ; 37A5 _ 89. E5
        sub     esp, 56                                 ; 37A7 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 37AA _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 37B1 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 37B6 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 37BE _ 89. 04 24
        call    _memman_alloc                           ; 37C1 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 37C6 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 37C9 _ 8B. 45, E4
        add     eax, 12                                 ; 37CC _ 83. C0, 0C
        mov     byte [eax], 0                           ; 37CF _ C6. 00, 00
        jmp     ?_193                                   ; 37D2 _ E9, 00000125

?_183:  mov     dword [ebp-10H], 0                      ; 37D7 _ C7. 45, F0, 00000000
        jmp     ?_185                                   ; 37DE _ EB, 2A

?_184:  mov     edx, dword [ebp-0CH]                    ; 37E0 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 37E3 _ 8B. 45, F0
        add     eax, edx                                ; 37E6 _ 01. D0
        movzx   eax, byte [eax]                         ; 37E8 _ 0F B6. 00
        test    al, al                                  ; 37EB _ 84. C0
        jz      ?_186                                   ; 37ED _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 37EF _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 37F2 _ 8B. 45, F0
        add     eax, edx                                ; 37F5 _ 01. D0
        movzx   ecx, byte [eax]                         ; 37F7 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 37FA _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 37FD _ 8B. 45, E4
        add     eax, edx                                ; 3800 _ 01. D0
        mov     edx, ecx                                ; 3802 _ 89. CA
        mov     byte [eax], dl                          ; 3804 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3806 _ 83. 45, F0, 01
?_185:  cmp     dword [ebp-10H], 7                      ; 380A _ 83. 7D, F0, 07
        jle     ?_184                                   ; 380E _ 7E, D0
        jmp     ?_187                                   ; 3810 _ EB, 01

?_186:  nop                                             ; 3812 _ 90
?_187:  mov     dword [ebp-14H], 0                      ; 3813 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 381A _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 381D _ 8B. 45, E4
        add     eax, edx                                ; 3820 _ 01. D0
        mov     byte [eax], 46                          ; 3822 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3825 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 3829 _ C7. 45, EC, 00000000
        jmp     ?_189                                   ; 3830 _ EB, 22

?_188:  mov     edx, dword [ebp-0CH]                    ; 3832 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3835 _ 8B. 45, EC
        add     eax, edx                                ; 3838 _ 01. D0
        add     eax, 8                                  ; 383A _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 383D _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3840 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3843 _ 8B. 45, E4
        add     eax, edx                                ; 3846 _ 01. D0
        mov     edx, ecx                                ; 3848 _ 89. CA
        mov     byte [eax], dl                          ; 384A _ 88. 10
        add     dword [ebp-10H], 1                      ; 384C _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3850 _ 83. 45, EC, 01
?_189:  cmp     dword [ebp-14H], 2                      ; 3854 _ 83. 7D, EC, 02
        jle     ?_188                                   ; 3858 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 385A _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 385D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3861 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3864 _ 89. 04 24
        call    _strcmp                                 ; 3867 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 386C _ 83. F8, 01
        jne     ?_192                                   ; 386F _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3875 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3878 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 387B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3880 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3884 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3887 _ E8, 00000000(rel)
        mov     edx, eax                                ; 388C _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 388E _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3891 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3893 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3896 _ 8B. 40, 1C
        mov     edx, eax                                ; 3899 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 389B _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 389E _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 38A1 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 38A8 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 38AB _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 38AF _ 0F B7. C0
        shl     eax, 9                                  ; 38B2 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 38B5 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 38B8 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 38BB _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 38BE _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 38C1 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 38C8 _ C7. 45, E8, 00000000
        jmp     ?_191                                   ; 38CF _ EB, 1D

?_190:  mov     edx, dword [ebp-18H]                    ; 38D1 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 38D4 _ 8B. 45, E0
        add     eax, edx                                ; 38D7 _ 01. D0
        movzx   ecx, byte [eax]                         ; 38D9 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 38DC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 38DF _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 38E1 _ 8B. 45, E8
        add     eax, edx                                ; 38E4 _ 01. D0
        mov     edx, ecx                                ; 38E6 _ 89. CA
        mov     byte [eax], dl                          ; 38E8 _ 88. 10
        add     dword [ebp-18H], 1                      ; 38EA _ 83. 45, E8, 01
?_191:  mov     eax, dword [ebp-18H]                    ; 38EE _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 38F1 _ 3B. 45, DC
        jl      ?_190                                   ; 38F4 _ 7C, DB
        jmp     ?_194                                   ; 38F6 _ EB, 12

?_192:  add     dword [ebp-0CH], 32                     ; 38F8 _ 83. 45, F4, 20
?_193:  mov     eax, dword [ebp-0CH]                    ; 38FC _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 38FF _ 0F B6. 00
        test    al, al                                  ; 3902 _ 84. C0
        jne     ?_183                                   ; 3904 _ 0F 85, FFFFFECD
?_194:  mov     edx, dword [ebp-1CH]                    ; 390A _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 390D _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3912 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 391A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 391E _ 89. 04 24
        call    _memman_free                            ; 3921 _ E8, 00000000(rel)
        nop                                             ; 3926 _ 90
        leave                                           ; 3927 _ C9
        ret                                             ; 3928 _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 3929 _ 55
        mov     ebp, esp                                ; 392A _ 89. E5
        sub     esp, 40                                 ; 392C _ 83. EC, 28
        mov     dword [?_351], 8                        ; 392F _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_346                      ; 3939 _ C7. 04 24, 00000089(d)
        call    _cons_putstr                            ; 3940 _ E8, FFFFE044
        mov     dword [?_351], 8                        ; 3945 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_352]                      ; 394F _ A1, 00000014(d)
        add     eax, 16                                 ; 3954 _ 83. C0, 10
        mov     dword [?_352], eax                      ; 3957 _ A3, 00000014(d)
        mov     dword [esp], ?_347                      ; 395C _ C7. 04 24, 00000090(d)
        call    _cons_putstr                            ; 3963 _ E8, FFFFE021
        mov     dword [?_351], 8                        ; 3968 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_352]                      ; 3972 _ A1, 00000014(d)
        add     eax, 16                                 ; 3977 _ 83. C0, 10
        mov     dword [?_352], eax                      ; 397A _ A3, 00000014(d)
        mov     eax, dword [ebp+8H]                     ; 397F _ 8B. 45, 08
        add     eax, 44                                 ; 3982 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 3985 _ 8B. 00
        mov     dword [esp], eax                        ; 3987 _ 89. 04 24
        call    _intToHexStr                            ; 398A _ E8, FFFFF1AC
        mov     dword [ebp-0CH], eax                    ; 398F _ 89. 45, F4
        mov     dword [esp], ?_348                      ; 3992 _ C7. 04 24, 000000A0(d)
        call    _cons_putstr                            ; 3999 _ E8, FFFFDFEB
        mov     eax, dword [ebp-0CH]                    ; 399E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 39A1 _ 89. 04 24
        call    _cons_putstr                            ; 39A4 _ E8, FFFFDFE0
        mov     dword [?_351], 8                        ; 39A9 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_352]                      ; 39B3 _ A1, 00000014(d)
        add     eax, 16                                 ; 39B8 _ 83. C0, 10
        mov     dword [?_352], eax                      ; 39BB _ A3, 00000014(d)
        call    _task_now                               ; 39C0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 39C5 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 39C8 _ 8B. 45, F0
        add     eax, 48                                 ; 39CB _ 83. C0, 30
        leave                                           ; 39CE _ C9
        ret                                             ; 39CF _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 39D0 _ 55
        mov     ebp, esp                                ; 39D1 _ 89. E5
        sub     esp, 40                                 ; 39D3 _ 83. EC, 28
        mov     dword [?_351], 8                        ; 39D6 _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_349                      ; 39E0 _ C7. 04 24, 000000A7(d)
        call    _cons_putstr                            ; 39E7 _ E8, FFFFDF9D
        mov     dword [?_351], 8                        ; 39EC _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_352]                      ; 39F6 _ A1, 00000014(d)
        add     eax, 16                                 ; 39FB _ 83. C0, 10
        mov     dword [?_352], eax                      ; 39FE _ A3, 00000014(d)
        mov     dword [esp], ?_350                      ; 3A03 _ C7. 04 24, 000000AF(d)
        call    _cons_putstr                            ; 3A0A _ E8, FFFFDF7A
        mov     eax, dword [?_352]                      ; 3A0F _ A1, 00000014(d)
        add     eax, 16                                 ; 3A14 _ 83. C0, 10
        mov     dword [?_352], eax                      ; 3A17 _ A3, 00000014(d)
        mov     dword [?_351], 8                        ; 3A1C _ C7. 05, 00000010(d), 00000008
        call    _task_now                               ; 3A26 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3A2B _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3A2E _ 8B. 45, F4
        add     eax, 48                                 ; 3A31 _ 83. C0, 30
        leave                                           ; 3A34 _ C9
        ret                                             ; 3A35 _ C3
; _intHandlerForException End of function

        nop                                             ; 3A36 _ 90
        nop                                             ; 3A37 _ 90


_shtctl_init:
        push    ebp                                     ; 3A38 _ 55
        mov     ebp, esp                                ; 3A39 _ 89. E5
        sub     esp, 40                                 ; 3A3B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 3A3E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3A46 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A49 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3A4C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3A51 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 3A54 _ 83. 7D, F0, 00
        jnz     ?_195                                   ; 3A58 _ 75, 0A
        mov     eax, 0                                  ; 3A5A _ B8, 00000000
        jmp     ?_199                                   ; 3A5F _ E9, 0000009D

?_195:  mov     eax, dword [ebp+10H]                    ; 3A64 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3A67 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3A6B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A6F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A72 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3A75 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3A7A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3A7C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 3A7F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 3A82 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3A85 _ 8B. 40, 04
        test    eax, eax                                ; 3A88 _ 85. C0
        jnz     ?_196                                   ; 3A8A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3A8C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 3A8F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3A97 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A9B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A9E _ 89. 04 24
        call    _memman_free_4k                         ; 3AA1 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3AA6 _ B8, 00000000
        jmp     ?_199                                   ; 3AAB _ EB, 54

?_196:  mov     eax, dword [ebp-10H]                    ; 3AAD _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 3AB0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3AB3 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3AB5 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3AB8 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3ABB _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3ABE _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3AC1 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3AC4 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3AC7 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3ACA _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3AD1 _ C7. 45, F4, 00000000
        jmp     ?_198                                   ; 3AD8 _ EB, 1B

?_197:  mov     edx, dword [ebp-10H]                    ; 3ADA _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 3ADD _ 8B. 45, F4
        add     eax, 33                                 ; 3AE0 _ 83. C0, 21
        shl     eax, 5                                  ; 3AE3 _ C1. E0, 05
        add     eax, edx                                ; 3AE6 _ 01. D0
        add     eax, 16                                 ; 3AE8 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3AEB _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3AF1 _ 83. 45, F4, 01
?_198:  cmp     dword [ebp-0CH], 255                    ; 3AF5 _ 81. 7D, F4, 000000FF
        jle     ?_197                                   ; 3AFC _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 3AFE _ 8B. 45, F0
?_199:  leave                                           ; 3B01 _ C9
        ret                                             ; 3B02 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3B03 _ 55
        mov     ebp, esp                                ; 3B04 _ 89. E5
        sub     esp, 16                                 ; 3B06 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3B09 _ C7. 45, FC, 00000000
        jmp     ?_202                                   ; 3B10 _ EB, 5B

?_200:  mov     edx, dword [ebp+8H]                     ; 3B12 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3B15 _ 8B. 45, FC
        add     eax, 33                                 ; 3B18 _ 83. C0, 21
        shl     eax, 5                                  ; 3B1B _ C1. E0, 05
        add     eax, edx                                ; 3B1E _ 01. D0
        add     eax, 16                                 ; 3B20 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3B23 _ 8B. 00
        test    eax, eax                                ; 3B25 _ 85. C0
        jnz     ?_201                                   ; 3B27 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 3B29 _ 8B. 45, FC
        shl     eax, 5                                  ; 3B2C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 3B2F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3B35 _ 8B. 45, 08
        add     eax, edx                                ; 3B38 _ 01. D0
        add     eax, 4                                  ; 3B3A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3B3D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3B40 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3B43 _ 8B. 55, FC
        add     edx, 4                                  ; 3B46 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 3B49 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 3B4C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 3B50 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 3B53 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 3B5A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 3B5D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 3B64 _ 8B. 45, F8
        jmp     ?_203                                   ; 3B67 _ EB, 12

?_201:  add     dword [ebp-4H], 1                       ; 3B69 _ 83. 45, FC, 01
?_202:  cmp     dword [ebp-4H], 255                     ; 3B6D _ 81. 7D, FC, 000000FF
        jle     ?_200                                   ; 3B74 _ 7E, 9C
        mov     eax, 0                                  ; 3B76 _ B8, 00000000
?_203:  leave                                           ; 3B7B _ C9
        ret                                             ; 3B7C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3B7D _ 55
        mov     ebp, esp                                ; 3B7E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B80 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B83 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3B86 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B88 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3B8B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 3B8E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3B91 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3B94 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3B97 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3B9A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3B9D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 3BA0 _ 89. 50, 14
        nop                                             ; 3BA3 _ 90
        pop     ebp                                     ; 3BA4 _ 5D
        ret                                             ; 3BA5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3BA6 _ 55
        mov     ebp, esp                                ; 3BA7 _ 89. E5
        push    edi                                     ; 3BA9 _ 57
        push    esi                                     ; 3BAA _ 56
        push    ebx                                     ; 3BAB _ 53
        sub     esp, 60                                 ; 3BAC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3BAF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3BB2 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3BB5 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3BB8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3BBB _ 8B. 40, 10
        add     eax, 1                                  ; 3BBE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3BC1 _ 39. 45, 10
        jle     ?_204                                   ; 3BC4 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3BC6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3BC9 _ 8B. 40, 10
        add     eax, 1                                  ; 3BCC _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3BCF _ 89. 45, 10
?_204:  cmp     dword [ebp+10H], -1                     ; 3BD2 _ 83. 7D, 10, FF
        jge     ?_205                                   ; 3BD6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3BD8 _ C7. 45, 10, FFFFFFFF
?_205:  mov     eax, dword [ebp+0CH]                    ; 3BDF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3BE2 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3BE5 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3BE8 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3BEB _ 3B. 45, 10
        jle     ?_212                                   ; 3BEE _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3BF4 _ 83. 7D, 10, 00
        js      ?_208                                   ; 3BF8 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 3BFE _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3C01 _ 89. 45, E4
        jmp     ?_207                                   ; 3C04 _ EB, 34

?_206:  mov     eax, dword [ebp-1CH]                    ; 3C06 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3C09 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3C0C _ 8B. 45, 08
        add     edx, 4                                  ; 3C0F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3C12 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3C16 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3C19 _ 8B. 55, E4
        add     edx, 4                                  ; 3C1C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3C1F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3C23 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3C26 _ 8B. 55, E4
        add     edx, 4                                  ; 3C29 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3C2C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3C30 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3C33 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3C36 _ 83. 6D, E4, 01
?_207:  mov     eax, dword [ebp-1CH]                    ; 3C3A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3C3D _ 3B. 45, 10
        jg      ?_206                                   ; 3C40 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3C42 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3C45 _ 8B. 55, 10
        add     edx, 4                                  ; 3C48 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3C4B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3C4E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 3C52 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3C55 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3C58 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3C5B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3C5E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3C61 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3C64 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3C67 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3C6A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3C6D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3C70 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3C73 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3C76 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3C79 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3C7C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3C7F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 3C82 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3C86 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3C8A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3C8E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3C92 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C96 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C99 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3C9C _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 3CA1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3CA4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3CA7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3CAA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3CAD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3CB0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3CB3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3CB6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3CB9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3CBC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3CBF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3CC2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3CC5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3CC8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3CCB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3CCE _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3CD1 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3CD4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3CD8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3CDC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3CE0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3CE4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3CE8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CEF _ 89. 04 24
        call    _sheet_refreshsub                       ; 3CF2 _ E8, 00000465
        jmp     ?_219                                   ; 3CF7 _ E9, 0000027D

?_208:  mov     eax, dword [ebp+8H]                     ; 3CFC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3CFF _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3D02 _ 39. 45, E0
        jge     ?_211                                   ; 3D05 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3D07 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3D0A _ 89. 45, E4
        jmp     ?_210                                   ; 3D0D _ EB, 34

?_209:  mov     eax, dword [ebp-1CH]                    ; 3D0F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3D12 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3D15 _ 8B. 45, 08
        add     edx, 4                                  ; 3D18 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3D1B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3D1F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3D22 _ 8B. 55, E4
        add     edx, 4                                  ; 3D25 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3D28 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3D2C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3D2F _ 8B. 55, E4
        add     edx, 4                                  ; 3D32 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3D35 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3D39 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3D3C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3D3F _ 83. 45, E4, 01
?_210:  mov     eax, dword [ebp+8H]                     ; 3D43 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3D46 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3D49 _ 39. 45, E4
        jl      ?_209                                   ; 3D4C _ 7C, C1
?_211:  mov     eax, dword [ebp+8H]                     ; 3D4E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3D51 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3D54 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3D57 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3D5A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3D5D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3D60 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3D63 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3D66 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3D69 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3D6C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3D6F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3D72 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3D75 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3D78 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3D7B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3D7E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3D81 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3D84 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3D87 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3D8F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3D93 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3D97 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3D9B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D9F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3DA2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3DA5 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 3DAA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3DAD _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3DB0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3DB3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3DB6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3DB9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3DBC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3DBF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3DC2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3DC5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3DC8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3DCB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3DCE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3DD1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3DD4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3DD7 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 3DDA _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 3DDE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3DE6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3DEA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3DEE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3DF2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3DF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3DF9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3DFC _ E8, 0000035B
        jmp     ?_219                                   ; 3E01 _ E9, 00000173

?_212:  mov     eax, dword [ebp-20H]                    ; 3E06 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3E09 _ 3B. 45, 10
        jge     ?_219                                   ; 3E0C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3E12 _ 83. 7D, E0, 00
        js      ?_215                                   ; 3E16 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3E18 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3E1B _ 89. 45, E4
        jmp     ?_214                                   ; 3E1E _ EB, 34

?_213:  mov     eax, dword [ebp-1CH]                    ; 3E20 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3E23 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3E26 _ 8B. 45, 08
        add     edx, 4                                  ; 3E29 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3E2C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3E30 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3E33 _ 8B. 55, E4
        add     edx, 4                                  ; 3E36 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3E39 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3E3D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3E40 _ 8B. 55, E4
        add     edx, 4                                  ; 3E43 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3E46 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3E4A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3E4D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3E50 _ 83. 45, E4, 01
?_214:  mov     eax, dword [ebp-1CH]                    ; 3E54 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3E57 _ 3B. 45, 10
        jl      ?_213                                   ; 3E5A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3E5C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3E5F _ 8B. 55, 10
        add     edx, 4                                  ; 3E62 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3E65 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3E68 _ 89. 4C 90, 04
        jmp     ?_218                                   ; 3E6C _ EB, 6C

?_215:  mov     eax, dword [ebp+8H]                     ; 3E6E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3E71 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3E74 _ 89. 45, E4
        jmp     ?_217                                   ; 3E77 _ EB, 3A

?_216:  mov     eax, dword [ebp-1CH]                    ; 3E79 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 3E7C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 3E7F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3E82 _ 8B. 55, E4
        add     edx, 4                                  ; 3E85 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3E88 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3E8C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 3E8F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3E92 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3E96 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3E99 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3E9C _ 8B. 45, 08
        add     edx, 4                                  ; 3E9F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3EA2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3EA6 _ 8B. 55, E4
        add     edx, 1                                  ; 3EA9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3EAC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3EAF _ 83. 6D, E4, 01
?_217:  mov     eax, dword [ebp-1CH]                    ; 3EB3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3EB6 _ 3B. 45, 10
        jge     ?_216                                   ; 3EB9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 3EBB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3EBE _ 8B. 55, 10
        add     edx, 4                                  ; 3EC1 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3EC4 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3EC7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3ECB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3ECE _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3ED1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3ED4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3ED7 _ 89. 50, 10
?_218:  mov     eax, dword [ebp+0CH]                    ; 3EDA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3EDD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3EE0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3EE3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3EE6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3EE9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3EEC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3EEF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3EF2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3EF5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3EF8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3EFB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3EFE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3F01 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3F04 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3F07 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3F0B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3F0F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3F13 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3F17 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F1B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F1E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3F21 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3F26 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3F29 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3F2C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3F2F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3F32 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3F35 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3F38 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3F3B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3F3E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3F41 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3F44 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3F47 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3F4A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3F4D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3F50 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3F53 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3F57 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3F5A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3F5E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3F62 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3F66 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3F6A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F6E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F71 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3F74 _ E8, 000001E3
?_219:  nop                                             ; 3F79 _ 90
        add     esp, 60                                 ; 3F7A _ 83. C4, 3C
        pop     ebx                                     ; 3F7D _ 5B
        pop     esi                                     ; 3F7E _ 5E
        pop     edi                                     ; 3F7F _ 5F
        pop     ebp                                     ; 3F80 _ 5D
        ret                                             ; 3F81 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3F82 _ 55
        mov     ebp, esp                                ; 3F83 _ 89. E5
        push    edi                                     ; 3F85 _ 57
        push    esi                                     ; 3F86 _ 56
        push    ebx                                     ; 3F87 _ 53
        sub     esp, 60                                 ; 3F88 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3F8B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3F8E _ 8B. 40, 18
        test    eax, eax                                ; 3F91 _ 85. C0
        js      ?_220                                   ; 3F93 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3F95 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3F98 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 3F9B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 3F9E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3FA1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3FA4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3FA7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 3FAA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3FAD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3FB0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3FB3 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3FB6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3FB9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3FBC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3FBF _ 8B. 45, 14
        add     edx, eax                                ; 3FC2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3FC4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3FC7 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 3FCA _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3FCD _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3FD0 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3FD3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3FD7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3FDB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3FDF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3FE3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3FE7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FEB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FEE _ 89. 04 24
        call    _sheet_refreshsub                       ; 3FF1 _ E8, 00000166
?_220:  mov     eax, 0                                  ; 3FF6 _ B8, 00000000
        add     esp, 60                                 ; 3FFB _ 83. C4, 3C
        pop     ebx                                     ; 3FFE _ 5B
        pop     esi                                     ; 3FFF _ 5E
        pop     edi                                     ; 4000 _ 5F
        pop     ebp                                     ; 4001 _ 5D
        ret                                             ; 4002 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4003 _ 55
        mov     ebp, esp                                ; 4004 _ 89. E5
        push    esi                                     ; 4006 _ 56
        push    ebx                                     ; 4007 _ 53
        sub     esp, 48                                 ; 4008 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 400B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 400E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4011 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4014 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4017 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 401A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 401D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4020 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4023 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4026 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4029 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 402C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 402F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4032 _ 8B. 40, 18
        test    eax, eax                                ; 4035 _ 85. C0
        js      ?_221                                   ; 4037 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 403D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4040 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4043 _ 8B. 45, F0
        add     edx, eax                                ; 4046 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4048 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 404B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 404E _ 8B. 45, F4
        add     eax, ecx                                ; 4051 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4053 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 405B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 405F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4063 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4066 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 406A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 406D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4071 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4074 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4077 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 407C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 407F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4082 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4085 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4088 _ 8B. 45, 14
        add     edx, eax                                ; 408B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 408D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4090 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 4093 _ 8B. 45, 10
        add     eax, ebx                                ; 4096 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 4098 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 409C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 40A0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 40A4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 40A7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 40AB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 40AE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40B2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40B5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 40B8 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 40BD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 40C0 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 40C3 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 40C6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 40C9 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 40CC _ 8B. 45, F0
        add     edx, eax                                ; 40CF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 40D1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 40D4 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 40D7 _ 8B. 45, F4
        add     eax, ebx                                ; 40DA _ 01. D8
        mov     dword [esp+18H], ecx                    ; 40DC _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 40E0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 40E8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 40EC _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 40F0 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 40F3 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 40F7 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 40FA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4101 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4104 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4109 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 410C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 410F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4112 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4115 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4118 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 411B _ 8B. 45, 14
        add     edx, eax                                ; 411E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4120 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 4123 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4126 _ 8B. 45, 10
        add     eax, esi                                ; 4129 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 412B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 412F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4133 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4137 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 413B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 413E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4142 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4145 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4149 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 414C _ 89. 04 24
        call    _sheet_refreshsub                       ; 414F _ E8, 00000008
?_221:  nop                                             ; 4154 _ 90
        add     esp, 48                                 ; 4155 _ 83. C4, 30
        pop     ebx                                     ; 4158 _ 5B
        pop     esi                                     ; 4159 _ 5E
        pop     ebp                                     ; 415A _ 5D
        ret                                             ; 415B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 415C _ 55
        mov     ebp, esp                                ; 415D _ 89. E5
        sub     esp, 48                                 ; 415F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 4162 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4165 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 4167 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 416A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 416D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 4170 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 4173 _ 83. 7D, 0C, 00
        jns     ?_222                                   ; 4177 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4179 _ C7. 45, 0C, 00000000
?_222:  cmp     dword [ebp+10H], 8                      ; 4180 _ 83. 7D, 10, 08
        jg      ?_223                                   ; 4184 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4186 _ C7. 45, 10, 00000000
?_223:  mov     eax, dword [ebp+8H]                     ; 418D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4190 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4193 _ 39. 45, 14
        jle     ?_224                                   ; 4196 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4198 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 419B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 419E _ 89. 45, 14
?_224:  mov     eax, dword [ebp+8H]                     ; 41A1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41A4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 41A7 _ 39. 45, 18
        jle     ?_225                                   ; 41AA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 41AC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41AF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 41B2 _ 89. 45, 18
?_225:  mov     eax, dword [ebp+1CH]                    ; 41B5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 41B8 _ 89. 45, FC
        jmp     ?_232                                   ; 41BB _ E9, 0000010F

?_226:  mov     eax, dword [ebp+8H]                     ; 41C0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41C3 _ 8B. 55, FC
        add     edx, 4                                  ; 41C6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 41C9 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 41CD _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 41D0 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 41D3 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 41D5 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 41D8 _ 8B. 45, 08
        add     eax, 1044                               ; 41DB _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 41E0 _ 8B. 55, E8
        sub     edx, eax                                ; 41E3 _ 29. C2
        mov     eax, edx                                ; 41E5 _ 89. D0
        sar     eax, 5                                  ; 41E7 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 41EA _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 41ED _ C7. 45, F4, 00000000
        jmp     ?_231                                   ; 41F4 _ E9, 000000C3

?_227:  mov     eax, dword [ebp-18H]                    ; 41F9 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 41FC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 41FF _ 8B. 45, F4
        add     eax, edx                                ; 4202 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4204 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4207 _ C7. 45, F8, 00000000
        jmp     ?_230                                   ; 420E _ E9, 00000096

?_228:  mov     eax, dword [ebp-18H]                    ; 4213 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 4216 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4219 _ 8B. 45, F8
        add     eax, edx                                ; 421C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 421E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4221 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 4224 _ 3B. 45, D8
        jg      ?_229                                   ; 4227 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 4229 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 422C _ 3B. 45, 14
        jge     ?_229                                   ; 422F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 4231 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 4234 _ 3B. 45, DC
        jg      ?_229                                   ; 4237 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 4239 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 423C _ 3B. 45, 18
        jge     ?_229                                   ; 423F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 4241 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4244 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4247 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 424B _ 8B. 55, F8
        add     eax, edx                                ; 424E _ 01. D0
        mov     edx, eax                                ; 4250 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 4252 _ 8B. 45, E4
        add     eax, edx                                ; 4255 _ 01. D0
        movzx   eax, byte [eax]                         ; 4257 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 425A _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 425D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4260 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4263 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4267 _ 8B. 55, D8
        add     eax, edx                                ; 426A _ 01. D0
        mov     edx, eax                                ; 426C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 426E _ 8B. 45, EC
        add     eax, edx                                ; 4271 _ 01. D0
        movzx   eax, byte [eax]                         ; 4273 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 4276 _ 38. 45, E3
        jnz     ?_229                                   ; 4279 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 427B _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 427F _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 4282 _ 8B. 52, 14
        cmp     eax, edx                                ; 4285 _ 39. D0
        jz      ?_229                                   ; 4287 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4289 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 428C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 428F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4293 _ 8B. 55, D8
        add     eax, edx                                ; 4296 _ 01. D0
        mov     edx, eax                                ; 4298 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 429A _ 8B. 45, F0
        add     edx, eax                                ; 429D _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 429F _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 42A3 _ 88. 02
?_229:  add     dword [ebp-8H], 1                       ; 42A5 _ 83. 45, F8, 01
?_230:  mov     eax, dword [ebp-18H]                    ; 42A9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 42AC _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 42AF _ 39. 45, F8
        jl      ?_228                                   ; 42B2 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 42B8 _ 83. 45, F4, 01
?_231:  mov     eax, dword [ebp-18H]                    ; 42BC _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 42BF _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 42C2 _ 39. 45, F4
        jl      ?_227                                   ; 42C5 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 42CB _ 83. 45, FC, 01
?_232:  mov     eax, dword [ebp-4H]                     ; 42CF _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 42D2 _ 3B. 45, 20
        jle     ?_226                                   ; 42D5 _ 0F 8E, FFFFFEE5
        nop                                             ; 42DB _ 90
        leave                                           ; 42DC _ C9
        ret                                             ; 42DD _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 42DE _ 55
        mov     ebp, esp                                ; 42DF _ 89. E5
        sub     esp, 64                                 ; 42E1 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 42E4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 42E7 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 42EA _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 42ED _ 83. 7D, 0C, 00
        jns     ?_233                                   ; 42F1 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 42F3 _ C7. 45, 0C, 00000000
?_233:  cmp     dword [ebp+10H], 0                      ; 42FA _ 83. 7D, 10, 00
        jns     ?_234                                   ; 42FE _ 79, 07
        mov     dword [ebp+10H], 0                      ; 4300 _ C7. 45, 10, 00000000
?_234:  mov     eax, dword [ebp+8H]                     ; 4307 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 430A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 430D _ 39. 45, 14
        jle     ?_235                                   ; 4310 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4312 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4315 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4318 _ 89. 45, 14
?_235:  mov     eax, dword [ebp+8H]                     ; 431B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 431E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4321 _ 39. 45, 18
        jle     ?_236                                   ; 4324 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4326 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4329 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 432C _ 89. 45, 18
?_236:  mov     eax, dword [ebp+1CH]                    ; 432F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4332 _ 89. 45, FC
        jmp     ?_247                                   ; 4335 _ E9, 00000139

?_237:  mov     eax, dword [ebp+8H]                     ; 433A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 433D _ 8B. 55, FC
        add     edx, 4                                  ; 4340 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4343 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 4347 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 434A _ 8B. 45, 08
        add     eax, 1044                               ; 434D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 4352 _ 8B. 55, DC
        sub     edx, eax                                ; 4355 _ 29. C2
        mov     eax, edx                                ; 4357 _ 89. D0
        sar     eax, 5                                  ; 4359 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 435C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 435F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 4362 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 4364 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 4367 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 436A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 436D _ 8B. 55, 0C
        sub     edx, eax                                ; 4370 _ 29. C2
        mov     eax, edx                                ; 4372 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 4374 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 4377 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 437A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 437D _ 8B. 55, 10
        sub     edx, eax                                ; 4380 _ 29. C2
        mov     eax, edx                                ; 4382 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 4384 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 4387 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 438A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 438D _ 8B. 55, 14
        sub     edx, eax                                ; 4390 _ 29. C2
        mov     eax, edx                                ; 4392 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 4394 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 4397 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 439A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 439D _ 8B. 55, 18
        sub     edx, eax                                ; 43A0 _ 29. C2
        mov     eax, edx                                ; 43A2 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 43A4 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 43A7 _ 83. 7D, F0, 00
        jns     ?_238                                   ; 43AB _ 79, 07
        mov     dword [ebp-10H], 0                      ; 43AD _ C7. 45, F0, 00000000
?_238:  cmp     dword [ebp-14H], 0                      ; 43B4 _ 83. 7D, EC, 00
        jns     ?_239                                   ; 43B8 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 43BA _ C7. 45, EC, 00000000
?_239:  mov     eax, dword [ebp-24H]                    ; 43C1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 43C4 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 43C7 _ 39. 45, E8
        jle     ?_240                                   ; 43CA _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 43CC _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 43CF _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 43D2 _ 89. 45, E8
?_240:  mov     eax, dword [ebp-24H]                    ; 43D5 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 43D8 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 43DB _ 39. 45, E4
        jle     ?_241                                   ; 43DE _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 43E0 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 43E3 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 43E6 _ 89. 45, E4
?_241:  mov     eax, dword [ebp-14H]                    ; 43E9 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 43EC _ 89. 45, F4
        jmp     ?_246                                   ; 43EF _ EB, 76

?_242:  mov     eax, dword [ebp-24H]                    ; 43F1 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 43F4 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 43F7 _ 8B. 45, F4
        add     eax, edx                                ; 43FA _ 01. D0
        mov     dword [ebp-30H], eax                    ; 43FC _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 43FF _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 4402 _ 89. 45, F8
        jmp     ?_245                                   ; 4405 _ EB, 54

?_243:  mov     eax, dword [ebp-24H]                    ; 4407 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 440A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 440D _ 8B. 45, F8
        add     eax, edx                                ; 4410 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 4412 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 4415 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4418 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 441B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 441F _ 8B. 55, F8
        add     eax, edx                                ; 4422 _ 01. D0
        mov     edx, eax                                ; 4424 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 4426 _ 8B. 45, D4
        add     eax, edx                                ; 4429 _ 01. D0
        movzx   eax, byte [eax]                         ; 442B _ 0F B6. 00
        movzx   eax, al                                 ; 442E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 4431 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 4434 _ 8B. 52, 14
        cmp     eax, edx                                ; 4437 _ 39. D0
        jz      ?_244                                   ; 4439 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 443B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 443E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 4441 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 4445 _ 8B. 55, CC
        add     eax, edx                                ; 4448 _ 01. D0
        mov     edx, eax                                ; 444A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 444C _ 8B. 45, E0
        add     edx, eax                                ; 444F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 4451 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 4455 _ 88. 02
?_244:  add     dword [ebp-8H], 1                       ; 4457 _ 83. 45, F8, 01
?_245:  mov     eax, dword [ebp-8H]                     ; 445B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 445E _ 3B. 45, E8
        jl      ?_243                                   ; 4461 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 4463 _ 83. 45, F4, 01
?_246:  mov     eax, dword [ebp-0CH]                    ; 4467 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 446A _ 3B. 45, E4
        jl      ?_242                                   ; 446D _ 7C, 82
        add     dword [ebp-4H], 1                       ; 446F _ 83. 45, FC, 01
?_247:  mov     eax, dword [ebp+8H]                     ; 4473 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4476 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 4479 _ 39. 45, FC
        jle     ?_237                                   ; 447C _ 0F 8E, FFFFFEB8
        nop                                             ; 4482 _ 90
        leave                                           ; 4483 _ C9
        ret                                             ; 4484 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 4485 _ 55
        mov     ebp, esp                                ; 4486 _ 89. E5
        sub     esp, 24                                 ; 4488 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 448B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 448E _ 8B. 40, 18
        test    eax, eax                                ; 4491 _ 85. C0
        js      ?_248                                   ; 4493 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 4495 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 449D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 44A0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44A4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44A7 _ 89. 04 24
        call    _sheet_updown                           ; 44AA _ E8, FFFFF6F7
?_248:  mov     eax, dword [ebp+0CH]                    ; 44AF _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 44B2 _ C7. 40, 1C, 00000000
        nop                                             ; 44B9 _ 90
        leave                                           ; 44BA _ C9
        ret                                             ; 44BB _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 44BC _ 55
        mov     ebp, esp                                ; 44BD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 44BF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 44C2 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 44C8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 44CB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 44D2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 44D5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 44DC _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 44DF _ C7. 40, 0C, 00000000
        nop                                             ; 44E6 _ 90
        pop     ebp                                     ; 44E7 _ 5D
        ret                                             ; 44E8 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 44E9 _ 55
        mov     ebp, esp                                ; 44EA _ 89. E5
        sub     esp, 16                                 ; 44EC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 44EF _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 44F6 _ C7. 45, FC, 00000000
        jmp     ?_250                                   ; 44FD _ EB, 14

?_249:  mov     eax, dword [ebp+8H]                     ; 44FF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4502 _ 8B. 55, FC
        add     edx, 2                                  ; 4505 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4508 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 450C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 450F _ 83. 45, FC, 01
?_250:  mov     eax, dword [ebp+8H]                     ; 4513 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4516 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4518 _ 39. 45, FC
        jc      ?_249                                   ; 451B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 451D _ 8B. 45, F8
        leave                                           ; 4520 _ C9
        ret                                             ; 4521 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 4522 _ 55
        mov     ebp, esp                                ; 4523 _ 89. E5
        sub     esp, 16                                 ; 4525 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4528 _ C7. 45, FC, 00000000
        jmp     ?_254                                   ; 452F _ E9, 00000083

?_251:  mov     eax, dword [ebp+8H]                     ; 4534 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4537 _ 8B. 55, FC
        add     edx, 2                                  ; 453A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 453D _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 4541 _ 39. 45, 0C
        ja      ?_253                                   ; 4544 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 4546 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4549 _ 8B. 55, FC
        add     edx, 2                                  ; 454C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 454F _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 4552 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 4555 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4558 _ 8B. 55, FC
        add     edx, 2                                  ; 455B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 455E _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 4561 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 4564 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4567 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 456A _ 8B. 55, FC
        add     edx, 2                                  ; 456D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 4570 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4573 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4576 _ 8B. 55, FC
        add     edx, 2                                  ; 4579 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 457C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 4580 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 4583 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 4586 _ 8B. 4D, FC
        add     ecx, 2                                  ; 4589 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 458C _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 4590 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4593 _ 8B. 55, FC
        add     edx, 2                                  ; 4596 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4599 _ 8B. 44 D0, 04
        test    eax, eax                                ; 459D _ 85. C0
        jnz     ?_252                                   ; 459F _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 45A1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 45A4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 45A6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 45A9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 45AC _ 89. 10
?_252:  mov     eax, dword [ebp-8H]                     ; 45AE _ 8B. 45, F8
        jmp     ?_255                                   ; 45B1 _ EB, 17

?_253:  add     dword [ebp-4H], 1                       ; 45B3 _ 83. 45, FC, 01
?_254:  mov     eax, dword [ebp+8H]                     ; 45B7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 45BA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 45BC _ 39. 45, FC
        jc      ?_251                                   ; 45BF _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 45C5 _ B8, 00000000
?_255:  leave                                           ; 45CA _ C9
        ret                                             ; 45CB _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 45CC _ 55
        mov     ebp, esp                                ; 45CD _ 89. E5
        push    ebx                                     ; 45CF _ 53
        sub     esp, 16                                 ; 45D0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 45D3 _ C7. 45, F8, 00000000
        jmp     ?_257                                   ; 45DA _ EB, 15

?_256:  mov     eax, dword [ebp+8H]                     ; 45DC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 45DF _ 8B. 55, F8
        add     edx, 2                                  ; 45E2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 45E5 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 45E8 _ 39. 45, 0C
        jc      ?_258                                   ; 45EB _ 72, 10
        add     dword [ebp-8H], 1                       ; 45ED _ 83. 45, F8, 01
?_257:  mov     eax, dword [ebp+8H]                     ; 45F1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 45F4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 45F6 _ 39. 45, F8
        jl      ?_256                                   ; 45F9 _ 7C, E1
        jmp     ?_259                                   ; 45FB _ EB, 01

?_258:  nop                                             ; 45FD _ 90
?_259:  cmp     dword [ebp-8H], 0                       ; 45FE _ 83. 7D, F8, 00
        jle     ?_261                                   ; 4602 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4608 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 460B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 460E _ 8B. 45, 08
        add     edx, 2                                  ; 4611 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 4614 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 4617 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 461A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 461D _ 8B. 45, 08
        add     edx, 2                                  ; 4620 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4623 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 4627 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4629 _ 39. 45, 0C
        jne     ?_261                                   ; 462C _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 4632 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4635 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4638 _ 8B. 45, 08
        add     edx, 2                                  ; 463B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 463E _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 4642 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4645 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 4648 _ 8B. 45, 10
        add     ecx, eax                                ; 464B _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 464D _ 8B. 45, 08
        add     edx, 2                                  ; 4650 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4653 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4657 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 465A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 465C _ 39. 45, F8
        jge     ?_260                                   ; 465F _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 4661 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4664 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4667 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 466A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 466D _ 8B. 55, F8
        add     edx, 2                                  ; 4670 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4673 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4676 _ 39. C1
        jnz     ?_260                                   ; 4678 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 467A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 467D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4680 _ 8B. 45, 08
        add     edx, 2                                  ; 4683 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4686 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 468A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 468D _ 8B. 55, F8
        add     edx, 2                                  ; 4690 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4693 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 4697 _ 8B. 55, F8
        sub     edx, 1                                  ; 469A _ 83. EA, 01
        add     ecx, eax                                ; 469D _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 469F _ 8B. 45, 08
        add     edx, 2                                  ; 46A2 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 46A5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 46A9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46AC _ 8B. 00
        lea     edx, [eax-1H]                           ; 46AE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 46B1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 46B4 _ 89. 10
?_260:  mov     eax, 0                                  ; 46B6 _ B8, 00000000
        jmp     ?_267                                   ; 46BB _ E9, 0000011C

?_261:  mov     eax, dword [ebp+8H]                     ; 46C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46C3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 46C5 _ 39. 45, F8
        jge     ?_262                                   ; 46C8 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 46CA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 46CD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 46D0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 46D3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 46D6 _ 8B. 55, F8
        add     edx, 2                                  ; 46D9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 46DC _ 8B. 04 D0
        cmp     ecx, eax                                ; 46DF _ 39. C1
        jnz     ?_262                                   ; 46E1 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 46E3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 46E6 _ 8B. 55, F8
        add     edx, 2                                  ; 46E9 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 46EC _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 46EF _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 46F2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 46F5 _ 8B. 55, F8
        add     edx, 2                                  ; 46F8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 46FB _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 46FF _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4702 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4705 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4708 _ 8B. 55, F8
        add     edx, 2                                  ; 470B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 470E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4712 _ B8, 00000000
        jmp     ?_267                                   ; 4717 _ E9, 000000C0

?_262:  mov     eax, dword [ebp+8H]                     ; 471C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 471F _ 8B. 00
        cmp     eax, 4095                               ; 4721 _ 3D, 00000FFF
        jg      ?_266                                   ; 4726 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 472C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 472F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4731 _ 89. 45, F4
        jmp     ?_264                                   ; 4734 _ EB, 28

?_263:  mov     eax, dword [ebp-0CH]                    ; 4736 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4739 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 473C _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 473F _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 4742 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4745 _ 8B. 45, 08
        add     edx, 2                                  ; 4748 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 474B _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 474E _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4750 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 4753 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4756 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 475A _ 83. 6D, F4, 01
?_264:  mov     eax, dword [ebp-0CH]                    ; 475E _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 4761 _ 3B. 45, F8
        jg      ?_263                                   ; 4764 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 4766 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4769 _ 8B. 00
        lea     edx, [eax+1H]                           ; 476B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 476E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4771 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4773 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4776 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4779 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 477C _ 8B. 00
        cmp     edx, eax                                ; 477E _ 39. C2
        jge     ?_265                                   ; 4780 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 4782 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4785 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4787 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 478A _ 89. 50, 04
?_265:  mov     eax, dword [ebp+8H]                     ; 478D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4790 _ 8B. 55, F8
        add     edx, 2                                  ; 4793 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4796 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4799 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 479C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 479F _ 8B. 55, F8
        add     edx, 2                                  ; 47A2 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 47A5 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 47A8 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 47AC _ B8, 00000000
        jmp     ?_267                                   ; 47B1 _ EB, 29

?_266:  mov     eax, dword [ebp+8H]                     ; 47B3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 47B6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 47B9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 47BC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 47BF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 47C2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 47C5 _ 8B. 40, 08
        mov     edx, eax                                ; 47C8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 47CA _ 8B. 45, 10
        add     eax, edx                                ; 47CD _ 01. D0
        mov     edx, eax                                ; 47CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 47D1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 47D4 _ 89. 50, 08
        mov     eax, 4294967295                         ; 47D7 _ B8, FFFFFFFF
?_267:  add     esp, 16                                 ; 47DC _ 83. C4, 10
        pop     ebx                                     ; 47DF _ 5B
        pop     ebp                                     ; 47E0 _ 5D
        ret                                             ; 47E1 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 47E2 _ 55
        mov     ebp, esp                                ; 47E3 _ 89. E5
        sub     esp, 24                                 ; 47E5 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 47E8 _ 8B. 45, 0C
        add     eax, 4095                               ; 47EB _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 47F0 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 47F5 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 47F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 47FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 47FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4802 _ 89. 04 24
        call    _memman_alloc                           ; 4805 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 480A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 480D _ 8B. 45, FC
        leave                                           ; 4810 _ C9
        ret                                             ; 4811 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 4812 _ 55
        mov     ebp, esp                                ; 4813 _ 89. E5
        sub     esp, 28                                 ; 4815 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4818 _ 8B. 45, 10
        add     eax, 4095                               ; 481B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4820 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4825 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4828 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 482B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 482F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4832 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4836 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4839 _ 89. 04 24
        call    _memman_free                            ; 483C _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4841 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4844 _ 8B. 45, FC
        leave                                           ; 4847 _ C9
        ret                                             ; 4848 _ C3
; _memman_free_4k End of function

        nop                                             ; 4849 _ 90
        nop                                             ; 484A _ 90
        nop                                             ; 484B _ 90


_fifo8_init:
        push    ebp                                     ; 484C _ 55
        mov     ebp, esp                                ; 484D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 484F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4852 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4855 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4858 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 485B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 485E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4860 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4863 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4866 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4869 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 486C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 4873 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4876 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 487D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4880 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4887 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 488A _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 488D _ 89. 50, 18
        nop                                             ; 4890 _ 90
        pop     ebp                                     ; 4891 _ 5D
        ret                                             ; 4892 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 4893 _ 55
        mov     ebp, esp                                ; 4894 _ 89. E5
        sub     esp, 40                                 ; 4896 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4899 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 489C _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 489F _ 83. 7D, 08, 00
        jnz     ?_268                                   ; 48A3 _ 75, 0A
        mov     eax, 4294967295                         ; 48A5 _ B8, FFFFFFFF
        jmp     ?_272                                   ; 48AA _ E9, 000000AB

?_268:  mov     eax, dword [ebp+8H]                     ; 48AF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 48B2 _ 8B. 40, 10
        test    eax, eax                                ; 48B5 _ 85. C0
        jnz     ?_269                                   ; 48B7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 48B9 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 48BC _ 8B. 40, 14
        or      eax, 01H                                ; 48BF _ 83. C8, 01
        mov     edx, eax                                ; 48C2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 48C4 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 48C7 _ 89. 50, 14
        mov     eax, 4294967295                         ; 48CA _ B8, FFFFFFFF
        jmp     ?_272                                   ; 48CF _ E9, 00000086

?_269:  mov     eax, dword [ebp+8H]                     ; 48D4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 48D7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 48D9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 48DC _ 8B. 40, 04
        add     edx, eax                                ; 48DF _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 48E1 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 48E5 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 48E7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 48EA _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 48ED _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 48F0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 48F3 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 48F6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 48F9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 48FC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 48FF _ 8B. 40, 0C
        cmp     edx, eax                                ; 4902 _ 39. C2
        jnz     ?_270                                   ; 4904 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4906 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4909 _ C7. 40, 04, 00000000
?_270:  mov     eax, dword [ebp+8H]                     ; 4910 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4913 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4916 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4919 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 491C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 491F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4922 _ 8B. 40, 18
        test    eax, eax                                ; 4925 _ 85. C0
        jz      ?_271                                   ; 4927 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4929 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 492C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 492F _ 8B. 40, 04
        cmp     eax, 2                                  ; 4932 _ 83. F8, 02
        jz      ?_271                                   ; 4935 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4937 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 493A _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 493D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4945 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 494D _ 89. 04 24
        call    _task_run                               ; 4950 _ E8, 00000000(rel)
?_271:  mov     eax, 0                                  ; 4955 _ B8, 00000000
?_272:  leave                                           ; 495A _ C9
        ret                                             ; 495B _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 495C _ 55
        mov     ebp, esp                                ; 495D _ 89. E5
        sub     esp, 16                                 ; 495F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 4962 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4965 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4968 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 496B _ 8B. 40, 0C
        cmp     edx, eax                                ; 496E _ 39. C2
        jnz     ?_273                                   ; 4970 _ 75, 07
        mov     eax, 4294967295                         ; 4972 _ B8, FFFFFFFF
        jmp     ?_275                                   ; 4977 _ EB, 51

?_273:  mov     eax, dword [ebp+8H]                     ; 4979 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 497C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 497E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4981 _ 8B. 40, 08
        add     eax, edx                                ; 4984 _ 01. D0
        movzx   eax, byte [eax]                         ; 4986 _ 0F B6. 00
        movzx   eax, al                                 ; 4989 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 498C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 498F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4992 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 4995 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4998 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 499B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 499E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 49A1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 49A4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 49A7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 49AA _ 39. C2
        jnz     ?_274                                   ; 49AC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 49AE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 49B1 _ C7. 40, 08, 00000000
?_274:  mov     eax, dword [ebp+8H]                     ; 49B8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 49BB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 49BE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 49C1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 49C4 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 49C7 _ 8B. 45, FC
?_275:  leave                                           ; 49CA _ C9
        ret                                             ; 49CB _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 49CC _ 55
        mov     ebp, esp                                ; 49CD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 49CF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 49D2 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 49D5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 49D8 _ 8B. 40, 10
        sub     edx, eax                                ; 49DB _ 29. C2
        mov     eax, edx                                ; 49DD _ 89. D0
        pop     ebp                                     ; 49DF _ 5D
        ret                                             ; 49E0 _ C3
; _fifo8_status End of function

        nop                                             ; 49E1 _ 90
        nop                                             ; 49E2 _ 90
        nop                                             ; 49E3 _ 90


_init_pit:
        push    ebp                                     ; 49E4 _ 55
        mov     ebp, esp                                ; 49E5 _ 89. E5
        sub     esp, 40                                 ; 49E7 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 49EA _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 49F2 _ C7. 04 24, 00000043
        call    _io_out8                                ; 49F9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 49FE _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4A06 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4A0D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 4A12 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4A1A _ C7. 04 24, 00000040
        call    _io_out8                                ; 4A21 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4A26 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4A30 _ C7. 45, F4, 00000000
        jmp     ?_277                                   ; 4A37 _ EB, 26

?_276:  mov     eax, dword [ebp-0CH]                    ; 4A39 _ 8B. 45, F4
        shl     eax, 4                                  ; 4A3C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4A3F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4A44 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4A4A _ 8B. 45, F4
        shl     eax, 4                                  ; 4A4D _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 4A50 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4A55 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4A5B _ 83. 45, F4, 01
?_277:  cmp     dword [ebp-0CH], 499                    ; 4A5F _ 81. 7D, F4, 000001F3
        jle     ?_276                                   ; 4A66 _ 7E, D1
        nop                                             ; 4A68 _ 90
        leave                                           ; 4A69 _ C9
        ret                                             ; 4A6A _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4A6B _ 55
        mov     ebp, esp                                ; 4A6C _ 89. E5
        sub     esp, 16                                 ; 4A6E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4A71 _ C7. 45, FC, 00000000
        jmp     ?_280                                   ; 4A78 _ EB, 36

?_278:  mov     eax, dword [ebp-4H]                     ; 4A7A _ 8B. 45, FC
        shl     eax, 4                                  ; 4A7D _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4A80 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4A85 _ 8B. 00
        test    eax, eax                                ; 4A87 _ 85. C0
        jnz     ?_279                                   ; 4A89 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 4A8B _ 8B. 45, FC
        shl     eax, 4                                  ; 4A8E _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4A91 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4A96 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4A9C _ 8B. 45, FC
        shl     eax, 4                                  ; 4A9F _ C1. E0, 04
        add     eax, _timerctl                               ; 4AA2 _ 05, 00000000(d)
        add     eax, 4                                  ; 4AA7 _ 83. C0, 04
        jmp     ?_281                                   ; 4AAA _ EB, 12

?_279:  add     dword [ebp-4H], 1                       ; 4AAC _ 83. 45, FC, 01
?_280:  cmp     dword [ebp-4H], 499                     ; 4AB0 _ 81. 7D, FC, 000001F3
        jle     ?_278                                   ; 4AB7 _ 7E, C1
        mov     eax, 0                                  ; 4AB9 _ B8, 00000000
?_281:  leave                                           ; 4ABE _ C9
        ret                                             ; 4ABF _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4AC0 _ 55
        mov     ebp, esp                                ; 4AC1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4AC3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4AC6 _ C7. 40, 04, 00000000
        nop                                             ; 4ACD _ 90
        pop     ebp                                     ; 4ACE _ 5D
        ret                                             ; 4ACF _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4AD0 _ 55
        mov     ebp, esp                                ; 4AD1 _ 89. E5
        sub     esp, 4                                  ; 4AD3 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 4AD6 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4AD9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4ADC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4ADF _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 4AE2 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 4AE5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4AE8 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4AEC _ 88. 42, 0C
        nop                                             ; 4AEF _ 90
        leave                                           ; 4AF0 _ C9
        ret                                             ; 4AF1 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 4AF2 _ 55
        mov     ebp, esp                                ; 4AF3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4AF5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4AF8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4AFB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4AFD _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4B00 _ C7. 40, 04, 00000002
        nop                                             ; 4B07 _ 90
        pop     ebp                                     ; 4B08 _ 5D
        ret                                             ; 4B09 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4B0A _ 55
        mov     ebp, esp                                ; 4B0B _ 89. E5
        sub     esp, 40                                 ; 4B0D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4B10 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4B18 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4B1F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4B24 _ A1, 00000000(d)
        add     eax, 1                                  ; 4B29 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4B2C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4B31 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4B35 _ C7. 45, F4, 00000000
        jmp     ?_285                                   ; 4B3C _ E9, 000000AA

?_282:  mov     eax, dword [ebp-0CH]                    ; 4B41 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B44 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4B47 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4B4C _ 8B. 00
        cmp     eax, 2                                  ; 4B4E _ 83. F8, 02
        jne     ?_283                                   ; 4B51 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4B57 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B5A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4B5D _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4B62 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4B64 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4B67 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B6A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4B6D _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 4B72 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4B74 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B77 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4B7A _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4B7F _ 8B. 00
        test    eax, eax                                ; 4B81 _ 85. C0
        jnz     ?_283                                   ; 4B83 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 4B85 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B88 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4B8B _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4B90 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 4B96 _ 8B. 45, F4
        shl     eax, 4                                  ; 4B99 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4B9C _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4BA1 _ 0F B6. 00
        movzx   eax, al                                 ; 4BA4 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 4BA7 _ 8B. 55, F4
        shl     edx, 4                                  ; 4BAA _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4BAD _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 4BB3 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 4BB5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4BB9 _ 89. 14 24
        call    _fifo8_put                              ; 4BBC _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4BC1 _ 8B. 45, F4
        shl     eax, 4                                  ; 4BC4 _ C1. E0, 04
        add     eax, _timerctl                               ; 4BC7 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4BCC _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4BCF _ A1, 00000000(d)
        cmp     edx, eax                                ; 4BD4 _ 39. C2
        jnz     ?_283                                   ; 4BD6 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4BD8 _ C6. 45, F3, 01
?_283:  cmp     byte [ebp-0DH], 0                       ; 4BDC _ 80. 7D, F3, 00
        jz      ?_284                                   ; 4BE0 _ 74, 05
        call    _task_switch                            ; 4BE2 _ E8, 00000000(rel)
?_284:  add     dword [ebp-0CH], 1                      ; 4BE7 _ 83. 45, F4, 01
?_285:  cmp     dword [ebp-0CH], 499                    ; 4BEB _ 81. 7D, F4, 000001F3
        jle     ?_282                                   ; 4BF2 _ 0F 8E, FFFFFF49
        nop                                             ; 4BF8 _ 90
        leave                                           ; 4BF9 _ C9
        ret                                             ; 4BFA _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4BFB _ B8, 00000000(d)
        ret                                             ; 4C00 _ C3
; _getTimerController End of function

        nop                                             ; 4C01 _ 90
        nop                                             ; 4C02 _ 90
        nop                                             ; 4C03 _ 90


_set_segmdesc:
        push    ebp                                     ; 4C04 _ 55
        mov     ebp, esp                                ; 4C05 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4C07 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_286                                   ; 4C0E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4C10 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4C17 _ 8B. 45, 0C
        shr     eax, 12                                 ; 4C1A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4C1D _ 89. 45, 0C
?_286:  mov     eax, dword [ebp+0CH]                    ; 4C20 _ 8B. 45, 0C
        mov     edx, eax                                ; 4C23 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C25 _ 8B. 45, 08
        mov     word [eax], dx                          ; 4C28 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4C2B _ 8B. 45, 10
        mov     edx, eax                                ; 4C2E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C30 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 4C33 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4C37 _ 8B. 45, 10
        sar     eax, 16                                 ; 4C3A _ C1. F8, 10
        mov     edx, eax                                ; 4C3D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C3F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 4C42 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4C45 _ 8B. 45, 14
        mov     edx, eax                                ; 4C48 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C4A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4C4D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 4C50 _ 8B. 45, 0C
        shr     eax, 16                                 ; 4C53 _ C1. E8, 10
        and     eax, 0FH                                ; 4C56 _ 83. E0, 0F
        mov     edx, eax                                ; 4C59 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4C5B _ 8B. 45, 14
        sar     eax, 8                                  ; 4C5E _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 4C61 _ 83. E0, F0
        or      eax, edx                                ; 4C64 _ 09. D0
        mov     edx, eax                                ; 4C66 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C68 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4C6B _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 4C6E _ 8B. 45, 10
        shr     eax, 24                                 ; 4C71 _ C1. E8, 18
        mov     edx, eax                                ; 4C74 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4C76 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4C79 _ 88. 50, 07
        nop                                             ; 4C7C _ 90
        pop     ebp                                     ; 4C7D _ 5D
        ret                                             ; 4C7E _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 4C7F _ 55
        mov     ebp, esp                                ; 4C80 _ 89. E5
        sub     esp, 16                                 ; 4C82 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4C85 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4C8B _ 8B. 55, 08
        mov     eax, edx                                ; 4C8E _ 89. D0
        shl     eax, 2                                  ; 4C90 _ C1. E0, 02
        add     eax, edx                                ; 4C93 _ 01. D0
        shl     eax, 2                                  ; 4C95 _ C1. E0, 02
        add     eax, ecx                                ; 4C98 _ 01. C8
        add     eax, 8                                  ; 4C9A _ 83. C0, 08
        mov     dword [eax], 0                          ; 4C9D _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 4CA3 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4CA9 _ 8B. 55, 08
        mov     eax, edx                                ; 4CAC _ 89. D0
        shl     eax, 2                                  ; 4CAE _ C1. E0, 02
        add     eax, edx                                ; 4CB1 _ 01. D0
        shl     eax, 2                                  ; 4CB3 _ C1. E0, 02
        add     eax, ecx                                ; 4CB6 _ 01. C8
        add     eax, 12                                 ; 4CB8 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4CBB _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4CC1 _ C7. 45, FC, 00000000
        jmp     ?_288                                   ; 4CC8 _ EB, 21

?_287:  mov     ecx, dword [_taskctl]                   ; 4CCA _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4CD0 _ 8B. 55, FC
        mov     eax, edx                                ; 4CD3 _ 89. D0
        add     eax, eax                                ; 4CD5 _ 01. C0
        add     eax, edx                                ; 4CD7 _ 01. D0
        shl     eax, 3                                  ; 4CD9 _ C1. E0, 03
        add     eax, ecx                                ; 4CDC _ 01. C8
        add     eax, 16                                 ; 4CDE _ 83. C0, 10
        mov     dword [eax], 0                          ; 4CE1 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 4CE7 _ 83. 45, FC, 01
?_288:  cmp     dword [ebp-4H], 2                       ; 4CEB _ 83. 7D, FC, 02
        jle     ?_287                                   ; 4CEF _ 7E, D9
        nop                                             ; 4CF1 _ 90
        leave                                           ; 4CF2 _ C9
        ret                                             ; 4CF3 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4CF4 _ 55
        mov     ebp, esp                                ; 4CF5 _ 89. E5
        sub     esp, 40                                 ; 4CF7 _ 83. EC, 28
        call    _get_addr_gdt                           ; 4CFA _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4CFF _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 4D02 _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 4D0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D0D _ 89. 04 24
        call    _memman_alloc_4k                        ; 4D10 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4D15 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4D1A _ C7. 45, F4, 00000000
        jmp     ?_290                                   ; 4D21 _ E9, 00000088

?_289:  mov     edx, dword [_taskctl]                   ; 4D26 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4D2C _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4D2F _ 69. C0, 00000094
        add     eax, edx                                ; 4D35 _ 01. D0
        add     eax, 72                                 ; 4D37 _ 83. C0, 48
        mov     dword [eax], 0                          ; 4D3A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4D40 _ 8B. 45, F4
        add     eax, 7                                  ; 4D43 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4D46 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4D4C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4D53 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4D56 _ 69. C0, 00000094
        add     eax, ecx                                ; 4D5C _ 01. C8
        add     eax, 68                                 ; 4D5E _ 83. C0, 44
        mov     dword [eax], edx                        ; 4D61 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 4D63 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4D69 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4D6C _ 69. C0, 00000094
        add     eax, 96                                 ; 4D72 _ 83. C0, 60
        add     eax, edx                                ; 4D75 _ 01. D0
        add     eax, 16                                 ; 4D77 _ 83. C0, 10
        mov     ecx, eax                                ; 4D7A _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4D7C _ 8B. 45, F4
        add     eax, 7                                  ; 4D7F _ 83. C0, 07
        lea     edx, [eax*8]                            ; 4D82 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 4D89 _ 8B. 45, F0
        add     eax, edx                                ; 4D8C _ 01. D0
        mov     dword [esp+0CH], 137                    ; 4D8E _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 4D96 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 4D9A _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 4DA2 _ 89. 04 24
        call    _set_segmdesc                           ; 4DA5 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 4DAA _ 83. 45, F4, 01
?_290:  cmp     dword [ebp-0CH], 4                      ; 4DAE _ 83. 7D, F4, 04
        jle     ?_289                                   ; 4DB2 _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 4DB8 _ C7. 45, F4, 00000000
        jmp     ?_292                                   ; 4DBF _ EB, 0F

?_291:  mov     eax, dword [ebp-0CH]                    ; 4DC1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 4DC4 _ 89. 04 24
        call    _init_task_level                        ; 4DC7 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 4DCC _ 83. 45, F4, 01
?_292:  cmp     dword [ebp-0CH], 2                      ; 4DD0 _ 83. 7D, F4, 02
        jle     ?_291                                   ; 4DD4 _ 7E, EB
        call    _task_alloc                             ; 4DD6 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 4DDB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4DDE _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 4DE1 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4DE8 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 4DEB _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 4DF2 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4DF5 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4DFC _ 8B. 45, EC
        mov     dword [esp], eax                        ; 4DFF _ 89. 04 24
        call    _task_add                               ; 4E02 _ E8, 0000003A
        call    _task_switchsub                         ; 4E07 _ E8, 00000439
        mov     eax, dword [ebp-14H]                    ; 4E0C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4E0F _ 8B. 00
        mov     dword [esp], eax                        ; 4E11 _ 89. 04 24
        call    _load_tr                                ; 4E14 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4E19 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 4E1E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 4E23 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4E26 _ 8B. 40, 08
        mov     edx, eax                                ; 4E29 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4E2B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4E30 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4E34 _ 89. 04 24
        call    _timer_settime                          ; 4E37 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4E3C _ 8B. 45, EC
        leave                                           ; 4E3F _ C9
        ret                                             ; 4E40 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 4E41 _ 55
        mov     ebp, esp                                ; 4E42 _ 89. E5
        sub     esp, 16                                 ; 4E44 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4E47 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4E4D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4E50 _ 8B. 50, 0C
        mov     eax, edx                                ; 4E53 _ 89. D0
        shl     eax, 2                                  ; 4E55 _ C1. E0, 02
        add     eax, edx                                ; 4E58 _ 01. D0
        shl     eax, 2                                  ; 4E5A _ C1. E0, 02
        add     eax, ecx                                ; 4E5D _ 01. C8
        add     eax, 8                                  ; 4E5F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4E62 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4E65 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4E68 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4E6A _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4E6D _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4E70 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4E74 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4E77 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4E79 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4E7C _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4E7F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4E81 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4E84 _ C7. 40, 04, 00000002
        nop                                             ; 4E8B _ 90
        leave                                           ; 4E8C _ C9
        ret                                             ; 4E8D _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 4E8E _ 55
        mov     ebp, esp                                ; 4E8F _ 89. E5
        sub     esp, 16                                 ; 4E91 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4E94 _ C7. 45, FC, 00000000
        jmp     ?_295                                   ; 4E9B _ E9, 00000101

?_293:  mov     edx, dword [_taskctl]                   ; 4EA0 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4EA6 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4EA9 _ 69. C0, 00000094
        add     eax, edx                                ; 4EAF _ 01. D0
        add     eax, 72                                 ; 4EB1 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 4EB4 _ 8B. 00
        test    eax, eax                                ; 4EB6 _ 85. C0
        jne     ?_294                                   ; 4EB8 _ 0F 85, 000000DF
        mov     edx, dword [_taskctl]                   ; 4EBE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4EC4 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4EC7 _ 69. C0, 00000094
        add     eax, 64                                 ; 4ECD _ 83. C0, 40
        add     eax, edx                                ; 4ED0 _ 01. D0
        add     eax, 4                                  ; 4ED2 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 4ED5 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 4ED8 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 4EDB _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 4EE2 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 4EE5 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4EEC _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 4EEF _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4EF6 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4EF9 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F00 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 4F03 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F0A _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4F0D _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F14 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4F17 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 4F1E _ 8B. 45, FC
        add     eax, 1                                  ; 4F21 _ 83. C0, 01
        shl     eax, 9                                  ; 4F24 _ C1. E0, 09
        mov     edx, eax                                ; 4F27 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4F29 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4F2C _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 4F2F _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 4F32 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F39 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4F3C _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F43 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4F46 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F4D _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 4F50 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F5A _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4F5D _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F67 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4F6A _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F74 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 4F77 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F7E _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4F81 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4F8B _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4F8E _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 4F98 _ 8B. 45, F8
        jmp     ?_296                                   ; 4F9B _ EB, 13

?_294:  add     dword [ebp-4H], 1                       ; 4F9D _ 83. 45, FC, 01
?_295:  cmp     dword [ebp-4H], 4                       ; 4FA1 _ 83. 7D, FC, 04
        jle     ?_293                                   ; 4FA5 _ 0F 8E, FFFFFEF5
        mov     eax, 0                                  ; 4FAB _ B8, 00000000
?_296:  leave                                           ; 4FB0 _ C9
        ret                                             ; 4FB1 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4FB2 _ 55
        mov     ebp, esp                                ; 4FB3 _ 89. E5
        sub     esp, 24                                 ; 4FB5 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 4FB8 _ 83. 7D, 0C, 00
        jns     ?_297                                   ; 4FBC _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4FBE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4FC1 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4FC4 _ 89. 45, 0C
?_297:  cmp     dword [ebp+10H], 0                      ; 4FC7 _ 83. 7D, 10, 00
        jle     ?_298                                   ; 4FCB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4FCD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4FD0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4FD3 _ 89. 50, 08
?_298:  mov     eax, dword [ebp+8H]                     ; 4FD6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4FD9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4FDC _ 83. F8, 02
        jnz     ?_299                                   ; 4FDF _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4FE1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4FE4 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4FE7 _ 39. 45, 0C
        jz      ?_299                                   ; 4FEA _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4FEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4FEF _ 89. 04 24
        call    _task_remove                            ; 4FF2 _ E8, 0000002E
?_299:  mov     eax, dword [ebp+8H]                     ; 4FF7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4FFA _ 8B. 40, 04
        cmp     eax, 2                                  ; 4FFD _ 83. F8, 02
        jz      ?_300                                   ; 5000 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 5002 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5005 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5008 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 500B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 500E _ 89. 04 24
        call    _task_add                               ; 5011 _ E8, FFFFFE2B
?_300:  mov     eax, dword [_taskctl]                   ; 5016 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 501B _ C7. 40, 04, 00000001
        nop                                             ; 5022 _ 90
        leave                                           ; 5023 _ C9
        ret                                             ; 5024 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 5025 _ 55
        mov     ebp, esp                                ; 5026 _ 89. E5
        sub     esp, 16                                 ; 5028 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 502B _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5031 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5034 _ 8B. 50, 0C
        mov     eax, edx                                ; 5037 _ 89. D0
        shl     eax, 2                                  ; 5039 _ C1. E0, 02
        add     eax, edx                                ; 503C _ 01. D0
        shl     eax, 2                                  ; 503E _ C1. E0, 02
        add     eax, ecx                                ; 5041 _ 01. C8
        add     eax, 8                                  ; 5043 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5046 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 5049 _ C7. 45, FC, 00000000
        jmp     ?_303                                   ; 5050 _ EB, 23

?_301:  mov     eax, dword [ebp-8H]                     ; 5052 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5055 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5058 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 505C _ 39. 45, 08
        jnz     ?_302                                   ; 505F _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 5061 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5064 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 5067 _ C7. 44 90, 08, 00000000
        jmp     ?_304                                   ; 506F _ EB, 0E

?_302:  add     dword [ebp-4H], 1                       ; 5071 _ 83. 45, FC, 01
?_303:  mov     eax, dword [ebp-8H]                     ; 5075 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5078 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 507A _ 39. 45, FC
        jl      ?_301                                   ; 507D _ 7C, D3
?_304:  mov     eax, dword [ebp-8H]                     ; 507F _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5082 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5084 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 5087 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 508A _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 508C _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 508F _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 5092 _ 39. 45, FC
        jge     ?_305                                   ; 5095 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 5097 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 509A _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 509D _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 50A0 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 50A3 _ 89. 50, 04
?_305:  mov     eax, dword [ebp-8H]                     ; 50A6 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 50A9 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 50AC _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 50AF _ 8B. 00
        cmp     edx, eax                                ; 50B1 _ 39. C2
        jl      ?_306                                   ; 50B3 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 50B5 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 50B8 _ C7. 40, 04, 00000000
?_306:  mov     eax, dword [ebp+8H]                     ; 50BF _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 50C2 _ C7. 40, 04, 00000001
        jmp     ?_308                                   ; 50C9 _ EB, 1B

?_307:  mov     eax, dword [ebp-4H]                     ; 50CB _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 50CE _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 50D1 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 50D4 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 50D8 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 50DB _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 50DE _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 50E2 _ 83. 45, FC, 01
?_308:  mov     eax, dword [ebp-8H]                     ; 50E6 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 50E9 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 50EB _ 39. 45, FC
        jl      ?_307                                   ; 50EE _ 7C, DB
        nop                                             ; 50F0 _ 90
        leave                                           ; 50F1 _ C9
        ret                                             ; 50F2 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 50F3 _ 55
        mov     ebp, esp                                ; 50F4 _ 89. E5
        sub     esp, 40                                 ; 50F6 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 50F9 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 50FF _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5104 _ 8B. 10
        mov     eax, edx                                ; 5106 _ 89. D0
        shl     eax, 2                                  ; 5108 _ C1. E0, 02
        add     eax, edx                                ; 510B _ 01. D0
        shl     eax, 2                                  ; 510D _ C1. E0, 02
        add     eax, ecx                                ; 5110 _ 01. C8
        add     eax, 8                                  ; 5112 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5115 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5118 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 511B _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 511E _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5121 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5125 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5128 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 512B _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 512E _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5131 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5134 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5137 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 513A _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 513D _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5140 _ 8B. 00
        cmp     edx, eax                                ; 5142 _ 39. C2
        jnz     ?_309                                   ; 5144 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5146 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5149 _ C7. 40, 04, 00000000
?_309:  mov     eax, dword [_taskctl]                   ; 5150 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5155 _ 8B. 40, 04
        test    eax, eax                                ; 5158 _ 85. C0
        jz      ?_310                                   ; 515A _ 74, 24
        call    _task_switchsub                         ; 515C _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 5161 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5167 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 516C _ 8B. 10
        mov     eax, edx                                ; 516E _ 89. D0
        shl     eax, 2                                  ; 5170 _ C1. E0, 02
        add     eax, edx                                ; 5173 _ 01. D0
        shl     eax, 2                                  ; 5175 _ C1. E0, 02
        add     eax, ecx                                ; 5178 _ 01. C8
        add     eax, 8                                  ; 517A _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 517D _ 89. 45, F4
?_310:  mov     eax, dword [ebp-0CH]                    ; 5180 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5183 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5186 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5189 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 518D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5190 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5193 _ 8B. 40, 08
        mov     edx, eax                                ; 5196 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5198 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 519D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 51A1 _ 89. 04 24
        call    _timer_settime                          ; 51A4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 51A9 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 51AC _ 3B. 45, F0
        jz      ?_311                                   ; 51AF _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 51B1 _ 83. 7D, EC, 00
        jz      ?_311                                   ; 51B5 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 51B7 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 51BA _ 8B. 00
        mov     dword [esp+4H], eax                     ; 51BC _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 51C0 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 51C7 _ E8, 00000000(rel)
        nop                                             ; 51CC _ 90
?_311:  nop                                             ; 51CD _ 90
        leave                                           ; 51CE _ C9
        ret                                             ; 51CF _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 51D0 _ 55
        mov     ebp, esp                                ; 51D1 _ 89. E5
        sub     esp, 40                                 ; 51D3 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 51D6 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 51DD _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 51E4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 51E7 _ 8B. 40, 04
        cmp     eax, 2                                  ; 51EA _ 83. F8, 02
        jnz     ?_312                                   ; 51ED _ 75, 51
        call    _task_now                               ; 51EF _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 51F4 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 51F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 51FA _ 89. 04 24
        call    _task_remove                            ; 51FD _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 5202 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5209 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 520C _ 3B. 45, F0
        jnz     ?_312                                   ; 520F _ 75, 2F
        call    _task_switchsub                         ; 5211 _ E8, 0000002F
        call    _task_now                               ; 5216 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 521B _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 521E _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5225 _ 83. 7D, F0, 00
        jz      ?_312                                   ; 5229 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 522B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 522E _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5230 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5234 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 523B _ E8, 00000000(rel)
?_312:  mov     eax, dword [ebp-0CH]                    ; 5240 _ 8B. 45, F4
        leave                                           ; 5243 _ C9
        ret                                             ; 5244 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 5245 _ 55
        mov     ebp, esp                                ; 5246 _ 89. E5
        sub     esp, 16                                 ; 5248 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 524B _ C7. 45, FC, 00000000
        jmp     ?_314                                   ; 5252 _ EB, 22

?_313:  mov     ecx, dword [_taskctl]                   ; 5254 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 525A _ 8B. 55, FC
        mov     eax, edx                                ; 525D _ 89. D0
        shl     eax, 2                                  ; 525F _ C1. E0, 02
        add     eax, edx                                ; 5262 _ 01. D0
        shl     eax, 2                                  ; 5264 _ C1. E0, 02
        add     eax, ecx                                ; 5267 _ 01. C8
        add     eax, 8                                  ; 5269 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 526C _ 8B. 00
        test    eax, eax                                ; 526E _ 85. C0
        jg      ?_315                                   ; 5270 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 5272 _ 83. 45, FC, 01
?_314:  cmp     dword [ebp-4H], 2                       ; 5276 _ 83. 7D, FC, 02
        jle     ?_313                                   ; 527A _ 7E, D8
        jmp     ?_316                                   ; 527C _ EB, 01

?_315:  nop                                             ; 527E _ 90
?_316:  mov     eax, dword [_taskctl]                   ; 527F _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5284 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 5287 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 5289 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 528E _ C7. 40, 04, 00000000
        nop                                             ; 5295 _ 90
        leave                                           ; 5296 _ C9
        ret                                             ; 5297 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 5298 _ 55
        mov     ebp, esp                                ; 5299 _ 89. E5
        sub     esp, 16                                 ; 529B _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 529E _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 52A4 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 52A9 _ 8B. 10
        mov     eax, edx                                ; 52AB _ 89. D0
        shl     eax, 2                                  ; 52AD _ C1. E0, 02
        add     eax, edx                                ; 52B0 _ 01. D0
        shl     eax, 2                                  ; 52B2 _ C1. E0, 02
        add     eax, ecx                                ; 52B5 _ 01. C8
        add     eax, 8                                  ; 52B7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 52BA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 52BD _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 52C0 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 52C3 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 52C6 _ 8B. 44 90, 08
        leave                                           ; 52CA _ C9
        ret                                             ; 52CB _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 52CC _ 55
        mov     ebp, esp                                ; 52CD _ 89. E5
        sub     esp, 24                                 ; 52CF _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 52D2 _ 8B. 45, 10
        movzx   eax, al                                 ; 52D5 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 52D8 _ 8B. 55, 0C
        add     edx, 16                                 ; 52DB _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 52DE _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 52E2 _ 89. 14 24
        call    _fifo8_put                              ; 52E5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 52EA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 52ED _ 89. 04 24
        call    _task_sleep                             ; 52F0 _ E8, FFFFFEDB
        nop                                             ; 52F5 _ 90
        leave                                           ; 52F6 _ C9
        ret                                             ; 52F7 _ C3
; _send_message End of function


_strcmp:
        push    ebp                                     ; 52F8 _ 55
        mov     ebp, esp                                ; 52F9 _ 89. E5
        sub     esp, 16                                 ; 52FB _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 52FE _ 83. 7D, 08, 00
        jz      ?_317                                   ; 5302 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 5304 _ 83. 7D, 0C, 00
        jnz     ?_318                                   ; 5308 _ 75, 0A
?_317:  mov     eax, 0                                  ; 530A _ B8, 00000000
        jmp     ?_325                                   ; 530F _ E9, 0000009B

?_318:  mov     dword [ebp-4H], 0                       ; 5314 _ C7. 45, FC, 00000000
        jmp     ?_321                                   ; 531B _ EB, 25

?_319:  mov     edx, dword [ebp-4H]                     ; 531D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5320 _ 8B. 45, 08
        add     eax, edx                                ; 5323 _ 01. D0
        movzx   edx, byte [eax]                         ; 5325 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 5328 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 532B _ 8B. 45, 0C
        add     eax, ecx                                ; 532E _ 01. C8
        movzx   eax, byte [eax]                         ; 5330 _ 0F B6. 00
        cmp     dl, al                                  ; 5333 _ 38. C2
        jz      ?_320                                   ; 5335 _ 74, 07
        mov     eax, 0                                  ; 5337 _ B8, 00000000
        jmp     ?_325                                   ; 533C _ EB, 71

?_320:  add     dword [ebp-4H], 1                       ; 533E _ 83. 45, FC, 01
?_321:  mov     edx, dword [ebp-4H]                     ; 5342 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5345 _ 8B. 45, 08
        add     eax, edx                                ; 5348 _ 01. D0
        movzx   eax, byte [eax]                         ; 534A _ 0F B6. 00
        test    al, al                                  ; 534D _ 84. C0
        jz      ?_322                                   ; 534F _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 5351 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5354 _ 8B. 45, 0C
        add     eax, edx                                ; 5357 _ 01. D0
        movzx   eax, byte [eax]                         ; 5359 _ 0F B6. 00
        test    al, al                                  ; 535C _ 84. C0
        jnz     ?_319                                   ; 535E _ 75, BD
?_322:  mov     edx, dword [ebp-4H]                     ; 5360 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5363 _ 8B. 45, 08
        add     eax, edx                                ; 5366 _ 01. D0
        movzx   eax, byte [eax]                         ; 5368 _ 0F B6. 00
        test    al, al                                  ; 536B _ 84. C0
        jnz     ?_323                                   ; 536D _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 536F _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5372 _ 8B. 45, 0C
        add     eax, edx                                ; 5375 _ 01. D0
        movzx   eax, byte [eax]                         ; 5377 _ 0F B6. 00
        test    al, al                                  ; 537A _ 84. C0
        jz      ?_323                                   ; 537C _ 74, 07
        mov     eax, 0                                  ; 537E _ B8, 00000000
        jmp     ?_325                                   ; 5383 _ EB, 2A

?_323:  mov     edx, dword [ebp-4H]                     ; 5385 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5388 _ 8B. 45, 08
        add     eax, edx                                ; 538B _ 01. D0
        movzx   eax, byte [eax]                         ; 538D _ 0F B6. 00
        test    al, al                                  ; 5390 _ 84. C0
        jz      ?_324                                   ; 5392 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 5394 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5397 _ 8B. 45, 0C
        add     eax, edx                                ; 539A _ 01. D0
        movzx   eax, byte [eax]                         ; 539C _ 0F B6. 00
        test    al, al                                  ; 539F _ 84. C0
        jz      ?_324                                   ; 53A1 _ 74, 07
        mov     eax, 0                                  ; 53A3 _ B8, 00000000
        jmp     ?_325                                   ; 53A8 _ EB, 05

?_324:  mov     eax, 1                                  ; 53AA _ B8, 00000001
?_325:  leave                                           ; 53AF _ C9
        ret                                             ; 53B0 _ C3

        nop                                             ; 53B1 _ 90
        nop                                             ; 53B2 _ 90
        nop                                             ; 53B3 _ 90



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

?_326:  db 00H                                          ; 0112 _ .

?_327:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_KEY_CONTROL:                                           ; dword
        dd 0000001DH, 00000000H                         ; 0118 _ 29 0 

_table_rgb.2584:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2631:                                           ; byte
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

_closebtn.2750:                                         ; byte
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


?_328:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_329:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_330:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_331:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_332:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_333:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_334:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_335:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_336:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_337:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 003A _ keyboard
        db 20H, 72H, 65H, 63H, 65H, 69H, 76H, 65H       ; 0042 _  receive
        db 00H                                          ; 004A _ .

?_338:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 004B _ mem.

?_339:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 004F _ cls.

?_340:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0053 _ hlt.

?_341:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0057 _ dir.

?_342:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 005B _ page is:
        db 20H, 00H                                     ; 0063 _  .

?_343:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0065 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 006D _ L: .

?_344:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0071 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0079 _ H: .

?_345:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 007D _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0085 _ w: .

?_346:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 0089 _ INT OC.

?_347:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 0090 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 0098 _ ception.

?_348:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00A0 _ EIP = .

?_349:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00A7 _ INT 0D .

?_350:                                                  ; byte
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

?_351:  resd    1                                       ; 0010

?_352:  resd    1                                       ; 0014

?_353:  resd    1                                       ; 0018

?_354:  resb    1                                       ; 001C

?_355:  resb    3                                       ; 001D

?_356:  resd    1                                       ; 0020

_bootInfo:                                              ; dword
        resd    1                                       ; 0024

?_357:  resw    1                                       ; 0028

?_358:  resw    1                                       ; 002A

_keyinfo:                                               ; byte
        resb    24                                      ; 002C

?_359:  resd    1                                       ; 0044

_mouseinfo:                                             ; byte
        resb    56                                      ; 0048

_keybuf:                                                ; byte
        resb    32                                      ; 0080

_mousebuf:                                              ; byte
        resb    128                                     ; 00A0

_mdec:                                                  ; byte
        resb    12                                      ; 0120

?_360:  resd    1                                       ; 012C

_timerinfo:                                             ; byte
        resb    28                                      ; 0130

_timerbuf:                                              ; byte
        resb    8                                       ; 014C

_mx:    resd    1                                       ; 0154

_my:    resd    1                                       ; 0158

_xsize: resd    1                                       ; 015C

_ysize: resd    1                                       ; 0160

_buf_back:                                              ; dword
        resd    7                                       ; 0164

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

?_361:  resd    1                                       ; 029C

?_362:  resd    1                                       ; 02A0

_task_a.2351:                                           ; dword
        resd    7                                       ; 02A4

_tss_a.2350:                                            ; byte
        resb    128                                     ; 02C0

_tss_b.2349:                                            ; byte
        resb    104                                     ; 0340

_task_b.2339:                                           ; byte
        resb    12                                      ; 03A8

_str.2679:                                              ; byte
        resb    1                                       ; 03B4

?_363:  resb    9                                       ; 03B5

?_364:  resb    2                                       ; 03BE

_timerctl:                                              ; byte
        resb    8032                                    ; 03C0

_task_timer:                                            ; byte
        resb    4                                       ; 2320

_taskctl:                                               ; byte
        resb    4                                       ; 2324


