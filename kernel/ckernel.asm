; Disassembly of file: ckernel.o
; Wed Aug 14 09:50:02 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000024(d)
        call    _initBootInfo                           ; 0011 _ E8, 00002904
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000024(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_377]                       ; 001E _ 0F B7. 05, 00000028(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000015C(d)
        movzx   eax, word [?_378]                       ; 002B _ 0F B7. 05, 0000002A(d)
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
        call    _init_palette                           ; 014B _ E8, 000027EB
        call    _init_keyboard                          ; 0150 _ E8, 00002E8E
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
        call    _init_screen8                           ; 0281 _ E8, 00001F25
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000180(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00002A77
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
        mov     dword [esp+4H], ?_347                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 000030D3
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
        call    _enable_mouse                           ; 038A _ E8, 00002C8F
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2355], eax               ; 039C _ A3, 000002A8(d)
        mov     eax, dword [_task_a.2355]               ; 03A1 _ A1, 000002A8(d)
        mov     dword [?_379], eax                      ; 03A6 _ A3, 00000044(d)
        mov     eax, dword [_task_a.2355]               ; 03AB _ A1, 000002A8(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000298(d)
        mov     eax, dword [_task_a.2355]               ; 03B5 _ A1, 000002A8(d)
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
        mov     eax, dword [_task_cons]                 ; 0489 _ A1, 00000294(d)
        mov     eax, dword [eax+34H]                    ; 048E _ 8B. 40, 34
        test    eax, eax                                ; 0491 _ 85. C0
        jz      ?_003                                   ; 0493 _ 74, 2F
        mov     dword [esp], ?_348                      ; 0495 _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 049C _ E8, 00001516
        call    _io_cli                                 ; 04A1 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 04A6 _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 04AB _ 89. 45, B0
        mov     eax, _kill_process                      ; 04AE _ B8, 00000CCA(d)
        mov     edx, dword [_task_cons]                 ; 04B3 _ 8B. 15, 00000294(d)
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
        mov     dword [esp+8H], ?_349                   ; 0527 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 052F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0533 _ 89. 04 24
        call    _make_wtitle8                           ; 0536 _ E8, 00003283
        mov     eax, dword [_shtctl]                    ; 053B _ A1, 00000284(d)
        mov     dword [esp+0CH], 1                      ; 0540 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_350                   ; 0548 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 0550 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0553 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0557 _ 89. 04 24
        call    _make_wtitle8                           ; 055A _ E8, 0000325F
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
        mov     dword [esp+8H], ?_349                   ; 05B0 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 05B8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05BC _ 89. 04 24
        call    _make_wtitle8                           ; 05BF _ E8, 000031FA
        mov     eax, dword [_shtctl]                    ; 05C4 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 05C9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_350                   ; 05D1 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 05D9 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05DC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05E0 _ 89. 04 24
        call    _make_wtitle8                           ; 05E3 _ E8, 000031D6
        mov     eax, dword [_task_cons]                 ; 05E8 _ A1, 00000294(d)
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
        mov     edx, dword [_task_cons]                 ; 0678 _ 8B. 15, 00000294(d)
        mov     eax, dword [_task_a.2355]               ; 067E _ A1, 000002A8(d)
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
        call    _showString                             ; 0738 _ E8, 00001E7E
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
        mov     edx, dword [_task_cons]                 ; 078C _ 8B. 15, 00000294(d)
        add     edx, 16                                 ; 0792 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0795 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0799 _ 89. 14 24
        call    _fifo8_put                              ; 079C _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 07A1 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 07A8 _ E8, 00000000(rel)
        test    eax, eax                                ; 07AD _ 85. C0
        jnz     ?_010                                   ; 07AF _ 75, 40
        mov     eax, dword [_task_a.2355]               ; 07B1 _ A1, 000002A8(d)
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
        call    _show_mouse_info                        ; 07EC _ E8, 00001E73
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
        call    _boxfill8                               ; 0929 _ E8, 00002212
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
        mov     dword [esp+8H], ?_350                   ; 0B5E _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0B66 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0B69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B6D _ 89. 04 24
        call    _make_window8                           ; 0B70 _ E8, 00002984
        mov     dword [esp+14H], 0                      ; 0B75 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0B7D _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0B85 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B8D _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B95 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B9D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0BA0 _ 89. 04 24
        call    _make_textbox8                          ; 0BA3 _ E8, 00002D54
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
        mov     dword [_task_cons], eax                 ; 0CC0 _ A3, 00000294(d)
        mov     eax, dword [ebp-0CH]                    ; 0CC5 _ 8B. 45, F4
        leave                                           ; 0CC8 _ C9
        ret                                             ; 0CC9 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0CCA _ 55
        mov     ebp, esp                                ; 0CCB _ 89. E5
        sub     esp, 24                                 ; 0CCD _ 83. EC, 18
        mov     edx, dword [_g_Console]                 ; 0CD0 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 0CD6 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0CDB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CDF _ 89. 04 24
        call    _cons_newline                           ; 0CE2 _ E8, 00001394
        mov     eax, dword [?_372]                      ; 0CE7 _ A1, 00000014(d)
        add     eax, 16                                 ; 0CEC _ 83. C0, 10
        mov     dword [?_372], eax                      ; 0CEF _ A3, 00000014(d)
        mov     eax, dword [_task_cons]                 ; 0CF4 _ A1, 00000294(d)
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
        mov     ecx, dword [?_372]                      ; 0DBE _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 0DC4 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0DCA _ A1, 00000284(d)
        mov     ebx, dword [ebp-18H]                    ; 0DCF _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0DD2 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0DD6 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0DDE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0DE2 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0DEA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DEE _ 89. 04 24
        call    _showString                             ; 0DF1 _ E8, 000017C5
        mov     dword [ebp-1CH], 136                    ; 0DF6 _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0DFD _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0E00 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0E03 _ 89. 04 24
        call    _intToHexStr                            ; 0E06 _ E8, 00002122
        mov     dword [ebp-20H], eax                    ; 0E0B _ 89. 45, E0
        mov     ecx, dword [?_372]                      ; 0E0E _ 8B. 0D, 00000014(d)
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
        call    _showString                             ; 0E40 _ E8, 00001776
        mov     edx, dword [_g_Console]                 ; 0E45 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 0E4B _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0E50 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E54 _ 89. 04 24
        call    _cons_newline                           ; 0E57 _ E8, 0000121F
        mov     dword [?_372], eax                      ; 0E5C _ A3, 00000014(d)
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
        mov     dword [?_371], 16                       ; 0FEB _ C7. 05, 00000010(d), 00000010
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
?_050:  mov     ebx, dword [?_372]                      ; 101B _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_371]                      ; 1021 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1027 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 102D _ A1, 00000284(d)
        mov     dword [esp+14H], ?_351                  ; 1032 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 103A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1042 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1046 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 104A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 104E _ 89. 04 24
        call    _showString                             ; 1051 _ E8, 00001565
        mov     eax, dword [?_371]                      ; 1056 _ A1, 00000010(d)
        add     eax, 8                                  ; 105B _ 83. C0, 08
        mov     dword [?_371], eax                      ; 105E _ A3, 00000010(d)
        mov     eax, dword [?_371]                      ; 1063 _ A1, 00000010(d)
        cmp     eax, 248                                ; 1068 _ 3D, 000000F8
        jnz     ?_050                                   ; 106D _ 75, AC
        mov     dword [?_371], 8                        ; 106F _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1079 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 107F _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1084 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1088 _ 89. 04 24
        call    _cons_newline                           ; 108B _ E8, 00000FEB
        mov     dword [?_372], eax                      ; 1090 _ A3, 00000014(d)
        jmp     ?_050                                   ; 1095 _ EB, 84

?_051:  movzx   eax, byte [ebp-3BH]                     ; 1097 _ 0F B6. 45, C5
        cmp     al, 10                                  ; 109B _ 3C, 0A
        jnz     ?_052                                   ; 109D _ 75, 2B
        mov     dword [?_371], 8                        ; 109F _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 10A9 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 10AF _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 10B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _cons_newline                           ; 10BB _ E8, 00000FBB
        mov     dword [?_372], eax                      ; 10C0 _ A3, 00000014(d)
        jmp     ?_053                                   ; 10C5 _ E9, 00000082

?_052:  movzx   eax, byte [ebp-3BH]                     ; 10CA _ 0F B6. 45, C5
        cmp     al, 13                                  ; 10CE _ 3C, 0D
        jz      ?_053                                   ; 10D0 _ 74, 7A
        mov     esi, dword [?_372]                      ; 10D2 _ 8B. 35, 00000014(d)
        mov     ebx, dword [?_371]                      ; 10D8 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [_g_Console]                 ; 10DE _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_shtctl]                    ; 10E4 _ 8B. 15, 00000284(d)
        lea     eax, [ebp-3BH]                          ; 10EA _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 10ED _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 10F1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 10F9 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 10FD _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1101 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1105 _ 89. 14 24
        call    _showString                             ; 1108 _ E8, 000014AE
        mov     eax, dword [?_371]                      ; 110D _ A1, 00000010(d)
        add     eax, 8                                  ; 1112 _ 83. C0, 08
        mov     dword [?_371], eax                      ; 1115 _ A3, 00000010(d)
        mov     eax, dword [?_371]                      ; 111A _ A1, 00000010(d)
        cmp     eax, 248                                ; 111F _ 3D, 000000F8
        jnz     ?_053                                   ; 1124 _ 75, 26
        mov     dword [?_371], 16                       ; 1126 _ C7. 05, 00000010(d), 00000010
        mov     edx, dword [_g_Console]                 ; 1130 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 1136 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 113B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 113F _ 89. 04 24
        call    _cons_newline                           ; 1142 _ E8, 00000F34
        mov     dword [?_372], eax                      ; 1147 _ A3, 00000014(d)
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
        mov     eax, dword [?_372]                      ; 1177 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 117C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1180 _ 89. 04 24
        call    _cons_newline                           ; 1183 _ E8, 00000EF3
        mov     dword [?_372], eax                      ; 1188 _ A3, 00000014(d)
        mov     edx, dword [ebp-24H]                    ; 118D _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 1190 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1195 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 119D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11A1 _ 89. 04 24
        call    _memman_free                            ; 11A4 _ E8, 00000000(rel)
        mov     dword [?_371], 16                       ; 11A9 _ C7. 05, 00000010(d), 00000010
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
        call    _intToHexStr                            ; 11D6 _ E8, 00001D52
        mov     dword [ebp-0CH], eax                    ; 11DB _ 89. 45, F4
        mov     ecx, dword [?_372]                      ; 11DE _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 11E4 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 11EA _ A1, 00000284(d)
        mov     dword [esp+14H], ?_352                  ; 11EF _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 11F7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11FF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1203 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 120B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 120F _ 89. 04 24
        call    _showString                             ; 1212 _ E8, 000013A4
        mov     ecx, dword [?_372]                      ; 1217 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 121D _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1223 _ A1, 00000284(d)
        mov     ebx, dword [ebp-0CH]                    ; 1228 _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 122B _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 122F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1237 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 123B _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1243 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1247 _ 89. 04 24
        call    _showString                             ; 124A _ E8, 0000136C
        mov     ecx, dword [?_372]                      ; 124F _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 1255 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 125B _ A1, 00000284(d)
        mov     dword [esp+14H], ?_353                  ; 1260 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 1268 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1270 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1274 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 127C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1280 _ 89. 04 24
        call    _showString                             ; 1283 _ E8, 00001333
        mov     edx, dword [_g_Console]                 ; 1288 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_372]                      ; 128E _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1293 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1297 _ 89. 04 24
        call    _cons_newline                           ; 129A _ E8, 00000DDC
        mov     dword [?_372], eax                      ; 129F _ A3, 00000014(d)
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
        mov     dword [?_372], 28                       ; 133F _ C7. 05, 00000014(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 1349 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 134F _ A1, 00000284(d)
        mov     dword [esp+14H], ?_354                  ; 1354 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 135C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1364 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 136C _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1374 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1378 _ 89. 04 24
        call    _showString                             ; 137B _ E8, 0000123B
        nop                                             ; 1380 _ 90
        leave                                           ; 1381 _ C9
        ret                                             ; 1382 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 1383 _ 55
        mov     ebp, esp                                ; 1384 _ 89. E5
        sub     esp, 56                                 ; 1386 _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 1389 _ C7. 44 24, 04, 0000029C(d)
        mov     dword [esp], ?_355                      ; 1391 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 1398 _ E8, 000027F9
        call    _get_addr_gdt                           ; 139D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 13A2 _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 13A5 _ A1, 0000029C(d)
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
        mov     dword [?_381], eax                      ; 13E9 _ A3, 000002A0(d)
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
        mov     eax, dword [?_382]                      ; 1453 _ A1, 000002A4(d)
        mov     ecx, eax                                ; 1458 _ 89. C1
        mov     eax, dword [_buffer]                    ; 145A _ A1, 0000029C(d)
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
        mov     dword [?_371], 16                       ; 14F1 _ C7. 05, 00000010(d), 00000010
        mov     dword [?_372], 28                       ; 14FB _ C7. 05, 00000014(d), 0000001C
        mov     dword [?_373], -1                       ; 1505 _ C7. 05, 00000018(d), FFFFFFFF
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
        mov     dword [?_376], eax                      ; 156E _ A3, 00000020(d)
        mov     eax, dword [_shtctl]                    ; 1573 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_354                  ; 1578 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1580 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1588 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1590 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1598 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 159B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 159F _ 89. 04 24
        call    _showString                             ; 15A2 _ E8, 00001014
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
        mov     dword [esp+14H], ?_356                  ; 1601 _ C7. 44 24, 14, 0000003A(d)
        mov     dword [esp+10H], 0                      ; 1609 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 232                    ; 1611 _ C7. 44 24, 0C, 000000E8
        mov     dword [esp+8H], 0                       ; 1619 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1625 _ 89. 04 24
        call    _showString                             ; 1628 _ E8, 00000F8E
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
        mov     ecx, dword [?_372]                      ; 16E9 _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_371]                      ; 16EF _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 16F5 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 16FA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1702 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1706 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 170A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 170D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1711 _ 89. 04 24
        call    _set_cursor                             ; 1714 _ E8, FFFFF1CA
        mov     dword [ebp-0CH], -1                     ; 1719 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1720 _ A1, 00000298(d)
        mov     dword [esp+8H], 0                       ; 1725 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 172D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1735 _ 89. 04 24
        call    _task_run                               ; 1738 _ E8, 00000000(rel)
        jmp     ?_077                                   ; 173D _ E9, 00000237

?_069:  cmp     dword [ebp-34H], 28                     ; 1742 _ 83. 7D, CC, 1C
        jne     ?_075                                   ; 1746 _ 0F 85, 00000141
        mov     ecx, dword [?_372]                      ; 174C _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_371]                      ; 1752 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 1758 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 175D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1765 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1769 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 176D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1770 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1774 _ 89. 04 24
        call    _set_cursor                             ; 1777 _ E8, FFFFF167
        mov     eax, dword [?_371]                      ; 177C _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1781 _ 8D. 50, 07
        test    eax, eax                                ; 1784 _ 85. C0
        cmovs   eax, edx                                ; 1786 _ 0F 48. C2
        sar     eax, 3                                  ; 1789 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 178C _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 178F _ 8B. 45, E0
        add     eax, edx                                ; 1792 _ 01. D0
        mov     byte [eax], 0                           ; 1794 _ C6. 00, 00
        mov     eax, dword [?_372]                      ; 1797 _ A1, 00000014(d)
        mov     edx, dword [ebp+8H]                     ; 179C _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 179F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17A3 _ 89. 04 24
        call    _cons_newline                           ; 17A6 _ E8, 000008D0
        mov     dword [?_372], eax                      ; 17AB _ A3, 00000014(d)
        mov     dword [esp+4H], ?_357                   ; 17B0 _ C7. 44 24, 04, 0000004B(d)
        mov     eax, dword [ebp-20H]                    ; 17B8 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17BB _ 89. 04 24
        call    _strcmp                                 ; 17BE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17C3 _ 83. F8, 01
        jnz     ?_070                                   ; 17C6 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 17C8 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 17CB _ 89. 04 24
        call    _cmd_mem                                ; 17CE _ E8, FFFFF9E8
        jmp     ?_074                                   ; 17D3 _ E9, 000000A6

?_070:  mov     dword [esp+4H], ?_358                   ; 17D8 _ C7. 44 24, 04, 0000004F(d)
        mov     eax, dword [ebp-20H]                    ; 17E0 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17E3 _ 89. 04 24
        call    _strcmp                                 ; 17E6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17EB _ 83. F8, 01
        jnz     ?_071                                   ; 17EE _ 75, 0A
        call    _cmd_cls                                ; 17F0 _ E8, FFFFFAB6
        jmp     ?_074                                   ; 17F5 _ E9, 00000084

?_071:  mov     dword [esp+4H], ?_359                   ; 17FA _ C7. 44 24, 04, 00000053(d)
        mov     eax, dword [ebp-20H]                    ; 1802 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1805 _ 89. 04 24
        call    _strcmp                                 ; 1808 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 180D _ 83. F8, 01
        jnz     ?_072                                   ; 1810 _ 75, 11
        mov     dword [_g_hlt], 1                       ; 1812 _ C7. 05, 00000000(d), 00000001
        call    _cmd_hlt                                ; 181C _ E8, FFFFFB62
        jmp     ?_074                                   ; 1821 _ EB, 5B

?_072:  mov     dword [esp+4H], ?_360                   ; 1823 _ C7. 44 24, 04, 00000057(d)
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
?_074:  mov     dword [?_371], 16                       ; 187E _ C7. 05, 00000010(d), 00000010
        jmp     ?_077                                   ; 1888 _ E9, 000000EC

?_075:  cmp     dword [ebp-34H], 14                     ; 188D _ 83. 7D, CC, 0E
        jnz     ?_076                                   ; 1891 _ 75, 79
        mov     eax, dword [?_371]                      ; 1893 _ A1, 00000010(d)
        cmp     eax, 8                                  ; 1898 _ 83. F8, 08
        jle     ?_076                                   ; 189B _ 7E, 6F
        mov     ecx, dword [?_372]                      ; 189D _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_371]                      ; 18A3 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 18A9 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 18AE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 18B6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18BA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18BE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18C5 _ 89. 04 24
        call    _set_cursor                             ; 18C8 _ E8, FFFFF016
        mov     eax, dword [?_371]                      ; 18CD _ A1, 00000010(d)
        sub     eax, 8                                  ; 18D2 _ 83. E8, 08
        mov     dword [?_371], eax                      ; 18D5 _ A3, 00000010(d)
        mov     ecx, dword [?_372]                      ; 18DA _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_371]                      ; 18E0 _ 8B. 15, 00000010(d)
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
        mov     eax, dword [?_371]                      ; 191A _ A1, 00000010(d)
        cmp     eax, 239                                ; 191F _ 3D, 000000EF
        jg      ?_077                                   ; 1924 _ 7F, 53
        cmp     byte [ebp-35H], 0                       ; 1926 _ 80. 7D, CB, 00
        jz      ?_077                                   ; 192A _ 74, 4D
        mov     eax, dword [?_371]                      ; 192C _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1931 _ 8D. 50, 07
        test    eax, eax                                ; 1934 _ 85. C0
        cmovs   eax, edx                                ; 1936 _ 0F 48. C2
        sar     eax, 3                                  ; 1939 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 193C _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 193F _ 8B. 45, E0
        add     edx, eax                                ; 1942 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1944 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1948 _ 88. 02
        mov     eax, dword [?_371]                      ; 194A _ A1, 00000010(d)
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
        call    _cons_putchar                           ; 1974 _ E8, 0000065B
?_077:  cmp     dword [ebp-0CH], 0                      ; 1979 _ 83. 7D, F4, 00
        js      ?_062                                   ; 197D _ 0F 88, FFFFFC39
        mov     ecx, dword [?_372]                      ; 1983 _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_371]                      ; 1989 _ 8B. 15, 00000010(d)
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
        call    _cons_putchar                           ; 19D3 _ E8, 000005FC
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
        sub     esp, 32                                 ; 19EC _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 19EF _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 19F2 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 19F5 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 19F8 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 19FB _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 19FE _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1A01 _ 8B. 45, 0C
        shl     eax, 10                                 ; 1A04 _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 1A07 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1A0A _ 8B. 45, 10
        shl     eax, 10                                 ; 1A0D _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 1A10 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 1A13 _ 83. 7D, EC, 00
        jns     ?_080                                   ; 1A17 _ 79, 03
        neg     dword [ebp-14H]                         ; 1A19 _ F7. 5D, EC
?_080:  cmp     dword [ebp-18H], 0                      ; 1A1C _ 83. 7D, E8, 00
        jns     ?_081                                   ; 1A20 _ 79, 03
        neg     dword [ebp-18H]                         ; 1A22 _ F7. 5D, E8
?_081:  mov     eax, dword [ebp-14H]                    ; 1A25 _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 1A28 _ 3B. 45, E8
        jl      ?_085                                   ; 1A2B _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 1A2D _ 8B. 45, EC
        add     eax, 1                                  ; 1A30 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1A33 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1A36 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1A39 _ 3B. 45, 14
        jle     ?_082                                   ; 1A3C _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 1A3E _ C7. 45, EC, FFFFFC00
        jmp     ?_083                                   ; 1A45 _ EB, 07

?_082:  mov     dword [ebp-14H], 1024                   ; 1A47 _ C7. 45, EC, 00000400
?_083:  mov     eax, dword [ebp+10H]                    ; 1A4E _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A51 _ 3B. 45, 18
        jg      ?_084                                   ; 1A54 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1A56 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A59 _ 2B. 45, 10
        add     eax, 1                                  ; 1A5C _ 83. C0, 01
        shl     eax, 10                                 ; 1A5F _ C1. E0, 0A
        cdq                                             ; 1A62 _ 99
        idiv    dword [ebp-10H]                         ; 1A63 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1A66 _ 89. 45, E8
        jmp     ?_089                                   ; 1A69 _ EB, 66

?_084:  mov     eax, dword [ebp+18H]                    ; 1A6B _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A6E _ 2B. 45, 10
        sub     eax, 1                                  ; 1A71 _ 83. E8, 01
        shl     eax, 10                                 ; 1A74 _ C1. E0, 0A
        cdq                                             ; 1A77 _ 99
        idiv    dword [ebp-10H]                         ; 1A78 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1A7B _ 89. 45, E8
        jmp     ?_089                                   ; 1A7E _ EB, 51

?_085:  mov     eax, dword [ebp-18H]                    ; 1A80 _ 8B. 45, E8
        add     eax, 1                                  ; 1A83 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1A86 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1A89 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A8C _ 3B. 45, 18
        jle     ?_086                                   ; 1A8F _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 1A91 _ C7. 45, E8, FFFFFC00
        jmp     ?_087                                   ; 1A98 _ EB, 07

?_086:  mov     dword [ebp-18H], 1024                   ; 1A9A _ C7. 45, E8, 00000400
?_087:  mov     eax, dword [ebp+0CH]                    ; 1AA1 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1AA4 _ 3B. 45, 14
        jg      ?_088                                   ; 1AA7 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1AA9 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1AAC _ 2B. 45, 0C
        add     eax, 1                                  ; 1AAF _ 83. C0, 01
        shl     eax, 10                                 ; 1AB2 _ C1. E0, 0A
        cdq                                             ; 1AB5 _ 99
        idiv    dword [ebp-10H]                         ; 1AB6 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1AB9 _ 89. 45, EC
        jmp     ?_089                                   ; 1ABC _ EB, 13

?_088:  mov     eax, dword [ebp+14H]                    ; 1ABE _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1AC1 _ 2B. 45, 0C
        sub     eax, 1                                  ; 1AC4 _ 83. E8, 01
        shl     eax, 10                                 ; 1AC7 _ C1. E0, 0A
        cdq                                             ; 1ACA _ 99
        idiv    dword [ebp-10H]                         ; 1ACB _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1ACE _ 89. 45, EC
?_089:  mov     dword [ebp-4H], 0                       ; 1AD1 _ C7. 45, FC, 00000000
        jmp     ?_091                                   ; 1AD8 _ EB, 35

?_090:  mov     eax, dword [ebp+8H]                     ; 1ADA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1ADD _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1ADF _ 8B. 45, F4
        sar     eax, 10                                 ; 1AE2 _ C1. F8, 0A
        mov     ecx, eax                                ; 1AE5 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 1AE7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1AEA _ 8B. 40, 04
        imul    eax, ecx                                ; 1AED _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 1AF0 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 1AF3 _ C1. F9, 0A
        add     eax, ecx                                ; 1AF6 _ 01. C8
        add     eax, edx                                ; 1AF8 _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 1AFA _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 1AFD _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 1AFF _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 1B02 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 1B05 _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 1B08 _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 1B0B _ 83. 45, FC, 01
?_091:  mov     eax, dword [ebp-4H]                     ; 1B0F _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 1B12 _ 3B. 45, F0
        jl      ?_090                                   ; 1B15 _ 7C, C3
        nop                                             ; 1B17 _ 90
        leave                                           ; 1B18 _ C9
        ret                                             ; 1B19 _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 1B1A _ 55
        mov     ebp, esp                                ; 1B1B _ 89. E5
        sub     esp, 56                                 ; 1B1D _ 83. EC, 38
        mov     eax, dword [?_376]                      ; 1B20 _ A1, 00000020(d)
        mov     dword [ebp-0CH], eax                    ; 1B25 _ 89. 45, F4
?_092:  mov     eax, dword [ebp+8H]                     ; 1B28 _ 8B. 45, 08
        add     eax, 16                                 ; 1B2B _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B2E _ 89. 04 24
        call    _fifo8_status                           ; 1B31 _ E8, 00000000(rel)
        test    eax, eax                                ; 1B36 _ 85. C0
        jnz     ?_093                                   ; 1B38 _ 75, 25
        cmp     dword [ebp+0CH], 0                      ; 1B3A _ 83. 7D, 0C, 00
        jne     ?_097                                   ; 1B3E _ 0F 85, 000000CE
        call    _io_sti                                 ; 1B44 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1B49 _ 8B. 45, 10
        add     eax, 28                                 ; 1B4C _ 83. C0, 1C
        mov     dword [eax], -1                         ; 1B4F _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 1B55 _ B8, 00000000
        jmp     ?_098                                   ; 1B5A _ E9, 000000B9

?_093:  mov     eax, dword [ebp+8H]                     ; 1B5F _ 8B. 45, 08
        add     eax, 16                                 ; 1B62 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B65 _ 89. 04 24
        call    _fifo8_get                              ; 1B68 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1B6D _ 89. 45, F0
        cmp     dword [ebp-10H], 255                    ; 1B70 _ 81. 7D, F0, 000000FF
        jle     ?_094                                   ; 1B77 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 1B79 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 1B7F _ A1, 00000284(d)
        mov     dword [esp+14H], ?_361                  ; 1B84 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], 7                      ; 1B8C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 1B94 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 1B9C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1BA4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA8 _ 89. 04 24
        call    _showString                             ; 1BAB _ E8, 00000A0B
?_094:  cmp     dword [ebp-10H], 1                      ; 1BB0 _ 83. 7D, F0, 01
        jg      ?_095                                   ; 1BB4 _ 7F, 35
        mov     eax, dword [ebp+8H]                     ; 1BB6 _ 8B. 45, 08
        add     eax, 16                                 ; 1BB9 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1BBC _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1BC4 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1BC8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BCB _ 89. 04 24
        call    _timer_init                             ; 1BCE _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1BD3 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-0CH]                    ; 1BDB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BDE _ 89. 04 24
        call    _timer_settime                          ; 1BE1 _ E8, 00000000(rel)
        jmp     ?_092                                   ; 1BE6 _ E9, FFFFFF3D

?_095:  cmp     dword [ebp-10H], 2                      ; 1BEB _ 83. 7D, F0, 02
        jnz     ?_096                                   ; 1BEF _ 75, 0F
        mov     dword [?_373], 7                        ; 1BF1 _ C7. 05, 00000018(d), 00000007
        jmp     ?_092                                   ; 1BFB _ E9, FFFFFF28

?_096:  mov     eax, dword [ebp+10H]                    ; 1C00 _ 8B. 45, 10
        add     eax, 28                                 ; 1C03 _ 83. C0, 1C
        mov     edx, dword [ebp-10H]                    ; 1C06 _ 8B. 55, F0
        mov     dword [eax], edx                        ; 1C09 _ 89. 10
        mov     eax, 0                                  ; 1C0B _ B8, 00000000
        jmp     ?_098                                   ; 1C10 _ EB, 06

?_097:  nop                                             ; 1C12 _ 90
        jmp     ?_092                                   ; 1C13 _ E9, FFFFFF10
; _handle_keyboard End of function

?_098:  ; Local function
        leave                                           ; 1C18 _ C9
        ret                                             ; 1C19 _ C3

_kernel_api:; Function begin
        push    ebp                                     ; 1C1A _ 55
        mov     ebp, esp                                ; 1C1B _ 89. E5
        push    esi                                     ; 1C1D _ 56
        push    ebx                                     ; 1C1E _ 53
        sub     esp, 48                                 ; 1C1F _ 83. EC, 30
        call    _task_now                               ; 1C22 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1C27 _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 1C2A _ 8D. 45, 24
        add     eax, 4                                  ; 1C2D _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 1C30 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 1C33 _ C7. 45, EC, 00000000
        cmp     dword [ebp+1CH], 1                      ; 1C3A _ 83. 7D, 1C, 01
        jnz     ?_099                                   ; 1C3E _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 1C40 _ 8B. 45, 24
        movsx   eax, al                                 ; 1C43 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1C46 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1C4E _ 89. 04 24
        call    _cons_putchar                           ; 1C51 _ E8, 0000037E
        jmp     ?_113                                   ; 1C56 _ E9, 0000036D

?_099:  cmp     dword [ebp+1CH], 2                      ; 1C5B _ 83. 7D, 1C, 02
        jnz     ?_100                                   ; 1C5F _ 75, 18
        mov     edx, dword [_buffer]                    ; 1C61 _ 8B. 15, 0000029C(d)
        mov     eax, dword [ebp+18H]                    ; 1C67 _ 8B. 45, 18
        add     eax, edx                                ; 1C6A _ 01. D0
        mov     dword [esp], eax                        ; 1C6C _ 89. 04 24
        call    _cons_putstr                            ; 1C6F _ E8, FFFFFD43
        jmp     ?_113                                   ; 1C74 _ E9, 0000034F

?_100:  cmp     dword [ebp+1CH], 4                      ; 1C79 _ 83. 7D, 1C, 04
        jnz     ?_101                                   ; 1C7D _ 75, 17
        mov     eax, dword [ebp-0CH]                    ; 1C7F _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 1C82 _ C7. 40, 34, 00000000
        mov     eax, dword [_task_cons]                 ; 1C89 _ A1, 00000294(d)
        add     eax, 48                                 ; 1C8E _ 83. C0, 30
        jmp     ?_114                                   ; 1C91 _ E9, 00000337

?_101:  cmp     dword [ebp+1CH], 5                      ; 1C96 _ 83. 7D, 1C, 05
        jne     ?_102                                   ; 1C9A _ 0F 85, 000000BA
        mov     eax, dword [_shtctl]                    ; 1CA0 _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 1CA5 _ 89. 04 24
        call    _sheet_alloc                            ; 1CA8 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 1CAD _ 89. 45, E8
        mov     edx, dword [ebp+24H]                    ; 1CB0 _ 8B. 55, 24
        mov     ecx, dword [?_381]                      ; 1CB3 _ 8B. 0D, 000002A0(d)
        mov     eax, dword [ebp+18H]                    ; 1CB9 _ 8B. 45, 18
        add     eax, ecx                                ; 1CBC _ 01. C8
        mov     dword [esp+10H], edx                    ; 1CBE _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1CC2 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1CC5 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1CC9 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1CCC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CD0 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 1CD4 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 1CD7 _ 89. 04 24
        call    _sheet_setbuf                           ; 1CDA _ E8, 00000000(rel)
        mov     edx, dword [_buffer]                    ; 1CDF _ 8B. 15, 0000029C(d)
        mov     eax, dword [ebp+20H]                    ; 1CE5 _ 8B. 45, 20
        add     edx, eax                                ; 1CE8 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1CEA _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 1CEF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 1CF7 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 1CFB _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CFE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D02 _ 89. 04 24
        call    _make_window8                           ; 1D05 _ E8, 000017EF
        mov     eax, dword [_shtctl]                    ; 1D0A _ A1, 00000284(d)
        mov     dword [esp+0CH], 50                     ; 1D0F _ C7. 44 24, 0C, 00000032
        mov     dword [esp+8H], 100                     ; 1D17 _ C7. 44 24, 08, 00000064
        mov     edx, dword [ebp-18H]                    ; 1D1F _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D26 _ 89. 04 24
        call    _sheet_slide                            ; 1D29 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1D2E _ A1, 00000284(d)
        mov     dword [esp+8H], 3                       ; 1D33 _ C7. 44 24, 08, 00000003
        mov     edx, dword [ebp-18H]                    ; 1D3B _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D3E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D42 _ 89. 04 24
        call    _sheet_updown                           ; 1D45 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D4A _ 8B. 45, F0
        add     eax, 28                                 ; 1D4D _ 83. C0, 1C
        mov     edx, dword [ebp-18H]                    ; 1D50 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 1D53 _ 89. 10
        jmp     ?_113                                   ; 1D55 _ E9, 0000026E

?_102:  cmp     dword [ebp+1CH], 6                      ; 1D5A _ 83. 7D, 1C, 06
        jne     ?_103                                   ; 1D5E _ 0F 85, 00000087
        mov     eax, dword [ebp+18H]                    ; 1D64 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 1D67 _ 89. 45, E8
        mov     edx, dword [?_381]                      ; 1D6A _ 8B. 15, 000002A0(d)
        mov     eax, dword [ebp+10H]                    ; 1D70 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1D73 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 1D76 _ 8B. 45, 24
        movsx   eax, al                                 ; 1D79 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 1D7C _ 8B. 15, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1D82 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 1D86 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 1D8A _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 1D8D _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D91 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1D94 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 1D98 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 1D9B _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1D9F _ 89. 14 24
        call    _showString                             ; 1DA2 _ E8, 00000814
        mov     eax, dword [ebp+8H]                     ; 1DA7 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 1DAA _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 1DAD _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 1DB0 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1DB7 _ 8B. 45, 0C
        add     edx, eax                                ; 1DBA _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1DBC _ A1, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1DC1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DC5 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1DC9 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1DCC _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1DD0 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1DD3 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 1DD7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1DDA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DDE _ 89. 04 24
        call    _sheet_refresh                          ; 1DE1 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1DE6 _ E9, 000001DD

?_103:  cmp     dword [ebp+1CH], 7                      ; 1DEB _ 83. 7D, 1C, 07
        jnz     ?_104                                   ; 1DEF _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 1DF1 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 1DF4 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 1DF7 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 1DFA _ 8B. 45, 10
        movzx   eax, al                                 ; 1DFD _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 1E00 _ 8B. 55, E8
        mov     ecx, dword [edx+4H]                     ; 1E03 _ 8B. 4A, 04
        mov     edx, dword [ebp-18H]                    ; 1E06 _ 8B. 55, E8
        mov     edx, dword [edx]                        ; 1E09 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 1E0B _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 1E0E _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 1E12 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 1E15 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 1E19 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 1E1C _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1E20 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 1E24 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1E28 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1E2C _ 89. 14 24
        call    _boxfill8                               ; 1E2F _ E8, 00000D0C
        mov     eax, dword [ebp+8H]                     ; 1E34 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 1E37 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1E3A _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 1E3D _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 1E40 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1E43 _ A1, 00000284(d)
        mov     dword [esp+14H], ebx                    ; 1E48 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 1E4C _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1E50 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1E53 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E57 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 1E5B _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E5E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E62 _ 89. 04 24
        call    _sheet_refresh                          ; 1E65 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1E6A _ E9, 00000159

?_104:  cmp     dword [ebp+1CH], 11                     ; 1E6F _ 83. 7D, 1C, 0B
        jnz     ?_105                                   ; 1E73 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 1E75 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 1E78 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 1E7B _ 8B. 5D, 24
        mov     eax, dword [ebp-18H]                    ; 1E7E _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 1E81 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1E83 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 1E86 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 1E89 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 1E8D _ 8B. 4D, 0C
        add     eax, ecx                                ; 1E90 _ 01. C8
        add     eax, edx                                ; 1E92 _ 01. D0
        mov     edx, ebx                                ; 1E94 _ 89. DA
        mov     byte [eax], dl                          ; 1E96 _ 88. 10
        jmp     ?_113                                   ; 1E98 _ E9, 0000012B

?_105:  cmp     dword [ebp+1CH], 12                     ; 1E9D _ 83. 7D, 1C, 0C
        jnz     ?_106                                   ; 1EA1 _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 1EA3 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 1EA6 _ 89. 45, E8
        mov     edx, dword [ebp+24H]                    ; 1EA9 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1EAC _ A1, 00000284(d)
        mov     ecx, dword [ebp+8H]                     ; 1EB1 _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 1EB4 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 1EB8 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 1EBB _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1EBF _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1EC2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EC6 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 1ECA _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1ECD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1ED1 _ 89. 04 24
        call    _sheet_refresh                          ; 1ED4 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1ED9 _ E9, 000000EA

?_106:  cmp     dword [ebp+1CH], 13                     ; 1EDE _ 83. 7D, 1C, 0D
        jnz     ?_107                                   ; 1EE2 _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 1EE4 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 1EE7 _ 89. 45, E8
        mov     eax, dword [ebp+24H]                    ; 1EEA _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 1EED _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1EF0 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 1EF4 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 1EF7 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 1EFB _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 1EFE _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 1F02 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 1F05 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F09 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 1F0D _ 8B. 45, E8
        mov     dword [esp], eax                        ; 1F10 _ 89. 04 24
        call    _api_linewin                            ; 1F13 _ E8, FFFFFAD1
        jmp     ?_113                                   ; 1F18 _ E9, 000000AB

?_107:  cmp     dword [ebp+1CH], 14                     ; 1F1D _ 83. 7D, 1C, 0E
        jnz     ?_108                                   ; 1F21 _ 75, 19
        mov     edx, dword [ebp+18H]                    ; 1F23 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 1F26 _ A1, 00000284(d)
        mov     dword [esp+4H], edx                     ; 1F2B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F2F _ 89. 04 24
        call    _sheet_free                             ; 1F32 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1F37 _ E9, 0000008C

?_108:  cmp     dword [ebp+1CH], 15                     ; 1F3C _ 83. 7D, 1C, 0F
        jnz     ?_109                                   ; 1F40 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 1F42 _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 1F45 _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 1F48 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F4C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1F50 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1F53 _ 89. 04 24
        call    _handle_keyboard                        ; 1F56 _ E8, FFFFFBBF
        jmp     ?_113                                   ; 1F5B _ EB, 6B

?_109:  cmp     dword [ebp+1CH], 16                     ; 1F5D _ 83. 7D, 1C, 10
        jnz     ?_110                                   ; 1F61 _ 75, 11
        call    _timer_alloc                            ; 1F63 _ E8, 00000000(rel)
        mov     edx, eax                                ; 1F68 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1F6A _ 8B. 45, F0
        add     eax, 28                                 ; 1F6D _ 83. C0, 1C
        mov     dword [eax], edx                        ; 1F70 _ 89. 10
        jmp     ?_113                                   ; 1F72 _ EB, 54

?_110:  cmp     dword [ebp+1CH], 17                     ; 1F74 _ 83. 7D, 1C, 11
        jnz     ?_111                                   ; 1F78 _ 75, 21
        mov     eax, dword [ebp+24H]                    ; 1F7A _ 8B. 45, 24
        movzx   eax, al                                 ; 1F7D _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 1F80 _ 8B. 55, F4
        lea     ecx, [edx+10H]                          ; 1F83 _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 1F86 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 1F89 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1F8D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1F91 _ 89. 14 24
        call    _timer_init                             ; 1F94 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1F99 _ EB, 2D

?_111:  cmp     dword [ebp+1CH], 18                     ; 1F9B _ 83. 7D, 1C, 12
        jnz     ?_112                                   ; 1F9F _ 75, 16
        mov     eax, dword [ebp+24H]                    ; 1FA1 _ 8B. 45, 24
        mov     edx, eax                                ; 1FA4 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 1FA6 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 1FA9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FAD _ 89. 04 24
        call    _timer_settime                          ; 1FB0 _ E8, 00000000(rel)
        jmp     ?_113                                   ; 1FB5 _ EB, 11

?_112:  cmp     dword [ebp+1CH], 19                     ; 1FB7 _ 83. 7D, 1C, 13
        jnz     ?_113                                   ; 1FBB _ 75, 0B
        mov     eax, dword [ebp+18H]                    ; 1FBD _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1FC0 _ 89. 04 24
        call    _timer_free                             ; 1FC3 _ E8, 00000000(rel)
?_113:  mov     eax, 0                                  ; 1FC8 _ B8, 00000000
?_114:  add     esp, 48                                 ; 1FCD _ 83. C4, 30
        pop     ebx                                     ; 1FD0 _ 5B
        pop     esi                                     ; 1FD1 _ 5E
        pop     ebp                                     ; 1FD2 _ 5D
        ret                                             ; 1FD3 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 1FD4 _ 55
        mov     ebp, esp                                ; 1FD5 _ 89. E5
        push    ebx                                     ; 1FD7 _ 53
        sub     esp, 52                                 ; 1FD8 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1FDB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1FDE _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1FE1 _ 88. 45, F4
        mov     eax, edx                                ; 1FE4 _ 89. D0
        mov     byte [ebp-10H], al                      ; 1FE6 _ 88. 45, F0
        mov     ebx, dword [?_372]                      ; 1FE9 _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_371]                      ; 1FEF _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1FF5 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1FFB _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 2000 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2008 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 200C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2010 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2014 _ 89. 04 24
        call    _set_cursor                             ; 2017 _ E8, FFFFE8C7
        movzx   eax, byte [ebp-0CH]                     ; 201C _ 0F B6. 45, F4
        mov     byte [?_374], al                        ; 2020 _ A2, 0000001C(d)
        mov     byte [?_375], 0                         ; 2025 _ C6. 05, 0000001D(d), 00
        mov     ebx, dword [?_372]                      ; 202C _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_371]                      ; 2032 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 2038 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 203E _ A1, 00000284(d)
        mov     dword [esp+14H], ?_374                  ; 2043 _ C7. 44 24, 14, 0000001C(d)
        mov     dword [esp+10H], 7                      ; 204B _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2053 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2057 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 205B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 205F _ 89. 04 24
        call    _showString                             ; 2062 _ E8, 00000554
        mov     eax, dword [?_371]                      ; 2067 _ A1, 00000010(d)
        add     eax, 8                                  ; 206C _ 83. C0, 08
        mov     dword [?_371], eax                      ; 206F _ A3, 00000010(d)
        nop                                             ; 2074 _ 90
        add     esp, 52                                 ; 2075 _ 83. C4, 34
        pop     ebx                                     ; 2078 _ 5B
        pop     ebp                                     ; 2079 _ 5D
        ret                                             ; 207A _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 207B _ 55
        mov     ebp, esp                                ; 207C _ 89. E5
        push    ebx                                     ; 207E _ 53
        sub     esp, 52                                 ; 207F _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 2082 _ 81. 7D, 08, 0000008B
        jg      ?_115                                   ; 2089 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 208B _ 83. 45, 08, 10
        jmp     ?_124                                   ; 208F _ E9, 000000DB

?_115:  mov     dword [ebp-10H], 28                     ; 2094 _ C7. 45, F0, 0000001C
        jmp     ?_119                                   ; 209B _ EB, 50

?_116:  mov     dword [ebp-0CH], 8                      ; 209D _ C7. 45, F4, 00000008
        jmp     ?_118                                   ; 20A4 _ EB, 3A

?_117:  mov     eax, dword [ebp+0CH]                    ; 20A6 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 20A9 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 20AB _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 20AE _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 20B1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 20B4 _ 8B. 40, 04
        imul    eax, ecx                                ; 20B7 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 20BA _ 8B. 4D, F4
        add     eax, ecx                                ; 20BD _ 01. C8
        add     eax, edx                                ; 20BF _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 20C1 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 20C4 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 20C6 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 20C9 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 20CC _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 20D0 _ 8B. 5D, F4
        add     edx, ebx                                ; 20D3 _ 01. DA
        add     edx, ecx                                ; 20D5 _ 01. CA
        movzx   eax, byte [eax]                         ; 20D7 _ 0F B6. 00
        mov     byte [edx], al                          ; 20DA _ 88. 02
        add     dword [ebp-0CH], 1                      ; 20DC _ 83. 45, F4, 01
?_118:  cmp     dword [ebp-0CH], 247                    ; 20E0 _ 81. 7D, F4, 000000F7
        jle     ?_117                                   ; 20E7 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 20E9 _ 83. 45, F0, 01
?_119:  cmp     dword [ebp-10H], 139                    ; 20ED _ 81. 7D, F0, 0000008B
        jle     ?_116                                   ; 20F4 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 20F6 _ C7. 45, F0, 0000008C
        jmp     ?_123                                   ; 20FD _ EB, 33

?_120:  mov     dword [ebp-0CH], 8                      ; 20FF _ C7. 45, F4, 00000008
        jmp     ?_122                                   ; 2106 _ EB, 1D

?_121:  mov     eax, dword [ebp+0CH]                    ; 2108 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 210B _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 210D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2110 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2113 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2117 _ 8B. 4D, F4
        add     eax, ecx                                ; 211A _ 01. C8
        add     eax, edx                                ; 211C _ 01. D0
        mov     byte [eax], 0                           ; 211E _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2121 _ 83. 45, F4, 01
?_122:  cmp     dword [ebp-0CH], 247                    ; 2125 _ 81. 7D, F4, 000000F7
        jle     ?_121                                   ; 212C _ 7E, DA
        add     dword [ebp-10H], 1                      ; 212E _ 83. 45, F0, 01
?_123:  cmp     dword [ebp-10H], 155                    ; 2132 _ 81. 7D, F0, 0000009B
        jle     ?_120                                   ; 2139 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 213B _ A1, 00000284(d)
        mov     dword [esp+14H], 156                    ; 2140 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2148 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2150 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2158 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2160 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2163 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2167 _ 89. 04 24
        call    _sheet_refresh                          ; 216A _ E8, 00000000(rel)
?_124:  mov     eax, dword [_shtctl]                    ; 216F _ A1, 00000284(d)
        mov     dword [esp+14H], ?_354                  ; 2174 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 217C _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2184 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2187 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 218B _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2193 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2196 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 219A _ 89. 04 24
        call    _showString                             ; 219D _ E8, 00000419
        mov     eax, dword [ebp+8H]                     ; 21A2 _ 8B. 45, 08
        add     esp, 52                                 ; 21A5 _ 83. C4, 34
        pop     ebx                                     ; 21A8 _ 5B
        pop     ebp                                     ; 21A9 _ 5D
        ret                                             ; 21AA _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 21AB _ 55
        mov     ebp, esp                                ; 21AC _ 89. E5
        push    ebx                                     ; 21AE _ 53
        sub     esp, 36                                 ; 21AF _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 21B2 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 21B5 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 21B8 _ 8B. 45, 0C
        sub     eax, 1                                  ; 21BB _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 21BE _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 21C2 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 21C6 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 21CE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 21D6 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 21DE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 21E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 21E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 21E8 _ 89. 04 24
        call    _boxfill8                               ; 21EB _ E8, 00000950
        mov     eax, dword [ebp+10H]                    ; 21F0 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 21F3 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 21F6 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 21F9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 21FC _ 8B. 45, 10
        sub     eax, 28                                 ; 21FF _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2202 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2206 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 220A _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 220E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2216 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 221E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2221 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2225 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2228 _ 89. 04 24
        call    _boxfill8                               ; 222B _ E8, 00000910
        mov     eax, dword [ebp+10H]                    ; 2230 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2233 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2236 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2239 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 223C _ 8B. 45, 10
        sub     eax, 27                                 ; 223F _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2242 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2246 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 224A _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 224E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2256 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 225E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2261 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2265 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2268 _ 89. 04 24
        call    _boxfill8                               ; 226B _ E8, 000008D0
        mov     eax, dword [ebp+10H]                    ; 2270 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2273 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2276 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2279 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 227C _ 8B. 45, 10
        sub     eax, 26                                 ; 227F _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2282 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2286 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 228A _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 228E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2296 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 229E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22A8 _ 89. 04 24
        call    _boxfill8                               ; 22AB _ E8, 00000890
        mov     eax, dword [ebp+10H]                    ; 22B0 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 22B3 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 22B6 _ 8B. 45, 10
        sub     eax, 24                                 ; 22B9 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 22BC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 22C0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 22C8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 22CC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 22D4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 22DC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22DF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22E6 _ 89. 04 24
        call    _boxfill8                               ; 22E9 _ E8, 00000852
        mov     eax, dword [ebp+10H]                    ; 22EE _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 22F1 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 22F4 _ 8B. 45, 10
        sub     eax, 24                                 ; 22F7 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 22FA _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 22FE _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2306 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 230A _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2312 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 231A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 231D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2321 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2324 _ 89. 04 24
        call    _boxfill8                               ; 2327 _ E8, 00000814
        mov     eax, dword [ebp+10H]                    ; 232C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 232F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2332 _ 8B. 45, 10
        sub     eax, 4                                  ; 2335 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2338 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 233C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2344 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2348 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2350 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2358 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 235B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 235F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2362 _ 89. 04 24
        call    _boxfill8                               ; 2365 _ E8, 000007D6
        mov     eax, dword [ebp+10H]                    ; 236A _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 236D _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2370 _ 8B. 45, 10
        sub     eax, 23                                 ; 2373 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2376 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 237A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2382 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2386 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 238E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2396 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2399 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 239D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23A0 _ 89. 04 24
        call    _boxfill8                               ; 23A3 _ E8, 00000798
        mov     eax, dword [ebp+10H]                    ; 23A8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 23AB _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 23AE _ 8B. 45, 10
        sub     eax, 3                                  ; 23B1 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 23B4 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 23B8 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 23C0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 23C4 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 23CC _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 23D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23DE _ 89. 04 24
        call    _boxfill8                               ; 23E1 _ E8, 0000075A
        mov     eax, dword [ebp+10H]                    ; 23E6 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 23E9 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 23EC _ 8B. 45, 10
        sub     eax, 24                                 ; 23EF _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 23F2 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 23F6 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 23FE _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2402 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 240A _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2412 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2415 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2419 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 241C _ 89. 04 24
        call    _boxfill8                               ; 241F _ E8, 0000071C
        mov     eax, dword [ebp+10H]                    ; 2424 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2427 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 242A _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 242D _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2430 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2433 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2436 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2439 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 243C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2440 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2444 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2448 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 244C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2454 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2457 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 245B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 245E _ 89. 04 24
        call    _boxfill8                               ; 2461 _ E8, 000006DA
        mov     eax, dword [ebp+10H]                    ; 2466 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 2469 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 246C _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 246F _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 2472 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 2475 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 2478 _ 8B. 45, 0C
        sub     eax, 47                                 ; 247B _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 247E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2482 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2486 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 248A _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 248E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2496 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2499 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 249D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24A0 _ 89. 04 24
        call    _boxfill8                               ; 24A3 _ E8, 00000698
        mov     eax, dword [ebp+10H]                    ; 24A8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 24AB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 24AE _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 24B1 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 24B4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 24B7 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 24BA _ 8B. 45, 0C
        sub     eax, 47                                 ; 24BD _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 24C0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 24C4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 24C8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 24CC _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 24D0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 24D8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 24DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24E2 _ 89. 04 24
        call    _boxfill8                               ; 24E5 _ E8, 00000656
        mov     eax, dword [ebp+10H]                    ; 24EA _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 24ED _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 24F0 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 24F3 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 24F6 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 24F9 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 24FC _ 8B. 45, 0C
        sub     eax, 3                                  ; 24FF _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2502 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2506 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 250A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 250E _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2512 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 251A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 251D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2521 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2524 _ 89. 04 24
        call    _boxfill8                               ; 2527 _ E8, 00000614
        nop                                             ; 252C _ 90
        add     esp, 36                                 ; 252D _ 83. C4, 24
        pop     ebx                                     ; 2530 _ 5B
        pop     ebp                                     ; 2531 _ 5D
        ret                                             ; 2532 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2533 _ 55
        mov     ebp, esp                                ; 2534 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 2536 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2539 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 253C _ A1, 00000154(d)
        add     eax, edx                                ; 2541 _ 01. D0
        mov     dword [_mx], eax                        ; 2543 _ A3, 00000154(d)
        mov     eax, dword [ebp+10H]                    ; 2548 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 254B _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 254E _ A1, 00000158(d)
        add     eax, edx                                ; 2553 _ 01. D0
        mov     dword [_my], eax                        ; 2555 _ A3, 00000158(d)
        mov     eax, dword [_mx]                        ; 255A _ A1, 00000154(d)
        test    eax, eax                                ; 255F _ 85. C0
        jns     ?_125                                   ; 2561 _ 79, 0A
        mov     dword [_mx], 0                          ; 2563 _ C7. 05, 00000154(d), 00000000
?_125:  mov     eax, dword [_my]                        ; 256D _ A1, 00000158(d)
        test    eax, eax                                ; 2572 _ 85. C0
        jns     ?_126                                   ; 2574 _ 79, 0A
        mov     dword [_my], 0                          ; 2576 _ C7. 05, 00000158(d), 00000000
?_126:  mov     edx, dword [_xsize]                     ; 2580 _ 8B. 15, 0000015C(d)
        mov     eax, dword [_mx]                        ; 2586 _ A1, 00000154(d)
        cmp     edx, eax                                ; 258B _ 39. C2
        jg      ?_127                                   ; 258D _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 258F _ A1, 0000015C(d)
        sub     eax, 1                                  ; 2594 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 2597 _ A3, 00000154(d)
?_127:  mov     edx, dword [_ysize]                     ; 259C _ 8B. 15, 00000160(d)
        mov     eax, dword [_my]                        ; 25A2 _ A1, 00000158(d)
        cmp     edx, eax                                ; 25A7 _ 39. C2
        jg      ?_128                                   ; 25A9 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 25AB _ A1, 00000160(d)
        sub     eax, 1                                  ; 25B0 _ 83. E8, 01
        mov     dword [_my], eax                        ; 25B3 _ A3, 00000158(d)
?_128:  nop                                             ; 25B8 _ 90
        pop     ebp                                     ; 25B9 _ 5D
        ret                                             ; 25BA _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 25BB _ 55
        mov     ebp, esp                                ; 25BC _ 89. E5
        push    ebx                                     ; 25BE _ 53
        sub     esp, 68                                 ; 25BF _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 25C2 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 25C5 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 25C8 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 25CB _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 25CE _ C7. 45, F0, 00000000
        jmp     ?_130                                   ; 25D5 _ EB, 4B

?_129:  mov     eax, dword [ebp+1CH]                    ; 25D7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 25DA _ 0F B6. 00
        movzx   eax, al                                 ; 25DD _ 0F B6. C0
        shl     eax, 4                                  ; 25E0 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 25E3 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 25E9 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 25ED _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 25F0 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 25F3 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 25F6 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 25F8 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 25FC _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2600 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2603 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2607 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 260A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 260E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2612 _ 89. 14 24
        call    _showFont8                              ; 2615 _ E8, 00000576
        add     dword [ebp+10H], 8                      ; 261A _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 261E _ 83. 45, 1C, 01
?_130:  mov     eax, dword [ebp+1CH]                    ; 2622 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2625 _ 0F B6. 00
        test    al, al                                  ; 2628 _ 84. C0
        jnz     ?_129                                   ; 262A _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 262C _ 8B. 45, 14
        add     eax, 16                                 ; 262F _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2632 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2636 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2639 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 263D _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2640 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2644 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2647 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 264B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 264E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2652 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2655 _ 89. 04 24
        call    _sheet_refresh                          ; 2658 _ E8, 00000000(rel)
        nop                                             ; 265D _ 90
        add     esp, 68                                 ; 265E _ 83. C4, 44
        pop     ebx                                     ; 2661 _ 5B
        pop     ebp                                     ; 2662 _ 5D
        ret                                             ; 2663 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2664 _ 55
        mov     ebp, esp                                ; 2665 _ 89. E5
        sub     esp, 56                                 ; 2667 _ 83. EC, 38
        mov     eax, dword [_buf_back]                  ; 266A _ A1, 00000164(d)
        mov     dword [ebp-10H], eax                    ; 266F _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 2672 _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2676 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 267D _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2682 _ C7. 04 24, 00000048(d)
        call    _fifo8_get                              ; 2689 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 268E _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 2691 _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2695 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2699 _ C7. 04 24, 00000120(d)
        call    _mouse_decode                           ; 26A0 _ E8, 00000A0F
        test    eax, eax                                ; 26A5 _ 85. C0
        je      ?_138                                   ; 26A7 _ 0F 84, 0000026A
        mov     dword [esp+8H], _mdec                   ; 26AD _ C7. 44 24, 08, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 26B5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 26B8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26BC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26BF _ 89. 04 24
        call    _computeMousePosition                   ; 26C2 _ E8, FFFFFE6C
        mov     edx, dword [_my]                        ; 26C7 _ 8B. 15, 00000158(d)
        mov     eax, dword [_mx]                        ; 26CD _ A1, 00000154(d)
        mov     dword [esp+0CH], edx                    ; 26D2 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 26D6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 26DA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 26DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26E4 _ 89. 04 24
        call    _sheet_slide                            ; 26E7 _ E8, 00000000(rel)
        mov     eax, dword [?_380]                      ; 26EC _ A1, 0000012C(d)
        and     eax, 01H                                ; 26F1 _ 83. E0, 01
        test    eax, eax                                ; 26F4 _ 85. C0
        je      ?_136                                   ; 26F6 _ 0F 84, 0000020E
        mov     eax, dword [_mmx]                       ; 26FC _ A1, 00000118(d)
        test    eax, eax                                ; 2701 _ 85. C0
        jns     ?_135                                   ; 2703 _ 0F 89, 00000190
        mov     eax, dword [ebp+8H]                     ; 2709 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 270C _ 8B. 40, 10
        sub     eax, 1                                  ; 270F _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2712 _ 89. 45, F4
        jmp     ?_134                                   ; 2715 _ E9, 00000173

?_131:  mov     eax, dword [ebp+8H]                     ; 271A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 271D _ 8B. 55, F4
        add     edx, 4                                  ; 2720 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2723 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2727 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 272A _ 8B. 15, 00000154(d)
        mov     eax, dword [ebp-18H]                    ; 2730 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 2733 _ 8B. 40, 0C
        sub     edx, eax                                ; 2736 _ 29. C2
        mov     eax, edx                                ; 2738 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 273A _ 89. 45, E4
        mov     edx, dword [_my]                        ; 273D _ 8B. 15, 00000158(d)
        mov     eax, dword [ebp-18H]                    ; 2743 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2746 _ 8B. 40, 10
        sub     edx, eax                                ; 2749 _ 29. C2
        mov     eax, edx                                ; 274B _ 89. D0
        mov     dword [ebp-20H], eax                    ; 274D _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 2750 _ 83. 7D, E4, 00
        js      ?_133                                   ; 2754 _ 0F 88, 0000012F
        mov     eax, dword [ebp-18H]                    ; 275A _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 275D _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2760 _ 39. 45, E4
        jge     ?_133                                   ; 2763 _ 0F 8D, 00000120
        cmp     dword [ebp-20H], 0                      ; 2769 _ 83. 7D, E0, 00
        js      ?_133                                   ; 276D _ 0F 88, 00000116
        mov     eax, dword [ebp-18H]                    ; 2773 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2776 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2779 _ 39. 45, E0
        jge     ?_133                                   ; 277C _ 0F 8D, 00000107
        mov     eax, dword [ebp-18H]                    ; 2782 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2785 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2787 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 278A _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 278D _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 2791 _ 8B. 4D, E4
        add     eax, ecx                                ; 2794 _ 01. C8
        add     eax, edx                                ; 2796 _ 01. D0
        movzx   eax, byte [eax]                         ; 2798 _ 0F B6. 00
        movzx   eax, al                                 ; 279B _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 279E _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 27A1 _ 8B. 52, 14
        cmp     eax, edx                                ; 27A4 _ 39. D0
        je      ?_133                                   ; 27A6 _ 0F 84, 000000DD
        mov     eax, dword [ebp+8H]                     ; 27AC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27AF _ 8B. 40, 10
        sub     eax, 1                                  ; 27B2 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 27B5 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 27B9 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 27BC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27C0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27C3 _ 89. 04 24
        call    _sheet_updown                           ; 27C6 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 27CB _ 83. 7D, E4, 02
        jle     ?_132                                   ; 27CF _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 27D1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 27D4 _ 8B. 40, 04
        sub     eax, 3                                  ; 27D7 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 27DA _ 39. 45, E4
        jge     ?_132                                   ; 27DD _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 27DF _ 83. 7D, E0, 02
        jle     ?_132                                   ; 27E3 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 27E5 _ 83. 7D, E0, 14
        jg      ?_132                                   ; 27E9 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 27EB _ A1, 00000154(d)
        mov     dword [_mmx], eax                       ; 27F0 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 27F5 _ A1, 00000158(d)
        mov     dword [_mmy], eax                       ; 27FA _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 27FF _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 2802 _ A3, 00000290(d)
?_132:  mov     eax, dword [ebp-18H]                    ; 2807 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 280A _ 8B. 40, 04
        sub     eax, 21                                 ; 280D _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 2810 _ 39. 45, E4
        jl      ?_137                                   ; 2813 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 2819 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 281C _ 8B. 40, 04
        sub     eax, 5                                  ; 281F _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 2822 _ 39. 45, E4
        jge     ?_137                                   ; 2825 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 282B _ 83. 7D, E0, 04
        jle     ?_137                                   ; 282F _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 2835 _ 83. 7D, E0, 12
        jg      ?_137                                   ; 2839 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 283F _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 2842 _ 8B. 40, 20
        test    eax, eax                                ; 2845 _ 85. C0
        je      ?_137                                   ; 2847 _ 0F 84, 000000C9
        call    _io_cli                                 ; 284D _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2852 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2855 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2859 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 285C _ 89. 04 24
        call    _sheet_free                             ; 285F _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 2864 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 2869 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 286C _ B9, 00000CCA(d)
        mov     eax, dword [ebp-18H]                    ; 2871 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 2874 _ 8B. 50, 20
        mov     eax, ecx                                ; 2877 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 2879 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 287C _ 89. 42, 4C
        call    _io_sti                                 ; 287F _ E8, 00000000(rel)
        jmp     ?_137                                   ; 2884 _ E9, 0000008D

?_133:  sub     dword [ebp-0CH], 1                      ; 2889 _ 83. 6D, F4, 01
?_134:  cmp     dword [ebp-0CH], 0                      ; 288D _ 83. 7D, F4, 00
        jg      ?_131                                   ; 2891 _ 0F 8F, FFFFFE83
        jmp     ?_138                                   ; 2897 _ EB, 7E

?_135:  mov     edx, dword [_mx]                        ; 2899 _ 8B. 15, 00000154(d)
        mov     eax, dword [_mmx]                       ; 289F _ A1, 00000118(d)
        sub     edx, eax                                ; 28A4 _ 29. C2
        mov     eax, edx                                ; 28A6 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 28A8 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 28AB _ 8B. 15, 00000158(d)
        mov     eax, dword [_mmy]                       ; 28B1 _ A1, 0000011C(d)
        sub     edx, eax                                ; 28B6 _ 29. C2
        mov     eax, edx                                ; 28B8 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 28BA _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 28BD _ A1, 00000290(d)
        mov     edx, dword [eax+10H]                    ; 28C2 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 28C5 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 28C8 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 28CB _ A1, 00000290(d)
        mov     edx, dword [eax+0CH]                    ; 28D0 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 28D3 _ 8B. 45, E4
        add     edx, eax                                ; 28D6 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 28D8 _ A1, 00000290(d)
        mov     dword [esp+0CH], ecx                    ; 28DD _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 28E1 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 28E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28EC _ 89. 04 24
        call    _sheet_slide                            ; 28EF _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 28F4 _ A1, 00000154(d)
        mov     dword [_mmx], eax                       ; 28F9 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 28FE _ A1, 00000158(d)
        mov     dword [_mmy], eax                       ; 2903 _ A3, 0000011C(d)
        jmp     ?_138                                   ; 2908 _ EB, 0D

?_136:  mov     dword [_mmx], -1                        ; 290A _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_138                                   ; 2914 _ EB, 01

?_137:  nop                                             ; 2916 _ 90
?_138:  nop                                             ; 2917 _ 90
        leave                                           ; 2918 _ C9
        ret                                             ; 2919 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 291A _ 55
        mov     ebp, esp                                ; 291B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 291D _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 2920 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 2926 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 2929 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 292F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 2932 _ 66: C7. 40, 06, 01E0
        nop                                             ; 2938 _ 90
        pop     ebp                                     ; 2939 _ 5D
        ret                                             ; 293A _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 293B _ 55
        mov     ebp, esp                                ; 293C _ 89. E5
        push    ebx                                     ; 293E _ 53
        sub     esp, 692                                ; 293F _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2598         ; 2945 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 294D _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2955 _ C7. 04 24, 00000000
        call    _set_palette                            ; 295C _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 2961 _ C7. 45, EC, 00000000
        jmp     ?_144                                   ; 2968 _ E9, 000000FB

?_139:  mov     dword [ebp-10H], 0                      ; 296D _ C7. 45, F0, 00000000
        jmp     ?_143                                   ; 2974 _ E9, 000000E1

?_140:  mov     dword [ebp-0CH], 0                      ; 2979 _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 2980 _ E9, 000000C7

?_141:  mov     eax, dword [ebp-0CH]                    ; 2985 _ 8B. 45, F4
        mov     ebx, eax                                ; 2988 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 298A _ 8B. 55, F0
        mov     eax, edx                                ; 298D _ 89. D0
        add     eax, eax                                ; 298F _ 01. C0
        add     eax, edx                                ; 2991 _ 01. D0
        add     eax, eax                                ; 2993 _ 01. C0
        mov     edx, eax                                ; 2995 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2997 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 299A _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 299D _ 8B. 55, EC
        mov     eax, edx                                ; 29A0 _ 89. D0
        shl     eax, 3                                  ; 29A2 _ C1. E0, 03
        add     eax, edx                                ; 29A5 _ 01. D0
        shl     eax, 2                                  ; 29A7 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 29AA _ 8D. 14 01
        mov     eax, edx                                ; 29AD _ 89. D0
        add     eax, eax                                ; 29AF _ 01. C0
        add     edx, eax                                ; 29B1 _ 01. C2
        mov     ecx, 51                                 ; 29B3 _ B9, 00000033
        mov     eax, ebx                                ; 29B8 _ 89. D8
        imul    eax, ecx                                ; 29BA _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 29BD _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 29C4 _ 8B. 45, F0
        mov     ebx, eax                                ; 29C7 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 29C9 _ 8B. 55, F0
        mov     eax, edx                                ; 29CC _ 89. D0
        add     eax, eax                                ; 29CE _ 01. C0
        add     eax, edx                                ; 29D0 _ 01. D0
        add     eax, eax                                ; 29D2 _ 01. C0
        mov     edx, eax                                ; 29D4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 29D6 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 29D9 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 29DC _ 8B. 55, EC
        mov     eax, edx                                ; 29DF _ 89. D0
        shl     eax, 3                                  ; 29E1 _ C1. E0, 03
        add     eax, edx                                ; 29E4 _ 01. D0
        shl     eax, 2                                  ; 29E6 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 29E9 _ 8D. 14 01
        mov     eax, edx                                ; 29EC _ 89. D0
        add     eax, eax                                ; 29EE _ 01. C0
        add     eax, edx                                ; 29F0 _ 01. D0
        lea     edx, [eax+1H]                           ; 29F2 _ 8D. 50, 01
        mov     ecx, 51                                 ; 29F5 _ B9, 00000033
        mov     eax, ebx                                ; 29FA _ 89. D8
        imul    eax, ecx                                ; 29FC _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 29FF _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 2A06 _ 8B. 45, EC
        mov     ebx, eax                                ; 2A09 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 2A0B _ 8B. 55, F0
        mov     eax, edx                                ; 2A0E _ 89. D0
        add     eax, eax                                ; 2A10 _ 01. C0
        add     eax, edx                                ; 2A12 _ 01. D0
        add     eax, eax                                ; 2A14 _ 01. C0
        mov     edx, eax                                ; 2A16 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A18 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 2A1B _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 2A1E _ 8B. 55, EC
        mov     eax, edx                                ; 2A21 _ 89. D0
        shl     eax, 3                                  ; 2A23 _ C1. E0, 03
        add     eax, edx                                ; 2A26 _ 01. D0
        shl     eax, 2                                  ; 2A28 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 2A2B _ 8D. 14 01
        mov     eax, edx                                ; 2A2E _ 89. D0
        add     eax, eax                                ; 2A30 _ 01. C0
        add     eax, edx                                ; 2A32 _ 01. D0
        lea     edx, [eax+2H]                           ; 2A34 _ 8D. 50, 02
        mov     ecx, 51                                 ; 2A37 _ B9, 00000033
        mov     eax, ebx                                ; 2A3C _ 89. D8
        imul    eax, ecx                                ; 2A3E _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 2A41 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 2A48 _ 83. 45, F4, 01
?_142:  cmp     dword [ebp-0CH], 5                      ; 2A4C _ 83. 7D, F4, 05
        jle     ?_141                                   ; 2A50 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 2A56 _ 83. 45, F0, 01
?_143:  cmp     dword [ebp-10H], 5                      ; 2A5A _ 83. 7D, F0, 05
        jle     ?_140                                   ; 2A5E _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 2A64 _ 83. 45, EC, 01
?_144:  cmp     dword [ebp-14H], 5                      ; 2A68 _ 83. 7D, EC, 05
        jle     ?_139                                   ; 2A6C _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 2A72 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 2A78 _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 2A7C _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 2A84 _ C7. 04 24, 00000010
        call    _set_palette                            ; 2A8B _ E8, 0000000A
        nop                                             ; 2A90 _ 90
        add     esp, 692                                ; 2A91 _ 81. C4, 000002B4
        pop     ebx                                     ; 2A97 _ 5B
        pop     ebp                                     ; 2A98 _ 5D
        ret                                             ; 2A99 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 2A9A _ 55
        mov     ebp, esp                                ; 2A9B _ 89. E5
        sub     esp, 40                                 ; 2A9D _ 83. EC, 28
        call    _io_load_eflags                         ; 2AA0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2AA5 _ 89. 45, F0
        call    _io_cli                                 ; 2AA8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2AAD _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2AB0 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 2AB4 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 2ABB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2AC0 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 2AC3 _ 89. 45, F4
        jmp     ?_146                                   ; 2AC6 _ EB, 62

?_145:  mov     eax, dword [ebp+10H]                    ; 2AC8 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 2ACB _ 0F B6. 00
        shr     al, 2                                   ; 2ACE _ C0. E8, 02
        movzx   eax, al                                 ; 2AD1 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2AD4 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2AD8 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2ADF _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2AE4 _ 8B. 45, 10
        add     eax, 1                                  ; 2AE7 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 2AEA _ 0F B6. 00
        shr     al, 2                                   ; 2AED _ C0. E8, 02
        movzx   eax, al                                 ; 2AF0 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2AF3 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2AF7 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2AFE _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2B03 _ 8B. 45, 10
        add     eax, 2                                  ; 2B06 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 2B09 _ 0F B6. 00
        shr     al, 2                                   ; 2B0C _ C0. E8, 02
        movzx   eax, al                                 ; 2B0F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2B12 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2B16 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2B1D _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 2B22 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2B26 _ 83. 45, F4, 01
?_146:  mov     eax, dword [ebp-0CH]                    ; 2B2A _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2B2D _ 3B. 45, 0C
        jle     ?_145                                   ; 2B30 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 2B32 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2B35 _ 89. 04 24
        call    _io_store_eflags                        ; 2B38 _ E8, 00000000(rel)
        nop                                             ; 2B3D _ 90
        leave                                           ; 2B3E _ C9
        ret                                             ; 2B3F _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 2B40 _ 55
        mov     ebp, esp                                ; 2B41 _ 89. E5
        sub     esp, 20                                 ; 2B43 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2B46 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2B49 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2B4C _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2B4F _ 89. 45, F8
        jmp     ?_150                                   ; 2B52 _ EB, 31

?_147:  mov     eax, dword [ebp+14H]                    ; 2B54 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2B57 _ 89. 45, FC
        jmp     ?_149                                   ; 2B5A _ EB, 1D

?_148:  mov     eax, dword [ebp-8H]                     ; 2B5C _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2B5F _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 2B63 _ 8B. 55, FC
        add     eax, edx                                ; 2B66 _ 01. D0
        mov     edx, eax                                ; 2B68 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2B6A _ 8B. 45, 08
        add     edx, eax                                ; 2B6D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2B6F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2B73 _ 88. 02
        add     dword [ebp-4H], 1                       ; 2B75 _ 83. 45, FC, 01
?_149:  mov     eax, dword [ebp-4H]                     ; 2B79 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 2B7C _ 3B. 45, 1C
        jle     ?_148                                   ; 2B7F _ 7E, DB
        add     dword [ebp-8H], 1                       ; 2B81 _ 83. 45, F8, 01
?_150:  mov     eax, dword [ebp-8H]                     ; 2B85 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 2B88 _ 3B. 45, 20
        jle     ?_147                                   ; 2B8B _ 7E, C7
        nop                                             ; 2B8D _ 90
        leave                                           ; 2B8E _ C9
        ret                                             ; 2B8F _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 2B90 _ 55
        mov     ebp, esp                                ; 2B91 _ 89. E5
        sub     esp, 20                                 ; 2B93 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 2B96 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 2B99 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2B9C _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 2BA3 _ E9, 0000015C

?_151:  mov     edx, dword [ebp-4H]                     ; 2BA8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 2BAB _ 8B. 45, 1C
        add     eax, edx                                ; 2BAE _ 01. D0
        movzx   eax, byte [eax]                         ; 2BB0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 2BB3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 2BB6 _ 80. 7D, FB, 00
        jns     ?_152                                   ; 2BBA _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 2BBC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2BBF _ 8B. 45, FC
        add     eax, edx                                ; 2BC2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2BC4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2BC8 _ 8B. 55, 10
        add     eax, edx                                ; 2BCB _ 01. D0
        mov     edx, eax                                ; 2BCD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2BCF _ 8B. 45, 08
        add     edx, eax                                ; 2BD2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2BD4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2BD8 _ 88. 02
?_152:  movsx   eax, byte [ebp-5H]                      ; 2BDA _ 0F BE. 45, FB
        and     eax, 40H                                ; 2BDE _ 83. E0, 40
        test    eax, eax                                ; 2BE1 _ 85. C0
        jz      ?_153                                   ; 2BE3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2BE5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2BE8 _ 8B. 45, FC
        add     eax, edx                                ; 2BEB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2BED _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2BF1 _ 8B. 55, 10
        add     eax, edx                                ; 2BF4 _ 01. D0
        lea     edx, [eax+1H]                           ; 2BF6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2BF9 _ 8B. 45, 08
        add     edx, eax                                ; 2BFC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2BFE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2C02 _ 88. 02
?_153:  movsx   eax, byte [ebp-5H]                      ; 2C04 _ 0F BE. 45, FB
        and     eax, 20H                                ; 2C08 _ 83. E0, 20
        test    eax, eax                                ; 2C0B _ 85. C0
        jz      ?_154                                   ; 2C0D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2C0F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2C12 _ 8B. 45, FC
        add     eax, edx                                ; 2C15 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2C17 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C1B _ 8B. 55, 10
        add     eax, edx                                ; 2C1E _ 01. D0
        lea     edx, [eax+2H]                           ; 2C20 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2C23 _ 8B. 45, 08
        add     edx, eax                                ; 2C26 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2C28 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2C2C _ 88. 02
?_154:  movsx   eax, byte [ebp-5H]                      ; 2C2E _ 0F BE. 45, FB
        and     eax, 10H                                ; 2C32 _ 83. E0, 10
        test    eax, eax                                ; 2C35 _ 85. C0
        jz      ?_155                                   ; 2C37 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2C39 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2C3C _ 8B. 45, FC
        add     eax, edx                                ; 2C3F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2C41 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C45 _ 8B. 55, 10
        add     eax, edx                                ; 2C48 _ 01. D0
        lea     edx, [eax+3H]                           ; 2C4A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2C4D _ 8B. 45, 08
        add     edx, eax                                ; 2C50 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2C52 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2C56 _ 88. 02
?_155:  movsx   eax, byte [ebp-5H]                      ; 2C58 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2C5C _ 83. E0, 08
        test    eax, eax                                ; 2C5F _ 85. C0
        jz      ?_156                                   ; 2C61 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2C63 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2C66 _ 8B. 45, FC
        add     eax, edx                                ; 2C69 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2C6B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C6F _ 8B. 55, 10
        add     eax, edx                                ; 2C72 _ 01. D0
        lea     edx, [eax+4H]                           ; 2C74 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2C77 _ 8B. 45, 08
        add     edx, eax                                ; 2C7A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2C7C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2C80 _ 88. 02
?_156:  movsx   eax, byte [ebp-5H]                      ; 2C82 _ 0F BE. 45, FB
        and     eax, 04H                                ; 2C86 _ 83. E0, 04
        test    eax, eax                                ; 2C89 _ 85. C0
        jz      ?_157                                   ; 2C8B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2C8D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2C90 _ 8B. 45, FC
        add     eax, edx                                ; 2C93 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2C95 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C99 _ 8B. 55, 10
        add     eax, edx                                ; 2C9C _ 01. D0
        lea     edx, [eax+5H]                           ; 2C9E _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 2CA1 _ 8B. 45, 08
        add     edx, eax                                ; 2CA4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2CA6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2CAA _ 88. 02
?_157:  movsx   eax, byte [ebp-5H]                      ; 2CAC _ 0F BE. 45, FB
        and     eax, 02H                                ; 2CB0 _ 83. E0, 02
        test    eax, eax                                ; 2CB3 _ 85. C0
        jz      ?_158                                   ; 2CB5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2CB7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2CBA _ 8B. 45, FC
        add     eax, edx                                ; 2CBD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2CBF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2CC3 _ 8B. 55, 10
        add     eax, edx                                ; 2CC6 _ 01. D0
        lea     edx, [eax+6H]                           ; 2CC8 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 2CCB _ 8B. 45, 08
        add     edx, eax                                ; 2CCE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2CD0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2CD4 _ 88. 02
?_158:  movsx   eax, byte [ebp-5H]                      ; 2CD6 _ 0F BE. 45, FB
        and     eax, 01H                                ; 2CDA _ 83. E0, 01
        test    eax, eax                                ; 2CDD _ 85. C0
        jz      ?_159                                   ; 2CDF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2CE1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2CE4 _ 8B. 45, FC
        add     eax, edx                                ; 2CE7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2CE9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2CED _ 8B. 55, 10
        add     eax, edx                                ; 2CF0 _ 01. D0
        lea     edx, [eax+7H]                           ; 2CF2 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2CF5 _ 8B. 45, 08
        add     edx, eax                                ; 2CF8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2CFA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2CFE _ 88. 02
?_159:  add     dword [ebp-4H], 1                       ; 2D00 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 15                      ; 2D04 _ 83. 7D, FC, 0F
        jle     ?_151                                   ; 2D08 _ 0F 8E, FFFFFE9A
        nop                                             ; 2D0E _ 90
        leave                                           ; 2D0F _ C9
        ret                                             ; 2D10 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 2D11 _ 55
        mov     ebp, esp                                ; 2D12 _ 89. E5
        sub     esp, 20                                 ; 2D14 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 2D17 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 2D1A _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 2D1D _ C7. 45, F8, 00000000
        jmp     ?_167                                   ; 2D24 _ E9, 000000B1

?_161:  mov     dword [ebp-4H], 0                       ; 2D29 _ C7. 45, FC, 00000000
        jmp     ?_166                                   ; 2D30 _ E9, 00000097

?_162:  mov     eax, dword [ebp-8H]                     ; 2D35 _ 8B. 45, F8
        shl     eax, 4                                  ; 2D38 _ C1. E0, 04
        mov     edx, eax                                ; 2D3B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D3D _ 8B. 45, FC
        add     eax, edx                                ; 2D40 _ 01. D0
        add     eax, _cursor.2658                       ; 2D42 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2D47 _ 0F B6. 00
        cmp     al, 42                                  ; 2D4A _ 3C, 2A
        jnz     ?_163                                   ; 2D4C _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2D4E _ 8B. 45, F8
        shl     eax, 4                                  ; 2D51 _ C1. E0, 04
        mov     edx, eax                                ; 2D54 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D56 _ 8B. 45, FC
        add     eax, edx                                ; 2D59 _ 01. D0
        mov     edx, eax                                ; 2D5B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2D5D _ 8B. 45, 08
        add     eax, edx                                ; 2D60 _ 01. D0
        mov     byte [eax], 0                           ; 2D62 _ C6. 00, 00
?_163:  mov     eax, dword [ebp-8H]                     ; 2D65 _ 8B. 45, F8
        shl     eax, 4                                  ; 2D68 _ C1. E0, 04
        mov     edx, eax                                ; 2D6B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D6D _ 8B. 45, FC
        add     eax, edx                                ; 2D70 _ 01. D0
        add     eax, _cursor.2658                       ; 2D72 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2D77 _ 0F B6. 00
        cmp     al, 79                                  ; 2D7A _ 3C, 4F
        jnz     ?_164                                   ; 2D7C _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2D7E _ 8B. 45, F8
        shl     eax, 4                                  ; 2D81 _ C1. E0, 04
        mov     edx, eax                                ; 2D84 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D86 _ 8B. 45, FC
        add     eax, edx                                ; 2D89 _ 01. D0
        mov     edx, eax                                ; 2D8B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2D8D _ 8B. 45, 08
        add     eax, edx                                ; 2D90 _ 01. D0
        mov     byte [eax], 7                           ; 2D92 _ C6. 00, 07
?_164:  mov     eax, dword [ebp-8H]                     ; 2D95 _ 8B. 45, F8
        shl     eax, 4                                  ; 2D98 _ C1. E0, 04
        mov     edx, eax                                ; 2D9B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D9D _ 8B. 45, FC
        add     eax, edx                                ; 2DA0 _ 01. D0
        add     eax, _cursor.2658                       ; 2DA2 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2DA7 _ 0F B6. 00
        cmp     al, 46                                  ; 2DAA _ 3C, 2E
        jnz     ?_165                                   ; 2DAC _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 2DAE _ 8B. 45, F8
        shl     eax, 4                                  ; 2DB1 _ C1. E0, 04
        mov     edx, eax                                ; 2DB4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2DB6 _ 8B. 45, FC
        add     eax, edx                                ; 2DB9 _ 01. D0
        mov     edx, eax                                ; 2DBB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DBD _ 8B. 45, 08
        add     edx, eax                                ; 2DC0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2DC2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2DC6 _ 88. 02
?_165:  add     dword [ebp-4H], 1                       ; 2DC8 _ 83. 45, FC, 01
?_166:  cmp     dword [ebp-4H], 15                      ; 2DCC _ 83. 7D, FC, 0F
        jle     ?_162                                   ; 2DD0 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 2DD6 _ 83. 45, F8, 01
?_167:  cmp     dword [ebp-8H], 15                      ; 2DDA _ 83. 7D, F8, 0F
        jle     ?_161                                   ; 2DDE _ 0F 8E, FFFFFF45
        nop                                             ; 2DE4 _ 90
        leave                                           ; 2DE5 _ C9
        ret                                             ; 2DE6 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 2DE7 _ 55
        mov     ebp, esp                                ; 2DE8 _ 89. E5
        push    ebx                                     ; 2DEA _ 53
        sub     esp, 16                                 ; 2DEB _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2DEE _ C7. 45, F4, 00000000
        jmp     ?_171                                   ; 2DF5 _ EB, 4E

?_168:  mov     dword [ebp-8H], 0                       ; 2DF7 _ C7. 45, F8, 00000000
        jmp     ?_170                                   ; 2DFE _ EB, 39

?_169:  mov     eax, dword [ebp-0CH]                    ; 2E00 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 2E03 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 2E07 _ 8B. 55, F8
        add     eax, edx                                ; 2E0A _ 01. D0
        mov     edx, eax                                ; 2E0C _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2E0E _ 8B. 45, 20
        add     eax, edx                                ; 2E11 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2E13 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2E16 _ 8B. 55, F4
        add     edx, ecx                                ; 2E19 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 2E1B _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2E1F _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 2E22 _ 8B. 4D, F8
        add     ecx, ebx                                ; 2E25 _ 01. D9
        add     edx, ecx                                ; 2E27 _ 01. CA
        mov     ecx, edx                                ; 2E29 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2E2B _ 8B. 55, 08
        add     edx, ecx                                ; 2E2E _ 01. CA
        movzx   eax, byte [eax]                         ; 2E30 _ 0F B6. 00
        mov     byte [edx], al                          ; 2E33 _ 88. 02
        add     dword [ebp-8H], 1                       ; 2E35 _ 83. 45, F8, 01
?_170:  mov     eax, dword [ebp-8H]                     ; 2E39 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 2E3C _ 3B. 45, 10
        jl      ?_169                                   ; 2E3F _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 2E41 _ 83. 45, F4, 01
?_171:  mov     eax, dword [ebp-0CH]                    ; 2E45 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2E48 _ 3B. 45, 14
        jl      ?_168                                   ; 2E4B _ 7C, AA
        nop                                             ; 2E4D _ 90
        add     esp, 16                                 ; 2E4E _ 83. C4, 10
        pop     ebx                                     ; 2E51 _ 5B
        pop     ebp                                     ; 2E52 _ 5D
        ret                                             ; 2E53 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 2E54 _ 55
        mov     ebp, esp                                ; 2E55 _ 89. E5
        sub     esp, 40                                 ; 2E57 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2E5A _ A1, 00000024(d)
        mov     dword [ebp-0CH], eax                    ; 2E5F _ 89. 45, F4
        movzx   eax, word [?_377]                       ; 2E62 _ 0F B7. 05, 00000028(d)
        cwde                                            ; 2E69 _ 98
        mov     dword [ebp-10H], eax                    ; 2E6A _ 89. 45, F0
        movzx   eax, word [?_378]                       ; 2E6D _ 0F B7. 05, 0000002A(d)
        cwde                                            ; 2E74 _ 98
        mov     dword [ebp-14H], eax                    ; 2E75 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2E78 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2E80 _ C7. 04 24, 00000020
        call    _io_out8                                ; 2E87 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 2E8C _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 2E90 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2E97 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 2E9C _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2E9F _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 2EA3 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 2EA7 _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 2EAE _ E8, 00000000(rel)
        nop                                             ; 2EB3 _ 90
        leave                                           ; 2EB4 _ C9
        ret                                             ; 2EB5 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 2EB6 _ 55
        mov     ebp, esp                                ; 2EB7 _ 89. E5
        sub     esp, 4                                  ; 2EB9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2EBF _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2EC2 _ 80. 7D, FC, 09
        jle     ?_172                                   ; 2EC6 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 2EC8 _ 0F B6. 45, FC
        add     eax, 55                                 ; 2ECC _ 83. C0, 37
        jmp     ?_173                                   ; 2ECF _ EB, 07

?_172:  movzx   eax, byte [ebp-4H]                      ; 2ED1 _ 0F B6. 45, FC
        add     eax, 48                                 ; 2ED5 _ 83. C0, 30
?_173:  leave                                           ; 2ED8 _ C9
        ret                                             ; 2ED9 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 2EDA _ 55
        mov     ebp, esp                                ; 2EDB _ 89. E5
        sub     esp, 24                                 ; 2EDD _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2EE0 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 2EE3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2EE6 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2EED _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2EF1 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2EF4 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2EF7 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 2EFB _ 89. 04 24
        call    _charToHexVal                           ; 2EFE _ E8, FFFFFFB3
        mov     byte [?_346], al                        ; 2F03 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 2F08 _ 0F B6. 45, EC
        shr     al, 4                                   ; 2F0C _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2F0F _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2F12 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2F16 _ 0F BE. C0
        mov     dword [esp], eax                        ; 2F19 _ 89. 04 24
        call    _charToHexVal                           ; 2F1C _ E8, FFFFFF95
        mov     byte [?_345], al                        ; 2F21 _ A2, 00000112(d)
        mov     eax, _keyval                            ; 2F26 _ B8, 00000110(d)
        leave                                           ; 2F2B _ C9
        ret                                             ; 2F2C _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2F2D _ 55
        mov     ebp, esp                                ; 2F2E _ 89. E5
        sub     esp, 16                                 ; 2F30 _ 83. EC, 10
        mov     byte [_str.2706], 48                    ; 2F33 _ C6. 05, 000003B4(d), 30
        mov     byte [?_383], 88                        ; 2F3A _ C6. 05, 000003B5(d), 58
        mov     byte [?_384], 0                         ; 2F41 _ C6. 05, 000003BE(d), 00
        mov     dword [ebp-4H], 2                       ; 2F48 _ C7. 45, FC, 00000002
        jmp     ?_175                                   ; 2F4F _ EB, 0F

?_174:  mov     eax, dword [ebp-4H]                     ; 2F51 _ 8B. 45, FC
        add     eax, _str.2706                          ; 2F54 _ 05, 000003B4(d)
        mov     byte [eax], 48                          ; 2F59 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2F5C _ 83. 45, FC, 01
?_175:  cmp     dword [ebp-4H], 9                       ; 2F60 _ 83. 7D, FC, 09
        jle     ?_174                                   ; 2F64 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2F66 _ C7. 45, F8, 00000009
        jmp     ?_179                                   ; 2F6D _ EB, 42

?_176:  mov     eax, dword [ebp+8H]                     ; 2F6F _ 8B. 45, 08
        and     eax, 0FH                                ; 2F72 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 2F75 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2F78 _ 8B. 45, 08
        shr     eax, 4                                  ; 2F7B _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2F7E _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 2F81 _ 83. 7D, F4, 09
        jle     ?_177                                   ; 2F85 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 2F87 _ 8B. 45, F4
        add     eax, 55                                 ; 2F8A _ 83. C0, 37
        mov     edx, eax                                ; 2F8D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2F8F _ 8B. 45, F8
        add     eax, _str.2706                          ; 2F92 _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2F97 _ 88. 10
        jmp     ?_178                                   ; 2F99 _ EB, 12

?_177:  mov     eax, dword [ebp-0CH]                    ; 2F9B _ 8B. 45, F4
        add     eax, 48                                 ; 2F9E _ 83. C0, 30
        mov     edx, eax                                ; 2FA1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2FA3 _ 8B. 45, F8
        add     eax, _str.2706                          ; 2FA6 _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2FAB _ 88. 10
?_178:  sub     dword [ebp-8H], 1                       ; 2FAD _ 83. 6D, F8, 01
?_179:  cmp     dword [ebp-8H], 1                       ; 2FB1 _ 83. 7D, F8, 01
        jle     ?_180                                   ; 2FB5 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2FB7 _ 83. 7D, 08, 00
        jnz     ?_176                                   ; 2FBB _ 75, B2
?_180:  mov     eax, _str.2706                          ; 2FBD _ B8, 000003B4(d)
        leave                                           ; 2FC2 _ C9
        ret                                             ; 2FC3 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 2FC4 _ 55
        mov     ebp, esp                                ; 2FC5 _ 89. E5
        sub     esp, 24                                 ; 2FC7 _ 83. EC, 18
?_181:  mov     dword [esp], 100                        ; 2FCA _ C7. 04 24, 00000064
        call    _io_in8                                 ; 2FD1 _ E8, 00000000(rel)
        and     eax, 02H                                ; 2FD6 _ 83. E0, 02
        test    eax, eax                                ; 2FD9 _ 85. C0
        jz      ?_182                                   ; 2FDB _ 74, 02
        jmp     ?_181                                   ; 2FDD _ EB, EB
; _wait_KBC_sendready End of function

?_182:  ; Local function
        nop                                             ; 2FDF _ 90
        nop                                             ; 2FE0 _ 90
        leave                                           ; 2FE1 _ C9
        ret                                             ; 2FE2 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 2FE3 _ 55
        mov     ebp, esp                                ; 2FE4 _ 89. E5
        sub     esp, 24                                 ; 2FE6 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2FE9 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2FEE _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2FF6 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2FFD _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3002 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3007 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 300F _ C7. 04 24, 00000060
        call    _io_out8                                ; 3016 _ E8, 00000000(rel)
        nop                                             ; 301B _ 90
        leave                                           ; 301C _ C9
        ret                                             ; 301D _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 301E _ 55
        mov     ebp, esp                                ; 301F _ 89. E5
        sub     esp, 24                                 ; 3021 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3024 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3029 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 3031 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3038 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 303D _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 3042 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 304A _ C7. 04 24, 00000060
        call    _io_out8                                ; 3051 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3056 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3059 _ C6. 40, 03, 00
        nop                                             ; 305D _ 90
        leave                                           ; 305E _ C9
        ret                                             ; 305F _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 3060 _ 55
        mov     ebp, esp                                ; 3061 _ 89. E5
        sub     esp, 40                                 ; 3063 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3066 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 306E _ C7. 04 24, 000000A0
        call    _io_out8                                ; 3075 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 307A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3082 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3089 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 308E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3095 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 309A _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 309D _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 30A1 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 30A5 _ C7. 04 24, 00000048(d)
        call    _fifo8_put                              ; 30AC _ E8, 00000000(rel)
        nop                                             ; 30B1 _ 90
        leave                                           ; 30B2 _ C9
        ret                                             ; 30B3 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 30B4 _ 55
        mov     ebp, esp                                ; 30B5 _ 89. E5
        sub     esp, 4                                  ; 30B7 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 30BA _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 30BD _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 30C0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 30C3 _ 0F B6. 40, 03
        test    al, al                                  ; 30C7 _ 84. C0
        jnz     ?_184                                   ; 30C9 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 30CB _ 80. 7D, FC, FA
        jnz     ?_183                                   ; 30CF _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 30D1 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 30D4 _ C6. 40, 03, 01
?_183:  mov     eax, 0                                  ; 30D8 _ B8, 00000000
        jmp     ?_191                                   ; 30DD _ E9, 0000010F

?_184:  mov     eax, dword [ebp+8H]                     ; 30E2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 30E5 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 30E9 _ 3C, 01
        jnz     ?_186                                   ; 30EB _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 30ED _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 30F1 _ 25, 000000C8
        cmp     eax, 8                                  ; 30F6 _ 83. F8, 08
        jnz     ?_185                                   ; 30F9 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 30FB _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 30FE _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3102 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3104 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3107 _ C6. 40, 03, 02
?_185:  mov     eax, 0                                  ; 310B _ B8, 00000000
        jmp     ?_191                                   ; 3110 _ E9, 000000DC

?_186:  mov     eax, dword [ebp+8H]                     ; 3115 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3118 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 311C _ 3C, 02
        jnz     ?_187                                   ; 311E _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3120 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3123 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3127 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 312A _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 312D _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3131 _ B8, 00000000
        jmp     ?_191                                   ; 3136 _ E9, 000000B6

?_187:  mov     eax, dword [ebp+8H]                     ; 313B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 313E _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3142 _ 3C, 03
        jne     ?_190                                   ; 3144 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 314A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 314D _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3151 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3154 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3157 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 315B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 315E _ 0F B6. 00
        movzx   eax, al                                 ; 3161 _ 0F B6. C0
        and     eax, 07H                                ; 3164 _ 83. E0, 07
        mov     edx, eax                                ; 3167 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3169 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 316C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 316F _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3172 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3176 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3179 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 317C _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 317F _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3182 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3186 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3189 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 318C _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 318F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3192 _ 0F B6. 00
        movzx   eax, al                                 ; 3195 _ 0F B6. C0
        and     eax, 10H                                ; 3198 _ 83. E0, 10
        test    eax, eax                                ; 319B _ 85. C0
        jz      ?_188                                   ; 319D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 319F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 31A2 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 31A5 _ 0D, FFFFFF00
        mov     edx, eax                                ; 31AA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31AC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 31AF _ 89. 50, 04
?_188:  mov     eax, dword [ebp+8H]                     ; 31B2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 31B5 _ 0F B6. 00
        movzx   eax, al                                 ; 31B8 _ 0F B6. C0
        and     eax, 20H                                ; 31BB _ 83. E0, 20
        test    eax, eax                                ; 31BE _ 85. C0
        jz      ?_189                                   ; 31C0 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 31C2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31C5 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 31C8 _ 0D, FFFFFF00
        mov     edx, eax                                ; 31CD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31CF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31D2 _ 89. 50, 08
?_189:  mov     eax, dword [ebp+8H]                     ; 31D5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31D8 _ 8B. 40, 08
        neg     eax                                     ; 31DB _ F7. D8
        mov     edx, eax                                ; 31DD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31DF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31E2 _ 89. 50, 08
        mov     eax, 1                                  ; 31E5 _ B8, 00000001
        jmp     ?_191                                   ; 31EA _ EB, 05

?_190:  mov     eax, 4294967295                         ; 31EC _ B8, FFFFFFFF
?_191:  leave                                           ; 31F1 _ C9
        ret                                             ; 31F2 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 31F3 _ 55
        mov     ebp, esp                                ; 31F4 _ 89. E5
        sub     esp, 72                                 ; 31F6 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 31F9 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3200 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3207 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 320E _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3215 _ 8B. 15, 00000160(d)
        mov     eax, dword [ebp+0CH]                    ; 321B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 321E _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3220 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3224 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3227 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 322B _ 89. 04 24
        call    _init_screen8                           ; 322E _ E8, FFFFEF78
        mov     eax, dword [ebp+20H]                    ; 3233 _ 8B. 45, 20
        movsx   eax, al                                 ; 3236 _ 0F BE. C0
        mov     dword [esp+14H], ?_362                  ; 3239 _ C7. 44 24, 14, 00000064(d)
        mov     dword [esp+10H], eax                    ; 3241 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3245 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3248 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 324C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 324F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3253 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3256 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 325A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 325D _ 89. 04 24
        call    _showString                             ; 3260 _ E8, FFFFF356
        mov     eax, dword [ebp+18H]                    ; 3265 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3268 _ 89. 04 24
        call    _intToHexStr                            ; 326B _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 3270 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3273 _ 8B. 45, 20
        movsx   eax, al                                 ; 3276 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3279 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 327C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3280 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3284 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3287 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 328B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 328E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3292 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3295 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3299 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 329C _ 89. 04 24
        call    _showString                             ; 329F _ E8, FFFFF317
        add     dword [ebp-10H], 16                     ; 32A4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 32A8 _ 8B. 45, 20
        movsx   eax, al                                 ; 32AB _ 0F BE. C0
        mov     dword [esp+14H], ?_363                  ; 32AE _ C7. 44 24, 14, 0000006E(d)
        mov     dword [esp+10H], eax                    ; 32B6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 32BA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 32BD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 32C1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 32C4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 32C8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 32CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32D2 _ 89. 04 24
        call    _showString                             ; 32D5 _ E8, FFFFF2E1
        mov     eax, dword [ebp+10H]                    ; 32DA _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 32DD _ 8B. 00
        mov     dword [esp], eax                        ; 32DF _ 89. 04 24
        call    _intToHexStr                            ; 32E2 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 32E7 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 32EA _ 8B. 45, 20
        movsx   eax, al                                 ; 32ED _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 32F0 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 32F3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 32F7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 32FB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 32FE _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3302 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3305 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3309 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 330C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3310 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3313 _ 89. 04 24
        call    _showString                             ; 3316 _ E8, FFFFF2A0
        add     dword [ebp-10H], 16                     ; 331B _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 331F _ 8B. 45, 20
        movsx   eax, al                                 ; 3322 _ 0F BE. C0
        mov     dword [esp+14H], ?_364                  ; 3325 _ C7. 44 24, 14, 0000007A(d)
        mov     dword [esp+10H], eax                    ; 332D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3331 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3334 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3338 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 333B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 333F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3342 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3346 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3349 _ 89. 04 24
        call    _showString                             ; 334C _ E8, FFFFF26A
        mov     eax, dword [ebp+10H]                    ; 3351 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 3354 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3357 _ 89. 04 24
        call    _intToHexStr                            ; 335A _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 335F _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 3362 _ 8B. 45, 20
        movsx   eax, al                                 ; 3365 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 3368 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 336B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 336F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3373 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3376 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 337A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 337D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3381 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3384 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3388 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 338B _ 89. 04 24
        call    _showString                             ; 338E _ E8, FFFFF228
        add     dword [ebp-10H], 16                     ; 3393 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3397 _ 8B. 45, 20
        movsx   eax, al                                 ; 339A _ 0F BE. C0
        mov     dword [esp+14H], ?_365                  ; 339D _ C7. 44 24, 14, 00000086(d)
        mov     dword [esp+10H], eax                    ; 33A5 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 33A9 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 33AC _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 33B0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 33B3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 33B7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 33BA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33C1 _ 89. 04 24
        call    _showString                             ; 33C4 _ E8, FFFFF1F2
        mov     eax, dword [ebp+10H]                    ; 33C9 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 33CC _ 8B. 40, 08
        mov     dword [esp], eax                        ; 33CF _ 89. 04 24
        call    _intToHexStr                            ; 33D2 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 33D7 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 33DA _ 8B. 45, 20
        movsx   eax, al                                 ; 33DD _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 33E0 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 33E3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 33E7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 33EB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 33EE _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 33F2 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 33F5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 33F9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 33FC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3400 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3403 _ 89. 04 24
        call    _showString                             ; 3406 _ E8, FFFFF1B0
        nop                                             ; 340B _ 90
        leave                                           ; 340C _ C9
        ret                                             ; 340D _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 340E _ 55
        mov     ebp, esp                                ; 340F _ 89. E5
        sub     esp, 56                                 ; 3411 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3414 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3417 _ 89. 04 24
        call    _sheet_alloc                            ; 341A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 341F _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 3422 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3427 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 342F _ 89. 04 24
        call    _memman_alloc_4k                        ; 3432 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3437 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 343A _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 3442 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 344A _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 3452 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3455 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3459 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 345C _ 89. 04 24
        call    _sheet_setbuf                           ; 345F _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 3464 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 346C _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 346F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3473 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3476 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 347A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 347D _ 89. 04 24
        call    _make_window8                           ; 3480 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 3485 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 348D _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 3495 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 349D _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 34A5 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 34AD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 34B0 _ 89. 04 24
        call    _make_textbox8                          ; 34B3 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 34B8 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 34C0 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 34C8 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 34CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34D2 _ 89. 04 24
        call    _sheet_slide                            ; 34D5 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 34DA _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 34E2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 34E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34EC _ 89. 04 24
        call    _sheet_updown                           ; 34EF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 34F4 _ 8B. 45, F4
        leave                                           ; 34F7 _ C9
        ret                                             ; 34F8 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 34F9 _ 55
        mov     ebp, esp                                ; 34FA _ 89. E5
        push    ebx                                     ; 34FC _ 53
        sub     esp, 68                                 ; 34FD _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3500 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3503 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3506 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3509 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 350C _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 350F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3512 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3515 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3518 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 351B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 351E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3521 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3523 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 352B _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 352F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3537 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 353F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3547 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 354A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 354E _ 89. 04 24
        call    _boxfill8                               ; 3551 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3556 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3559 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 355C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 355F _ 8B. 00
        mov     dword [esp+18H], 1                      ; 3561 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3569 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 356D _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3575 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 357D _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3585 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3588 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 358C _ 89. 04 24
        call    _boxfill8                               ; 358F _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 3594 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3597 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 359A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 359D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 359F _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 35A3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 35AB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 35B3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 35BB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 35C3 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 35C6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 35CA _ 89. 04 24
        call    _boxfill8                               ; 35CD _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 35D2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 35D5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 35D8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 35DB _ 8B. 00
        mov     dword [esp+18H], edx                    ; 35DD _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 35E1 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 35E9 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 35F1 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 35F9 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3601 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3604 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3608 _ 89. 04 24
        call    _boxfill8                               ; 360B _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 3610 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3613 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3616 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3619 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 361C _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 361F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3622 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3625 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3627 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 362B _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 362F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3637 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 363B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3643 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3646 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 364A _ 89. 04 24
        call    _boxfill8                               ; 364D _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 3652 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3655 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3658 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 365B _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 365E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3661 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3664 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3667 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3669 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 366D _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 3671 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3679 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 367D _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3685 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3688 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 368C _ 89. 04 24
        call    _boxfill8                               ; 368F _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 3694 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 3697 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 369A _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 369D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 36A0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 36A3 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 36A5 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 36A9 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 36AD _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 36B5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 36BD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 36C5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 36C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 36CC _ 89. 04 24
        call    _boxfill8                               ; 36CF _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 36D4 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 36D7 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 36DA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 36DD _ 8B. 00
        mov     dword [esp+18H], 20                     ; 36DF _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 36E7 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 36EB _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 36F3 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 36FB _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3703 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3706 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 370A _ 89. 04 24
        call    _boxfill8                               ; 370D _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 3712 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3715 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3718 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 371B _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 371E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 3721 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3724 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3727 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3729 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 372D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3731 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3735 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 373D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3745 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3748 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 374C _ 89. 04 24
        call    _boxfill8                               ; 374F _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 3754 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3757 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 375A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 375D _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 3760 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3763 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3766 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3769 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 376B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 376F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3773 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3777 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 377F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3787 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 378A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 378E _ 89. 04 24
        call    _boxfill8                               ; 3791 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 3796 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 379A _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 379E _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 37A1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 37A5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 37A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 37AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 37AF _ 89. 04 24
        call    _make_wtitle8                           ; 37B2 _ E8, 00000007
        nop                                             ; 37B7 _ 90
        add     esp, 68                                 ; 37B8 _ 83. C4, 44
        pop     ebx                                     ; 37BB _ 5B
        pop     ebp                                     ; 37BC _ 5D
        ret                                             ; 37BD _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 37BE _ 55
        mov     ebp, esp                                ; 37BF _ 89. E5
        push    ebx                                     ; 37C1 _ 53
        sub     esp, 68                                 ; 37C2 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 37C5 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 37C8 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 37CB _ 80. 7D, E4, 00
        jz      ?_192                                   ; 37CF _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 37D1 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 37D5 _ C6. 45, ED, 0C
        jmp     ?_193                                   ; 37D9 _ EB, 08

?_192:  mov     byte [ebp-12H], 8                       ; 37DB _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 37DF _ C6. 45, ED, 0F
?_193:  mov     eax, dword [ebp+0CH]                    ; 37E3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 37E6 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 37E9 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 37EC _ 0F B6. 45, ED
        movzx   eax, al                                 ; 37F0 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 37F3 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 37F6 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 37F9 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 37FC _ 8B. 12
        mov     dword [esp+18H], 20                     ; 37FE _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3806 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 380A _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3812 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 381A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 381E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3822 _ 89. 14 24
        call    _boxfill8                               ; 3825 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 382A _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 382E _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 3831 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3835 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3839 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 3841 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3849 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 384C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3850 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3853 _ 89. 04 24
        call    _showString                             ; 3856 _ E8, FFFFED60
        mov     dword [ebp-10H], 0                      ; 385B _ C7. 45, F0, 00000000
        jmp     ?_201                                   ; 3862 _ E9, 00000084

?_194:  mov     dword [ebp-0CH], 0                      ; 3867 _ C7. 45, F4, 00000000
        jmp     ?_200                                   ; 386E _ EB, 71

?_195:  mov     eax, dword [ebp-10H]                    ; 3870 _ 8B. 45, F0
        shl     eax, 4                                  ; 3873 _ C1. E0, 04
        mov     edx, eax                                ; 3876 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3878 _ 8B. 45, F4
        add     eax, edx                                ; 387B _ 01. D0
        add     eax, _closebtn.2777                     ; 387D _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 3882 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 3885 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 3888 _ 80. 7D, EF, 40
        jnz     ?_196                                   ; 388C _ 75, 06
        mov     byte [ebp-11H], 0                       ; 388E _ C6. 45, EF, 00
        jmp     ?_199                                   ; 3892 _ EB, 1C

?_196:  cmp     byte [ebp-11H], 36                      ; 3894 _ 80. 7D, EF, 24
        jnz     ?_197                                   ; 3898 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 389A _ C6. 45, EF, 0F
        jmp     ?_199                                   ; 389E _ EB, 10

?_197:  cmp     byte [ebp-11H], 81                      ; 38A0 _ 80. 7D, EF, 51
        jnz     ?_198                                   ; 38A4 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 38A6 _ C6. 45, EF, 08
        jmp     ?_199                                   ; 38AA _ EB, 04

?_198:  mov     byte [ebp-11H], 7                       ; 38AC _ C6. 45, EF, 07
?_199:  mov     eax, dword [ebp+0CH]                    ; 38B0 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 38B3 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 38B5 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 38B8 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 38BB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 38BE _ 8B. 40, 04
        imul    eax, edx                                ; 38C1 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 38C4 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 38C7 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 38CA _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 38CD _ 8B. 55, F4
        add     edx, ebx                                ; 38D0 _ 01. DA
        add     eax, edx                                ; 38D2 _ 01. D0
        lea     edx, [ecx+eax]                          ; 38D4 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 38D7 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 38DB _ 88. 02
        add     dword [ebp-0CH], 1                      ; 38DD _ 83. 45, F4, 01
?_200:  cmp     dword [ebp-0CH], 15                     ; 38E1 _ 83. 7D, F4, 0F
        jle     ?_195                                   ; 38E5 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 38E7 _ 83. 45, F0, 01
?_201:  cmp     dword [ebp-10H], 13                     ; 38EB _ 83. 7D, F0, 0D
        jle     ?_194                                   ; 38EF _ 0F 8E, FFFFFF72
        nop                                             ; 38F5 _ 90
        add     esp, 68                                 ; 38F6 _ 83. C4, 44
        pop     ebx                                     ; 38F9 _ 5B
        pop     ebp                                     ; 38FA _ 5D
        ret                                             ; 38FB _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 38FC _ 55
        mov     ebp, esp                                ; 38FD _ 89. E5
        push    edi                                     ; 38FF _ 57
        push    esi                                     ; 3900 _ 56
        push    ebx                                     ; 3901 _ 53
        sub     esp, 44                                 ; 3902 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 3905 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3908 _ 8B. 45, 14
        add     eax, edx                                ; 390B _ 01. D0
        mov     dword [ebp-10H], eax                    ; 390D _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3910 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3913 _ 8B. 45, 18
        add     eax, edx                                ; 3916 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 3918 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 391B _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 391E _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 3921 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3924 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3927 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 392A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 392D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3930 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3933 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3936 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3939 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 393C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 393E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3942 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3946 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 394A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 394E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3956 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 395A _ 89. 04 24
        call    _boxfill8                               ; 395D _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 3962 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3965 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 3968 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 396B _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 396E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3971 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3974 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3977 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 397A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 397D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3980 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3983 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3985 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3989 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 398D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3991 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3995 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 399D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 39A1 _ 89. 04 24
        call    _boxfill8                               ; 39A4 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 39A9 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 39AC _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 39AF _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 39B2 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 39B5 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 39B8 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 39BB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 39BE _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 39C1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 39C4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 39C7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 39CA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 39CC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 39D0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 39D4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 39D8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 39DC _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 39E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 39E8 _ 89. 04 24
        call    _boxfill8                               ; 39EB _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 39F0 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 39F3 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 39F6 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 39F9 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 39FC _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 39FF _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 3A02 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 3A05 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3A08 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3A0B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3A0E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3A11 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3A13 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3A17 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3A1B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A1F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3A23 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3A2B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A2F _ 89. 04 24
        call    _boxfill8                               ; 3A32 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3A37 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3A3A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3A3D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3A40 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3A43 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3A46 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3A49 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3A4C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3A4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3A52 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3A54 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3A58 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3A5B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3A5F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A63 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3A67 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3A6F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A73 _ 89. 04 24
        call    _boxfill8                               ; 3A76 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3A7B _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3A7E _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3A81 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3A84 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3A87 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3A8A _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3A8D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3A90 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3A93 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3A96 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 3A98 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3A9B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3A9F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3AA3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3AA7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3AAB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3AB3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3AB7 _ 89. 04 24
        call    _boxfill8                               ; 3ABA _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 3ABF _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 3AC2 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 3AC5 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 3AC8 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 3ACB _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3ACE _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3AD1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3AD4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3AD7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3ADA _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3ADC _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3AE0 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3AE3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3AE7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3AEB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3AEF _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3AF7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3AFB _ 89. 04 24
        call    _boxfill8                               ; 3AFE _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 3B03 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3B06 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 3B09 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3B0C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3B0F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3B12 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3B15 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3B18 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3B1B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3B1E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3B21 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3B24 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3B26 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3B2A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3B2E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3B32 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3B36 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3B3E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B42 _ 89. 04 24
        call    _boxfill8                               ; 3B45 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3B4A _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3B4D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3B50 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3B53 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3B56 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3B59 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3B5C _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3B5F _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 3B62 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3B65 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3B67 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3B6A _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3B6E _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 3B71 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 3B75 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3B79 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3B7D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3B81 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3B85 _ 89. 14 24
        call    _boxfill8                               ; 3B88 _ E8, FFFFEFB3
        nop                                             ; 3B8D _ 90
        add     esp, 44                                 ; 3B8E _ 83. C4, 2C
        pop     ebx                                     ; 3B91 _ 5B
        pop     esi                                     ; 3B92 _ 5E
        pop     edi                                     ; 3B93 _ 5F
        pop     ebp                                     ; 3B94 _ 5D
        ret                                             ; 3B95 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 3B96 _ 55
        mov     ebp, esp                                ; 3B97 _ 89. E5
        sub     esp, 56                                 ; 3B99 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 3B9C _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 3BA3 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 3BA8 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 3BB0 _ 89. 04 24
        call    _memman_alloc                           ; 3BB3 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 3BB8 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 3BBB _ 8B. 45, E4
        add     eax, 12                                 ; 3BBE _ 83. C0, 0C
        mov     byte [eax], 0                           ; 3BC1 _ C6. 00, 00
        jmp     ?_212                                   ; 3BC4 _ E9, 00000125

?_202:  mov     dword [ebp-10H], 0                      ; 3BC9 _ C7. 45, F0, 00000000
        jmp     ?_204                                   ; 3BD0 _ EB, 2A

?_203:  mov     edx, dword [ebp-0CH]                    ; 3BD2 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3BD5 _ 8B. 45, F0
        add     eax, edx                                ; 3BD8 _ 01. D0
        movzx   eax, byte [eax]                         ; 3BDA _ 0F B6. 00
        test    al, al                                  ; 3BDD _ 84. C0
        jz      ?_205                                   ; 3BDF _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 3BE1 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3BE4 _ 8B. 45, F0
        add     eax, edx                                ; 3BE7 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3BE9 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3BEC _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3BEF _ 8B. 45, E4
        add     eax, edx                                ; 3BF2 _ 01. D0
        mov     edx, ecx                                ; 3BF4 _ 89. CA
        mov     byte [eax], dl                          ; 3BF6 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3BF8 _ 83. 45, F0, 01
?_204:  cmp     dword [ebp-10H], 7                      ; 3BFC _ 83. 7D, F0, 07
        jle     ?_203                                   ; 3C00 _ 7E, D0
        jmp     ?_206                                   ; 3C02 _ EB, 01

?_205:  nop                                             ; 3C04 _ 90
?_206:  mov     dword [ebp-14H], 0                      ; 3C05 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 3C0C _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3C0F _ 8B. 45, E4
        add     eax, edx                                ; 3C12 _ 01. D0
        mov     byte [eax], 46                          ; 3C14 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3C17 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 3C1B _ C7. 45, EC, 00000000
        jmp     ?_208                                   ; 3C22 _ EB, 22

?_207:  mov     edx, dword [ebp-0CH]                    ; 3C24 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3C27 _ 8B. 45, EC
        add     eax, edx                                ; 3C2A _ 01. D0
        add     eax, 8                                  ; 3C2C _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3C2F _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3C32 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3C35 _ 8B. 45, E4
        add     eax, edx                                ; 3C38 _ 01. D0
        mov     edx, ecx                                ; 3C3A _ 89. CA
        mov     byte [eax], dl                          ; 3C3C _ 88. 10
        add     dword [ebp-10H], 1                      ; 3C3E _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3C42 _ 83. 45, EC, 01
?_208:  cmp     dword [ebp-14H], 2                      ; 3C46 _ 83. 7D, EC, 02
        jle     ?_207                                   ; 3C4A _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 3C4C _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3C4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C56 _ 89. 04 24
        call    _strcmp                                 ; 3C59 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3C5E _ 83. F8, 01
        jne     ?_211                                   ; 3C61 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3C67 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3C6A _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3C6D _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3C72 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3C76 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3C79 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3C7E _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3C80 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3C83 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3C85 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3C88 _ 8B. 40, 1C
        mov     edx, eax                                ; 3C8B _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3C8D _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 3C90 _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 3C93 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3C9A _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3C9D _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 3CA1 _ 0F B7. C0
        shl     eax, 9                                  ; 3CA4 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 3CA7 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3CAA _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3CAD _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 3CB0 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 3CB3 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3CBA _ C7. 45, E8, 00000000
        jmp     ?_210                                   ; 3CC1 _ EB, 1D

?_209:  mov     edx, dword [ebp-18H]                    ; 3CC3 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 3CC6 _ 8B. 45, E0
        add     eax, edx                                ; 3CC9 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3CCB _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 3CCE _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 3CD1 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3CD3 _ 8B. 45, E8
        add     eax, edx                                ; 3CD6 _ 01. D0
        mov     edx, ecx                                ; 3CD8 _ 89. CA
        mov     byte [eax], dl                          ; 3CDA _ 88. 10
        add     dword [ebp-18H], 1                      ; 3CDC _ 83. 45, E8, 01
?_210:  mov     eax, dword [ebp-18H]                    ; 3CE0 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 3CE3 _ 3B. 45, DC
        jl      ?_209                                   ; 3CE6 _ 7C, DB
        jmp     ?_213                                   ; 3CE8 _ EB, 12

?_211:  add     dword [ebp-0CH], 32                     ; 3CEA _ 83. 45, F4, 20
?_212:  mov     eax, dword [ebp-0CH]                    ; 3CEE _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 3CF1 _ 0F B6. 00
        test    al, al                                  ; 3CF4 _ 84. C0
        jne     ?_202                                   ; 3CF6 _ 0F 85, FFFFFECD
?_213:  mov     edx, dword [ebp-1CH]                    ; 3CFC _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 3CFF _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3D04 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 3D0C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D10 _ 89. 04 24
        call    _memman_free                            ; 3D13 _ E8, 00000000(rel)
        nop                                             ; 3D18 _ 90
        leave                                           ; 3D19 _ C9
        ret                                             ; 3D1A _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 3D1B _ 55
        mov     ebp, esp                                ; 3D1C _ 89. E5
        sub     esp, 40                                 ; 3D1E _ 83. EC, 28
        mov     dword [?_371], 8                        ; 3D21 _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_366                      ; 3D2B _ C7. 04 24, 00000092(d)
        call    _cons_putstr                            ; 3D32 _ E8, FFFFDC80
        mov     dword [?_371], 8                        ; 3D37 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_372]                      ; 3D41 _ A1, 00000014(d)
        add     eax, 16                                 ; 3D46 _ 83. C0, 10
        mov     dword [?_372], eax                      ; 3D49 _ A3, 00000014(d)
        mov     dword [esp], ?_367                      ; 3D4E _ C7. 04 24, 00000099(d)
        call    _cons_putstr                            ; 3D55 _ E8, FFFFDC5D
        mov     dword [?_371], 8                        ; 3D5A _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_372]                      ; 3D64 _ A1, 00000014(d)
        add     eax, 16                                 ; 3D69 _ 83. C0, 10
        mov     dword [?_372], eax                      ; 3D6C _ A3, 00000014(d)
        mov     eax, dword [ebp+8H]                     ; 3D71 _ 8B. 45, 08
        add     eax, 44                                 ; 3D74 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 3D77 _ 8B. 00
        mov     dword [esp], eax                        ; 3D79 _ 89. 04 24
        call    _intToHexStr                            ; 3D7C _ E8, FFFFF1AC
        mov     dword [ebp-0CH], eax                    ; 3D81 _ 89. 45, F4
        mov     dword [esp], ?_368                      ; 3D84 _ C7. 04 24, 000000A9(d)
        call    _cons_putstr                            ; 3D8B _ E8, FFFFDC27
        mov     eax, dword [ebp-0CH]                    ; 3D90 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3D93 _ 89. 04 24
        call    _cons_putstr                            ; 3D96 _ E8, FFFFDC1C
        mov     dword [?_371], 8                        ; 3D9B _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_372]                      ; 3DA5 _ A1, 00000014(d)
        add     eax, 16                                 ; 3DAA _ 83. C0, 10
        mov     dword [?_372], eax                      ; 3DAD _ A3, 00000014(d)
        call    _task_now                               ; 3DB2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3DB7 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3DBA _ 8B. 45, F0
        add     eax, 48                                 ; 3DBD _ 83. C0, 30
        leave                                           ; 3DC0 _ C9
        ret                                             ; 3DC1 _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 3DC2 _ 55
        mov     ebp, esp                                ; 3DC3 _ 89. E5
        sub     esp, 40                                 ; 3DC5 _ 83. EC, 28
        mov     dword [?_371], 8                        ; 3DC8 _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_369                      ; 3DD2 _ C7. 04 24, 000000B0(d)
        call    _cons_putstr                            ; 3DD9 _ E8, FFFFDBD9
        mov     dword [?_371], 8                        ; 3DDE _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_372]                      ; 3DE8 _ A1, 00000014(d)
        add     eax, 16                                 ; 3DED _ 83. C0, 10
        mov     dword [?_372], eax                      ; 3DF0 _ A3, 00000014(d)
        mov     dword [esp], ?_370                      ; 3DF5 _ C7. 04 24, 000000B8(d)
        call    _cons_putstr                            ; 3DFC _ E8, FFFFDBB6
        mov     eax, dword [?_372]                      ; 3E01 _ A1, 00000014(d)
        add     eax, 16                                 ; 3E06 _ 83. C0, 10
        mov     dword [?_372], eax                      ; 3E09 _ A3, 00000014(d)
        mov     dword [?_371], 8                        ; 3E0E _ C7. 05, 00000010(d), 00000008
        call    _task_now                               ; 3E18 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3E1D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3E20 _ 8B. 45, F4
        add     eax, 48                                 ; 3E23 _ 83. C0, 30
        leave                                           ; 3E26 _ C9
        ret                                             ; 3E27 _ C3
; _intHandlerForException End of function


_shtctl_init:
        push    ebp                                     ; 3E28 _ 55
        mov     ebp, esp                                ; 3E29 _ 89. E5
        sub     esp, 40                                 ; 3E2B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 3E2E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3E36 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E39 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3E3C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3E41 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 3E44 _ 83. 7D, F0, 00
        jnz     ?_214                                   ; 3E48 _ 75, 0A
        mov     eax, 0                                  ; 3E4A _ B8, 00000000
        jmp     ?_218                                   ; 3E4F _ E9, 000000A3

?_214:  mov     eax, dword [ebp+10H]                    ; 3E54 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3E57 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3E5B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E5F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E62 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3E65 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3E6A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3E6C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 3E6F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 3E72 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3E75 _ 8B. 40, 04
        test    eax, eax                                ; 3E78 _ 85. C0
        jnz     ?_215                                   ; 3E7A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3E7C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 3E7F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3E87 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E8B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E8E _ 89. 04 24
        call    _memman_free_4k                         ; 3E91 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3E96 _ B8, 00000000
        jmp     ?_218                                   ; 3E9B _ EB, 5A

?_215:  mov     eax, dword [ebp-10H]                    ; 3E9D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 3EA0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3EA3 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3EA5 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3EA8 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3EAB _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3EAE _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3EB1 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3EB4 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3EB7 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3EBA _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3EC1 _ C7. 45, F4, 00000000
        jmp     ?_217                                   ; 3EC8 _ EB, 21

?_216:  mov     ecx, dword [ebp-10H]                    ; 3ECA _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 3ECD _ 8B. 55, F4
        mov     eax, edx                                ; 3ED0 _ 89. D0
        shl     eax, 3                                  ; 3ED2 _ C1. E0, 03
        add     eax, edx                                ; 3ED5 _ 01. D0
        shl     eax, 2                                  ; 3ED7 _ C1. E0, 02
        add     eax, ecx                                ; 3EDA _ 01. C8
        add     eax, 1072                               ; 3EDC _ 05, 00000430
        mov     dword [eax], 0                          ; 3EE1 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3EE7 _ 83. 45, F4, 01
?_217:  cmp     dword [ebp-0CH], 255                    ; 3EEB _ 81. 7D, F4, 000000FF
        jle     ?_216                                   ; 3EF2 _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 3EF4 _ 8B. 45, F0
?_218:  leave                                           ; 3EF7 _ C9
        ret                                             ; 3EF8 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3EF9 _ 55
        mov     ebp, esp                                ; 3EFA _ 89. E5
        sub     esp, 24                                 ; 3EFC _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3EFF _ C7. 45, F4, 00000000
        jmp     ?_221                                   ; 3F06 _ EB, 75

?_219:  mov     ecx, dword [ebp+8H]                     ; 3F08 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 3F0B _ 8B. 55, F4
        mov     eax, edx                                ; 3F0E _ 89. D0
        shl     eax, 3                                  ; 3F10 _ C1. E0, 03
        add     eax, edx                                ; 3F13 _ 01. D0
        shl     eax, 2                                  ; 3F15 _ C1. E0, 02
        add     eax, ecx                                ; 3F18 _ 01. C8
        add     eax, 1072                               ; 3F1A _ 05, 00000430
        mov     eax, dword [eax]                        ; 3F1F _ 8B. 00
        test    eax, eax                                ; 3F21 _ 85. C0
        jnz     ?_220                                   ; 3F23 _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 3F25 _ 8B. 55, F4
        mov     eax, edx                                ; 3F28 _ 89. D0
        shl     eax, 3                                  ; 3F2A _ C1. E0, 03
        add     eax, edx                                ; 3F2D _ 01. D0
        shl     eax, 2                                  ; 3F2F _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 3F32 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3F38 _ 8B. 45, 08
        add     eax, edx                                ; 3F3B _ 01. D0
        add     eax, 4                                  ; 3F3D _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 3F40 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3F43 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3F46 _ 8B. 55, F4
        add     edx, 4                                  ; 3F49 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 3F4C _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 3F4F _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 3F53 _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 3F56 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 3F5D _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 3F60 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 3F67 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3F6C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3F6E _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 3F71 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 3F74 _ 8B. 45, F0
        jmp     ?_222                                   ; 3F77 _ EB, 12

?_220:  add     dword [ebp-0CH], 1                      ; 3F79 _ 83. 45, F4, 01
?_221:  cmp     dword [ebp-0CH], 255                    ; 3F7D _ 81. 7D, F4, 000000FF
        jle     ?_219                                   ; 3F84 _ 7E, 82
        mov     eax, 0                                  ; 3F86 _ B8, 00000000
?_222:  leave                                           ; 3F8B _ C9
        ret                                             ; 3F8C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3F8D _ 55
        mov     ebp, esp                                ; 3F8E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3F90 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3F93 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3F96 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3F98 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3F9B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 3F9E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3FA1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3FA4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3FA7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3FAA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3FAD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 3FB0 _ 89. 50, 14
        nop                                             ; 3FB3 _ 90
        pop     ebp                                     ; 3FB4 _ 5D
        ret                                             ; 3FB5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3FB6 _ 55
        mov     ebp, esp                                ; 3FB7 _ 89. E5
        push    edi                                     ; 3FB9 _ 57
        push    esi                                     ; 3FBA _ 56
        push    ebx                                     ; 3FBB _ 53
        sub     esp, 60                                 ; 3FBC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3FBF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3FC2 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3FC5 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3FC8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3FCB _ 8B. 40, 10
        add     eax, 1                                  ; 3FCE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3FD1 _ 39. 45, 10
        jle     ?_223                                   ; 3FD4 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3FD6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3FD9 _ 8B. 40, 10
        add     eax, 1                                  ; 3FDC _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3FDF _ 89. 45, 10
?_223:  cmp     dword [ebp+10H], -1                     ; 3FE2 _ 83. 7D, 10, FF
        jge     ?_224                                   ; 3FE6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3FE8 _ C7. 45, 10, FFFFFFFF
?_224:  mov     eax, dword [ebp+0CH]                    ; 3FEF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3FF2 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3FF5 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3FF8 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3FFB _ 3B. 45, 10
        jle     ?_231                                   ; 3FFE _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4004 _ 83. 7D, 10, 00
        js      ?_227                                   ; 4008 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 400E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4011 _ 89. 45, E4
        jmp     ?_226                                   ; 4014 _ EB, 34

?_225:  mov     eax, dword [ebp-1CH]                    ; 4016 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4019 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 401C _ 8B. 45, 08
        add     edx, 4                                  ; 401F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4022 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4026 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4029 _ 8B. 55, E4
        add     edx, 4                                  ; 402C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 402F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4033 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4036 _ 8B. 55, E4
        add     edx, 4                                  ; 4039 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 403C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4040 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4043 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4046 _ 83. 6D, E4, 01
?_226:  mov     eax, dword [ebp-1CH]                    ; 404A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 404D _ 3B. 45, 10
        jg      ?_225                                   ; 4050 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4052 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4055 _ 8B. 55, 10
        add     edx, 4                                  ; 4058 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 405B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 405E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4062 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4065 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4068 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 406B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 406E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4071 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4074 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4077 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 407A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 407D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4080 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4083 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4086 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4089 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 408C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 408F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4092 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4096 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 409A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 409E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 40A2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40A6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40A9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 40AC _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 40B1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 40B4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 40B7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 40BA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 40BD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 40C0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 40C3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 40C6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 40C9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 40CC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 40CF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 40D2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 40D5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 40D8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 40DB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 40DE _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 40E1 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 40E4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 40E8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 40EC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 40F0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 40F4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 40F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40FF _ 89. 04 24
        call    _sheet_refreshsub                       ; 4102 _ E8, 00000465
        jmp     ?_238                                   ; 4107 _ E9, 0000027D

?_227:  mov     eax, dword [ebp+8H]                     ; 410C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 410F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4112 _ 39. 45, E0
        jge     ?_230                                   ; 4115 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4117 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 411A _ 89. 45, E4
        jmp     ?_229                                   ; 411D _ EB, 34

?_228:  mov     eax, dword [ebp-1CH]                    ; 411F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4122 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4125 _ 8B. 45, 08
        add     edx, 4                                  ; 4128 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 412B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 412F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4132 _ 8B. 55, E4
        add     edx, 4                                  ; 4135 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4138 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 413C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 413F _ 8B. 55, E4
        add     edx, 4                                  ; 4142 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4145 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4149 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 414C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 414F _ 83. 45, E4, 01
?_229:  mov     eax, dword [ebp+8H]                     ; 4153 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4156 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4159 _ 39. 45, E4
        jl      ?_228                                   ; 415C _ 7C, C1
?_230:  mov     eax, dword [ebp+8H]                     ; 415E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4161 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4164 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4167 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 416A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 416D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4170 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4173 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4176 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4179 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 417C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 417F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4182 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4185 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4188 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 418B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 418E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4191 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4194 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4197 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 419F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 41A3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 41A7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 41AB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41AF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41B2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 41B5 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 41BA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 41BD _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 41C0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 41C3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 41C6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 41C9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 41CC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 41CF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 41D2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 41D5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 41D8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 41DB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 41DE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 41E1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 41E4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 41E7 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 41EA _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 41EE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 41F6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 41FA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 41FE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4202 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4206 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4209 _ 89. 04 24
        call    _sheet_refreshsub                       ; 420C _ E8, 0000035B
        jmp     ?_238                                   ; 4211 _ E9, 00000173

?_231:  mov     eax, dword [ebp-20H]                    ; 4216 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4219 _ 3B. 45, 10
        jge     ?_238                                   ; 421C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4222 _ 83. 7D, E0, 00
        js      ?_234                                   ; 4226 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4228 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 422B _ 89. 45, E4
        jmp     ?_233                                   ; 422E _ EB, 34

?_232:  mov     eax, dword [ebp-1CH]                    ; 4230 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4233 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4236 _ 8B. 45, 08
        add     edx, 4                                  ; 4239 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 423C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4240 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4243 _ 8B. 55, E4
        add     edx, 4                                  ; 4246 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4249 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 424D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4250 _ 8B. 55, E4
        add     edx, 4                                  ; 4253 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4256 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 425A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 425D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4260 _ 83. 45, E4, 01
?_233:  mov     eax, dword [ebp-1CH]                    ; 4264 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4267 _ 3B. 45, 10
        jl      ?_232                                   ; 426A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 426C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 426F _ 8B. 55, 10
        add     edx, 4                                  ; 4272 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4275 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4278 _ 89. 4C 90, 04
        jmp     ?_237                                   ; 427C _ EB, 6C

?_234:  mov     eax, dword [ebp+8H]                     ; 427E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4281 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4284 _ 89. 45, E4
        jmp     ?_236                                   ; 4287 _ EB, 3A

?_235:  mov     eax, dword [ebp-1CH]                    ; 4289 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 428C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 428F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4292 _ 8B. 55, E4
        add     edx, 4                                  ; 4295 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4298 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 429C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 429F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 42A2 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 42A6 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 42A9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 42AC _ 8B. 45, 08
        add     edx, 4                                  ; 42AF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 42B2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 42B6 _ 8B. 55, E4
        add     edx, 1                                  ; 42B9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 42BC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 42BF _ 83. 6D, E4, 01
?_236:  mov     eax, dword [ebp-1CH]                    ; 42C3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 42C6 _ 3B. 45, 10
        jge     ?_235                                   ; 42C9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 42CB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 42CE _ 8B. 55, 10
        add     edx, 4                                  ; 42D1 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 42D4 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 42D7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 42DB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 42DE _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 42E1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 42E4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 42E7 _ 89. 50, 10
?_237:  mov     eax, dword [ebp+0CH]                    ; 42EA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 42ED _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 42F0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 42F3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 42F6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 42F9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 42FC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 42FF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4302 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4305 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4308 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 430B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 430E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4311 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4314 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4317 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 431B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 431F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4323 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4327 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 432B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 432E _ 89. 04 24
        call    _sheet_refreshmap                       ; 4331 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4336 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4339 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 433C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 433F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4342 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4345 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4348 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 434B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 434E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4351 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4354 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4357 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 435A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 435D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4360 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4363 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4367 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 436A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 436E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4372 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4376 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 437A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 437E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4381 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4384 _ E8, 000001E3
?_238:  nop                                             ; 4389 _ 90
        add     esp, 60                                 ; 438A _ 83. C4, 3C
        pop     ebx                                     ; 438D _ 5B
        pop     esi                                     ; 438E _ 5E
        pop     edi                                     ; 438F _ 5F
        pop     ebp                                     ; 4390 _ 5D
        ret                                             ; 4391 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4392 _ 55
        mov     ebp, esp                                ; 4393 _ 89. E5
        push    edi                                     ; 4395 _ 57
        push    esi                                     ; 4396 _ 56
        push    ebx                                     ; 4397 _ 53
        sub     esp, 60                                 ; 4398 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 439B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 439E _ 8B. 40, 18
        test    eax, eax                                ; 43A1 _ 85. C0
        js      ?_239                                   ; 43A3 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 43A5 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 43A8 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 43AB _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 43AE _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 43B1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 43B4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 43B7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 43BA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 43BD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 43C0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 43C3 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 43C6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 43C9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 43CC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 43CF _ 8B. 45, 14
        add     edx, eax                                ; 43D2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 43D4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 43D7 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 43DA _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 43DD _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 43E0 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 43E3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 43E7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 43EB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 43EF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 43F3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 43F7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 43FB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 43FE _ 89. 04 24
        call    _sheet_refreshsub                       ; 4401 _ E8, 00000166
?_239:  mov     eax, 0                                  ; 4406 _ B8, 00000000
        add     esp, 60                                 ; 440B _ 83. C4, 3C
        pop     ebx                                     ; 440E _ 5B
        pop     esi                                     ; 440F _ 5E
        pop     edi                                     ; 4410 _ 5F
        pop     ebp                                     ; 4411 _ 5D
        ret                                             ; 4412 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4413 _ 55
        mov     ebp, esp                                ; 4414 _ 89. E5
        push    esi                                     ; 4416 _ 56
        push    ebx                                     ; 4417 _ 53
        sub     esp, 48                                 ; 4418 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 441B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 441E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4421 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4424 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4427 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 442A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 442D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4430 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4433 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4436 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4439 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 443C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 443F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4442 _ 8B. 40, 18
        test    eax, eax                                ; 4445 _ 85. C0
        js      ?_240                                   ; 4447 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 444D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4450 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4453 _ 8B. 45, F0
        add     edx, eax                                ; 4456 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4458 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 445B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 445E _ 8B. 45, F4
        add     eax, ecx                                ; 4461 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4463 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 446B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 446F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4473 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4476 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 447A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 447D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4481 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4484 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4487 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 448C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 448F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4492 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4495 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4498 _ 8B. 45, 14
        add     edx, eax                                ; 449B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 449D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 44A0 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 44A3 _ 8B. 45, 10
        add     eax, ebx                                ; 44A6 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 44A8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 44AC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 44B0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 44B4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 44B7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 44BB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 44BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44C5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 44C8 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 44CD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 44D0 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 44D3 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 44D6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 44D9 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 44DC _ 8B. 45, F0
        add     edx, eax                                ; 44DF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 44E1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 44E4 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 44E7 _ 8B. 45, F4
        add     eax, ebx                                ; 44EA _ 01. D8
        mov     dword [esp+18H], ecx                    ; 44EC _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 44F0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 44F8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 44FC _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4500 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4503 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4507 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 450A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 450E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4511 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4514 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4519 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 451C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 451F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4522 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4525 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4528 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 452B _ 8B. 45, 14
        add     edx, eax                                ; 452E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4530 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 4533 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4536 _ 8B. 45, 10
        add     eax, esi                                ; 4539 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 453B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 453F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4543 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4547 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 454B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 454E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4552 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4555 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4559 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 455C _ 89. 04 24
        call    _sheet_refreshsub                       ; 455F _ E8, 00000008
?_240:  nop                                             ; 4564 _ 90
        add     esp, 48                                 ; 4565 _ 83. C4, 30
        pop     ebx                                     ; 4568 _ 5B
        pop     esi                                     ; 4569 _ 5E
        pop     ebp                                     ; 456A _ 5D
        ret                                             ; 456B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 456C _ 55
        mov     ebp, esp                                ; 456D _ 89. E5
        sub     esp, 48                                 ; 456F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 4572 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4575 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 4577 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 457A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 457D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 4580 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 4583 _ 83. 7D, 0C, 00
        jns     ?_241                                   ; 4587 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4589 _ C7. 45, 0C, 00000000
?_241:  cmp     dword [ebp+10H], 8                      ; 4590 _ 83. 7D, 10, 08
        jg      ?_242                                   ; 4594 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4596 _ C7. 45, 10, 00000000
?_242:  mov     eax, dword [ebp+8H]                     ; 459D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 45A0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 45A3 _ 39. 45, 14
        jle     ?_243                                   ; 45A6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 45A8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 45AB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 45AE _ 89. 45, 14
?_243:  mov     eax, dword [ebp+8H]                     ; 45B1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 45B4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 45B7 _ 39. 45, 18
        jle     ?_244                                   ; 45BA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 45BC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 45BF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 45C2 _ 89. 45, 18
?_244:  mov     eax, dword [ebp+1CH]                    ; 45C5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 45C8 _ 89. 45, FC
        jmp     ?_251                                   ; 45CB _ E9, 00000115

?_245:  mov     eax, dword [ebp+8H]                     ; 45D0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 45D3 _ 8B. 55, FC
        add     edx, 4                                  ; 45D6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 45D9 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 45DD _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 45E0 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 45E3 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 45E5 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 45E8 _ 8B. 45, 08
        add     eax, 1044                               ; 45EB _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 45F0 _ 8B. 55, E8
        sub     edx, eax                                ; 45F3 _ 29. C2
        mov     eax, edx                                ; 45F5 _ 89. D0
        sar     eax, 2                                  ; 45F7 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 45FA _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 4600 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 4603 _ C7. 45, F4, 00000000
        jmp     ?_250                                   ; 460A _ E9, 000000C3

?_246:  mov     eax, dword [ebp-18H]                    ; 460F _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 4612 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4615 _ 8B. 45, F4
        add     eax, edx                                ; 4618 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 461A _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 461D _ C7. 45, F8, 00000000
        jmp     ?_249                                   ; 4624 _ E9, 00000096

?_247:  mov     eax, dword [ebp-18H]                    ; 4629 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 462C _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 462F _ 8B. 45, F8
        add     eax, edx                                ; 4632 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 4634 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4637 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 463A _ 3B. 45, D8
        jg      ?_248                                   ; 463D _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 463F _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 4642 _ 3B. 45, 14
        jge     ?_248                                   ; 4645 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 4647 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 464A _ 3B. 45, DC
        jg      ?_248                                   ; 464D _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 464F _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 4652 _ 3B. 45, 18
        jge     ?_248                                   ; 4655 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 4657 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 465A _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 465D _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4661 _ 8B. 55, F8
        add     eax, edx                                ; 4664 _ 01. D0
        mov     edx, eax                                ; 4666 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 4668 _ 8B. 45, E4
        add     eax, edx                                ; 466B _ 01. D0
        movzx   eax, byte [eax]                         ; 466D _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 4670 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 4673 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4676 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4679 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 467D _ 8B. 55, D8
        add     eax, edx                                ; 4680 _ 01. D0
        mov     edx, eax                                ; 4682 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 4684 _ 8B. 45, EC
        add     eax, edx                                ; 4687 _ 01. D0
        movzx   eax, byte [eax]                         ; 4689 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 468C _ 38. 45, E3
        jnz     ?_248                                   ; 468F _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 4691 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 4695 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 4698 _ 8B. 52, 14
        cmp     eax, edx                                ; 469B _ 39. D0
        jz      ?_248                                   ; 469D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 469F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 46A2 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 46A5 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 46A9 _ 8B. 55, D8
        add     eax, edx                                ; 46AC _ 01. D0
        mov     edx, eax                                ; 46AE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 46B0 _ 8B. 45, F0
        add     edx, eax                                ; 46B3 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 46B5 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 46B9 _ 88. 02
?_248:  add     dword [ebp-8H], 1                       ; 46BB _ 83. 45, F8, 01
?_249:  mov     eax, dword [ebp-18H]                    ; 46BF _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 46C2 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 46C5 _ 39. 45, F8
        jl      ?_247                                   ; 46C8 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 46CE _ 83. 45, F4, 01
?_250:  mov     eax, dword [ebp-18H]                    ; 46D2 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 46D5 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 46D8 _ 39. 45, F4
        jl      ?_246                                   ; 46DB _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 46E1 _ 83. 45, FC, 01
?_251:  mov     eax, dword [ebp-4H]                     ; 46E5 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 46E8 _ 3B. 45, 20
        jle     ?_245                                   ; 46EB _ 0F 8E, FFFFFEDF
        nop                                             ; 46F1 _ 90
        leave                                           ; 46F2 _ C9
        ret                                             ; 46F3 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 46F4 _ 55
        mov     ebp, esp                                ; 46F5 _ 89. E5
        sub     esp, 64                                 ; 46F7 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 46FA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 46FD _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 4700 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 4703 _ 83. 7D, 0C, 00
        jns     ?_252                                   ; 4707 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4709 _ C7. 45, 0C, 00000000
?_252:  cmp     dword [ebp+10H], 0                      ; 4710 _ 83. 7D, 10, 00
        jns     ?_253                                   ; 4714 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 4716 _ C7. 45, 10, 00000000
?_253:  mov     eax, dword [ebp+8H]                     ; 471D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4720 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4723 _ 39. 45, 14
        jle     ?_254                                   ; 4726 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4728 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 472B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 472E _ 89. 45, 14
?_254:  mov     eax, dword [ebp+8H]                     ; 4731 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4734 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4737 _ 39. 45, 18
        jle     ?_255                                   ; 473A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 473C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 473F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4742 _ 89. 45, 18
?_255:  mov     eax, dword [ebp+1CH]                    ; 4745 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4748 _ 89. 45, FC
        jmp     ?_266                                   ; 474B _ E9, 0000013F

?_256:  mov     eax, dword [ebp+8H]                     ; 4750 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4753 _ 8B. 55, FC
        add     edx, 4                                  ; 4756 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4759 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 475D _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 4760 _ 8B. 45, 08
        add     eax, 1044                               ; 4763 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 4768 _ 8B. 55, DC
        sub     edx, eax                                ; 476B _ 29. C2
        mov     eax, edx                                ; 476D _ 89. D0
        sar     eax, 2                                  ; 476F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4772 _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 4778 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 477B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 477E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 4780 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 4783 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4786 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 4789 _ 8B. 55, 0C
        sub     edx, eax                                ; 478C _ 29. C2
        mov     eax, edx                                ; 478E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 4790 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 4793 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4796 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 4799 _ 8B. 55, 10
        sub     edx, eax                                ; 479C _ 29. C2
        mov     eax, edx                                ; 479E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 47A0 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 47A3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 47A6 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 47A9 _ 8B. 55, 14
        sub     edx, eax                                ; 47AC _ 29. C2
        mov     eax, edx                                ; 47AE _ 89. D0
        mov     dword [ebp-18H], eax                    ; 47B0 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 47B3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 47B6 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 47B9 _ 8B. 55, 18
        sub     edx, eax                                ; 47BC _ 29. C2
        mov     eax, edx                                ; 47BE _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 47C0 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 47C3 _ 83. 7D, F0, 00
        jns     ?_257                                   ; 47C7 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 47C9 _ C7. 45, F0, 00000000
?_257:  cmp     dword [ebp-14H], 0                      ; 47D0 _ 83. 7D, EC, 00
        jns     ?_258                                   ; 47D4 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 47D6 _ C7. 45, EC, 00000000
?_258:  mov     eax, dword [ebp-24H]                    ; 47DD _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 47E0 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 47E3 _ 39. 45, E8
        jle     ?_259                                   ; 47E6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 47E8 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 47EB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 47EE _ 89. 45, E8
?_259:  mov     eax, dword [ebp-24H]                    ; 47F1 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 47F4 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 47F7 _ 39. 45, E4
        jle     ?_260                                   ; 47FA _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 47FC _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 47FF _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 4802 _ 89. 45, E4
?_260:  mov     eax, dword [ebp-14H]                    ; 4805 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 4808 _ 89. 45, F4
        jmp     ?_265                                   ; 480B _ EB, 76

?_261:  mov     eax, dword [ebp-24H]                    ; 480D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 4810 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4813 _ 8B. 45, F4
        add     eax, edx                                ; 4816 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 4818 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 481B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 481E _ 89. 45, F8
        jmp     ?_264                                   ; 4821 _ EB, 54

?_262:  mov     eax, dword [ebp-24H]                    ; 4823 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 4826 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4829 _ 8B. 45, F8
        add     eax, edx                                ; 482C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 482E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 4831 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4834 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4837 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 483B _ 8B. 55, F8
        add     eax, edx                                ; 483E _ 01. D0
        mov     edx, eax                                ; 4840 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 4842 _ 8B. 45, D4
        add     eax, edx                                ; 4845 _ 01. D0
        movzx   eax, byte [eax]                         ; 4847 _ 0F B6. 00
        movzx   eax, al                                 ; 484A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 484D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 4850 _ 8B. 52, 14
        cmp     eax, edx                                ; 4853 _ 39. D0
        jz      ?_263                                   ; 4855 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4857 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 485A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 485D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 4861 _ 8B. 55, CC
        add     eax, edx                                ; 4864 _ 01. D0
        mov     edx, eax                                ; 4866 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 4868 _ 8B. 45, E0
        add     edx, eax                                ; 486B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 486D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 4871 _ 88. 02
?_263:  add     dword [ebp-8H], 1                       ; 4873 _ 83. 45, F8, 01
?_264:  mov     eax, dword [ebp-8H]                     ; 4877 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 487A _ 3B. 45, E8
        jl      ?_262                                   ; 487D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 487F _ 83. 45, F4, 01
?_265:  mov     eax, dword [ebp-0CH]                    ; 4883 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 4886 _ 3B. 45, E4
        jl      ?_261                                   ; 4889 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 488B _ 83. 45, FC, 01
?_266:  mov     eax, dword [ebp+8H]                     ; 488F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4892 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 4895 _ 39. 45, FC
        jle     ?_256                                   ; 4898 _ 0F 8E, FFFFFEB2
        nop                                             ; 489E _ 90
        leave                                           ; 489F _ C9
        ret                                             ; 48A0 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 48A1 _ 55
        mov     ebp, esp                                ; 48A2 _ 89. E5
        sub     esp, 24                                 ; 48A4 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 48A7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 48AA _ 8B. 40, 18
        test    eax, eax                                ; 48AD _ 85. C0
        js      ?_267                                   ; 48AF _ 78, 1A
        mov     dword [esp+8H], -1                      ; 48B1 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 48B9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 48BC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 48C0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48C3 _ 89. 04 24
        call    _sheet_updown                           ; 48C6 _ E8, FFFFF6EB
?_267:  mov     eax, dword [ebp+0CH]                    ; 48CB _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 48CE _ C7. 40, 1C, 00000000
        nop                                             ; 48D5 _ 90
        leave                                           ; 48D6 _ C9
        ret                                             ; 48D7 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 48D8 _ 55
        mov     ebp, esp                                ; 48D9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 48DB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 48DE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 48E4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 48E7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 48EE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 48F1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 48F8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 48FB _ C7. 40, 0C, 00000000
        nop                                             ; 4902 _ 90
        pop     ebp                                     ; 4903 _ 5D
        ret                                             ; 4904 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 4905 _ 55
        mov     ebp, esp                                ; 4906 _ 89. E5
        sub     esp, 16                                 ; 4908 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 490B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 4912 _ C7. 45, FC, 00000000
        jmp     ?_269                                   ; 4919 _ EB, 14

?_268:  mov     eax, dword [ebp+8H]                     ; 491B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 491E _ 8B. 55, FC
        add     edx, 2                                  ; 4921 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4924 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 4928 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 492B _ 83. 45, FC, 01
?_269:  mov     eax, dword [ebp+8H]                     ; 492F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4932 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4934 _ 39. 45, FC
        jc      ?_268                                   ; 4937 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 4939 _ 8B. 45, F8
        leave                                           ; 493C _ C9
        ret                                             ; 493D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 493E _ 55
        mov     ebp, esp                                ; 493F _ 89. E5
        sub     esp, 16                                 ; 4941 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4944 _ C7. 45, FC, 00000000
        jmp     ?_273                                   ; 494B _ E9, 00000083

?_270:  mov     eax, dword [ebp+8H]                     ; 4950 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4953 _ 8B. 55, FC
        add     edx, 2                                  ; 4956 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4959 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 495D _ 39. 45, 0C
        ja      ?_272                                   ; 4960 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 4962 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4965 _ 8B. 55, FC
        add     edx, 2                                  ; 4968 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 496B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 496E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 4971 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4974 _ 8B. 55, FC
        add     edx, 2                                  ; 4977 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 497A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 497D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 4980 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4983 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4986 _ 8B. 55, FC
        add     edx, 2                                  ; 4989 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 498C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 498F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4992 _ 8B. 55, FC
        add     edx, 2                                  ; 4995 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4998 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 499C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 499F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 49A2 _ 8B. 4D, FC
        add     ecx, 2                                  ; 49A5 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 49A8 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 49AC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 49AF _ 8B. 55, FC
        add     edx, 2                                  ; 49B2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 49B5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 49B9 _ 85. C0
        jnz     ?_271                                   ; 49BB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 49BD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 49C0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 49C2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 49C5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 49C8 _ 89. 10
?_271:  mov     eax, dword [ebp-8H]                     ; 49CA _ 8B. 45, F8
        jmp     ?_274                                   ; 49CD _ EB, 17

?_272:  add     dword [ebp-4H], 1                       ; 49CF _ 83. 45, FC, 01
?_273:  mov     eax, dword [ebp+8H]                     ; 49D3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 49D6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 49D8 _ 39. 45, FC
        jc      ?_270                                   ; 49DB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 49E1 _ B8, 00000000
?_274:  leave                                           ; 49E6 _ C9
        ret                                             ; 49E7 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 49E8 _ 55
        mov     ebp, esp                                ; 49E9 _ 89. E5
        push    ebx                                     ; 49EB _ 53
        sub     esp, 16                                 ; 49EC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 49EF _ C7. 45, F8, 00000000
        jmp     ?_276                                   ; 49F6 _ EB, 15

?_275:  mov     eax, dword [ebp+8H]                     ; 49F8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 49FB _ 8B. 55, F8
        add     edx, 2                                  ; 49FE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4A01 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4A04 _ 39. 45, 0C
        jc      ?_277                                   ; 4A07 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4A09 _ 83. 45, F8, 01
?_276:  mov     eax, dword [ebp+8H]                     ; 4A0D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4A10 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4A12 _ 39. 45, F8
        jl      ?_275                                   ; 4A15 _ 7C, E1
        jmp     ?_278                                   ; 4A17 _ EB, 01

?_277:  nop                                             ; 4A19 _ 90
?_278:  cmp     dword [ebp-8H], 0                       ; 4A1A _ 83. 7D, F8, 00
        jle     ?_280                                   ; 4A1E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4A24 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4A27 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4A2A _ 8B. 45, 08
        add     edx, 2                                  ; 4A2D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 4A30 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 4A33 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4A36 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4A39 _ 8B. 45, 08
        add     edx, 2                                  ; 4A3C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4A3F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 4A43 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4A45 _ 39. 45, 0C
        jne     ?_280                                   ; 4A48 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 4A4E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4A51 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4A54 _ 8B. 45, 08
        add     edx, 2                                  ; 4A57 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4A5A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 4A5E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4A61 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 4A64 _ 8B. 45, 10
        add     ecx, eax                                ; 4A67 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4A69 _ 8B. 45, 08
        add     edx, 2                                  ; 4A6C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4A6F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4A73 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4A76 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4A78 _ 39. 45, F8
        jge     ?_279                                   ; 4A7B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 4A7D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4A80 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4A83 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4A86 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4A89 _ 8B. 55, F8
        add     edx, 2                                  ; 4A8C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4A8F _ 8B. 04 D0
        cmp     ecx, eax                                ; 4A92 _ 39. C1
        jnz     ?_279                                   ; 4A94 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 4A96 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4A99 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4A9C _ 8B. 45, 08
        add     edx, 2                                  ; 4A9F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4AA2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4AA6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4AA9 _ 8B. 55, F8
        add     edx, 2                                  ; 4AAC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4AAF _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 4AB3 _ 8B. 55, F8
        sub     edx, 1                                  ; 4AB6 _ 83. EA, 01
        add     ecx, eax                                ; 4AB9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4ABB _ 8B. 45, 08
        add     edx, 2                                  ; 4ABE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4AC1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4AC5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4AC8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4ACA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4ACD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4AD0 _ 89. 10
?_279:  mov     eax, 0                                  ; 4AD2 _ B8, 00000000
        jmp     ?_286                                   ; 4AD7 _ E9, 0000011C

?_280:  mov     eax, dword [ebp+8H]                     ; 4ADC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4ADF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4AE1 _ 39. 45, F8
        jge     ?_281                                   ; 4AE4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4AE6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4AE9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4AEC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4AEF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4AF2 _ 8B. 55, F8
        add     edx, 2                                  ; 4AF5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4AF8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4AFB _ 39. C1
        jnz     ?_281                                   ; 4AFD _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 4AFF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4B02 _ 8B. 55, F8
        add     edx, 2                                  ; 4B05 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4B08 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4B0B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4B0E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4B11 _ 8B. 55, F8
        add     edx, 2                                  ; 4B14 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4B17 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4B1B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4B1E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4B21 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4B24 _ 8B. 55, F8
        add     edx, 2                                  ; 4B27 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4B2A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4B2E _ B8, 00000000
        jmp     ?_286                                   ; 4B33 _ E9, 000000C0

?_281:  mov     eax, dword [ebp+8H]                     ; 4B38 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4B3B _ 8B. 00
        cmp     eax, 4095                               ; 4B3D _ 3D, 00000FFF
        jg      ?_285                                   ; 4B42 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4B48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4B4B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4B4D _ 89. 45, F4
        jmp     ?_283                                   ; 4B50 _ EB, 28

?_282:  mov     eax, dword [ebp-0CH]                    ; 4B52 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4B55 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4B58 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 4B5B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 4B5E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4B61 _ 8B. 45, 08
        add     edx, 2                                  ; 4B64 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4B67 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 4B6A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4B6C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 4B6F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4B72 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 4B76 _ 83. 6D, F4, 01
?_283:  mov     eax, dword [ebp-0CH]                    ; 4B7A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 4B7D _ 3B. 45, F8
        jg      ?_282                                   ; 4B80 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 4B82 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4B85 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4B87 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4B8A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4B8D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4B8F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4B92 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4B95 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4B98 _ 8B. 00
        cmp     edx, eax                                ; 4B9A _ 39. C2
        jge     ?_284                                   ; 4B9C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 4B9E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4BA1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4BA3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4BA6 _ 89. 50, 04
?_284:  mov     eax, dword [ebp+8H]                     ; 4BA9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4BAC _ 8B. 55, F8
        add     edx, 2                                  ; 4BAF _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4BB2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4BB5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4BB8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4BBB _ 8B. 55, F8
        add     edx, 2                                  ; 4BBE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 4BC1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4BC4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4BC8 _ B8, 00000000
        jmp     ?_286                                   ; 4BCD _ EB, 29

?_285:  mov     eax, dword [ebp+8H]                     ; 4BCF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4BD2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4BD5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4BD8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4BDB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4BDE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4BE1 _ 8B. 40, 08
        mov     edx, eax                                ; 4BE4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4BE6 _ 8B. 45, 10
        add     eax, edx                                ; 4BE9 _ 01. D0
        mov     edx, eax                                ; 4BEB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4BED _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4BF0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 4BF3 _ B8, FFFFFFFF
?_286:  add     esp, 16                                 ; 4BF8 _ 83. C4, 10
        pop     ebx                                     ; 4BFB _ 5B
        pop     ebp                                     ; 4BFC _ 5D
        ret                                             ; 4BFD _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 4BFE _ 55
        mov     ebp, esp                                ; 4BFF _ 89. E5
        sub     esp, 24                                 ; 4C01 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4C04 _ 8B. 45, 0C
        add     eax, 4095                               ; 4C07 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4C0C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 4C11 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C14 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4C17 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C1B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C1E _ 89. 04 24
        call    _memman_alloc                           ; 4C21 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4C26 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4C29 _ 8B. 45, FC
        leave                                           ; 4C2C _ C9
        ret                                             ; 4C2D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 4C2E _ 55
        mov     ebp, esp                                ; 4C2F _ 89. E5
        sub     esp, 28                                 ; 4C31 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4C34 _ 8B. 45, 10
        add     eax, 4095                               ; 4C37 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4C3C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4C41 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4C44 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4C47 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4C4B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4C4E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C55 _ 89. 04 24
        call    _memman_free                            ; 4C58 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4C5D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4C60 _ 8B. 45, FC
        leave                                           ; 4C63 _ C9
        ret                                             ; 4C64 _ C3
; _memman_free_4k End of function

        nop                                             ; 4C65 _ 90
        nop                                             ; 4C66 _ 90
        nop                                             ; 4C67 _ 90


_fifo8_init:
        push    ebp                                     ; 4C68 _ 55
        mov     ebp, esp                                ; 4C69 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4C6B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4C6E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4C71 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4C74 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4C77 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 4C7A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4C7C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4C7F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4C82 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4C85 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 4C88 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C8F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4C92 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C99 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4C9C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4CA3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4CA6 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 4CA9 _ 89. 50, 18
        nop                                             ; 4CAC _ 90
        pop     ebp                                     ; 4CAD _ 5D
        ret                                             ; 4CAE _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 4CAF _ 55
        mov     ebp, esp                                ; 4CB0 _ 89. E5
        sub     esp, 40                                 ; 4CB2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4CB5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 4CB8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 4CBB _ 83. 7D, 08, 00
        jnz     ?_287                                   ; 4CBF _ 75, 0A
        mov     eax, 4294967295                         ; 4CC1 _ B8, FFFFFFFF
        jmp     ?_291                                   ; 4CC6 _ E9, 000000AB

?_287:  mov     eax, dword [ebp+8H]                     ; 4CCB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CCE _ 8B. 40, 10
        test    eax, eax                                ; 4CD1 _ 85. C0
        jnz     ?_288                                   ; 4CD3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4CD5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4CD8 _ 8B. 40, 14
        or      eax, 01H                                ; 4CDB _ 83. C8, 01
        mov     edx, eax                                ; 4CDE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4CE0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 4CE3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 4CE6 _ B8, FFFFFFFF
        jmp     ?_291                                   ; 4CEB _ E9, 00000086

?_288:  mov     eax, dword [ebp+8H]                     ; 4CF0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4CF3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4CF5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4CF8 _ 8B. 40, 04
        add     edx, eax                                ; 4CFB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4CFD _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 4D01 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 4D03 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4D06 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4D09 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4D0C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4D0F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4D12 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4D15 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4D18 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4D1B _ 8B. 40, 0C
        cmp     edx, eax                                ; 4D1E _ 39. C2
        jnz     ?_289                                   ; 4D20 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4D22 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4D25 _ C7. 40, 04, 00000000
?_289:  mov     eax, dword [ebp+8H]                     ; 4D2C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D2F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4D32 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4D35 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4D38 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4D3B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4D3E _ 8B. 40, 18
        test    eax, eax                                ; 4D41 _ 85. C0
        jz      ?_290                                   ; 4D43 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4D45 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4D48 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 4D4B _ 8B. 40, 04
        cmp     eax, 2                                  ; 4D4E _ 83. F8, 02
        jz      ?_290                                   ; 4D51 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4D53 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4D56 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4D59 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4D61 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 4D69 _ 89. 04 24
        call    _task_run                               ; 4D6C _ E8, 00000000(rel)
?_290:  mov     eax, 0                                  ; 4D71 _ B8, 00000000
?_291:  leave                                           ; 4D76 _ C9
        ret                                             ; 4D77 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 4D78 _ 55
        mov     ebp, esp                                ; 4D79 _ 89. E5
        sub     esp, 16                                 ; 4D7B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 4D7E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4D81 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4D84 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4D87 _ 8B. 40, 0C
        cmp     edx, eax                                ; 4D8A _ 39. C2
        jnz     ?_292                                   ; 4D8C _ 75, 07
        mov     eax, 4294967295                         ; 4D8E _ B8, FFFFFFFF
        jmp     ?_294                                   ; 4D93 _ EB, 51

?_292:  mov     eax, dword [ebp+8H]                     ; 4D95 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4D98 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4D9A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4D9D _ 8B. 40, 08
        add     eax, edx                                ; 4DA0 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DA2 _ 0F B6. 00
        movzx   eax, al                                 ; 4DA5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 4DA8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4DAB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4DAE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 4DB1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4DB4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4DB7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4DBA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 4DBD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4DC0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4DC3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 4DC6 _ 39. C2
        jnz     ?_293                                   ; 4DC8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4DCA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4DCD _ C7. 40, 08, 00000000
?_293:  mov     eax, dword [ebp+8H]                     ; 4DD4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4DD7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4DDA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4DDD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4DE0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 4DE3 _ 8B. 45, FC
?_294:  leave                                           ; 4DE6 _ C9
        ret                                             ; 4DE7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4DE8 _ 55
        mov     ebp, esp                                ; 4DE9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4DEB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4DEE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4DF1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4DF4 _ 8B. 40, 10
        sub     edx, eax                                ; 4DF7 _ 29. C2
        mov     eax, edx                                ; 4DF9 _ 89. D0
        pop     ebp                                     ; 4DFB _ 5D
        ret                                             ; 4DFC _ C3
; _fifo8_status End of function

        nop                                             ; 4DFD _ 90
        nop                                             ; 4DFE _ 90
        nop                                             ; 4DFF _ 90


_init_pit:
        push    ebp                                     ; 4E00 _ 55
        mov     ebp, esp                                ; 4E01 _ 89. E5
        sub     esp, 40                                 ; 4E03 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4E06 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 4E0E _ C7. 04 24, 00000043
        call    _io_out8                                ; 4E15 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 4E1A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4E22 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4E29 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 4E2E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4E36 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4E3D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4E42 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4E4C _ C7. 45, F4, 00000000
        jmp     ?_296                                   ; 4E53 _ EB, 26

?_295:  mov     eax, dword [ebp-0CH]                    ; 4E55 _ 8B. 45, F4
        shl     eax, 4                                  ; 4E58 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4E5B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4E60 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4E66 _ 8B. 45, F4
        shl     eax, 4                                  ; 4E69 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 4E6C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4E71 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4E77 _ 83. 45, F4, 01
?_296:  cmp     dword [ebp-0CH], 499                    ; 4E7B _ 81. 7D, F4, 000001F3
        jle     ?_295                                   ; 4E82 _ 7E, D1
        nop                                             ; 4E84 _ 90
        leave                                           ; 4E85 _ C9
        ret                                             ; 4E86 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4E87 _ 55
        mov     ebp, esp                                ; 4E88 _ 89. E5
        sub     esp, 16                                 ; 4E8A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4E8D _ C7. 45, FC, 00000000
        jmp     ?_299                                   ; 4E94 _ EB, 36

?_297:  mov     eax, dword [ebp-4H]                     ; 4E96 _ 8B. 45, FC
        shl     eax, 4                                  ; 4E99 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4E9C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4EA1 _ 8B. 00
        test    eax, eax                                ; 4EA3 _ 85. C0
        jnz     ?_298                                   ; 4EA5 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 4EA7 _ 8B. 45, FC
        shl     eax, 4                                  ; 4EAA _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4EAD _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4EB2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4EB8 _ 8B. 45, FC
        shl     eax, 4                                  ; 4EBB _ C1. E0, 04
        add     eax, _timerctl                               ; 4EBE _ 05, 00000000(d)
        add     eax, 4                                  ; 4EC3 _ 83. C0, 04
        jmp     ?_300                                   ; 4EC6 _ EB, 12

?_298:  add     dword [ebp-4H], 1                       ; 4EC8 _ 83. 45, FC, 01
?_299:  cmp     dword [ebp-4H], 499                     ; 4ECC _ 81. 7D, FC, 000001F3
        jle     ?_297                                   ; 4ED3 _ 7E, C1
        mov     eax, 0                                  ; 4ED5 _ B8, 00000000
?_300:  leave                                           ; 4EDA _ C9
        ret                                             ; 4EDB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4EDC _ 55
        mov     ebp, esp                                ; 4EDD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4EDF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4EE2 _ C7. 40, 04, 00000000
        nop                                             ; 4EE9 _ 90
        pop     ebp                                     ; 4EEA _ 5D
        ret                                             ; 4EEB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4EEC _ 55
        mov     ebp, esp                                ; 4EED _ 89. E5
        sub     esp, 4                                  ; 4EEF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 4EF2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4EF5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4EF8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4EFB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 4EFE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 4F01 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4F04 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4F08 _ 88. 42, 0C
        nop                                             ; 4F0B _ 90
        leave                                           ; 4F0C _ C9
        ret                                             ; 4F0D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 4F0E _ 55
        mov     ebp, esp                                ; 4F0F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4F11 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4F14 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4F17 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4F19 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4F1C _ C7. 40, 04, 00000002
        nop                                             ; 4F23 _ 90
        pop     ebp                                     ; 4F24 _ 5D
        ret                                             ; 4F25 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4F26 _ 55
        mov     ebp, esp                                ; 4F27 _ 89. E5
        sub     esp, 40                                 ; 4F29 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4F2C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4F34 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4F3B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4F40 _ A1, 00000000(d)
        add     eax, 1                                  ; 4F45 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4F48 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4F4D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4F51 _ C7. 45, F4, 00000000
        jmp     ?_304                                   ; 4F58 _ E9, 000000AA

?_301:  mov     eax, dword [ebp-0CH]                    ; 4F5D _ 8B. 45, F4
        shl     eax, 4                                  ; 4F60 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4F63 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4F68 _ 8B. 00
        cmp     eax, 2                                  ; 4F6A _ 83. F8, 02
        jne     ?_302                                   ; 4F6D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4F73 _ 8B. 45, F4
        shl     eax, 4                                  ; 4F76 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4F79 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4F7E _ 8B. 00
        lea     edx, [eax-1H]                           ; 4F80 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4F83 _ 8B. 45, F4
        shl     eax, 4                                  ; 4F86 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4F89 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 4F8E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4F90 _ 8B. 45, F4
        shl     eax, 4                                  ; 4F93 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4F96 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4F9B _ 8B. 00
        test    eax, eax                                ; 4F9D _ 85. C0
        jnz     ?_302                                   ; 4F9F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 4FA1 _ 8B. 45, F4
        shl     eax, 4                                  ; 4FA4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4FA7 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4FAC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 4FB2 _ 8B. 45, F4
        shl     eax, 4                                  ; 4FB5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4FB8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4FBD _ 0F B6. 00
        movzx   eax, al                                 ; 4FC0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 4FC3 _ 8B. 55, F4
        shl     edx, 4                                  ; 4FC6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4FC9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 4FCF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 4FD1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4FD5 _ 89. 14 24
        call    _fifo8_put                              ; 4FD8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4FDD _ 8B. 45, F4
        shl     eax, 4                                  ; 4FE0 _ C1. E0, 04
        add     eax, _timerctl                               ; 4FE3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4FE8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4FEB _ A1, 00000000(d)
        cmp     edx, eax                                ; 4FF0 _ 39. C2
        jnz     ?_302                                   ; 4FF2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4FF4 _ C6. 45, F3, 01
?_302:  cmp     byte [ebp-0DH], 0                       ; 4FF8 _ 80. 7D, F3, 00
        jz      ?_303                                   ; 4FFC _ 74, 05
        call    _task_switch                            ; 4FFE _ E8, 00000000(rel)
?_303:  add     dword [ebp-0CH], 1                      ; 5003 _ 83. 45, F4, 01
?_304:  cmp     dword [ebp-0CH], 499                    ; 5007 _ 81. 7D, F4, 000001F3
        jle     ?_301                                   ; 500E _ 0F 8E, FFFFFF49
        nop                                             ; 5014 _ 90
        leave                                           ; 5015 _ C9
        ret                                             ; 5016 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5017 _ B8, 00000000(d)
        ret                                             ; 501C _ C3
; _getTimerController End of function

        nop                                             ; 501D _ 90
        nop                                             ; 501E _ 90
        nop                                             ; 501F _ 90


_set_segmdesc:
        push    ebp                                     ; 5020 _ 55
        mov     ebp, esp                                ; 5021 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5023 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_305                                   ; 502A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 502C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5033 _ 8B. 45, 0C
        shr     eax, 12                                 ; 5036 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5039 _ 89. 45, 0C
?_305:  mov     eax, dword [ebp+0CH]                    ; 503C _ 8B. 45, 0C
        mov     edx, eax                                ; 503F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5041 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5044 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5047 _ 8B. 45, 10
        mov     edx, eax                                ; 504A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 504C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 504F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5053 _ 8B. 45, 10
        sar     eax, 16                                 ; 5056 _ C1. F8, 10
        mov     edx, eax                                ; 5059 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 505B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 505E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5061 _ 8B. 45, 14
        mov     edx, eax                                ; 5064 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5066 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5069 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 506C _ 8B. 45, 0C
        shr     eax, 16                                 ; 506F _ C1. E8, 10
        and     eax, 0FH                                ; 5072 _ 83. E0, 0F
        mov     edx, eax                                ; 5075 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5077 _ 8B. 45, 14
        sar     eax, 8                                  ; 507A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 507D _ 83. E0, F0
        or      eax, edx                                ; 5080 _ 09. D0
        mov     edx, eax                                ; 5082 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5084 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5087 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 508A _ 8B. 45, 10
        shr     eax, 24                                 ; 508D _ C1. E8, 18
        mov     edx, eax                                ; 5090 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5092 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5095 _ 88. 50, 07
        nop                                             ; 5098 _ 90
        pop     ebp                                     ; 5099 _ 5D
        ret                                             ; 509A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 509B _ 55
        mov     ebp, esp                                ; 509C _ 89. E5
        sub     esp, 16                                 ; 509E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 50A1 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 50A7 _ 8B. 55, 08
        mov     eax, edx                                ; 50AA _ 89. D0
        shl     eax, 2                                  ; 50AC _ C1. E0, 02
        add     eax, edx                                ; 50AF _ 01. D0
        shl     eax, 2                                  ; 50B1 _ C1. E0, 02
        add     eax, ecx                                ; 50B4 _ 01. C8
        add     eax, 8                                  ; 50B6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 50B9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 50BF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 50C5 _ 8B. 55, 08
        mov     eax, edx                                ; 50C8 _ 89. D0
        shl     eax, 2                                  ; 50CA _ C1. E0, 02
        add     eax, edx                                ; 50CD _ 01. D0
        shl     eax, 2                                  ; 50CF _ C1. E0, 02
        add     eax, ecx                                ; 50D2 _ 01. C8
        add     eax, 12                                 ; 50D4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 50D7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 50DD _ C7. 45, FC, 00000000
        jmp     ?_307                                   ; 50E4 _ EB, 21

?_306:  mov     ecx, dword [_taskctl]                   ; 50E6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 50EC _ 8B. 55, FC
        mov     eax, edx                                ; 50EF _ 89. D0
        add     eax, eax                                ; 50F1 _ 01. C0
        add     eax, edx                                ; 50F3 _ 01. D0
        shl     eax, 3                                  ; 50F5 _ C1. E0, 03
        add     eax, ecx                                ; 50F8 _ 01. C8
        add     eax, 16                                 ; 50FA _ 83. C0, 10
        mov     dword [eax], 0                          ; 50FD _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5103 _ 83. 45, FC, 01
?_307:  cmp     dword [ebp-4H], 2                       ; 5107 _ 83. 7D, FC, 02
        jle     ?_306                                   ; 510B _ 7E, D9
        nop                                             ; 510D _ 90
        leave                                           ; 510E _ C9
        ret                                             ; 510F _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5110 _ 55
        mov     ebp, esp                                ; 5111 _ 89. E5
        sub     esp, 40                                 ; 5113 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5116 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 511B _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 511E _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 5126 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5129 _ 89. 04 24
        call    _memman_alloc_4k                        ; 512C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5131 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5136 _ C7. 45, F4, 00000000
        jmp     ?_309                                   ; 513D _ E9, 00000088

?_308:  mov     edx, dword [_taskctl]                   ; 5142 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5148 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 514B _ 69. C0, 00000094
        add     eax, edx                                ; 5151 _ 01. D0
        add     eax, 72                                 ; 5153 _ 83. C0, 48
        mov     dword [eax], 0                          ; 5156 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 515C _ 8B. 45, F4
        add     eax, 7                                  ; 515F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5162 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5168 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 516F _ 8B. 45, F4
        imul    eax, eax, 148                           ; 5172 _ 69. C0, 00000094
        add     eax, ecx                                ; 5178 _ 01. C8
        add     eax, 68                                 ; 517A _ 83. C0, 44
        mov     dword [eax], edx                        ; 517D _ 89. 10
        mov     edx, dword [_taskctl]                   ; 517F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5185 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 5188 _ 69. C0, 00000094
        add     eax, 96                                 ; 518E _ 83. C0, 60
        add     eax, edx                                ; 5191 _ 01. D0
        add     eax, 16                                 ; 5193 _ 83. C0, 10
        mov     ecx, eax                                ; 5196 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5198 _ 8B. 45, F4
        add     eax, 7                                  ; 519B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 519E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 51A5 _ 8B. 45, F0
        add     eax, edx                                ; 51A8 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 51AA _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 51B2 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 51B6 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 51BE _ 89. 04 24
        call    _set_segmdesc                           ; 51C1 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 51C6 _ 83. 45, F4, 01
?_309:  cmp     dword [ebp-0CH], 4                      ; 51CA _ 83. 7D, F4, 04
        jle     ?_308                                   ; 51CE _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 51D4 _ C7. 45, F4, 00000000
        jmp     ?_311                                   ; 51DB _ EB, 0F

?_310:  mov     eax, dword [ebp-0CH]                    ; 51DD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 51E0 _ 89. 04 24
        call    _init_task_level                        ; 51E3 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 51E8 _ 83. 45, F4, 01
?_311:  cmp     dword [ebp-0CH], 2                      ; 51EC _ 83. 7D, F4, 02
        jle     ?_310                                   ; 51F0 _ 7E, EB
        call    _task_alloc                             ; 51F2 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 51F7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 51FA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 51FD _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 5204 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 5207 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 520E _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5211 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5218 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 521B _ 89. 04 24
        call    _task_add                               ; 521E _ E8, 0000003A
        call    _task_switchsub                         ; 5223 _ E8, 00000439
        mov     eax, dword [ebp-14H]                    ; 5228 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 522B _ 8B. 00
        mov     dword [esp], eax                        ; 522D _ 89. 04 24
        call    _load_tr                                ; 5230 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5235 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 523A _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 523F _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5242 _ 8B. 40, 08
        mov     edx, eax                                ; 5245 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5247 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 524C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5250 _ 89. 04 24
        call    _timer_settime                          ; 5253 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5258 _ 8B. 45, EC
        leave                                           ; 525B _ C9
        ret                                             ; 525C _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 525D _ 55
        mov     ebp, esp                                ; 525E _ 89. E5
        sub     esp, 16                                 ; 5260 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5263 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5269 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 526C _ 8B. 50, 0C
        mov     eax, edx                                ; 526F _ 89. D0
        shl     eax, 2                                  ; 5271 _ C1. E0, 02
        add     eax, edx                                ; 5274 _ 01. D0
        shl     eax, 2                                  ; 5276 _ C1. E0, 02
        add     eax, ecx                                ; 5279 _ 01. C8
        add     eax, 8                                  ; 527B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 527E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5281 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 5284 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 5286 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 5289 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 528C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 5290 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 5293 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5295 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 5298 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 529B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 529D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 52A0 _ C7. 40, 04, 00000002
        nop                                             ; 52A7 _ 90
        leave                                           ; 52A8 _ C9
        ret                                             ; 52A9 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 52AA _ 55
        mov     ebp, esp                                ; 52AB _ 89. E5
        sub     esp, 16                                 ; 52AD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 52B0 _ C7. 45, FC, 00000000
        jmp     ?_314                                   ; 52B7 _ E9, 00000101

?_312:  mov     edx, dword [_taskctl]                   ; 52BC _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 52C2 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 52C5 _ 69. C0, 00000094
        add     eax, edx                                ; 52CB _ 01. D0
        add     eax, 72                                 ; 52CD _ 83. C0, 48
        mov     eax, dword [eax]                        ; 52D0 _ 8B. 00
        test    eax, eax                                ; 52D2 _ 85. C0
        jne     ?_313                                   ; 52D4 _ 0F 85, 000000DF
        mov     edx, dword [_taskctl]                   ; 52DA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 52E0 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 52E3 _ 69. C0, 00000094
        add     eax, 64                                 ; 52E9 _ 83. C0, 40
        add     eax, edx                                ; 52EC _ 01. D0
        add     eax, 4                                  ; 52EE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 52F1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 52F4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 52F7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 52FE _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 5301 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 5308 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 530B _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 5312 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 5315 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 531C _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 531F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5326 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 5329 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 5330 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 5333 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 533A _ 8B. 45, FC
        add     eax, 1                                  ; 533D _ 83. C0, 01
        shl     eax, 9                                  ; 5340 _ C1. E0, 09
        mov     edx, eax                                ; 5343 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5345 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5348 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 534B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 534E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5355 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5358 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 535F _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 5362 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5369 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 536C _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5376 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5379 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 5383 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5386 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 5390 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 5393 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 539A _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 539D _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 53A7 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 53AA _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 53B4 _ 8B. 45, F8
        jmp     ?_315                                   ; 53B7 _ EB, 13

?_313:  add     dword [ebp-4H], 1                       ; 53B9 _ 83. 45, FC, 01
?_314:  cmp     dword [ebp-4H], 4                       ; 53BD _ 83. 7D, FC, 04
        jle     ?_312                                   ; 53C1 _ 0F 8E, FFFFFEF5
        mov     eax, 0                                  ; 53C7 _ B8, 00000000
?_315:  leave                                           ; 53CC _ C9
        ret                                             ; 53CD _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 53CE _ 55
        mov     ebp, esp                                ; 53CF _ 89. E5
        sub     esp, 24                                 ; 53D1 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 53D4 _ 83. 7D, 0C, 00
        jns     ?_316                                   ; 53D8 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 53DA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 53DD _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 53E0 _ 89. 45, 0C
?_316:  cmp     dword [ebp+10H], 0                      ; 53E3 _ 83. 7D, 10, 00
        jle     ?_317                                   ; 53E7 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 53E9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 53EC _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 53EF _ 89. 50, 08
?_317:  mov     eax, dword [ebp+8H]                     ; 53F2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 53F5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 53F8 _ 83. F8, 02
        jnz     ?_318                                   ; 53FB _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 53FD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5400 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 5403 _ 39. 45, 0C
        jz      ?_318                                   ; 5406 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5408 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 540B _ 89. 04 24
        call    _task_remove                            ; 540E _ E8, 0000002E
?_318:  mov     eax, dword [ebp+8H]                     ; 5413 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5416 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5419 _ 83. F8, 02
        jz      ?_319                                   ; 541C _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 541E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5421 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5424 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5427 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 542A _ 89. 04 24
        call    _task_add                               ; 542D _ E8, FFFFFE2B
?_319:  mov     eax, dword [_taskctl]                   ; 5432 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5437 _ C7. 40, 04, 00000001
        nop                                             ; 543E _ 90
        leave                                           ; 543F _ C9
        ret                                             ; 5440 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 5441 _ 55
        mov     ebp, esp                                ; 5442 _ 89. E5
        sub     esp, 16                                 ; 5444 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5447 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 544D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5450 _ 8B. 50, 0C
        mov     eax, edx                                ; 5453 _ 89. D0
        shl     eax, 2                                  ; 5455 _ C1. E0, 02
        add     eax, edx                                ; 5458 _ 01. D0
        shl     eax, 2                                  ; 545A _ C1. E0, 02
        add     eax, ecx                                ; 545D _ 01. C8
        add     eax, 8                                  ; 545F _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5462 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 5465 _ C7. 45, FC, 00000000
        jmp     ?_322                                   ; 546C _ EB, 23

?_320:  mov     eax, dword [ebp-8H]                     ; 546E _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5471 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5474 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 5478 _ 39. 45, 08
        jnz     ?_321                                   ; 547B _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 547D _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5480 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 5483 _ C7. 44 90, 08, 00000000
        jmp     ?_323                                   ; 548B _ EB, 0E

?_321:  add     dword [ebp-4H], 1                       ; 548D _ 83. 45, FC, 01
?_322:  mov     eax, dword [ebp-8H]                     ; 5491 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5494 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5496 _ 39. 45, FC
        jl      ?_320                                   ; 5499 _ 7C, D3
?_323:  mov     eax, dword [ebp-8H]                     ; 549B _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 549E _ 8B. 00
        lea     edx, [eax-1H]                           ; 54A0 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 54A3 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 54A6 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 54A8 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 54AB _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 54AE _ 39. 45, FC
        jge     ?_324                                   ; 54B1 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 54B3 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 54B6 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 54B9 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 54BC _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 54BF _ 89. 50, 04
?_324:  mov     eax, dword [ebp-8H]                     ; 54C2 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 54C5 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 54C8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 54CB _ 8B. 00
        cmp     edx, eax                                ; 54CD _ 39. C2
        jl      ?_325                                   ; 54CF _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 54D1 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 54D4 _ C7. 40, 04, 00000000
?_325:  mov     eax, dword [ebp+8H]                     ; 54DB _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 54DE _ C7. 40, 04, 00000001
        jmp     ?_327                                   ; 54E5 _ EB, 1B

?_326:  mov     eax, dword [ebp-4H]                     ; 54E7 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 54EA _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 54ED _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 54F0 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 54F4 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 54F7 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 54FA _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 54FE _ 83. 45, FC, 01
?_327:  mov     eax, dword [ebp-8H]                     ; 5502 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5505 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5507 _ 39. 45, FC
        jl      ?_326                                   ; 550A _ 7C, DB
        nop                                             ; 550C _ 90
        leave                                           ; 550D _ C9
        ret                                             ; 550E _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 550F _ 55
        mov     ebp, esp                                ; 5510 _ 89. E5
        sub     esp, 40                                 ; 5512 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5515 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 551B _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5520 _ 8B. 10
        mov     eax, edx                                ; 5522 _ 89. D0
        shl     eax, 2                                  ; 5524 _ C1. E0, 02
        add     eax, edx                                ; 5527 _ 01. D0
        shl     eax, 2                                  ; 5529 _ C1. E0, 02
        add     eax, ecx                                ; 552C _ 01. C8
        add     eax, 8                                  ; 552E _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5531 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5534 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5537 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 553A _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 553D _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5541 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5544 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5547 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 554A _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 554D _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5550 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5553 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5556 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5559 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 555C _ 8B. 00
        cmp     edx, eax                                ; 555E _ 39. C2
        jnz     ?_328                                   ; 5560 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5562 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5565 _ C7. 40, 04, 00000000
?_328:  mov     eax, dword [_taskctl]                   ; 556C _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5571 _ 8B. 40, 04
        test    eax, eax                                ; 5574 _ 85. C0
        jz      ?_329                                   ; 5576 _ 74, 24
        call    _task_switchsub                         ; 5578 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 557D _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5583 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5588 _ 8B. 10
        mov     eax, edx                                ; 558A _ 89. D0
        shl     eax, 2                                  ; 558C _ C1. E0, 02
        add     eax, edx                                ; 558F _ 01. D0
        shl     eax, 2                                  ; 5591 _ C1. E0, 02
        add     eax, ecx                                ; 5594 _ 01. C8
        add     eax, 8                                  ; 5596 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5599 _ 89. 45, F4
?_329:  mov     eax, dword [ebp-0CH]                    ; 559C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 559F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 55A2 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 55A5 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 55A9 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 55AC _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 55AF _ 8B. 40, 08
        mov     edx, eax                                ; 55B2 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 55B4 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 55B9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 55BD _ 89. 04 24
        call    _timer_settime                          ; 55C0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 55C5 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 55C8 _ 3B. 45, F0
        jz      ?_330                                   ; 55CB _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 55CD _ 83. 7D, EC, 00
        jz      ?_330                                   ; 55D1 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 55D3 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 55D6 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 55D8 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 55DC _ C7. 04 24, 00000000
        call    _farjmp                                 ; 55E3 _ E8, 00000000(rel)
        nop                                             ; 55E8 _ 90
?_330:  nop                                             ; 55E9 _ 90
        leave                                           ; 55EA _ C9
        ret                                             ; 55EB _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 55EC _ 55
        mov     ebp, esp                                ; 55ED _ 89. E5
        sub     esp, 40                                 ; 55EF _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 55F2 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 55F9 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 5600 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5603 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5606 _ 83. F8, 02
        jnz     ?_331                                   ; 5609 _ 75, 51
        call    _task_now                               ; 560B _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 5610 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5613 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5616 _ 89. 04 24
        call    _task_remove                            ; 5619 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 561E _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5625 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5628 _ 3B. 45, F0
        jnz     ?_331                                   ; 562B _ 75, 2F
        call    _task_switchsub                         ; 562D _ E8, 0000002F
        call    _task_now                               ; 5632 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 5637 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 563A _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5641 _ 83. 7D, F0, 00
        jz      ?_331                                   ; 5645 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5647 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 564A _ 8B. 00
        mov     dword [esp+4H], eax                     ; 564C _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5650 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5657 _ E8, 00000000(rel)
?_331:  mov     eax, dword [ebp-0CH]                    ; 565C _ 8B. 45, F4
        leave                                           ; 565F _ C9
        ret                                             ; 5660 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 5661 _ 55
        mov     ebp, esp                                ; 5662 _ 89. E5
        sub     esp, 16                                 ; 5664 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5667 _ C7. 45, FC, 00000000
        jmp     ?_333                                   ; 566E _ EB, 22

?_332:  mov     ecx, dword [_taskctl]                   ; 5670 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5676 _ 8B. 55, FC
        mov     eax, edx                                ; 5679 _ 89. D0
        shl     eax, 2                                  ; 567B _ C1. E0, 02
        add     eax, edx                                ; 567E _ 01. D0
        shl     eax, 2                                  ; 5680 _ C1. E0, 02
        add     eax, ecx                                ; 5683 _ 01. C8
        add     eax, 8                                  ; 5685 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 5688 _ 8B. 00
        test    eax, eax                                ; 568A _ 85. C0
        jg      ?_334                                   ; 568C _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 568E _ 83. 45, FC, 01
?_333:  cmp     dword [ebp-4H], 2                       ; 5692 _ 83. 7D, FC, 02
        jle     ?_332                                   ; 5696 _ 7E, D8
        jmp     ?_335                                   ; 5698 _ EB, 01

?_334:  nop                                             ; 569A _ 90
?_335:  mov     eax, dword [_taskctl]                   ; 569B _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 56A0 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 56A3 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 56A5 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 56AA _ C7. 40, 04, 00000000
        nop                                             ; 56B1 _ 90
        leave                                           ; 56B2 _ C9
        ret                                             ; 56B3 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 56B4 _ 55
        mov     ebp, esp                                ; 56B5 _ 89. E5
        sub     esp, 16                                 ; 56B7 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 56BA _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 56C0 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 56C5 _ 8B. 10
        mov     eax, edx                                ; 56C7 _ 89. D0
        shl     eax, 2                                  ; 56C9 _ C1. E0, 02
        add     eax, edx                                ; 56CC _ 01. D0
        shl     eax, 2                                  ; 56CE _ C1. E0, 02
        add     eax, ecx                                ; 56D1 _ 01. C8
        add     eax, 8                                  ; 56D3 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 56D6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 56D9 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 56DC _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 56DF _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 56E2 _ 8B. 44 90, 08
        leave                                           ; 56E6 _ C9
        ret                                             ; 56E7 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 56E8 _ 55
        mov     ebp, esp                                ; 56E9 _ 89. E5
        sub     esp, 24                                 ; 56EB _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 56EE _ 8B. 45, 10
        movzx   eax, al                                 ; 56F1 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 56F4 _ 8B. 55, 0C
        add     edx, 16                                 ; 56F7 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 56FA _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 56FE _ 89. 14 24
        call    _fifo8_put                              ; 5701 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 5706 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5709 _ 89. 04 24
        call    _task_sleep                             ; 570C _ E8, FFFFFEDB
        nop                                             ; 5711 _ 90
        leave                                           ; 5712 _ C9
        ret                                             ; 5713 _ C3
; _send_message End of function


_strcmp:
        push    ebp                                     ; 5714 _ 55
        mov     ebp, esp                                ; 5715 _ 89. E5
        sub     esp, 16                                 ; 5717 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 571A _ 83. 7D, 08, 00
        jz      ?_336                                   ; 571E _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 5720 _ 83. 7D, 0C, 00
        jnz     ?_337                                   ; 5724 _ 75, 0A
?_336:  mov     eax, 0                                  ; 5726 _ B8, 00000000
        jmp     ?_344                                   ; 572B _ E9, 0000009B

?_337:  mov     dword [ebp-4H], 0                       ; 5730 _ C7. 45, FC, 00000000
        jmp     ?_340                                   ; 5737 _ EB, 25

?_338:  mov     edx, dword [ebp-4H]                     ; 5739 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 573C _ 8B. 45, 08
        add     eax, edx                                ; 573F _ 01. D0
        movzx   edx, byte [eax]                         ; 5741 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 5744 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 5747 _ 8B. 45, 0C
        add     eax, ecx                                ; 574A _ 01. C8
        movzx   eax, byte [eax]                         ; 574C _ 0F B6. 00
        cmp     dl, al                                  ; 574F _ 38. C2
        jz      ?_339                                   ; 5751 _ 74, 07
        mov     eax, 0                                  ; 5753 _ B8, 00000000
        jmp     ?_344                                   ; 5758 _ EB, 71

?_339:  add     dword [ebp-4H], 1                       ; 575A _ 83. 45, FC, 01
?_340:  mov     edx, dword [ebp-4H]                     ; 575E _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5761 _ 8B. 45, 08
        add     eax, edx                                ; 5764 _ 01. D0
        movzx   eax, byte [eax]                         ; 5766 _ 0F B6. 00
        test    al, al                                  ; 5769 _ 84. C0
        jz      ?_341                                   ; 576B _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 576D _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5770 _ 8B. 45, 0C
        add     eax, edx                                ; 5773 _ 01. D0
        movzx   eax, byte [eax]                         ; 5775 _ 0F B6. 00
        test    al, al                                  ; 5778 _ 84. C0
        jnz     ?_338                                   ; 577A _ 75, BD
?_341:  mov     edx, dword [ebp-4H]                     ; 577C _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 577F _ 8B. 45, 08
        add     eax, edx                                ; 5782 _ 01. D0
        movzx   eax, byte [eax]                         ; 5784 _ 0F B6. 00
        test    al, al                                  ; 5787 _ 84. C0
        jnz     ?_342                                   ; 5789 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 578B _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 578E _ 8B. 45, 0C
        add     eax, edx                                ; 5791 _ 01. D0
        movzx   eax, byte [eax]                         ; 5793 _ 0F B6. 00
        test    al, al                                  ; 5796 _ 84. C0
        jz      ?_342                                   ; 5798 _ 74, 07
        mov     eax, 0                                  ; 579A _ B8, 00000000
        jmp     ?_344                                   ; 579F _ EB, 2A

?_342:  mov     edx, dword [ebp-4H]                     ; 57A1 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 57A4 _ 8B. 45, 08
        add     eax, edx                                ; 57A7 _ 01. D0
        movzx   eax, byte [eax]                         ; 57A9 _ 0F B6. 00
        test    al, al                                  ; 57AC _ 84. C0
        jz      ?_343                                   ; 57AE _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 57B0 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 57B3 _ 8B. 45, 0C
        add     eax, edx                                ; 57B6 _ 01. D0
        movzx   eax, byte [eax]                         ; 57B8 _ 0F B6. 00
        test    al, al                                  ; 57BB _ 84. C0
        jz      ?_343                                   ; 57BD _ 74, 07
        mov     eax, 0                                  ; 57BF _ B8, 00000000
        jmp     ?_344                                   ; 57C4 _ EB, 05

?_343:  mov     eax, 1                                  ; 57C6 _ B8, 00000001
?_344:  leave                                           ; 57CB _ C9
        ret                                             ; 57CC _ C3

        nop                                             ; 57CD _ 90
        nop                                             ; 57CE _ 90
        nop                                             ; 57CF _ 90



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

?_345:  db 00H                                          ; 0112 _ .

?_346:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; dword
        dd 0000001DH, 00000000H                         ; 0120 _ 29 0 
        dd 00000000H, 00000000H                         ; 0128 _ 0 0 
        dd 00000000H, 00000000H                         ; 0130 _ 0 0 
        dd 00000000H, 00000000H                         ; 0138 _ 0 0 

_table_rgb.2598:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2658:                                           ; byte
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

_closebtn.2777:                                         ; byte
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


?_347:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_348:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_349:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_350:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_351:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_352:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_353:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_354:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_355:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_356:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 003A _ keyboard
        db 20H, 72H, 65H, 63H, 65H, 69H, 76H, 65H       ; 0042 _  receive
        db 00H                                          ; 004A _ .

?_357:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 004B _ mem.

?_358:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 004F _ cls.

?_359:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0053 _ hlt.

?_360:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0057 _ dir.

?_361:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 005B _ keyboard
        db 00H                                          ; 0063 _ .

?_362:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0064 _ page is:
        db 20H, 00H                                     ; 006C _  .

?_363:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 006E _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0076 _ L: .

?_364:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 007A _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0082 _ H: .

?_365:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0086 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 008E _ w: .

?_366:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 0092 _ INT OC.

?_367:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 0099 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00A1 _ ception.

?_368:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00A9 _ EIP = .

?_369:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00B0 _ INT 0D .

?_370:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00B8 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00C0 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00C8 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 00D0 _ ion.


_g_hlt:                                                 
        resd    1                                       ; 0000

_key_shift:                                             ; dword
        resd    1                                       ; 0004

_caps_lock:                                             ; dword
        resd    1                                       ; 0008

_g_Console:                                             ; dword
        resd    1                                       ; 000C

?_371:  resd    1                                       ; 0010

?_372:  resd    1                                       ; 0014

?_373:  resd    1                                       ; 0018

?_374:  resb    1                                       ; 001C

?_375:  resb    3                                       ; 001D

?_376:  resd    1                                       ; 0020

_bootInfo:                                              ; dword
        resd    1                                       ; 0024

?_377:  resw    1                                       ; 0028

?_378:  resw    1                                       ; 002A

_keyinfo:                                               ; byte
        resb    24                                      ; 002C

?_379:  resd    1                                       ; 0044

_mouseinfo:                                             ; byte
        resb    56                                      ; 0048

_keybuf:                                                ; byte
        resb    32                                      ; 0080

_mousebuf:                                              ; byte
        resb    128                                     ; 00A0

_mdec:                                                  ; byte
        resb    12                                      ; 0120

?_380:  resd    1                                       ; 012C

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

_mouse_clicked_sht:                                     ; dword
        resd    1                                       ; 0290

_task_cons:                                             ; dword
        resd    1                                       ; 0294

_task_main:                                             ; dword
        resd    1                                       ; 0298

_buffer: resd   1                                       ; 029C

?_381:  resd    1                                       ; 02A0

?_382:  resd    1                                       ; 02A4

_task_a.2355:                                           ; dword
        resd    6                                       ; 02A8

_tss_a.2354:                                            ; byte
        resb    128                                     ; 02C0

_tss_b.2353:                                            ; byte
        resb    104                                     ; 0340

_task_b.2343:                                           ; byte
        resb    12                                      ; 03A8

_str.2706:                                              ; byte
        resb    1                                       ; 03B4

?_383:  resb    9                                       ; 03B5

?_384:  resb    2                                       ; 03BE

_timerctl:                                              ; byte
        resb    8032                                    ; 03C0

_task_timer:                                            ; byte
        resb    4                                       ; 2320

_taskctl:                                               ; byte
        resb    4                                       ; 2324


