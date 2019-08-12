; Disassembly of file: ckernel.o
; Mon Aug 12 11:01:29 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 116                                ; 0004 _ 83. EC, 74
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 0000001C(d)
        call    _initBootInfo                           ; 000E _ E8, 00001F71
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 0000001C(d)
        mov     dword [ebp-1CH], eax                    ; 0018 _ 89. 45, E4
        movzx   eax, word [?_318]                       ; 001B _ 0F B7. 05, 00000020(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000013C(d)
        movzx   eax, word [?_319]                       ; 0028 _ 0F B7. 05, 00000022(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 00000140(d)
        call    _init_pit                               ; 0035 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0042 _ C7. 44 24, 08, 0000012C(d)
        mov     dword [esp+4H], 8                       ; 004A _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0052 _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 0059 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 005E _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 0063 _ 89. 45, E0
        mov     dword [esp+8H], 10                      ; 0066 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006E _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-20H]                    ; 0076 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0079 _ 89. 04 24
        call    _timer_init                             ; 007C _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0081 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-20H]                    ; 0089 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 008C _ 89. 04 24
        call    _timer_settime                          ; 008F _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0094 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0099 _ 89. 45, DC
        mov     dword [esp+8H], 2                       ; 009C _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A4 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 00AC _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00AF _ 89. 04 24
        call    _timer_init                             ; 00B2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00B7 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-24H]                    ; 00BF _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00C2 _ 89. 04 24
        call    _timer_settime                          ; 00C5 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CA _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 00CF _ 89. 45, D8
        mov     dword [esp+8H], 1                       ; 00D2 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DA _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 00E2 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00E5 _ 89. 04 24
        call    _timer_init                             ; 00E8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00ED _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 00F5 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00F8 _ 89. 04 24
        call    _timer_settime                          ; 00FB _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0100 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0108 _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0110 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0118 _ C7. 04 24, 00000024(d)
        call    _fifo8_init                             ; 011F _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0124 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012C _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0134 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013C _ C7. 04 24, 00000040(d)
        call    _fifo8_init                             ; 0143 _ E8, 00000000(rel)
        call    _init_palette                           ; 0148 _ E8, 00001F01
        call    _init_keyboard                          ; 014D _ E8, 0000246A
        call    _get_memory_block_count                 ; 0152 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 0157 _ 89. 45, D4
        call    _get_addr_buffer                        ; 015A _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 015F _ 89. 45, D0
        mov     eax, dword [_memman]                    ; 0162 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0167 _ 89. 04 24
        call    _memman_init                            ; 016A _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 016F _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0174 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 017C _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 0184 _ 89. 04 24
        call    _memman_free                            ; 0187 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 018C _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0192 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 0198 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 019D _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A1 _ 89. 54 24, 08
        mov     edx, dword [ebp-1CH]                    ; 01A5 _ 8B. 55, E4
        mov     dword [esp+4H], edx                     ; 01A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01AC _ 89. 04 24
        call    _shtctl_init                            ; 01AF _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B4 _ A3, 00000264(d)
        mov     eax, dword [_shtctl]                    ; 01B9 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01BE _ 89. 04 24
        call    _sheet_alloc                            ; 01C1 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01C6 _ A3, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 01CB _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01D0 _ 89. 04 24
        call    _sheet_alloc                            ; 01D3 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01D8 _ A3, 0000026C(d)
        mov     edx, dword [_xsize]                     ; 01DD _ 8B. 15, 0000013C(d)
        mov     eax, dword [_ysize]                     ; 01E3 _ A1, 00000140(d)
        imul    eax, edx                                ; 01E8 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EB _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F5 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01F8 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01FD _ A3, 00000144(d)
        mov     ebx, dword [_ysize]                     ; 0202 _ 8B. 1D, 00000140(d)
        mov     ecx, dword [_xsize]                     ; 0208 _ 8B. 0D, 0000013C(d)
        mov     edx, dword [_buf_back]                  ; 020E _ 8B. 15, 00000144(d)
        mov     eax, dword [_sht_back]                  ; 0214 _ A1, 00000268(d)
        mov     dword [esp+10H], 99                     ; 0219 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0221 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0225 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0229 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 022D _ 89. 04 24
        call    _sheet_setbuf                           ; 0230 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0235 _ A1, 0000026C(d)
        mov     dword [esp+10H], 99                     ; 023A _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0242 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0252 _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 025A _ 89. 04 24
        call    _sheet_setbuf                           ; 025D _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0262 _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0268 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_buf_back]                  ; 026E _ A1, 00000144(d)
        mov     dword [esp+8H], ecx                     ; 0273 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0277 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027B _ 89. 04 24
        call    _init_screen8                           ; 027E _ E8, 00001839
        mov     dword [esp+4H], 99                      ; 0283 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028B _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0292 _ E8, 00002053
        mov     edx, dword [_sht_back]                  ; 0297 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 029D _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 02A2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B6 _ 89. 04 24
        call    _sheet_slide                            ; 02B9 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02BE _ A1, 0000013C(d)
        sub     eax, 16                                 ; 02C3 _ 83. E8, 10
        mov     edx, eax                                ; 02C6 _ 89. C2
        shr     edx, 31                                 ; 02C8 _ C1. EA, 1F
        add     eax, edx                                ; 02CB _ 01. D0
        sar     eax, 1                                  ; 02CD _ D1. F8
        mov     dword [_mx], eax                        ; 02CF _ A3, 00000134(d)
        mov     eax, dword [_ysize]                     ; 02D4 _ A1, 00000140(d)
        sub     eax, 44                                 ; 02D9 _ 83. E8, 2C
        mov     edx, eax                                ; 02DC _ 89. C2
        shr     edx, 31                                 ; 02DE _ C1. EA, 1F
        add     eax, edx                                ; 02E1 _ 01. D0
        sar     eax, 1                                  ; 02E3 _ D1. F8
        mov     dword [_my], eax                        ; 02E5 _ A3, 00000138(d)
        mov     ebx, dword [_my]                        ; 02EA _ 8B. 1D, 00000138(d)
        mov     ecx, dword [_mx]                        ; 02F0 _ 8B. 0D, 00000134(d)
        mov     edx, dword [_sht_mouse]                 ; 02F6 _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 02FC _ A1, 00000264(d)
        mov     dword [esp+0CH], ebx                    ; 0301 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0305 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0309 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 030D _ 89. 04 24
        call    _sheet_slide                            ; 0310 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0315 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 031C _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0323 _ A1, 00000264(d)
        mov     dword [esp+4H], ?_297                   ; 0328 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0330 _ 89. 04 24
        call    _message_box                            ; 0333 _ E8, 000026AF
        mov     dword [_shtMsgBox], eax                 ; 0338 _ A3, 00000260(d)
        mov     edx, dword [_sht_back]                  ; 033D _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0343 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 0348 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0350 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0354 _ 89. 04 24
        call    _sheet_updown                           ; 0357 _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035C _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 0362 _ A1, 00000264(d)
        mov     dword [esp+8H], 100                     ; 0367 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 036F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0373 _ 89. 04 24
        call    _sheet_updown                           ; 0376 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037B _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0380 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 0387 _ E8, 0000226B
        mov     eax, dword [_memman]                    ; 038C _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0391 _ 89. 04 24
        call    _task_init                              ; 0394 _ E8, 00000000(rel)
        mov     dword [_task_a.2331], eax               ; 0399 _ A3, 00000280(d)
        mov     eax, dword [_task_a.2331]               ; 039E _ A1, 00000280(d)
        mov     dword [?_320], eax                      ; 03A3 _ A3, 0000003C(d)
        mov     eax, dword [_task_a.2331]               ; 03A8 _ A1, 00000280(d)
        mov     dword [_task_main], eax                 ; 03AD _ A3, 00000274(d)
        mov     eax, dword [_task_a.2331]               ; 03B2 _ A1, 00000280(d)
        mov     dword [esp+8H], 0                       ; 03B7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03BF _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03C7 _ 89. 04 24
        call    _task_run                               ; 03CA _ E8, 00000000(rel)
        call    _launch_console                         ; 03CF _ E8, 0000069A
        mov     dword [ebp-34H], eax                    ; 03D4 _ 89. 45, CC
        mov     dword [ebp-38H], 0                      ; 03D7 _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 03DE _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 03E5 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 176                    ; 03EC _ C7. 45, BC, 000000B0
        mov     dword [ebp-48H], 0                      ; 03F3 _ C7. 45, B8, 00000000
        mov     dword [ebp-14H], 0                      ; 03FA _ C7. 45, EC, 00000000
        mov     dword [ebp-4CH], 0                      ; 0401 _ C7. 45, B4, 00000000
?_001:  call    _io_cli                                 ; 0408 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 040D _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0414 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0419 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 041B _ C7. 04 24, 00000040(d)
        call    _fifo8_status                           ; 0422 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0427 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0429 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0430 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0435 _ 01. D8
        test    eax, eax                                ; 0437 _ 85. C0
        jnz     ?_002                                   ; 0439 _ 75, 0A
        call    _io_sti                                 ; 043B _ E8, 00000000(rel)
        jmp     ?_008                                   ; 0440 _ E9, 00000327

?_002:  mov     dword [esp], _keyinfo                   ; 0445 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 044C _ E8, 00000000(rel)
        test    eax, eax                                ; 0451 _ 85. C0
        je      ?_007                                   ; 0453 _ 0F 84, 000002E2
        call    _io_sti                                 ; 0459 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 045E _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 0465 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 046A _ 89. 45, C8
        cmp     dword [ebp-38H], 15                     ; 046D _ 83. 7D, C8, 0F
        jne     ?_005                                   ; 0471 _ 0F 85, 0000019A
        mov     dword [ebp-18H], -1                     ; 0477 _ C7. 45, E8, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 047E _ 83. 7D, EC, 00
        jne     ?_003                                   ; 0482 _ 0F 85, 00000089
        mov     dword [ebp-14H], 1                      ; 0488 _ C7. 45, EC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 048F _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0495 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 049A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_298                   ; 04A2 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 04AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04AE _ 89. 04 24
        call    _make_wtitle8                           ; 04B1 _ E8, 000028E1
        mov     eax, dword [_shtctl]                    ; 04B6 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BB _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_299                   ; 04C3 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 04CB _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 04CE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04D2 _ 89. 04 24
        call    _make_wtitle8                           ; 04D5 _ E8, 000028BD
        mov     edx, dword [_shtMsgBox]                 ; 04DA _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 04E0 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 04E5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 04ED _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 04F5 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 04F8 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04FC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0500 _ 89. 04 24
        call    _set_cursor                             ; 0503 _ E8, 00000356
        mov     dword [ebp-18H], 87                     ; 0508 _ C7. 45, E8, 00000057
        jmp     ?_004                                   ; 050F _ EB, 71

?_003:  mov     dword [ebp-14H], 0                      ; 0511 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0518 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 051E _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0523 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_298                   ; 052B _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0533 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0537 _ 89. 04 24
        call    _make_wtitle8                           ; 053A _ E8, 00002858
        mov     eax, dword [_shtctl]                    ; 053F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0544 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_299                   ; 054C _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 0554 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0557 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 055B _ 89. 04 24
        call    _make_wtitle8                           ; 055E _ E8, 00002834
        mov     eax, dword [_task_cons]                 ; 0563 _ A1, 00000270(d)
        add     eax, 16                                 ; 0568 _ 83. C0, 10
        mov     dword [esp+4H], 88                      ; 056B _ C7. 44 24, 04, 00000058
        mov     dword [esp], eax                        ; 0573 _ 89. 04 24
        call    _fifo8_put                              ; 0576 _ E8, 00000000(rel)
        mov     dword [ebp-18H], 88                     ; 057B _ C7. 45, E8, 00000058
?_004:  mov     eax, dword [_shtMsgBox]                 ; 0582 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 0587 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 058A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0590 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 0595 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 059D _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 05A1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05A9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 05B1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05B5 _ 89. 04 24
        call    _sheet_refresh                          ; 05B8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-34H]                    ; 05BD _ 8B. 45, CC
        mov     edx, dword [eax+4H]                     ; 05C0 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 05C3 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 05C8 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 05D0 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 05D4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05DC _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-34H]                    ; 05E4 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05EB _ 89. 04 24
        call    _sheet_refresh                          ; 05EE _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 05F3 _ 8B. 15, 00000270(d)
        mov     eax, dword [_task_a.2331]               ; 05F9 _ A1, 00000280(d)
        mov     ecx, dword [ebp-18H]                    ; 05FE _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0601 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0605 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0609 _ 89. 04 24
        call    _send_message                           ; 060C _ E8, 00000000(rel)
?_005:  cmp     dword [ebp-14H], 0                      ; 0611 _ 83. 7D, EC, 00
        jne     ?_006                                   ; 0615 _ 0F 85, 000000D7
        mov     eax, dword [ebp-38H]                    ; 061B _ 8B. 45, C8
        mov     dword [esp], eax                        ; 061E _ 89. 04 24
        call    _transferScanCode                       ; 0621 _ E8, 0000030B
        test    al, al                                  ; 0626 _ 84. C0
        je      ?_008                                   ; 0628 _ 0F 84, 0000013E
        cmp     dword [ebp-0CH], 143                    ; 062E _ 81. 7D, F4, 0000008F
        jg      ?_008                                   ; 0635 _ 0F 8F, 00000131
        mov     edx, dword [_shtMsgBox]                 ; 063B _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0641 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0646 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 064E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0656 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0659 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 065D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0661 _ 89. 04 24
        call    _set_cursor                             ; 0664 _ E8, 000001F5
        mov     eax, dword [ebp-38H]                    ; 0669 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 066C _ 89. 04 24
        call    _transferScanCode                       ; 066F _ E8, 000002BD
        mov     byte [ebp-4DH], al                      ; 0674 _ 88. 45, B3
        movzx   eax, byte [ebp-4DH]                     ; 0677 _ 0F B6. 45, B3
        mov     byte [ebp-56H], al                      ; 067B _ 88. 45, AA
        mov     byte [ebp-55H], 0                       ; 067E _ C6. 45, AB, 00
        mov     ecx, dword [_shtMsgBox]                 ; 0682 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 0688 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-56H]                          ; 068E _ 8D. 45, AA
        mov     dword [esp+14H], eax                    ; 0691 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0695 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 069D _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06A5 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06A8 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 06AC _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 06B0 _ 89. 14 24
        call    _showString                             ; 06B3 _ E8, 000018ED
        add     dword [ebp-0CH], 8                      ; 06B8 _ 83. 45, F4, 08
        mov     dword [ebp-48H], 1                      ; 06BC _ C7. 45, B8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 06C3 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06C9 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 06CE _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 06D1 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 06D5 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06DD _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06E0 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06E8 _ 89. 04 24
        call    _set_cursor                             ; 06EB _ E8, 0000016E
        jmp     ?_008                                   ; 06F0 _ EB, 7A

?_006:  mov     eax, dword [ebp-38H]                    ; 06F2 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 06F5 _ 89. 04 24
        call    _isSpecialKey                           ; 06F8 _ E8, 000001E8
        test    eax, eax                                ; 06FD _ 85. C0
        jnz     ?_008                                   ; 06FF _ 75, 6B
        mov     eax, dword [ebp-38H]                    ; 0701 _ 8B. 45, C8
        movzx   eax, al                                 ; 0704 _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 0707 _ 8B. 15, 00000270(d)
        add     edx, 16                                 ; 070D _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0710 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0714 _ 89. 14 24
        call    _fifo8_put                              ; 0717 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 071C _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0723 _ E8, 00000000(rel)
        test    eax, eax                                ; 0728 _ 85. C0
        jnz     ?_008                                   ; 072A _ 75, 40
        mov     eax, dword [_task_a.2331]               ; 072C _ A1, 00000280(d)
        mov     dword [esp], eax                        ; 0731 _ 89. 04 24
        call    _task_sleep                             ; 0734 _ E8, 00000000(rel)
        jmp     ?_008                                   ; 0739 _ EB, 31

?_007:  mov     dword [esp], _mouseinfo                 ; 073B _ C7. 04 24, 00000040(d)
        call    _fifo8_status                           ; 0742 _ E8, 00000000(rel)
        test    eax, eax                                ; 0747 _ 85. C0
        jz      ?_008                                   ; 0749 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 074B _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0751 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0757 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 075C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0760 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0764 _ 89. 04 24
        call    _show_mouse_info                        ; 0767 _ E8, 00001760
?_008:  mov     dword [esp], _timerinfo                 ; 076C _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0773 _ E8, 00000000(rel)
        test    eax, eax                                ; 0778 _ 85. C0
        je      ?_001                                   ; 077A _ 0F 84, FFFFFC88
        call    _io_sti                                 ; 0780 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0785 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 078C _ E8, 00000000(rel)
        mov     dword [ebp-54H], eax                    ; 0791 _ 89. 45, AC
        cmp     dword [ebp-54H], 0                      ; 0794 _ 83. 7D, AC, 00
        jz      ?_009                                   ; 0798 _ 74, 24
        mov     dword [esp+8H], 0                       ; 079A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 07A2 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07AA _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07AD _ 89. 04 24
        call    _timer_init                             ; 07B0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 07B5 _ C7. 45, F0, 00000000
        jmp     ?_010                                   ; 07BC _ EB, 22

?_009:  mov     dword [esp+8H], 1                       ; 07BE _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 07C6 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07CE _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07D1 _ 89. 04 24
        call    _timer_init                             ; 07D4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 07D9 _ C7. 45, F0, 00000007
?_010:  mov     dword [esp+4H], 50                      ; 07E0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 07E8 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07EB _ 89. 04 24
        call    _timer_settime                          ; 07EE _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 07F3 _ 83. 7D, EC, 00
        jnz     ?_011                                   ; 07F7 _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 07F9 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 07FF _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0804 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0807 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 080B _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0813 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0816 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 081A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 081E _ 89. 04 24
        call    _set_cursor                             ; 0821 _ E8, 00000038
        jmp     ?_001                                   ; 0826 _ E9, FFFFFBDD

?_011:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 082B _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0831 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0836 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 083E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0846 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0849 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 084D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0851 _ 89. 04 24
        call    _set_cursor                             ; 0854 _ E8, 00000005
        jmp     ?_001                                   ; 0859 _ E9, FFFFFBAA

_set_cursor:; Function begin
        push    ebp                                     ; 085E _ 55
        mov     ebp, esp                                ; 085F _ 89. E5
        push    esi                                     ; 0861 _ 56
        push    ebx                                     ; 0862 _ 53
        sub     esp, 32                                 ; 0863 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 0866 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 0869 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 086C _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 086F _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 0872 _ 8B. 45, 18
        movzx   eax, al                                 ; 0875 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 0878 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 087B _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 087E _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0881 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 0883 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0887 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 088B _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 088E _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 0892 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 0895 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0899 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 089D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 08A1 _ 89. 14 24
        call    _boxfill8                               ; 08A4 _ E8, 00001870
        mov     eax, dword [ebp+14H]                    ; 08A9 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 08AC _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 08AF _ 8B. 45, 10
        add     eax, 8                                  ; 08B2 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 08B5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 08B9 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08BD _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08C0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08C4 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08C7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 08CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08D5 _ 89. 04 24
        call    _sheet_refresh                          ; 08D8 _ E8, 00000000(rel)
        nop                                             ; 08DD _ 90
        add     esp, 32                                 ; 08DE _ 83. C4, 20
        pop     ebx                                     ; 08E1 _ 5B
        pop     esi                                     ; 08E2 _ 5E
        pop     ebp                                     ; 08E3 _ 5D
        ret                                             ; 08E4 _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 08E5 _ 55
        mov     ebp, esp                                ; 08E6 _ 89. E5
        sub     esp, 24                                 ; 08E8 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 08EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08EE _ 89. 04 24
        call    _transferScanCode                       ; 08F1 _ E8, 0000003B
        cmp     dword [ebp+8H], 58                      ; 08F6 _ 83. 7D, 08, 3A
        jz      ?_012                                   ; 08FA _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 08FC _ 81. 7D, 08, 000000BA
        jz      ?_012                                   ; 0903 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0905 _ 83. 7D, 08, 2A
        jz      ?_012                                   ; 0909 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 090B _ 83. 7D, 08, 36
        jz      ?_012                                   ; 090F _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0911 _ 81. 7D, 08, 000000AA
        jz      ?_012                                   ; 0918 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 091A _ 81. 7D, 08, 000000B6
        jnz     ?_013                                   ; 0921 _ 75, 07
?_012:  mov     eax, 1                                  ; 0923 _ B8, 00000001
        jmp     ?_014                                   ; 0928 _ EB, 05

?_013:  mov     eax, 0                                  ; 092A _ B8, 00000000
?_014:  leave                                           ; 092F _ C9
        ret                                             ; 0930 _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 0931 _ 55
        mov     ebp, esp                                ; 0932 _ 89. E5
        sub     esp, 16                                 ; 0934 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0937 _ 83. 7D, 08, 2A
        jnz     ?_015                                   ; 093B _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 093D _ A1, 00000000(d)
        or      eax, 01H                                ; 0942 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 0945 _ A3, 00000000(d)
?_015:  cmp     dword [ebp+8H], 54                      ; 094A _ 83. 7D, 08, 36
        jnz     ?_016                                   ; 094E _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0950 _ A1, 00000000(d)
        or      eax, 02H                                ; 0955 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 0958 _ A3, 00000000(d)
?_016:  cmp     dword [ebp+8H], 170                     ; 095D _ 81. 7D, 08, 000000AA
        jnz     ?_017                                   ; 0964 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0966 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 096B _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 096E _ A3, 00000000(d)
?_017:  cmp     dword [ebp+8H], 182                     ; 0973 _ 81. 7D, 08, 000000B6
        jnz     ?_018                                   ; 097A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 097C _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0981 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 0984 _ A3, 00000000(d)
?_018:  cmp     dword [ebp+8H], 58                      ; 0989 _ 83. 7D, 08, 3A
        jnz     ?_020                                   ; 098D _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 098F _ A1, 00000004(d)
        test    eax, eax                                ; 0994 _ 85. C0
        jnz     ?_019                                   ; 0996 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 0998 _ C7. 05, 00000004(d), 00000001
        jmp     ?_020                                   ; 09A2 _ EB, 0A

?_019:  mov     dword [_caps_lock], 0                   ; 09A4 _ C7. 05, 00000004(d), 00000000
?_020:  cmp     dword [ebp+8H], 42                      ; 09AE _ 83. 7D, 08, 2A
        jz      ?_021                                   ; 09B2 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 09B4 _ 83. 7D, 08, 36
        jz      ?_021                                   ; 09B8 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 09BA _ 81. 7D, 08, 000000AA
        jz      ?_021                                   ; 09C1 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 09C3 _ 81. 7D, 08, 000000B6
        jz      ?_021                                   ; 09CA _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 09CC _ 83. 7D, 08, 53
        jg      ?_021                                   ; 09D0 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 09D2 _ 83. 7D, 08, 3A
        jnz     ?_022                                   ; 09D6 _ 75, 0A
?_021:  mov     eax, 0                                  ; 09D8 _ B8, 00000000
        jmp     ?_027                                   ; 09DD _ E9, 0000008A

?_022:  mov     byte [ebp-1H], 0                        ; 09E2 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 09E6 _ A1, 00000000(d)
        test    eax, eax                                ; 09EB _ 85. C0
        jnz     ?_023                                   ; 09ED _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 09EF _ 83. 7D, 08, 53
        jg      ?_023                                   ; 09F3 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 09F5 _ 8B. 45, 08
        add     eax, _keytable                          ; 09F8 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 09FD _ 0F B6. 00
        test    al, al                                  ; 0A00 _ 84. C0
        jz      ?_023                                   ; 0A02 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0A04 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A07 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A0C _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A0F _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0A12 _ 80. 7D, FF, 40
        jle     ?_025                                   ; 0A16 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0A18 _ 80. 7D, FF, 5A
        jg      ?_025                                   ; 0A1C _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0A1E _ A1, 00000004(d)
        test    eax, eax                                ; 0A23 _ 85. C0
        jnz     ?_025                                   ; 0A25 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0A27 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0A2B _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0A2E _ 88. 45, FF
        jmp     ?_025                                   ; 0A31 _ EB, 34

?_023:  mov     eax, dword [_key_shift]                 ; 0A33 _ A1, 00000000(d)
        test    eax, eax                                ; 0A38 _ 85. C0
        jz      ?_024                                   ; 0A3A _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0A3C _ 83. 7D, 08, 7F
        jg      ?_024                                   ; 0A40 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0A42 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0A45 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0A4A _ 0F B6. 00
        test    al, al                                  ; 0A4D _ 84. C0
        jz      ?_024                                   ; 0A4F _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0A51 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0A54 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0A59 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A5C _ 88. 45, FF
        jmp     ?_026                                   ; 0A5F _ EB, 07

?_024:  mov     byte [ebp-1H], 0                        ; 0A61 _ C6. 45, FF, 00
        jmp     ?_026                                   ; 0A65 _ EB, 01

?_025:  nop                                             ; 0A67 _ 90
?_026:  movzx   eax, byte [ebp-1H]                      ; 0A68 _ 0F B6. 45, FF
?_027:  leave                                           ; 0A6C _ C9
        ret                                             ; 0A6D _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0A6E _ 55
        mov     ebp, esp                                ; 0A6F _ 89. E5
        sub     esp, 56                                 ; 0A71 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 0A74 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0A79 _ 89. 04 24
        call    _sheet_alloc                            ; 0A7C _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0A81 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0A84 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0A89 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0A91 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0A94 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0A99 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0A9C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0AA4 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0AAC _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0AB4 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0AB7 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0ABB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0ABE _ 89. 04 24
        call    _sheet_setbuf                           ; 0AC1 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0AC6 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0ACB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_299                   ; 0AD3 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0ADB _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0ADE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AE2 _ 89. 04 24
        call    _make_window8                           ; 0AE5 _ E8, 00001FE8
        mov     dword [esp+14H], 0                      ; 0AEA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0AF2 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0AFA _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B02 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B0A _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B12 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B15 _ 89. 04 24
        call    _make_textbox8                          ; 0B18 _ E8, 000023B8
        call    _task_alloc                             ; 0B1D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0B22 _ 89. 45, EC
        call    _get_addr_code32                        ; 0B25 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B2A _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0B2D _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0B30 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B3A _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0B3D _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0B47 _ 8B. 45, E8
        neg     eax                                     ; 0B4A _ F7. D8
        add     eax, _console_task                      ; 0B4C _ 05, 000013EA(d)
        mov     edx, eax                                ; 0B51 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0B53 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0B56 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0B59 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0B5C _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B63 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0B66 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0B6D _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0B70 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0B77 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0B7A _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0B84 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0B87 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B91 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0B94 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 0B9E _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0BA1 _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 0BA4 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 0BA7 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0BAA _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0BAD _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0BB0 _ 8B. 40, 64
        add     eax, 4                                  ; 0BB3 _ 83. C0, 04
        mov     edx, eax                                ; 0BB6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0BB8 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0BBB _ 89. 02
        mov     eax, dword [_memman]                    ; 0BBD _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0BC2 _ 89. 04 24
        call    _memman_total                           ; 0BC5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0BCA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0BCC _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0BCF _ 8B. 40, 64
        add     eax, 8                                  ; 0BD2 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0BD5 _ 89. 10
        mov     dword [esp+8H], 5                       ; 0BD7 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0BDF _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0BE7 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0BEA _ 89. 04 24
        call    _task_run                               ; 0BED _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0BF2 _ A1, 00000264(d)
        mov     dword [esp+0CH], 4                      ; 0BF7 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 0BFF _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 0C07 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C0A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C0E _ 89. 04 24
        call    _sheet_slide                            ; 0C11 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C16 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 0C1B _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 0C23 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C26 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C2A _ 89. 04 24
        call    _sheet_updown                           ; 0C2D _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 0C32 _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 0C35 _ A3, 00000270(d)
        mov     eax, dword [ebp-0CH]                    ; 0C3A _ 8B. 45, F4
        leave                                           ; 0C3D _ C9
        ret                                             ; 0C3E _ C3
; _launch_console End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0C3F _ 55
        mov     ebp, esp                                ; 0C40 _ 89. E5
        push    ebx                                     ; 0C42 _ 53
        sub     esp, 68                                 ; 0C43 _ 83. EC, 44
        mov     dword [ebp-0CH], 78848                  ; 0C46 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0C4D _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0C52 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0C5A _ 89. 04 24
        call    _memman_alloc                           ; 0C5D _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0C62 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0C65 _ 8B. 45, E8
        add     eax, 12                                 ; 0C68 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0C6B _ C6. 00, 00
        jmp     ?_035                                   ; 0C6E _ E9, 0000012A

?_028:  mov     dword [ebp-10H], 0                      ; 0C73 _ C7. 45, F0, 00000000
        jmp     ?_030                                   ; 0C7A _ EB, 2A

?_029:  mov     edx, dword [ebp-0CH]                    ; 0C7C _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0C7F _ 8B. 45, F0
        add     eax, edx                                ; 0C82 _ 01. D0
        movzx   eax, byte [eax]                         ; 0C84 _ 0F B6. 00
        test    al, al                                  ; 0C87 _ 84. C0
        jz      ?_031                                   ; 0C89 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0C8B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0C8E _ 8B. 45, F0
        add     eax, edx                                ; 0C91 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0C93 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0C96 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0C99 _ 8B. 45, E8
        add     eax, edx                                ; 0C9C _ 01. D0
        mov     edx, ecx                                ; 0C9E _ 89. CA
        mov     byte [eax], dl                          ; 0CA0 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0CA2 _ 83. 45, F0, 01
?_030:  cmp     dword [ebp-10H], 7                      ; 0CA6 _ 83. 7D, F0, 07
        jle     ?_029                                   ; 0CAA _ 7E, D0
        jmp     ?_032                                   ; 0CAC _ EB, 01

?_031:  nop                                             ; 0CAE _ 90
?_032:  mov     dword [ebp-14H], 0                      ; 0CAF _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0CB6 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0CB9 _ 8B. 45, E8
        add     eax, edx                                ; 0CBC _ 01. D0
        mov     byte [eax], 46                          ; 0CBE _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0CC1 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0CC5 _ C7. 45, EC, 00000000
        jmp     ?_034                                   ; 0CCC _ EB, 22

?_033:  mov     edx, dword [ebp-0CH]                    ; 0CCE _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0CD1 _ 8B. 45, EC
        add     eax, edx                                ; 0CD4 _ 01. D0
        add     eax, 8                                  ; 0CD6 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0CD9 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0CDC _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0CDF _ 8B. 45, E8
        add     eax, edx                                ; 0CE2 _ 01. D0
        mov     edx, ecx                                ; 0CE4 _ 89. CA
        mov     byte [eax], dl                          ; 0CE6 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0CE8 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0CEC _ 83. 45, EC, 01
?_034:  cmp     dword [ebp-14H], 2                      ; 0CF0 _ 83. 7D, EC, 02
        jle     ?_033                                   ; 0CF4 _ 7E, D8
        mov     ecx, dword [?_314]                      ; 0CF6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0CFC _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0D02 _ A1, 00000264(d)
        mov     ebx, dword [ebp-18H]                    ; 0D07 _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0D0A _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0D0E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0D16 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0D1A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0D22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D26 _ 89. 04 24
        call    _showString                             ; 0D29 _ E8, 00001277
        mov     dword [ebp-1CH], 136                    ; 0D2E _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0D35 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0D38 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0D3B _ 89. 04 24
        call    _intToHexStr                            ; 0D3E _ E8, 000017C3
        mov     dword [ebp-20H], eax                    ; 0D43 _ 89. 45, E0
        mov     ecx, dword [?_314]                      ; 0D46 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0D4C _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0D52 _ A1, 00000264(d)
        mov     ebx, dword [ebp-20H]                    ; 0D57 _ 8B. 5D, E0
        mov     dword [esp+14H], ebx                    ; 0D5A _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0D5E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0D66 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-1CH]                    ; 0D6A _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0D6D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0D71 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D75 _ 89. 04 24
        call    _showString                             ; 0D78 _ E8, 00001228
        mov     edx, dword [_g_Console]                 ; 0D7D _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 0D83 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0D88 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D8C _ 89. 04 24
        call    _cons_newline                           ; 0D8F _ E8, 00000BF8
        mov     dword [?_314], eax                      ; 0D94 _ A3, 00000010(d)
        add     dword [ebp-0CH], 32                     ; 0D99 _ 83. 45, F4, 20
?_035:  mov     eax, dword [ebp-0CH]                    ; 0D9D _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0DA0 _ 0F B6. 00
        test    al, al                                  ; 0DA3 _ 84. C0
        jne     ?_028                                   ; 0DA5 _ 0F 85, FFFFFEC8
        mov     edx, dword [ebp-18H]                    ; 0DAB _ 8B. 55, E8
        mov     eax, dword [_memman]                    ; 0DAE _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0DB3 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0DBB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DBF _ 89. 04 24
        call    _memman_free                            ; 0DC2 _ E8, 00000000(rel)
        nop                                             ; 0DC7 _ 90
        add     esp, 68                                 ; 0DC8 _ 83. C4, 44
        pop     ebx                                     ; 0DCB _ 5B
        pop     ebp                                     ; 0DCC _ 5D
        ret                                             ; 0DCD _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0DCE _ 55
        mov     ebp, esp                                ; 0DCF _ 89. E5
        push    esi                                     ; 0DD1 _ 56
        push    ebx                                     ; 0DD2 _ 53
        sub     esp, 96                                 ; 0DD3 _ 83. EC, 60
        mov     eax, dword [_memman]                    ; 0DD6 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0DDB _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0DE3 _ 89. 04 24
        call    _memman_alloc                           ; 0DE6 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0DEB _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0DEE _ 8B. 45, DC
        add     eax, 12                                 ; 0DF1 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0DF4 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0DF7 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0DFE _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0E05 _ C7. 45, F0, 00000005
        jmp     ?_037                                   ; 0E0C _ EB, 2C

?_036:  mov     edx, dword [ebp-10H]                    ; 0E0E _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0E11 _ 8B. 45, 08
        add     eax, edx                                ; 0E14 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E16 _ 0F B6. 00
        test    al, al                                  ; 0E19 _ 84. C0
        jz      ?_038                                   ; 0E1B _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0E1D _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0E20 _ 8B. 45, 08
        add     eax, edx                                ; 0E23 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0E25 _ 8B. 4D, F4
        mov     edx, dword [ebp-24H]                    ; 0E28 _ 8B. 55, DC
        add     edx, ecx                                ; 0E2B _ 01. CA
        movzx   eax, byte [eax]                         ; 0E2D _ 0F B6. 00
        mov     byte [edx], al                          ; 0E30 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0E32 _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0E36 _ 83. 45, F0, 01
?_037:  cmp     dword [ebp-10H], 16                     ; 0E3A _ 83. 7D, F0, 10
        jle     ?_036                                   ; 0E3E _ 7E, CE
        jmp     ?_039                                   ; 0E40 _ EB, 01

?_038:  nop                                             ; 0E42 _ 90
?_039:  mov     edx, dword [ebp-0CH]                    ; 0E43 _ 8B. 55, F4
        mov     eax, dword [ebp-24H]                    ; 0E46 _ 8B. 45, DC
        add     eax, edx                                ; 0E49 _ 01. D0
        mov     byte [eax], 0                           ; 0E4B _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 0E4E _ C7. 45, EC, 00013400
        jmp     ?_054                                   ; 0E55 _ E9, 00000241

?_040:  mov     byte [ebp-2DH], 0                       ; 0E5A _ C6. 45, D3, 00
        mov     dword [ebp-18H], 0                      ; 0E5E _ C7. 45, E8, 00000000
        jmp     ?_042                                   ; 0E65 _ EB, 2A

?_041:  mov     edx, dword [ebp-14H]                    ; 0E67 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0E6A _ 8B. 45, E8
        add     eax, edx                                ; 0E6D _ 01. D0
        movzx   eax, byte [eax]                         ; 0E6F _ 0F B6. 00
        test    al, al                                  ; 0E72 _ 84. C0
        jz      ?_043                                   ; 0E74 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 0E76 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0E79 _ 8B. 45, E8
        add     eax, edx                                ; 0E7C _ 01. D0
        movzx   eax, byte [eax]                         ; 0E7E _ 0F B6. 00
        mov     ecx, eax                                ; 0E81 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0E83 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0E86 _ 8B. 55, E8
        add     eax, edx                                ; 0E89 _ 01. D0
        mov     byte [eax], cl                          ; 0E8B _ 88. 08
        add     dword [ebp-18H], 1                      ; 0E8D _ 83. 45, E8, 01
?_042:  cmp     dword [ebp-18H], 7                      ; 0E91 _ 83. 7D, E8, 07
        jle     ?_041                                   ; 0E95 _ 7E, D0
        jmp     ?_044                                   ; 0E97 _ EB, 01

?_043:  nop                                             ; 0E99 _ 90
?_044:  mov     dword [ebp-1CH], 0                      ; 0E9A _ C7. 45, E4, 00000000
        lea     eax, [ebp-39H]                          ; 0EA1 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0EA4 _ 8B. 55, E8
        add     eax, edx                                ; 0EA7 _ 01. D0
        mov     byte [eax], 46                          ; 0EA9 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 0EAC _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 0EB0 _ C7. 45, E4, 00000000
        jmp     ?_046                                   ; 0EB7 _ EB, 22

?_045:  mov     edx, dword [ebp-14H]                    ; 0EB9 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 0EBC _ 8B. 45, E4
        add     eax, edx                                ; 0EBF _ 01. D0
        add     eax, 8                                  ; 0EC1 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 0EC4 _ 0F B6. 00
        mov     ecx, eax                                ; 0EC7 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0EC9 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0ECC _ 8B. 55, E8
        add     eax, edx                                ; 0ECF _ 01. D0
        mov     byte [eax], cl                          ; 0ED1 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0ED3 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 0ED7 _ 83. 45, E4, 01
?_046:  cmp     dword [ebp-1CH], 2                      ; 0EDB _ 83. 7D, E4, 02
        jle     ?_045                                   ; 0EDF _ 7E, D8
        lea     eax, [ebp-39H]                          ; 0EE1 _ 8D. 45, C7
        mov     dword [esp+4H], eax                     ; 0EE4 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0EE8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0EEB _ 89. 04 24
        call    _strcmp                                 ; 0EEE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 0EF3 _ 83. F8, 01
        jne     ?_053                                   ; 0EF6 _ 0F 85, 0000019B
        mov     dword [ebp-28H], 88064                  ; 0EFC _ C7. 45, D8, 00015800
        mov     eax, dword [ebp-14H]                    ; 0F03 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 0F06 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 0F0A _ 0F B7. C0
        shl     eax, 9                                  ; 0F0D _ C1. E0, 09
        add     dword [ebp-28H], eax                    ; 0F10 _ 01. 45, D8
        mov     eax, dword [ebp-14H]                    ; 0F13 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 0F16 _ 8B. 40, 1C
        mov     dword [ebp-2CH], eax                    ; 0F19 _ 89. 45, D4
        mov     dword [ebp-20H], 0                      ; 0F1C _ C7. 45, E0, 00000000
        mov     dword [?_313], 16                       ; 0F23 _ C7. 05, 0000000C(d), 00000010
        mov     dword [ebp-20H], 0                      ; 0F2D _ C7. 45, E0, 00000000
        jmp     ?_052                                   ; 0F34 _ E9, 0000014F

?_047:  mov     edx, dword [ebp-20H]                    ; 0F39 _ 8B. 55, E0
        mov     eax, dword [ebp-28H]                    ; 0F3C _ 8B. 45, D8
        add     eax, edx                                ; 0F3F _ 01. D0
        movzx   eax, byte [eax]                         ; 0F41 _ 0F B6. 00
        mov     byte [ebp-3BH], al                      ; 0F44 _ 88. 45, C5
        mov     byte [ebp-3AH], 0                       ; 0F47 _ C6. 45, C6, 00
        movzx   eax, byte [ebp-3BH]                     ; 0F4B _ 0F B6. 45, C5
        cmp     al, 9                                   ; 0F4F _ 3C, 09
        jnz     ?_049                                   ; 0F51 _ 75, 7C
?_048:  mov     ebx, dword [?_314]                      ; 0F53 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_313]                      ; 0F59 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 0F5F _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0F65 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_300                  ; 0F6A _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 0F72 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 0F7A _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0F7E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0F82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F86 _ 89. 04 24
        call    _showString                             ; 0F89 _ E8, 00001017
        mov     eax, dword [?_313]                      ; 0F8E _ A1, 0000000C(d)
        add     eax, 8                                  ; 0F93 _ 83. C0, 08
        mov     dword [?_313], eax                      ; 0F96 _ A3, 0000000C(d)
        mov     eax, dword [?_313]                      ; 0F9B _ A1, 0000000C(d)
        cmp     eax, 248                                ; 0FA0 _ 3D, 000000F8
        jnz     ?_048                                   ; 0FA5 _ 75, AC
        mov     dword [?_313], 8                        ; 0FA7 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 0FB1 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 0FB7 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0FBC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FC0 _ 89. 04 24
        call    _cons_newline                           ; 0FC3 _ E8, 000009C4
        mov     dword [?_314], eax                      ; 0FC8 _ A3, 00000010(d)
        jmp     ?_048                                   ; 0FCD _ EB, 84

?_049:  movzx   eax, byte [ebp-3BH]                     ; 0FCF _ 0F B6. 45, C5
        cmp     al, 10                                  ; 0FD3 _ 3C, 0A
        jnz     ?_050                                   ; 0FD5 _ 75, 2B
        mov     dword [?_313], 8                        ; 0FD7 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 0FE1 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 0FE7 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0FEC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FF0 _ 89. 04 24
        call    _cons_newline                           ; 0FF3 _ E8, 00000994
        mov     dword [?_314], eax                      ; 0FF8 _ A3, 00000010(d)
        jmp     ?_051                                   ; 0FFD _ E9, 00000082

?_050:  movzx   eax, byte [ebp-3BH]                     ; 1002 _ 0F B6. 45, C5
        cmp     al, 13                                  ; 1006 _ 3C, 0D
        jz      ?_051                                   ; 1008 _ 74, 7A
        mov     esi, dword [?_314]                      ; 100A _ 8B. 35, 00000010(d)
        mov     ebx, dword [?_313]                      ; 1010 _ 8B. 1D, 0000000C(d)
        mov     ecx, dword [_g_Console]                 ; 1016 _ 8B. 0D, 00000008(d)
        mov     edx, dword [_shtctl]                    ; 101C _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3BH]                          ; 1022 _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 1025 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1029 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1031 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1035 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1039 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 103D _ 89. 14 24
        call    _showString                             ; 1040 _ E8, 00000F60
        mov     eax, dword [?_313]                      ; 1045 _ A1, 0000000C(d)
        add     eax, 8                                  ; 104A _ 83. C0, 08
        mov     dword [?_313], eax                      ; 104D _ A3, 0000000C(d)
        mov     eax, dword [?_313]                      ; 1052 _ A1, 0000000C(d)
        cmp     eax, 248                                ; 1057 _ 3D, 000000F8
        jnz     ?_051                                   ; 105C _ 75, 26
        mov     dword [?_313], 16                       ; 105E _ C7. 05, 0000000C(d), 00000010
        mov     edx, dword [_g_Console]                 ; 1068 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 106E _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 1073 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1077 _ 89. 04 24
        call    _cons_newline                           ; 107A _ E8, 0000090D
        mov     dword [?_314], eax                      ; 107F _ A3, 00000010(d)
?_051:  add     dword [ebp-20H], 1                      ; 1084 _ 83. 45, E0, 01
?_052:  mov     eax, dword [ebp-20H]                    ; 1088 _ 8B. 45, E0
        cmp     eax, dword [ebp-2CH]                    ; 108B _ 3B. 45, D4
        jl      ?_047                                   ; 108E _ 0F 8C, FFFFFEA5
        nop                                             ; 1094 _ 90
        jmp     ?_055                                   ; 1095 _ EB, 12

?_053:  add     dword [ebp-14H], 32                     ; 1097 _ 83. 45, EC, 20
?_054:  mov     eax, dword [ebp-14H]                    ; 109B _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 109E _ 0F B6. 00
        test    al, al                                  ; 10A1 _ 84. C0
        jne     ?_040                                   ; 10A3 _ 0F 85, FFFFFDB1
?_055:  mov     edx, dword [_g_Console]                 ; 10A9 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 10AF _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 10B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _cons_newline                           ; 10BB _ E8, 000008CC
        mov     dword [?_314], eax                      ; 10C0 _ A3, 00000010(d)
        mov     edx, dword [ebp-24H]                    ; 10C5 _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 10C8 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 10CD _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10D9 _ 89. 04 24
        call    _memman_free                            ; 10DC _ E8, 00000000(rel)
        mov     dword [?_313], 16                       ; 10E1 _ C7. 05, 0000000C(d), 00000010
        nop                                             ; 10EB _ 90
        add     esp, 96                                 ; 10EC _ 83. C4, 60
        pop     ebx                                     ; 10EF _ 5B
        pop     esi                                     ; 10F0 _ 5E
        pop     ebp                                     ; 10F1 _ 5D
        ret                                             ; 10F2 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 10F3 _ 55
        mov     ebp, esp                                ; 10F4 _ 89. E5
        push    ebx                                     ; 10F6 _ 53
        sub     esp, 52                                 ; 10F7 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 10FA _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 10FD _ 8D. 90, 000003FF
        test    eax, eax                                ; 1103 _ 85. C0
        cmovs   eax, edx                                ; 1105 _ 0F 48. C2
        sar     eax, 10                                 ; 1108 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 110B _ 89. 04 24
        call    _intToHexStr                            ; 110E _ E8, 000013F3
        mov     dword [ebp-0CH], eax                    ; 1113 _ 89. 45, F4
        mov     ecx, dword [?_314]                      ; 1116 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 111C _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1122 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_301                  ; 1127 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 112F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1137 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 113B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1143 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1147 _ 89. 04 24
        call    _showString                             ; 114A _ E8, 00000E56
        mov     ecx, dword [?_314]                      ; 114F _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1155 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 115B _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 1160 _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 1163 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1167 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 116F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 1173 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 117B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 117F _ 89. 04 24
        call    _showString                             ; 1182 _ E8, 00000E1E
        mov     ecx, dword [?_314]                      ; 1187 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 118D _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1193 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_302                  ; 1198 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 11A0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11A8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 11AC _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 11B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11B8 _ 89. 04 24
        call    _showString                             ; 11BB _ E8, 00000DE5
        mov     edx, dword [_g_Console]                 ; 11C0 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 11C6 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 11CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11CF _ 89. 04 24
        call    _cons_newline                           ; 11D2 _ E8, 000007B5
        mov     dword [?_314], eax                      ; 11D7 _ A3, 00000010(d)
        nop                                             ; 11DC _ 90
        add     esp, 52                                 ; 11DD _ 83. C4, 34
        pop     ebx                                     ; 11E0 _ 5B
        pop     ebp                                     ; 11E1 _ 5D
        ret                                             ; 11E2 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 11E3 _ 55
        mov     ebp, esp                                ; 11E4 _ 89. E5
        sub     esp, 56                                 ; 11E6 _ 83. EC, 38
        mov     dword [ebp-0CH], 8                      ; 11E9 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 11F0 _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 11F7 _ C7. 45, F0, 0000001C
        jmp     ?_059                                   ; 11FE _ EB, 37

?_056:  mov     dword [ebp-0CH], 8                      ; 1200 _ C7. 45, F4, 00000008
        jmp     ?_058                                   ; 1207 _ EB, 21

?_057:  mov     eax, dword [_g_Console]                 ; 1209 _ A1, 00000008(d)
        mov     edx, dword [eax]                        ; 120E _ 8B. 10
        mov     eax, dword [_g_Console]                 ; 1210 _ A1, 00000008(d)
        mov     eax, dword [eax+4H]                     ; 1215 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1218 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 121C _ 8B. 4D, F4
        add     eax, ecx                                ; 121F _ 01. C8
        add     eax, edx                                ; 1221 _ 01. D0
        mov     byte [eax], 0                           ; 1223 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1226 _ 83. 45, F4, 01
?_058:  cmp     dword [ebp-0CH], 247                    ; 122A _ 81. 7D, F4, 000000F7
        jle     ?_057                                   ; 1231 _ 7E, D6
        add     dword [ebp-10H], 1                      ; 1233 _ 83. 45, F0, 01
?_059:  cmp     dword [ebp-10H], 155                    ; 1237 _ 81. 7D, F0, 0000009B
        jle     ?_056                                   ; 123E _ 7E, C0
        mov     edx, dword [_g_Console]                 ; 1240 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1246 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 124B _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1253 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 125B _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1263 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 126B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 126F _ 89. 04 24
        call    _sheet_refresh                          ; 1272 _ E8, 00000000(rel)
        mov     dword [?_314], 28                       ; 1277 _ C7. 05, 00000010(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 1281 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1287 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 128C _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1294 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 129C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 12A4 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 12AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12B0 _ 89. 04 24
        call    _showString                             ; 12B3 _ E8, 00000CED
        nop                                             ; 12B8 _ 90
        leave                                           ; 12B9 _ C9
        ret                                             ; 12BA _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 12BB _ 55
        mov     ebp, esp                                ; 12BC _ 89. E5
        sub     esp, 56                                 ; 12BE _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 12C1 _ C7. 44 24, 04, 00000278(d)
        mov     dword [esp], ?_304                      ; 12C9 _ C7. 04 24, 00000025(d)
        call    _file_loadfile                          ; 12D0 _ E8, 00001E9A
        call    _get_addr_gdt                           ; 12D5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 12DA _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 12DD _ A1, 00000278(d)
        mov     edx, eax                                ; 12E2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 12E4 _ 8B. 45, F4
        add     eax, 88                                 ; 12E7 _ 83. C0, 58
        mov     dword [esp+0CH], 16536                  ; 12EA _ C7. 44 24, 0C, 00004098
        mov     dword [esp+8H], edx                     ; 12F2 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 12F6 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 12FE _ 89. 04 24
        call    _set_segmdesc                           ; 1301 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1306 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 130B _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 1313 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1316 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 131B _ 89. 45, F0
        mov     edx, dword [ebp-10H]                    ; 131E _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1321 _ 8B. 45, F4
        add     eax, 96                                 ; 1324 _ 83. C0, 60
        mov     dword [esp+0CH], 16530                  ; 1327 _ C7. 44 24, 0C, 00004092
        mov     dword [esp+8H], edx                     ; 132F _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 1333 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 133B _ 89. 04 24
        call    _set_segmdesc                           ; 133E _ E8, 00000000(rel)
        mov     dword [esp+0CH], 96                     ; 1343 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 134B _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 1353 _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 135B _ C7. 04 24, 00000000
        call    _start_app                              ; 1362 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1367 _ 8B. 45, F0
        add     eax, 256                                ; 136A _ 05, 00000100
        mov     dword [ebp-14H], eax                    ; 136F _ 89. 45, EC
        mov     edx, dword [_sht_back]                  ; 1372 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 1378 _ A1, 00000264(d)
        mov     ecx, dword [ebp-14H]                    ; 137D _ 8B. 4D, EC
        mov     dword [esp+14H], ecx                    ; 1380 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 1384 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 179                    ; 138C _ C7. 44 24, 0C, 000000B3
        mov     dword [esp+8H], 0                       ; 1394 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 139C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13A0 _ 89. 04 24
        call    _showString                             ; 13A3 _ E8, 00000BFD
        mov     eax, dword [?_322]                      ; 13A8 _ A1, 0000027C(d)
        mov     ecx, eax                                ; 13AD _ 89. C1
        mov     eax, dword [_buffer]                    ; 13AF _ A1, 00000278(d)
        mov     edx, eax                                ; 13B4 _ 89. C2
        mov     eax, dword [_memman]                    ; 13B6 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 13BB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 13BF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13C3 _ 89. 04 24
        call    _memman_free_4k                         ; 13C6 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 13CB _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 13CE _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 13D3 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 13DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13DF _ 89. 04 24
        call    _memman_free_4k                         ; 13E2 _ E8, 00000000(rel)
        nop                                             ; 13E7 _ 90
        leave                                           ; 13E8 _ C9
        ret                                             ; 13E9 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 13EA _ 55
        mov     ebp, esp                                ; 13EB _ 89. E5
        push    ebx                                     ; 13ED _ 53
        sub     esp, 84                                 ; 13EE _ 83. EC, 54
        call    _task_now                               ; 13F1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 13F6 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 13F9 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1400 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1407 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 140E _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 1413 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 141B _ 89. 04 24
        call    _memman_alloc                           ; 141E _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1423 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 1426 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 142B _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1433 _ 89. 04 24
        call    _memman_alloc                           ; 1436 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 143B _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 143E _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 1441 _ A3, 00000008(d)
        mov     dword [?_313], 16                       ; 1446 _ C7. 05, 0000000C(d), 00000010
        mov     dword [?_314], 28                       ; 1450 _ C7. 05, 00000010(d), 0000001C
        mov     dword [?_315], -1                       ; 145A _ C7. 05, 00000014(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 1464 _ 8B. 45, F0
        add     eax, 16                                 ; 1467 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 146A _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 146D _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 1471 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 1474 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 1478 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1480 _ 89. 04 24
        call    _fifo8_init                             ; 1483 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 1488 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 148D _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 1490 _ 8B. 45, F0
        add     eax, 16                                 ; 1493 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1496 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 149E _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 14A2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14A5 _ 89. 04 24
        call    _timer_init                             ; 14A8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 14AD _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 14B5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14B8 _ 89. 04 24
        call    _timer_settime                          ; 14BB _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 14C0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 14C5 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 14CD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 14D5 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 14DD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 14E5 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 14E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14EC _ 89. 04 24
        call    _showString                             ; 14EF _ E8, 00000AB1
        mov     dword [ebp-28H], 0                      ; 14F4 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 14FB _ C7. 45, D4, 00013400
?_060:  call    _io_cli                                 ; 1502 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1507 _ 8B. 45, F0
        add     eax, 16                                 ; 150A _ 83. C0, 10
        mov     dword [esp], eax                        ; 150D _ 89. 04 24
        call    _fifo8_status                           ; 1510 _ E8, 00000000(rel)
        test    eax, eax                                ; 1515 _ 85. C0
        jnz     ?_061                                   ; 1517 _ 75, 07
        call    _io_sti                                 ; 1519 _ E8, 00000000(rel)
        jmp     ?_060                                   ; 151E _ EB, E2
; _console_task End of function

?_061:  ; Local function
        call    _io_sti                                 ; 1520 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1525 _ 8B. 45, F0
        add     eax, 16                                 ; 1528 _ 83. C0, 10
        mov     dword [esp], eax                        ; 152B _ 89. 04 24
        call    _fifo8_get                              ; 152E _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 1533 _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 1536 _ 83. 7D, D0, 01
        jg      ?_064                                   ; 153A _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 153C _ 83. 7D, F4, 00
        js      ?_064                                   ; 1540 _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 1542 _ 83. 7D, D0, 00
        jz      ?_062                                   ; 1546 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1548 _ 8B. 45, F0
        add     eax, 16                                 ; 154B _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 154E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1556 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 155A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 155D _ 89. 04 24
        call    _timer_init                             ; 1560 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1565 _ C7. 45, F4, 00000007
        jmp     ?_063                                   ; 156C _ EB, 24

?_062:  mov     eax, dword [ebp-10H]                    ; 156E _ 8B. 45, F0
        add     eax, 16                                 ; 1571 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1574 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 157C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1580 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1583 _ 89. 04 24
        call    _timer_init                             ; 1586 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 158B _ C7. 45, F4, 00000000
?_063:  mov     dword [esp+4H], 50                      ; 1592 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 159A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 159D _ 89. 04 24
        call    _timer_settime                          ; 15A0 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 15A5 _ E9, 000002CB

?_064:  cmp     dword [ebp-30H], 87                     ; 15AA _ 83. 7D, D0, 57
        jnz     ?_065                                   ; 15AE _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 15B0 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 15B7 _ 8B. 45, F0
        add     eax, 16                                 ; 15BA _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 15BD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 15C5 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 15C9 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15CC _ 89. 04 24
        call    _timer_init                             ; 15CF _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 15D4 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 15DC _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15DF _ 89. 04 24
        call    _timer_settime                          ; 15E2 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 15E7 _ E9, 00000289

?_065:  cmp     dword [ebp-30H], 88                     ; 15EC _ 83. 7D, D0, 58
        jnz     ?_066                                   ; 15F0 _ 75, 59
        mov     ecx, dword [?_314]                      ; 15F2 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 15F8 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 15FE _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1603 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 160B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 160F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1613 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1616 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 161A _ 89. 04 24
        call    _set_cursor                             ; 161D _ E8, FFFFF23C
        mov     dword [ebp-0CH], -1                     ; 1622 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1629 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 162E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1636 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 163E _ 89. 04 24
        call    _task_run                               ; 1641 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 1646 _ E9, 0000022A

?_066:  cmp     dword [ebp-30H], 28                     ; 164B _ 83. 7D, D0, 1C
        jne     ?_072                                   ; 164F _ 0F 85, 00000134
        mov     ecx, dword [?_314]                      ; 1655 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 165B _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1661 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1666 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 166E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1672 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1676 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1679 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 167D _ 89. 04 24
        call    _set_cursor                             ; 1680 _ E8, FFFFF1D9
        mov     eax, dword [?_313]                      ; 1685 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 168A _ 8D. 50, 07
        test    eax, eax                                ; 168D _ 85. C0
        cmovs   eax, edx                                ; 168F _ 0F 48. C2
        sar     eax, 3                                  ; 1692 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1695 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1698 _ 8B. 45, E0
        add     eax, edx                                ; 169B _ 01. D0
        mov     byte [eax], 0                           ; 169D _ C6. 00, 00
        mov     eax, dword [?_314]                      ; 16A0 _ A1, 00000010(d)
        mov     edx, dword [ebp+8H]                     ; 16A5 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16AC _ 89. 04 24
        call    _cons_newline                           ; 16AF _ E8, 000002D8
        mov     dword [?_314], eax                      ; 16B4 _ A3, 00000010(d)
        mov     dword [esp+4H], ?_305                   ; 16B9 _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-20H]                    ; 16C1 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16C4 _ 89. 04 24
        call    _strcmp                                 ; 16C7 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 16CC _ 83. F8, 01
        jnz     ?_067                                   ; 16CF _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 16D1 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 16D4 _ 89. 04 24
        call    _cmd_mem                                ; 16D7 _ E8, FFFFFA17
        jmp     ?_071                                   ; 16DC _ E9, 00000099

?_067:  mov     dword [esp+4H], ?_306                   ; 16E1 _ C7. 44 24, 04, 00000031(d)
        mov     eax, dword [ebp-20H]                    ; 16E9 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16EC _ 89. 04 24
        call    _strcmp                                 ; 16EF _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 16F4 _ 83. F8, 01
        jnz     ?_068                                   ; 16F7 _ 75, 07
        call    _cmd_cls                                ; 16F9 _ E8, FFFFFAE5
        jmp     ?_071                                   ; 16FE _ EB, 7A

?_068:  mov     dword [esp+4H], ?_307                   ; 1700 _ C7. 44 24, 04, 00000035(d)
        mov     eax, dword [ebp-20H]                    ; 1708 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 170B _ 89. 04 24
        call    _strcmp                                 ; 170E _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1713 _ 83. F8, 01
        jnz     ?_069                                   ; 1716 _ 75, 07
        call    _cmd_hlt                                ; 1718 _ E8, FFFFFB9E
        jmp     ?_071                                   ; 171D _ EB, 5B

?_069:  mov     dword [esp+4H], ?_308                   ; 171F _ C7. 44 24, 04, 00000039(d)
        mov     eax, dword [ebp-20H]                    ; 1727 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 172A _ 89. 04 24
        call    _strcmp                                 ; 172D _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1732 _ 83. F8, 01
        jnz     ?_070                                   ; 1735 _ 75, 07
        call    _cmd_dir                                ; 1737 _ E8, FFFFF503
        jmp     ?_071                                   ; 173C _ EB, 3C

?_070:  mov     eax, dword [ebp-20H]                    ; 173E _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1741 _ 0F B6. 00
        cmp     al, 116                                 ; 1744 _ 3C, 74
        jnz     ?_071                                   ; 1746 _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 1748 _ 8B. 45, E0
        add     eax, 1                                  ; 174B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 174E _ 0F B6. 00
        cmp     al, 121                                 ; 1751 _ 3C, 79
        jnz     ?_071                                   ; 1753 _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1755 _ 8B. 45, E0
        add     eax, 2                                  ; 1758 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 175B _ 0F B6. 00
        cmp     al, 112                                 ; 175E _ 3C, 70
        jnz     ?_071                                   ; 1760 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1762 _ 8B. 45, E0
        add     eax, 3                                  ; 1765 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1768 _ 0F B6. 00
        cmp     al, 101                                 ; 176B _ 3C, 65
        jnz     ?_071                                   ; 176D _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 176F _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1772 _ 89. 04 24
        call    _cmd_type                               ; 1775 _ E8, FFFFF654
?_071:  mov     dword [?_313], 16                       ; 177A _ C7. 05, 0000000C(d), 00000010
        jmp     ?_074                                   ; 1784 _ E9, 000000EC

?_072:  cmp     dword [ebp-30H], 14                     ; 1789 _ 83. 7D, D0, 0E
        jnz     ?_073                                   ; 178D _ 75, 79
        mov     eax, dword [?_313]                      ; 178F _ A1, 0000000C(d)
        cmp     eax, 8                                  ; 1794 _ 83. F8, 08
        jle     ?_073                                   ; 1797 _ 7E, 6F
        mov     ecx, dword [?_314]                      ; 1799 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 179F _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17A5 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 17AA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 17B2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17B6 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17BA _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17BD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17C1 _ 89. 04 24
        call    _set_cursor                             ; 17C4 _ E8, FFFFF095
        mov     eax, dword [?_313]                      ; 17C9 _ A1, 0000000C(d)
        sub     eax, 8                                  ; 17CE _ 83. E8, 08
        mov     dword [?_313], eax                      ; 17D1 _ A3, 0000000C(d)
        mov     ecx, dword [?_314]                      ; 17D6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 17DC _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17E2 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 17E7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 17EF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17F3 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17F7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17FA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FE _ 89. 04 24
        call    _set_cursor                             ; 1801 _ E8, FFFFF058
        jmp     ?_074                                   ; 1806 _ EB, 6D

?_073:  mov     eax, dword [ebp-30H]                    ; 1808 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 180B _ 89. 04 24
        call    _transferScanCode                       ; 180E _ E8, FFFFF11E
        mov     byte [ebp-31H], al                      ; 1813 _ 88. 45, CF
        mov     eax, dword [?_313]                      ; 1816 _ A1, 0000000C(d)
        cmp     eax, 239                                ; 181B _ 3D, 000000EF
        jg      ?_074                                   ; 1820 _ 7F, 53
        cmp     byte [ebp-31H], 0                       ; 1822 _ 80. 7D, CF, 00
        jz      ?_074                                   ; 1826 _ 74, 4D
        mov     eax, dword [?_313]                      ; 1828 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 182D _ 8D. 50, 07
        test    eax, eax                                ; 1830 _ 85. C0
        cmovs   eax, edx                                ; 1832 _ 0F 48. C2
        sar     eax, 3                                  ; 1835 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1838 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 183B _ 8B. 45, E0
        add     edx, eax                                ; 183E _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 1840 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 1844 _ 88. 02
        mov     eax, dword [?_313]                      ; 1846 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 184B _ 8D. 50, 07
        test    eax, eax                                ; 184E _ 85. C0
        cmovs   eax, edx                                ; 1850 _ 0F 48. C2
        sar     eax, 3                                  ; 1853 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1856 _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 1859 _ 8B. 45, E0
        add     eax, edx                                ; 185C _ 01. D0
        mov     byte [eax], 0                           ; 185E _ C6. 00, 00
        movsx   eax, byte [ebp-31H]                     ; 1861 _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 1865 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 186D _ 89. 04 24
        call    _cons_putchar                           ; 1870 _ E8, 0000003E
?_074:  cmp     dword [ebp-0CH], 0                      ; 1875 _ 83. 7D, F4, 00
        js      ?_060                                   ; 1879 _ 0F 88, FFFFFC83
        mov     ecx, dword [?_314]                      ; 187F _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 1885 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 188B _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 1890 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 1893 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1897 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 189B _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 189F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18A6 _ 89. 04 24
        call    _set_cursor                             ; 18A9 _ E8, FFFFEFB0
        jmp     ?_060                                   ; 18AE _ E9, FFFFFC4F

_cons_putchar:; Function begin
        push    ebp                                     ; 18B3 _ 55
        mov     ebp, esp                                ; 18B4 _ 89. E5
        push    ebx                                     ; 18B6 _ 53
        sub     esp, 52                                 ; 18B7 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 18BA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 18BD _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 18C0 _ 88. 45, F4
        mov     eax, edx                                ; 18C3 _ 89. D0
        mov     byte [ebp-10H], al                      ; 18C5 _ 88. 45, F0
        mov     ebx, dword [?_314]                      ; 18C8 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_313]                      ; 18CE _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 18D4 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 18DA _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 18DF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 18E7 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 18EB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 18EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18F3 _ 89. 04 24
        call    _set_cursor                             ; 18F6 _ E8, FFFFEF63
        movzx   eax, byte [ebp-0CH]                     ; 18FB _ 0F B6. 45, F4
        mov     byte [?_316], al                        ; 18FF _ A2, 00000018(d)
        mov     byte [?_317], 0                         ; 1904 _ C6. 05, 00000019(d), 00
        mov     ebx, dword [?_314]                      ; 190B _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_313]                      ; 1911 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 1917 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 191D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_316                  ; 1922 _ C7. 44 24, 14, 00000018(d)
        mov     dword [esp+10H], 7                      ; 192A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1932 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1936 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 193A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 193E _ 89. 04 24
        call    _showString                             ; 1941 _ E8, 0000065F
        mov     eax, dword [?_313]                      ; 1946 _ A1, 0000000C(d)
        add     eax, 8                                  ; 194B _ 83. C0, 08
        mov     dword [?_313], eax                      ; 194E _ A3, 0000000C(d)
        nop                                             ; 1953 _ 90
        add     esp, 52                                 ; 1954 _ 83. C4, 34
        pop     ebx                                     ; 1957 _ 5B
        pop     ebp                                     ; 1958 _ 5D
        ret                                             ; 1959 _ C3
; _cons_putchar End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 195A _ 55
        mov     ebp, esp                                ; 195B _ 89. E5
        sub     esp, 24                                 ; 195D _ 83. EC, 18
        jmp     ?_076                                   ; 1960 _ EB, 1D

?_075:  mov     eax, dword [ebp+8H]                     ; 1962 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1965 _ 0F B6. 00
        movsx   eax, al                                 ; 1968 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 196B _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1973 _ 89. 04 24
        call    _cons_putchar                           ; 1976 _ E8, FFFFFF38
        add     dword [ebp+8H], 1                       ; 197B _ 83. 45, 08, 01
?_076:  mov     eax, dword [ebp+8H]                     ; 197F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1982 _ 0F B6. 00
        test    al, al                                  ; 1985 _ 84. C0
        jnz     ?_075                                   ; 1987 _ 75, D9
        nop                                             ; 1989 _ 90
        leave                                           ; 198A _ C9
        ret                                             ; 198B _ C3
; _cons_putstr End of function

_cons_newline:; Function begin
        push    ebp                                     ; 198C _ 55
        mov     ebp, esp                                ; 198D _ 89. E5
        push    ebx                                     ; 198F _ 53
        sub     esp, 52                                 ; 1990 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 1993 _ 81. 7D, 08, 0000008B
        jg      ?_077                                   ; 199A _ 7F, 09
        add     dword [ebp+8H], 16                      ; 199C _ 83. 45, 08, 10
        jmp     ?_086                                   ; 19A0 _ E9, 000000DB

?_077:  mov     dword [ebp-10H], 28                     ; 19A5 _ C7. 45, F0, 0000001C
        jmp     ?_081                                   ; 19AC _ EB, 50

?_078:  mov     dword [ebp-0CH], 8                      ; 19AE _ C7. 45, F4, 00000008
        jmp     ?_080                                   ; 19B5 _ EB, 3A

?_079:  mov     eax, dword [ebp+0CH]                    ; 19B7 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 19BA _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 19BC _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 19BF _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 19C2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 19C5 _ 8B. 40, 04
        imul    eax, ecx                                ; 19C8 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 19CB _ 8B. 4D, F4
        add     eax, ecx                                ; 19CE _ 01. C8
        add     eax, edx                                ; 19D0 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 19D2 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 19D5 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 19D7 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 19DA _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 19DD _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 19E1 _ 8B. 5D, F4
        add     edx, ebx                                ; 19E4 _ 01. DA
        add     edx, ecx                                ; 19E6 _ 01. CA
        movzx   eax, byte [eax]                         ; 19E8 _ 0F B6. 00
        mov     byte [edx], al                          ; 19EB _ 88. 02
        add     dword [ebp-0CH], 1                      ; 19ED _ 83. 45, F4, 01
?_080:  cmp     dword [ebp-0CH], 247                    ; 19F1 _ 81. 7D, F4, 000000F7
        jle     ?_079                                   ; 19F8 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 19FA _ 83. 45, F0, 01
?_081:  cmp     dword [ebp-10H], 139                    ; 19FE _ 81. 7D, F0, 0000008B
        jle     ?_078                                   ; 1A05 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 1A07 _ C7. 45, F0, 0000008C
        jmp     ?_085                                   ; 1A0E _ EB, 33

?_082:  mov     dword [ebp-0CH], 8                      ; 1A10 _ C7. 45, F4, 00000008
        jmp     ?_084                                   ; 1A17 _ EB, 1D

?_083:  mov     eax, dword [ebp+0CH]                    ; 1A19 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1A1C _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1A1E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A21 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1A24 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1A28 _ 8B. 4D, F4
        add     eax, ecx                                ; 1A2B _ 01. C8
        add     eax, edx                                ; 1A2D _ 01. D0
        mov     byte [eax], 0                           ; 1A2F _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1A32 _ 83. 45, F4, 01
?_084:  cmp     dword [ebp-0CH], 247                    ; 1A36 _ 81. 7D, F4, 000000F7
        jle     ?_083                                   ; 1A3D _ 7E, DA
        add     dword [ebp-10H], 1                      ; 1A3F _ 83. 45, F0, 01
?_085:  cmp     dword [ebp-10H], 155                    ; 1A43 _ 81. 7D, F0, 0000009B
        jle     ?_082                                   ; 1A4A _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 1A4C _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1A51 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1A59 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1A61 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1A69 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1A71 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1A74 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A78 _ 89. 04 24
        call    _sheet_refresh                          ; 1A7B _ E8, 00000000(rel)
?_086:  mov     eax, dword [_shtctl]                    ; 1A80 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 1A85 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1A8D _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 1A95 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1A98 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 1A9C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1AA4 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1AA7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AAB _ 89. 04 24
        call    _showString                             ; 1AAE _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 1AB3 _ 8B. 45, 08
        add     esp, 52                                 ; 1AB6 _ 83. C4, 34
        pop     ebx                                     ; 1AB9 _ 5B
        pop     ebp                                     ; 1ABA _ 5D
        ret                                             ; 1ABB _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 1ABC _ 55
        mov     ebp, esp                                ; 1ABD _ 89. E5
        push    ebx                                     ; 1ABF _ 53
        sub     esp, 36                                 ; 1AC0 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 1AC3 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 1AC6 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 1AC9 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1ACC _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 1ACF _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 1AD3 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1AD7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1ADF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1AE7 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 1AEF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AF2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AF9 _ 89. 04 24
        call    _boxfill8                               ; 1AFC _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 1B01 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 1B04 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 1B07 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B0A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B0D _ 8B. 45, 10
        sub     eax, 28                                 ; 1B10 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 1B13 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B17 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B1B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B1F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B27 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B2F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B32 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B36 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B39 _ 89. 04 24
        call    _boxfill8                               ; 1B3C _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 1B41 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 1B44 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 1B47 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B4A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B4D _ 8B. 45, 10
        sub     eax, 27                                 ; 1B50 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 1B53 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B57 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B5B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B5F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 1B67 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1B6F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B72 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B76 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B79 _ 89. 04 24
        call    _boxfill8                               ; 1B7C _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 1B81 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1B84 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1B87 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B8A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B8D _ 8B. 45, 10
        sub     eax, 26                                 ; 1B90 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 1B93 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B97 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B9B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B9F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BA7 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1BAF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BB2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BB6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BB9 _ 89. 04 24
        call    _boxfill8                               ; 1BBC _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 1BC1 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1BC4 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 1BC7 _ 8B. 45, 10
        sub     eax, 24                                 ; 1BCA _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1BCD _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1BD1 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1BD9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1BDD _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 1BE5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1BED _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BF0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BF4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BF7 _ 89. 04 24
        call    _boxfill8                               ; 1BFA _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 1BFF _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C02 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C05 _ 8B. 45, 10
        sub     eax, 24                                 ; 1C08 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C0B _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 1C0F _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 1C17 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1C1B _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 1C23 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1C2B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C35 _ 89. 04 24
        call    _boxfill8                               ; 1C38 _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 1C3D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C40 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C43 _ 8B. 45, 10
        sub     eax, 4                                  ; 1C46 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 1C49 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C4D _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C55 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C59 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 1C61 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1C69 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C6C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C70 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C73 _ 89. 04 24
        call    _boxfill8                               ; 1C76 _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 1C7B _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1C7E _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1C81 _ 8B. 45, 10
        sub     eax, 23                                 ; 1C84 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 1C87 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C8B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C93 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 1C97 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 1C9F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CA7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CAA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CAE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CB1 _ 89. 04 24
        call    _boxfill8                               ; 1CB4 _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 1CB9 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1CBC _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1CBF _ 8B. 45, 10
        sub     eax, 3                                  ; 1CC2 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 1CC5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1CC9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1CD1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1CD5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 1CDD _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1CE5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CE8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CEF _ 89. 04 24
        call    _boxfill8                               ; 1CF2 _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 1CF7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1CFA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1CFD _ 8B. 45, 10
        sub     eax, 24                                 ; 1D00 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1D03 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 1D07 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 1D0F _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 1D13 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 1D1B _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D23 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D26 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D2A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D2D _ 89. 04 24
        call    _boxfill8                               ; 1D30 _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 1D35 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 1D38 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 1D3B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D3E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D41 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1D44 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1D47 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D4A _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D4D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D51 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D55 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D59 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1D5D _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1D65 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D6F _ 89. 04 24
        call    _boxfill8                               ; 1D72 _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 1D77 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1D7A _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1D7D _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1D80 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1D83 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 1D86 _ 8D. 50, E9
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
        call    _boxfill8                               ; 1DB4 _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 1DB9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DBC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1DBF _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1DC2 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1DC5 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1DC8 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1DCB _ 8B. 45, 0C
        sub     eax, 47                                 ; 1DCE _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1DD1 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DD5 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DD9 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DDD _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1DE1 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1DE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DF3 _ 89. 04 24
        call    _boxfill8                               ; 1DF6 _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 1DFB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DFE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E01 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E04 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1E07 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1E0A _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1E0D _ 8B. 45, 0C
        sub     eax, 3                                  ; 1E10 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 1E13 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E17 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E1B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E1F _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1E23 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1E2B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E35 _ 89. 04 24
        call    _boxfill8                               ; 1E38 _ E8, 000002DC
        nop                                             ; 1E3D _ 90
        add     esp, 36                                 ; 1E3E _ 83. C4, 24
        pop     ebx                                     ; 1E41 _ 5B
        pop     ebp                                     ; 1E42 _ 5D
        ret                                             ; 1E43 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 1E44 _ 55
        mov     ebp, esp                                ; 1E45 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1E47 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1E4A _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 1E4D _ A1, 00000134(d)
        add     eax, edx                                ; 1E52 _ 01. D0
        mov     dword [_mx], eax                        ; 1E54 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 1E59 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1E5C _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 1E5F _ A1, 00000138(d)
        add     eax, edx                                ; 1E64 _ 01. D0
        mov     dword [_my], eax                        ; 1E66 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 1E6B _ A1, 00000134(d)
        test    eax, eax                                ; 1E70 _ 85. C0
        jns     ?_087                                   ; 1E72 _ 79, 0A
        mov     dword [_mx], 0                          ; 1E74 _ C7. 05, 00000134(d), 00000000
?_087:  mov     eax, dword [_my]                        ; 1E7E _ A1, 00000138(d)
        test    eax, eax                                ; 1E83 _ 85. C0
        jns     ?_088                                   ; 1E85 _ 79, 0A
        mov     dword [_my], 0                          ; 1E87 _ C7. 05, 00000138(d), 00000000
?_088:  mov     edx, dword [_xsize]                     ; 1E91 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1E97 _ A1, 00000134(d)
        cmp     edx, eax                                ; 1E9C _ 39. C2
        jg      ?_089                                   ; 1E9E _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1EA0 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 1EA5 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1EA8 _ A3, 00000134(d)
?_089:  mov     edx, dword [_ysize]                     ; 1EAD _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 1EB3 _ A1, 00000138(d)
        cmp     edx, eax                                ; 1EB8 _ 39. C2
        jg      ?_090                                   ; 1EBA _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1EBC _ A1, 00000140(d)
        sub     eax, 1                                  ; 1EC1 _ 83. E8, 01
        mov     dword [_my], eax                        ; 1EC4 _ A3, 00000138(d)
?_090:  nop                                             ; 1EC9 _ 90
        pop     ebp                                     ; 1ECA _ 5D
        ret                                             ; 1ECB _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1ECC _ 55
        mov     ebp, esp                                ; 1ECD _ 89. E5
        sub     esp, 40                                 ; 1ECF _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 1ED2 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1ED7 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1EDA _ C6. 45, F3, 00
        call    _io_sti                                 ; 1EDE _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1EE3 _ C7. 04 24, 00000040(d)
        call    _fifo8_get                              ; 1EEA _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1EEF _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 1EF2 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1EF6 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1EFA _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1F01 _ E8, 00000787
        test    eax, eax                                ; 1F06 _ 85. C0
        jz      ?_091                                   ; 1F08 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1F0A _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 1F12 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F1C _ 89. 04 24
        call    _computeMousePosition                   ; 1F1F _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1F24 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1F2A _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1F2F _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1F33 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F37 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F3A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F3E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F41 _ 89. 04 24
        call    _sheet_slide                            ; 1F44 _ E8, 00000000(rel)
        mov     eax, dword [?_321]                      ; 1F49 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1F4E _ 83. E0, 01
        test    eax, eax                                ; 1F51 _ 85. C0
        jz      ?_091                                   ; 1F53 _ 74, 2C
        mov     eax, dword [_my]                        ; 1F55 _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1F5A _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1F5D _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 1F62 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1F65 _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1F6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F6E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F72 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F76 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F79 _ 89. 04 24
        call    _sheet_slide                            ; 1F7C _ E8, 00000000(rel)
?_091:  nop                                             ; 1F81 _ 90
        leave                                           ; 1F82 _ C9
        ret                                             ; 1F83 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1F84 _ 55
        mov     ebp, esp                                ; 1F85 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1F87 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1F8A _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1F90 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1F93 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1F99 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1F9C _ 66: C7. 40, 06, 01E0
        nop                                             ; 1FA2 _ 90
        pop     ebp                                     ; 1FA3 _ 5D
        ret                                             ; 1FA4 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1FA5 _ 55
        mov     ebp, esp                                ; 1FA6 _ 89. E5
        push    ebx                                     ; 1FA8 _ 53
        sub     esp, 68                                 ; 1FA9 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1FAC _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1FAF _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1FB2 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1FB5 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 1FB8 _ C7. 45, F0, 00000000
        jmp     ?_093                                   ; 1FBF _ EB, 4B

?_092:  mov     eax, dword [ebp+1CH]                    ; 1FC1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1FC4 _ 0F B6. 00
        movzx   eax, al                                 ; 1FC7 _ 0F B6. C0
        shl     eax, 4                                  ; 1FCA _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 1FCD _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1FD3 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 1FD7 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1FDA _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1FDD _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1FE0 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1FE2 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1FE6 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1FEA _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1FED _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1FF1 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1FF4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1FF8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1FFC _ 89. 14 24
        call    _showFont8                              ; 1FFF _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 2004 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2008 _ 83. 45, 1C, 01
?_093:  mov     eax, dword [ebp+1CH]                    ; 200C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 200F _ 0F B6. 00
        test    al, al                                  ; 2012 _ 84. C0
        jnz     ?_092                                   ; 2014 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2016 _ 8B. 45, 14
        add     eax, 16                                 ; 2019 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 201C _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2020 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2023 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2027 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 202A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 202E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2031 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2035 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2038 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 203C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 203F _ 89. 04 24
        call    _sheet_refresh                          ; 2042 _ E8, 00000000(rel)
        nop                                             ; 2047 _ 90
        add     esp, 68                                 ; 2048 _ 83. C4, 44
        pop     ebx                                     ; 204B _ 5B
        pop     ebp                                     ; 204C _ 5D
        ret                                             ; 204D _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 204E _ 55
        mov     ebp, esp                                ; 204F _ 89. E5
        sub     esp, 24                                 ; 2051 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2522         ; 2054 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 205C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2064 _ C7. 04 24, 00000000
        call    _set_palette                            ; 206B _ E8, 00000003
        nop                                             ; 2070 _ 90
        leave                                           ; 2071 _ C9
        ret                                             ; 2072 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 2073 _ 55
        mov     ebp, esp                                ; 2074 _ 89. E5
        sub     esp, 40                                 ; 2076 _ 83. EC, 28
        call    _io_load_eflags                         ; 2079 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 207E _ 89. 45, F0
        call    _io_cli                                 ; 2081 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2086 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2089 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 208D _ C7. 04 24, 000003C8
        call    _io_out8                                ; 2094 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2099 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 209C _ 89. 45, F4
        jmp     ?_095                                   ; 209F _ EB, 62

?_094:  mov     eax, dword [ebp+10H]                    ; 20A1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 20A4 _ 0F B6. 00
        shr     al, 2                                   ; 20A7 _ C0. E8, 02
        movzx   eax, al                                 ; 20AA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20AD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20B1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20B8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 20BD _ 8B. 45, 10
        add     eax, 1                                  ; 20C0 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 20C3 _ 0F B6. 00
        shr     al, 2                                   ; 20C6 _ C0. E8, 02
        movzx   eax, al                                 ; 20C9 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20CC _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20D0 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20D7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 20DC _ 8B. 45, 10
        add     eax, 2                                  ; 20DF _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 20E2 _ 0F B6. 00
        shr     al, 2                                   ; 20E5 _ C0. E8, 02
        movzx   eax, al                                 ; 20E8 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20EB _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20EF _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20F6 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 20FB _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 20FF _ 83. 45, F4, 01
?_095:  mov     eax, dword [ebp-0CH]                    ; 2103 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2106 _ 3B. 45, 0C
        jle     ?_094                                   ; 2109 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 210B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 210E _ 89. 04 24
        call    _io_store_eflags                        ; 2111 _ E8, 00000000(rel)
        nop                                             ; 2116 _ 90
        leave                                           ; 2117 _ C9
        ret                                             ; 2118 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 2119 _ 55
        mov     ebp, esp                                ; 211A _ 89. E5
        sub     esp, 20                                 ; 211C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 211F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2122 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2125 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2128 _ 89. 45, F8
        jmp     ?_099                                   ; 212B _ EB, 31

?_096:  mov     eax, dword [ebp+14H]                    ; 212D _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2130 _ 89. 45, FC
        jmp     ?_098                                   ; 2133 _ EB, 1D

?_097:  mov     eax, dword [ebp-8H]                     ; 2135 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2138 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 213C _ 8B. 55, FC
        add     eax, edx                                ; 213F _ 01. D0
        mov     edx, eax                                ; 2141 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        add     edx, eax                                ; 2146 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2148 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 214C _ 88. 02
        add     dword [ebp-4H], 1                       ; 214E _ 83. 45, FC, 01
?_098:  mov     eax, dword [ebp-4H]                     ; 2152 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 2155 _ 3B. 45, 1C
        jle     ?_097                                   ; 2158 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 215A _ 83. 45, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 215E _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 2161 _ 3B. 45, 20
        jle     ?_096                                   ; 2164 _ 7E, C7
        nop                                             ; 2166 _ 90
        leave                                           ; 2167 _ C9
        ret                                             ; 2168 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 2169 _ 55
        mov     ebp, esp                                ; 216A _ 89. E5
        sub     esp, 20                                 ; 216C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 216F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 2172 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2175 _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 217C _ E9, 0000015C

?_100:  mov     edx, dword [ebp-4H]                     ; 2181 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 2184 _ 8B. 45, 1C
        add     eax, edx                                ; 2187 _ 01. D0
        movzx   eax, byte [eax]                         ; 2189 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 218C _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 218F _ 80. 7D, FB, 00
        jns     ?_101                                   ; 2193 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 2195 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2198 _ 8B. 45, FC
        add     eax, edx                                ; 219B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 219D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21A1 _ 8B. 55, 10
        add     eax, edx                                ; 21A4 _ 01. D0
        mov     edx, eax                                ; 21A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 21A8 _ 8B. 45, 08
        add     edx, eax                                ; 21AB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21AD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21B1 _ 88. 02
?_101:  movsx   eax, byte [ebp-5H]                      ; 21B3 _ 0F BE. 45, FB
        and     eax, 40H                                ; 21B7 _ 83. E0, 40
        test    eax, eax                                ; 21BA _ 85. C0
        jz      ?_102                                   ; 21BC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21BE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21C1 _ 8B. 45, FC
        add     eax, edx                                ; 21C4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21C6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21CA _ 8B. 55, 10
        add     eax, edx                                ; 21CD _ 01. D0
        lea     edx, [eax+1H]                           ; 21CF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 21D2 _ 8B. 45, 08
        add     edx, eax                                ; 21D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21DB _ 88. 02
?_102:  movsx   eax, byte [ebp-5H]                      ; 21DD _ 0F BE. 45, FB
        and     eax, 20H                                ; 21E1 _ 83. E0, 20
        test    eax, eax                                ; 21E4 _ 85. C0
        jz      ?_103                                   ; 21E6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21EB _ 8B. 45, FC
        add     eax, edx                                ; 21EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21F0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21F4 _ 8B. 55, 10
        add     eax, edx                                ; 21F7 _ 01. D0
        lea     edx, [eax+2H]                           ; 21F9 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 21FC _ 8B. 45, 08
        add     edx, eax                                ; 21FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2201 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2205 _ 88. 02
?_103:  movsx   eax, byte [ebp-5H]                      ; 2207 _ 0F BE. 45, FB
        and     eax, 10H                                ; 220B _ 83. E0, 10
        test    eax, eax                                ; 220E _ 85. C0
        jz      ?_104                                   ; 2210 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2212 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2215 _ 8B. 45, FC
        add     eax, edx                                ; 2218 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 221A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 221E _ 8B. 55, 10
        add     eax, edx                                ; 2221 _ 01. D0
        lea     edx, [eax+3H]                           ; 2223 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        add     edx, eax                                ; 2229 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 222B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 222F _ 88. 02
?_104:  movsx   eax, byte [ebp-5H]                      ; 2231 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2235 _ 83. E0, 08
        test    eax, eax                                ; 2238 _ 85. C0
        jz      ?_105                                   ; 223A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 223C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 223F _ 8B. 45, FC
        add     eax, edx                                ; 2242 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2244 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2248 _ 8B. 55, 10
        add     eax, edx                                ; 224B _ 01. D0
        lea     edx, [eax+4H]                           ; 224D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2250 _ 8B. 45, 08
        add     edx, eax                                ; 2253 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2255 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2259 _ 88. 02
?_105:  movsx   eax, byte [ebp-5H]                      ; 225B _ 0F BE. 45, FB
        and     eax, 04H                                ; 225F _ 83. E0, 04
        test    eax, eax                                ; 2262 _ 85. C0
        jz      ?_106                                   ; 2264 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2266 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2269 _ 8B. 45, FC
        add     eax, edx                                ; 226C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 226E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2272 _ 8B. 55, 10
        add     eax, edx                                ; 2275 _ 01. D0
        lea     edx, [eax+5H]                           ; 2277 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 227A _ 8B. 45, 08
        add     edx, eax                                ; 227D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 227F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2283 _ 88. 02
?_106:  movsx   eax, byte [ebp-5H]                      ; 2285 _ 0F BE. 45, FB
        and     eax, 02H                                ; 2289 _ 83. E0, 02
        test    eax, eax                                ; 228C _ 85. C0
        jz      ?_107                                   ; 228E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2290 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2293 _ 8B. 45, FC
        add     eax, edx                                ; 2296 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2298 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 229C _ 8B. 55, 10
        add     eax, edx                                ; 229F _ 01. D0
        lea     edx, [eax+6H]                           ; 22A1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 22A4 _ 8B. 45, 08
        add     edx, eax                                ; 22A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22AD _ 88. 02
?_107:  movsx   eax, byte [ebp-5H]                      ; 22AF _ 0F BE. 45, FB
        and     eax, 01H                                ; 22B3 _ 83. E0, 01
        test    eax, eax                                ; 22B6 _ 85. C0
        jz      ?_108                                   ; 22B8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22BA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22BD _ 8B. 45, FC
        add     eax, edx                                ; 22C0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22C2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22C6 _ 8B. 55, 10
        add     eax, edx                                ; 22C9 _ 01. D0
        lea     edx, [eax+7H]                           ; 22CB _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 22CE _ 8B. 45, 08
        add     edx, eax                                ; 22D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22D7 _ 88. 02
?_108:  add     dword [ebp-4H], 1                       ; 22D9 _ 83. 45, FC, 01
?_109:  cmp     dword [ebp-4H], 15                      ; 22DD _ 83. 7D, FC, 0F
        jle     ?_100                                   ; 22E1 _ 0F 8E, FFFFFE9A
        nop                                             ; 22E7 _ 90
        leave                                           ; 22E8 _ C9
        ret                                             ; 22E9 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 22EA _ 55
        mov     ebp, esp                                ; 22EB _ 89. E5
        sub     esp, 20                                 ; 22ED _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 22F0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 22F3 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 22F6 _ C7. 45, F8, 00000000
        jmp     ?_116                                   ; 22FD _ E9, 000000B1

?_110:  mov     dword [ebp-4H], 0                       ; 2302 _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 2309 _ E9, 00000097

?_111:  mov     eax, dword [ebp-8H]                     ; 230E _ 8B. 45, F8
        shl     eax, 4                                  ; 2311 _ C1. E0, 04
        mov     edx, eax                                ; 2314 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2316 _ 8B. 45, FC
        add     eax, edx                                ; 2319 _ 01. D0
        add     eax, _cursor.2569                       ; 231B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2320 _ 0F B6. 00
        cmp     al, 42                                  ; 2323 _ 3C, 2A
        jnz     ?_112                                   ; 2325 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2327 _ 8B. 45, F8
        shl     eax, 4                                  ; 232A _ C1. E0, 04
        mov     edx, eax                                ; 232D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 232F _ 8B. 45, FC
        add     eax, edx                                ; 2332 _ 01. D0
        mov     edx, eax                                ; 2334 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2336 _ 8B. 45, 08
        add     eax, edx                                ; 2339 _ 01. D0
        mov     byte [eax], 0                           ; 233B _ C6. 00, 00
?_112:  mov     eax, dword [ebp-8H]                     ; 233E _ 8B. 45, F8
        shl     eax, 4                                  ; 2341 _ C1. E0, 04
        mov     edx, eax                                ; 2344 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2346 _ 8B. 45, FC
        add     eax, edx                                ; 2349 _ 01. D0
        add     eax, _cursor.2569                       ; 234B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2350 _ 0F B6. 00
        cmp     al, 79                                  ; 2353 _ 3C, 4F
        jnz     ?_113                                   ; 2355 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2357 _ 8B. 45, F8
        shl     eax, 4                                  ; 235A _ C1. E0, 04
        mov     edx, eax                                ; 235D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 235F _ 8B. 45, FC
        add     eax, edx                                ; 2362 _ 01. D0
        mov     edx, eax                                ; 2364 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2366 _ 8B. 45, 08
        add     eax, edx                                ; 2369 _ 01. D0
        mov     byte [eax], 7                           ; 236B _ C6. 00, 07
?_113:  mov     eax, dword [ebp-8H]                     ; 236E _ 8B. 45, F8
        shl     eax, 4                                  ; 2371 _ C1. E0, 04
        mov     edx, eax                                ; 2374 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2376 _ 8B. 45, FC
        add     eax, edx                                ; 2379 _ 01. D0
        add     eax, _cursor.2569                       ; 237B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2380 _ 0F B6. 00
        cmp     al, 46                                  ; 2383 _ 3C, 2E
        jnz     ?_114                                   ; 2385 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 2387 _ 8B. 45, F8
        shl     eax, 4                                  ; 238A _ C1. E0, 04
        mov     edx, eax                                ; 238D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 238F _ 8B. 45, FC
        add     eax, edx                                ; 2392 _ 01. D0
        mov     edx, eax                                ; 2394 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2396 _ 8B. 45, 08
        add     edx, eax                                ; 2399 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 239B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 239F _ 88. 02
?_114:  add     dword [ebp-4H], 1                       ; 23A1 _ 83. 45, FC, 01
?_115:  cmp     dword [ebp-4H], 15                      ; 23A5 _ 83. 7D, FC, 0F
        jle     ?_111                                   ; 23A9 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 23AF _ 83. 45, F8, 01
?_116:  cmp     dword [ebp-8H], 15                      ; 23B3 _ 83. 7D, F8, 0F
        jle     ?_110                                   ; 23B7 _ 0F 8E, FFFFFF45
        nop                                             ; 23BD _ 90
        leave                                           ; 23BE _ C9
        ret                                             ; 23BF _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 23C0 _ 55
        mov     ebp, esp                                ; 23C1 _ 89. E5
        push    ebx                                     ; 23C3 _ 53
        sub     esp, 16                                 ; 23C4 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 23C7 _ C7. 45, F4, 00000000
        jmp     ?_120                                   ; 23CE _ EB, 4E

?_117:  mov     dword [ebp-8H], 0                       ; 23D0 _ C7. 45, F8, 00000000
        jmp     ?_119                                   ; 23D7 _ EB, 39

?_118:  mov     eax, dword [ebp-0CH]                    ; 23D9 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 23DC _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 23E0 _ 8B. 55, F8
        add     eax, edx                                ; 23E3 _ 01. D0
        mov     edx, eax                                ; 23E5 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 23E7 _ 8B. 45, 20
        add     eax, edx                                ; 23EA _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 23EC _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 23EF _ 8B. 55, F4
        add     edx, ecx                                ; 23F2 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 23F4 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 23F8 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 23FB _ 8B. 4D, F8
        add     ecx, ebx                                ; 23FE _ 01. D9
        add     edx, ecx                                ; 2400 _ 01. CA
        mov     ecx, edx                                ; 2402 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2404 _ 8B. 55, 08
        add     edx, ecx                                ; 2407 _ 01. CA
        movzx   eax, byte [eax]                         ; 2409 _ 0F B6. 00
        mov     byte [edx], al                          ; 240C _ 88. 02
        add     dword [ebp-8H], 1                       ; 240E _ 83. 45, F8, 01
?_119:  mov     eax, dword [ebp-8H]                     ; 2412 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 2415 _ 3B. 45, 10
        jl      ?_118                                   ; 2418 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 241A _ 83. 45, F4, 01
?_120:  mov     eax, dword [ebp-0CH]                    ; 241E _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2421 _ 3B. 45, 14
        jl      ?_117                                   ; 2424 _ 7C, AA
        nop                                             ; 2426 _ 90
        add     esp, 16                                 ; 2427 _ 83. C4, 10
        pop     ebx                                     ; 242A _ 5B
        pop     ebp                                     ; 242B _ 5D
        ret                                             ; 242C _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 242D _ 55
        mov     ebp, esp                                ; 242E _ 89. E5
        sub     esp, 40                                 ; 2430 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2433 _ A1, 0000001C(d)
        mov     dword [ebp-0CH], eax                    ; 2438 _ 89. 45, F4
        movzx   eax, word [?_318]                       ; 243B _ 0F B7. 05, 00000020(d)
        cwde                                            ; 2442 _ 98
        mov     dword [ebp-10H], eax                    ; 2443 _ 89. 45, F0
        movzx   eax, word [?_319]                       ; 2446 _ 0F B7. 05, 00000022(d)
        cwde                                            ; 244D _ 98
        mov     dword [ebp-14H], eax                    ; 244E _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2451 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2459 _ C7. 04 24, 00000020
        call    _io_out8                                ; 2460 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 2465 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 2469 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2470 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 2475 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2478 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 247C _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 2480 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 2487 _ E8, 00000000(rel)
        nop                                             ; 248C _ 90
        leave                                           ; 248D _ C9
        ret                                             ; 248E _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 248F _ 55
        mov     ebp, esp                                ; 2490 _ 89. E5
        sub     esp, 4                                  ; 2492 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2495 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2498 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 249B _ 80. 7D, FC, 09
        jle     ?_121                                   ; 249F _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 24A1 _ 0F B6. 45, FC
        add     eax, 55                                 ; 24A5 _ 83. C0, 37
        jmp     ?_122                                   ; 24A8 _ EB, 07

?_121:  movzx   eax, byte [ebp-4H]                      ; 24AA _ 0F B6. 45, FC
        add     eax, 48                                 ; 24AE _ 83. C0, 30
?_122:  leave                                           ; 24B1 _ C9
        ret                                             ; 24B2 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 24B3 _ 55
        mov     ebp, esp                                ; 24B4 _ 89. E5
        sub     esp, 24                                 ; 24B6 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 24B9 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 24BC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 24BF _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 24C6 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 24CA _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 24CD _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 24D0 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 24D4 _ 89. 04 24
        call    _charToHexVal                           ; 24D7 _ E8, FFFFFFB3
        mov     byte [?_296], al                        ; 24DC _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 24E1 _ 0F B6. 45, EC
        shr     al, 4                                   ; 24E5 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 24E8 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 24EB _ 0F B6. 45, EC
        movsx   eax, al                                 ; 24EF _ 0F BE. C0
        mov     dword [esp], eax                        ; 24F2 _ 89. 04 24
        call    _charToHexVal                           ; 24F5 _ E8, FFFFFF95
        mov     byte [?_295], al                        ; 24FA _ A2, 00000102(d)
        mov     eax, _keyval                            ; 24FF _ B8, 00000100(d)
        leave                                           ; 2504 _ C9
        ret                                             ; 2505 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2506 _ 55
        mov     ebp, esp                                ; 2507 _ 89. E5
        sub     esp, 16                                 ; 2509 _ 83. EC, 10
        mov     byte [_str.2617], 48                    ; 250C _ C6. 05, 00000388(d), 30
        mov     byte [?_323], 88                        ; 2513 _ C6. 05, 00000389(d), 58
        mov     byte [?_324], 0                         ; 251A _ C6. 05, 00000392(d), 00
        mov     dword [ebp-4H], 2                       ; 2521 _ C7. 45, FC, 00000002
        jmp     ?_124                                   ; 2528 _ EB, 0F

?_123:  mov     eax, dword [ebp-4H]                     ; 252A _ 8B. 45, FC
        add     eax, _str.2617                          ; 252D _ 05, 00000388(d)
        mov     byte [eax], 48                          ; 2532 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2535 _ 83. 45, FC, 01
?_124:  cmp     dword [ebp-4H], 9                       ; 2539 _ 83. 7D, FC, 09
        jle     ?_123                                   ; 253D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 253F _ C7. 45, F8, 00000009
        jmp     ?_128                                   ; 2546 _ EB, 42

?_125:  mov     eax, dword [ebp+8H]                     ; 2548 _ 8B. 45, 08
        and     eax, 0FH                                ; 254B _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 254E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2551 _ 8B. 45, 08
        shr     eax, 4                                  ; 2554 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2557 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 255A _ 83. 7D, F4, 09
        jle     ?_126                                   ; 255E _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 2560 _ 8B. 45, F4
        add     eax, 55                                 ; 2563 _ 83. C0, 37
        mov     edx, eax                                ; 2566 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2568 _ 8B. 45, F8
        add     eax, _str.2617                          ; 256B _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 2570 _ 88. 10
        jmp     ?_127                                   ; 2572 _ EB, 12

?_126:  mov     eax, dword [ebp-0CH]                    ; 2574 _ 8B. 45, F4
        add     eax, 48                                 ; 2577 _ 83. C0, 30
        mov     edx, eax                                ; 257A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 257C _ 8B. 45, F8
        add     eax, _str.2617                          ; 257F _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 2584 _ 88. 10
?_127:  sub     dword [ebp-8H], 1                       ; 2586 _ 83. 6D, F8, 01
?_128:  cmp     dword [ebp-8H], 1                       ; 258A _ 83. 7D, F8, 01
        jle     ?_129                                   ; 258E _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2590 _ 83. 7D, 08, 00
        jnz     ?_125                                   ; 2594 _ 75, B2
?_129:  mov     eax, _str.2617                          ; 2596 _ B8, 00000388(d)
        leave                                           ; 259B _ C9
        ret                                             ; 259C _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 259D _ 55
        mov     ebp, esp                                ; 259E _ 89. E5
        sub     esp, 24                                 ; 25A0 _ 83. EC, 18
?_130:  mov     dword [esp], 100                        ; 25A3 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 25AA _ E8, 00000000(rel)
        and     eax, 02H                                ; 25AF _ 83. E0, 02
        test    eax, eax                                ; 25B2 _ 85. C0
        jz      ?_131                                   ; 25B4 _ 74, 02
        jmp     ?_130                                   ; 25B6 _ EB, EB
; _wait_KBC_sendready End of function

?_131:  ; Local function
        nop                                             ; 25B8 _ 90
        nop                                             ; 25B9 _ 90
        leave                                           ; 25BA _ C9
        ret                                             ; 25BB _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 25BC _ 55
        mov     ebp, esp                                ; 25BD _ 89. E5
        sub     esp, 24                                 ; 25BF _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 25C2 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 25C7 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 25CF _ C7. 04 24, 00000064
        call    _io_out8                                ; 25D6 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 25DB _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 25E0 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 25E8 _ C7. 04 24, 00000060
        call    _io_out8                                ; 25EF _ E8, 00000000(rel)
        nop                                             ; 25F4 _ 90
        leave                                           ; 25F5 _ C9
        ret                                             ; 25F6 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 25F7 _ 55
        mov     ebp, esp                                ; 25F8 _ 89. E5
        sub     esp, 24                                 ; 25FA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 25FD _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 2602 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 260A _ C7. 04 24, 00000064
        call    _io_out8                                ; 2611 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2616 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 261B _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2623 _ C7. 04 24, 00000060
        call    _io_out8                                ; 262A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 262F _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2632 _ C6. 40, 03, 00
        nop                                             ; 2636 _ 90
        leave                                           ; 2637 _ C9
        ret                                             ; 2638 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 2639 _ 55
        mov     ebp, esp                                ; 263A _ 89. E5
        sub     esp, 40                                 ; 263C _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 263F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2647 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 264E _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 2653 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 265B _ C7. 04 24, 00000020
        call    _io_out8                                ; 2662 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 2667 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 266E _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 2673 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2676 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 267A _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 267E _ C7. 04 24, 00000040(d)
        call    _fifo8_put                              ; 2685 _ E8, 00000000(rel)
        nop                                             ; 268A _ 90
        leave                                           ; 268B _ C9
        ret                                             ; 268C _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 268D _ 55
        mov     ebp, esp                                ; 268E _ 89. E5
        sub     esp, 4                                  ; 2690 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2693 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2696 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2699 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 269C _ 0F B6. 40, 03
        test    al, al                                  ; 26A0 _ 84. C0
        jnz     ?_133                                   ; 26A2 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 26A4 _ 80. 7D, FC, FA
        jnz     ?_132                                   ; 26A8 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 26AA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 26AD _ C6. 40, 03, 01
?_132:  mov     eax, 0                                  ; 26B1 _ B8, 00000000
        jmp     ?_140                                   ; 26B6 _ E9, 0000010F

?_133:  mov     eax, dword [ebp+8H]                     ; 26BB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26BE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 26C2 _ 3C, 01
        jnz     ?_135                                   ; 26C4 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 26C6 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 26CA _ 25, 000000C8
        cmp     eax, 8                                  ; 26CF _ 83. F8, 08
        jnz     ?_134                                   ; 26D2 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 26D4 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 26D7 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 26DB _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 26DD _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 26E0 _ C6. 40, 03, 02
?_134:  mov     eax, 0                                  ; 26E4 _ B8, 00000000
        jmp     ?_140                                   ; 26E9 _ E9, 000000DC

?_135:  mov     eax, dword [ebp+8H]                     ; 26EE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26F1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 26F5 _ 3C, 02
        jnz     ?_136                                   ; 26F7 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 26F9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 26FC _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2700 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 2703 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2706 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 270A _ B8, 00000000
        jmp     ?_140                                   ; 270F _ E9, 000000B6

?_136:  mov     eax, dword [ebp+8H]                     ; 2714 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2717 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 271B _ 3C, 03
        jne     ?_139                                   ; 271D _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 2723 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2726 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 272A _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 272D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2730 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2734 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2737 _ 0F B6. 00
        movzx   eax, al                                 ; 273A _ 0F B6. C0
        and     eax, 07H                                ; 273D _ 83. E0, 07
        mov     edx, eax                                ; 2740 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2742 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2745 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2748 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 274B _ 0F B6. 40, 01
        movzx   eax, al                                 ; 274F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2752 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2755 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2758 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 275B _ 0F B6. 40, 02
        movzx   eax, al                                 ; 275F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2762 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 2765 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 2768 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 276B _ 0F B6. 00
        movzx   eax, al                                 ; 276E _ 0F B6. C0
        and     eax, 10H                                ; 2771 _ 83. E0, 10
        test    eax, eax                                ; 2774 _ 85. C0
        jz      ?_137                                   ; 2776 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2778 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 277B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 277E _ 0D, FFFFFF00
        mov     edx, eax                                ; 2783 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2785 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2788 _ 89. 50, 04
?_137:  mov     eax, dword [ebp+8H]                     ; 278B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 278E _ 0F B6. 00
        movzx   eax, al                                 ; 2791 _ 0F B6. C0
        and     eax, 20H                                ; 2794 _ 83. E0, 20
        test    eax, eax                                ; 2797 _ 85. C0
        jz      ?_138                                   ; 2799 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 279B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 279E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 27A1 _ 0D, FFFFFF00
        mov     edx, eax                                ; 27A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27A8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27AB _ 89. 50, 08
?_138:  mov     eax, dword [ebp+8H]                     ; 27AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27B1 _ 8B. 40, 08
        neg     eax                                     ; 27B4 _ F7. D8
        mov     edx, eax                                ; 27B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27B8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27BB _ 89. 50, 08
        mov     eax, 1                                  ; 27BE _ B8, 00000001
        jmp     ?_140                                   ; 27C3 _ EB, 05

?_139:  mov     eax, 4294967295                         ; 27C5 _ B8, FFFFFFFF
?_140:  leave                                           ; 27CA _ C9
        ret                                             ; 27CB _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 27CC _ 55
        mov     ebp, esp                                ; 27CD _ 89. E5
        sub     esp, 72                                 ; 27CF _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 27D2 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 27D9 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 27E0 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 27E7 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 27EE _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 27F4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 27F7 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 27F9 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 27FD _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 2800 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2804 _ 89. 04 24
        call    _init_screen8                           ; 2807 _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 280C _ 8B. 45, 20
        movsx   eax, al                                 ; 280F _ 0F BE. C0
        mov     dword [esp+14H], ?_309                  ; 2812 _ C7. 44 24, 14, 0000003D(d)
        mov     dword [esp+10H], eax                    ; 281A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 281E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2821 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2825 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2828 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 282C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 282F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2833 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2836 _ 89. 04 24
        call    _showString                             ; 2839 _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 283E _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2841 _ 89. 04 24
        call    _intToHexStr                            ; 2844 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 2849 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 284C _ 8B. 45, 20
        movsx   eax, al                                 ; 284F _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 2852 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 2855 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2859 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 285D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2860 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2864 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2867 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 286B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 286E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2872 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2875 _ 89. 04 24
        call    _showString                             ; 2878 _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 287D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2881 _ 8B. 45, 20
        movsx   eax, al                                 ; 2884 _ 0F BE. C0
        mov     dword [esp+14H], ?_310                  ; 2887 _ C7. 44 24, 14, 00000047(d)
        mov     dword [esp+10H], eax                    ; 288F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2893 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2896 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 289A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 289D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28A1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28A4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28A8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28AB _ 89. 04 24
        call    _showString                             ; 28AE _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 28B3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 28B6 _ 8B. 00
        mov     dword [esp], eax                        ; 28B8 _ 89. 04 24
        call    _intToHexStr                            ; 28BB _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 28C0 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 28C3 _ 8B. 45, 20
        movsx   eax, al                                 ; 28C6 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 28C9 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 28CC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 28D0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28D4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28D7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 28DB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 28DE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28E2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28EC _ 89. 04 24
        call    _showString                             ; 28EF _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 28F4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 28F8 _ 8B. 45, 20
        movsx   eax, al                                 ; 28FB _ 0F BE. C0
        mov     dword [esp+14H], ?_311                  ; 28FE _ C7. 44 24, 14, 00000053(d)
        mov     dword [esp+10H], eax                    ; 2906 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 290A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 290D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2911 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2914 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2918 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 291B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 291F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2922 _ 89. 04 24
        call    _showString                             ; 2925 _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 292A _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 292D _ 8B. 40, 04
        mov     dword [esp], eax                        ; 2930 _ 89. 04 24
        call    _intToHexStr                            ; 2933 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 2938 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 293B _ 8B. 45, 20
        movsx   eax, al                                 ; 293E _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 2941 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 2944 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2948 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 294C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 294F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2953 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2956 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 295A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 295D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2961 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2964 _ 89. 04 24
        call    _showString                             ; 2967 _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 296C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2970 _ 8B. 45, 20
        movsx   eax, al                                 ; 2973 _ 0F BE. C0
        mov     dword [esp+14H], ?_312                  ; 2976 _ C7. 44 24, 14, 0000005F(d)
        mov     dword [esp+10H], eax                    ; 297E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2982 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2985 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2989 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 298C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2990 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2993 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2997 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 299A _ 89. 04 24
        call    _showString                             ; 299D _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 29A2 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 29A5 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 29A8 _ 89. 04 24
        call    _intToHexStr                            ; 29AB _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 29B0 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 29B3 _ 8B. 45, 20
        movsx   eax, al                                 ; 29B6 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 29B9 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 29BC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 29C0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 29C4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 29C7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 29CB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 29CE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 29D2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29D5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29D9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29DC _ 89. 04 24
        call    _showString                             ; 29DF _ E8, FFFFF5C1
        nop                                             ; 29E4 _ 90
        leave                                           ; 29E5 _ C9
        ret                                             ; 29E6 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 29E7 _ 55
        mov     ebp, esp                                ; 29E8 _ 89. E5
        sub     esp, 56                                 ; 29EA _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 29ED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29F0 _ 89. 04 24
        call    _sheet_alloc                            ; 29F3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 29F8 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 29FB _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 2A00 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 2A08 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2A0B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2A10 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 2A13 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 2A1B _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 2A23 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 2A2B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2A2E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2A32 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A35 _ 89. 04 24
        call    _sheet_setbuf                           ; 2A38 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2A3D _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 2A45 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2A48 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2A4C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A56 _ 89. 04 24
        call    _make_window8                           ; 2A59 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 2A5E _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 2A66 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 2A6E _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 2A76 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2A7E _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2A86 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A89 _ 89. 04 24
        call    _make_textbox8                          ; 2A8C _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 2A91 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 2A99 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 2AA1 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2AA4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AA8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AAB _ 89. 04 24
        call    _sheet_slide                            ; 2AAE _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2AB3 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2ABB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2ABE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AC2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AC5 _ 89. 04 24
        call    _sheet_updown                           ; 2AC8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2ACD _ 8B. 45, F4
        leave                                           ; 2AD0 _ C9
        ret                                             ; 2AD1 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 2AD2 _ 55
        mov     ebp, esp                                ; 2AD3 _ 89. E5
        push    ebx                                     ; 2AD5 _ 53
        sub     esp, 68                                 ; 2AD6 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2AD9 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2ADC _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2ADF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AE2 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2AE5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2AE8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2AEB _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 2AEE _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2AF1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2AF4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2AF7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AFA _ 8B. 00
        mov     dword [esp+18H], 0                      ; 2AFC _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 2B04 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 2B08 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2B10 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2B18 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2B20 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B27 _ 89. 04 24
        call    _boxfill8                               ; 2B2A _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 2B2F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2B32 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B35 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B38 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 2B3A _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 2B42 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 2B46 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B4E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2B56 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2B5E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B65 _ 89. 04 24
        call    _boxfill8                               ; 2B68 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 2B6D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B70 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B73 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B76 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2B78 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 2B7C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 2B84 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2B8C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2B94 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2B9C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B9F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BA3 _ 89. 04 24
        call    _boxfill8                               ; 2BA6 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 2BAB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2BAE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BB1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB4 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2BB6 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 2BBA _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 2BC2 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2BCA _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2BD2 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2BDA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BDD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BE1 _ 89. 04 24
        call    _boxfill8                               ; 2BE4 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 2BE9 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2BEC _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2BEF _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2BF2 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2BF5 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2BF8 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2BFB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BFE _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C00 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C04 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 2C08 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 2C10 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 2C14 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2C1C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C1F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C23 _ 89. 04 24
        call    _boxfill8                               ; 2C26 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 2C2B _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2C2E _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2C31 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2C34 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2C37 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C3A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C40 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C42 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C46 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 2C4A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 2C52 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 2C56 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2C5E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C65 _ 89. 04 24
        call    _boxfill8                               ; 2C68 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 2C6D _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 2C70 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 2C73 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 2C76 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2C79 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C7C _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 2C7E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2C82 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 2C86 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 2C8E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 2C96 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2C9E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CA1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CA5 _ 89. 04 24
        call    _boxfill8                               ; 2CA8 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 2CAD _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 2CB0 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2CB3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CB6 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 2CB8 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2CC0 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2CC4 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2CCC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2CD4 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 2CDC _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CDF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CE3 _ 89. 04 24
        call    _boxfill8                               ; 2CE6 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 2CEB _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2CEE _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2CF1 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2CF4 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2CF7 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2CFA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2CFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D00 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D02 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D06 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D0A _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2D0E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 2D16 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2D1E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D25 _ 89. 04 24
        call    _boxfill8                               ; 2D28 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 2D2D _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2D30 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2D33 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2D36 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2D39 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2D3C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2D3F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D42 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D44 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D48 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D4C _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2D50 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2D58 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2D60 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D63 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D67 _ 89. 04 24
        call    _boxfill8                               ; 2D6A _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 2D6F _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 2D73 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2D77 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2D7A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2D7E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D81 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D85 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D88 _ 89. 04 24
        call    _make_wtitle8                           ; 2D8B _ E8, 00000007
        nop                                             ; 2D90 _ 90
        add     esp, 68                                 ; 2D91 _ 83. C4, 44
        pop     ebx                                     ; 2D94 _ 5B
        pop     ebp                                     ; 2D95 _ 5D
        ret                                             ; 2D96 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 2D97 _ 55
        mov     ebp, esp                                ; 2D98 _ 89. E5
        push    ebx                                     ; 2D9A _ 53
        sub     esp, 68                                 ; 2D9B _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2D9E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2DA1 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 2DA4 _ 80. 7D, E4, 00
        jz      ?_141                                   ; 2DA8 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 2DAA _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 2DAE _ C6. 45, ED, 0C
        jmp     ?_142                                   ; 2DB2 _ EB, 08

?_141:  mov     byte [ebp-12H], 8                       ; 2DB4 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 2DB8 _ C6. 45, ED, 0F
?_142:  mov     eax, dword [ebp+0CH]                    ; 2DBC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DBF _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 2DC2 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 2DC5 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 2DC9 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2DCC _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2DCF _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DD2 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2DD5 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 2DD7 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 2DDF _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 2DE3 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2DEB _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 2DF3 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2DF7 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2DFB _ 89. 14 24
        call    _boxfill8                               ; 2DFE _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 2E03 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 2E07 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2E0A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E0E _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 2E12 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 2E1A _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2E22 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E25 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E29 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E2C _ 89. 04 24
        call    _showString                             ; 2E2F _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 2E34 _ C7. 45, F0, 00000000
        jmp     ?_150                                   ; 2E3B _ E9, 00000084

?_143:  mov     dword [ebp-0CH], 0                      ; 2E40 _ C7. 45, F4, 00000000
        jmp     ?_149                                   ; 2E47 _ EB, 71

?_144:  mov     eax, dword [ebp-10H]                    ; 2E49 _ 8B. 45, F0
        shl     eax, 4                                  ; 2E4C _ C1. E0, 04
        mov     edx, eax                                ; 2E4F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E51 _ 8B. 45, F4
        add     eax, edx                                ; 2E54 _ 01. D0
        add     eax, _closebtn.2688                     ; 2E56 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2E5B _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 2E5E _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2E61 _ 80. 7D, EF, 40
        jnz     ?_145                                   ; 2E65 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2E67 _ C6. 45, EF, 00
        jmp     ?_148                                   ; 2E6B _ EB, 1C

?_145:  cmp     byte [ebp-11H], 36                      ; 2E6D _ 80. 7D, EF, 24
        jnz     ?_146                                   ; 2E71 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2E73 _ C6. 45, EF, 0F
        jmp     ?_148                                   ; 2E77 _ EB, 10

?_146:  cmp     byte [ebp-11H], 81                      ; 2E79 _ 80. 7D, EF, 51
        jnz     ?_147                                   ; 2E7D _ 75, 06
        mov     byte [ebp-11H], 8                       ; 2E7F _ C6. 45, EF, 08
        jmp     ?_148                                   ; 2E83 _ EB, 04

?_147:  mov     byte [ebp-11H], 7                       ; 2E85 _ C6. 45, EF, 07
?_148:  mov     eax, dword [ebp+0CH]                    ; 2E89 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 2E8C _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 2E8E _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2E91 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2E94 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E97 _ 8B. 40, 04
        imul    eax, edx                                ; 2E9A _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 2E9D _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2EA0 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2EA3 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2EA6 _ 8B. 55, F4
        add     edx, ebx                                ; 2EA9 _ 01. DA
        add     eax, edx                                ; 2EAB _ 01. D0
        lea     edx, [ecx+eax]                          ; 2EAD _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2EB0 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2EB4 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2EB6 _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 15                     ; 2EBA _ 83. 7D, F4, 0F
        jle     ?_144                                   ; 2EBE _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2EC0 _ 83. 45, F0, 01
?_150:  cmp     dword [ebp-10H], 13                     ; 2EC4 _ 83. 7D, F0, 0D
        jle     ?_143                                   ; 2EC8 _ 0F 8E, FFFFFF72
        nop                                             ; 2ECE _ 90
        add     esp, 68                                 ; 2ECF _ 83. C4, 44
        pop     ebx                                     ; 2ED2 _ 5B
        pop     ebp                                     ; 2ED3 _ 5D
        ret                                             ; 2ED4 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 2ED5 _ 55
        mov     ebp, esp                                ; 2ED6 _ 89. E5
        push    edi                                     ; 2ED8 _ 57
        push    esi                                     ; 2ED9 _ 56
        push    ebx                                     ; 2EDA _ 53
        sub     esp, 44                                 ; 2EDB _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 2EDE _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2EE1 _ 8B. 45, 14
        add     eax, edx                                ; 2EE4 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2EE6 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2EE9 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 2EEC _ 8B. 45, 18
        add     eax, edx                                ; 2EEF _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2EF1 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2EF4 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2EF7 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 2EFA _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2EFD _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2F00 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F03 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F06 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2F09 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2F0C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F0F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F12 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F15 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F17 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F1B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F1F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F23 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2F27 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F2F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F33 _ 89. 04 24
        call    _boxfill8                               ; 2F36 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2F3B _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2F3E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2F41 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2F44 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2F47 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F4A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F4D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F50 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F53 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F56 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F59 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F5C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F5E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F62 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F66 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2F6E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F76 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F7A _ 89. 04 24
        call    _boxfill8                               ; 2F7D _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2F82 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2F85 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2F88 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2F8B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2F8E _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2F91 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2F94 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F97 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F9A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F9D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FA0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FA3 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FA5 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FA9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FAD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FB1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2FB5 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2FBD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FC1 _ 89. 04 24
        call    _boxfill8                               ; 2FC4 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 2FC9 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2FCC _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2FCF _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 2FD2 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 2FD5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2FD8 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 2FDB _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 2FDE _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 2FE1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FE4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FE7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FEA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FEC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FF0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FF4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FF8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2FFC _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3004 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3008 _ 89. 04 24
        call    _boxfill8                               ; 300B _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3010 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3013 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3016 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3019 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 301C _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 301F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3022 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3025 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3028 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 302B _ 8B. 00
        mov     dword [esp+18H], esi                    ; 302D _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3031 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3034 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3038 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 303C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3040 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3048 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 304C _ 89. 04 24
        call    _boxfill8                               ; 304F _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3054 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3057 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 305A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 305D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3060 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3063 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3066 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3069 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 306C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 306F _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 3071 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3074 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3078 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 307C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3080 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3084 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 308C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3090 _ 89. 04 24
        call    _boxfill8                               ; 3093 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 3098 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 309B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 309E _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 30A1 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 30A4 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 30A7 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 30AA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30AD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30B0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30B3 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 30B5 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 30B9 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 30BC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30C0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30C4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 30C8 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 30D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 30D4 _ 89. 04 24
        call    _boxfill8                               ; 30D7 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 30DC _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 30DF _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 30E2 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 30E5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 30E8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 30EB _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 30EE _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 30F1 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 30F4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30F7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30FA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30FD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 30FF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3103 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3107 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 310B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 310F _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3117 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 311B _ 89. 04 24
        call    _boxfill8                               ; 311E _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3123 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3126 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3129 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 312C _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 312F _ 8B. 45, 1C
        movzx   eax, al                                 ; 3132 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3135 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3138 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 313B _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 313E _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3140 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3143 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3147 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 314A _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 314E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3152 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3156 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 315A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 315E _ 89. 14 24
        call    _boxfill8                               ; 3161 _ E8, FFFFEFB3
        nop                                             ; 3166 _ 90
        add     esp, 44                                 ; 3167 _ 83. C4, 2C
        pop     ebx                                     ; 316A _ 5B
        pop     esi                                     ; 316B _ 5E
        pop     edi                                     ; 316C _ 5F
        pop     ebp                                     ; 316D _ 5D
        ret                                             ; 316E _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 316F _ 55
        mov     ebp, esp                                ; 3170 _ 89. E5
        sub     esp, 56                                 ; 3172 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 3175 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 317C _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 3181 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 3189 _ 89. 04 24
        call    _memman_alloc                           ; 318C _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 3191 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 3194 _ 8B. 45, E4
        add     eax, 12                                 ; 3197 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 319A _ C6. 00, 00
        jmp     ?_161                                   ; 319D _ E9, 00000125

?_151:  mov     dword [ebp-10H], 0                      ; 31A2 _ C7. 45, F0, 00000000
        jmp     ?_153                                   ; 31A9 _ EB, 2A

?_152:  mov     edx, dword [ebp-0CH]                    ; 31AB _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31AE _ 8B. 45, F0
        add     eax, edx                                ; 31B1 _ 01. D0
        movzx   eax, byte [eax]                         ; 31B3 _ 0F B6. 00
        test    al, al                                  ; 31B6 _ 84. C0
        jz      ?_154                                   ; 31B8 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 31BA _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31BD _ 8B. 45, F0
        add     eax, edx                                ; 31C0 _ 01. D0
        movzx   ecx, byte [eax]                         ; 31C2 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 31C5 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 31C8 _ 8B. 45, E4
        add     eax, edx                                ; 31CB _ 01. D0
        mov     edx, ecx                                ; 31CD _ 89. CA
        mov     byte [eax], dl                          ; 31CF _ 88. 10
        add     dword [ebp-10H], 1                      ; 31D1 _ 83. 45, F0, 01
?_153:  cmp     dword [ebp-10H], 7                      ; 31D5 _ 83. 7D, F0, 07
        jle     ?_152                                   ; 31D9 _ 7E, D0
        jmp     ?_155                                   ; 31DB _ EB, 01

?_154:  nop                                             ; 31DD _ 90
?_155:  mov     dword [ebp-14H], 0                      ; 31DE _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 31E5 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 31E8 _ 8B. 45, E4
        add     eax, edx                                ; 31EB _ 01. D0
        mov     byte [eax], 46                          ; 31ED _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 31F0 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 31F4 _ C7. 45, EC, 00000000
        jmp     ?_157                                   ; 31FB _ EB, 22

?_156:  mov     edx, dword [ebp-0CH]                    ; 31FD _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3200 _ 8B. 45, EC
        add     eax, edx                                ; 3203 _ 01. D0
        add     eax, 8                                  ; 3205 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3208 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 320B _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 320E _ 8B. 45, E4
        add     eax, edx                                ; 3211 _ 01. D0
        mov     edx, ecx                                ; 3213 _ 89. CA
        mov     byte [eax], dl                          ; 3215 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3217 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 321B _ 83. 45, EC, 01
?_157:  cmp     dword [ebp-14H], 2                      ; 321F _ 83. 7D, EC, 02
        jle     ?_156                                   ; 3223 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 3225 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3228 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 322C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 322F _ 89. 04 24
        call    _strcmp                                 ; 3232 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3237 _ 83. F8, 01
        jne     ?_160                                   ; 323A _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3240 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3243 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3246 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 324B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 324F _ 89. 04 24
        call    _memman_alloc_4k                        ; 3252 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3257 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3259 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 325C _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 325E _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3261 _ 8B. 40, 1C
        mov     edx, eax                                ; 3264 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3266 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 3269 _ 89. 50, 04
        mov     dword [ebp-20H], 88064                  ; 326C _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3273 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3276 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 327A _ 0F B7. C0
        shl     eax, 9                                  ; 327D _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 3280 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3283 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3286 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 3289 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 328C _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3293 _ C7. 45, E8, 00000000
        jmp     ?_159                                   ; 329A _ EB, 1D

?_158:  mov     edx, dword [ebp-18H]                    ; 329C _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 329F _ 8B. 45, E0
        add     eax, edx                                ; 32A2 _ 01. D0
        movzx   ecx, byte [eax]                         ; 32A4 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 32A7 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 32AA _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 32AC _ 8B. 45, E8
        add     eax, edx                                ; 32AF _ 01. D0
        mov     edx, ecx                                ; 32B1 _ 89. CA
        mov     byte [eax], dl                          ; 32B3 _ 88. 10
        add     dword [ebp-18H], 1                      ; 32B5 _ 83. 45, E8, 01
?_159:  mov     eax, dword [ebp-18H]                    ; 32B9 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 32BC _ 3B. 45, DC
        jl      ?_158                                   ; 32BF _ 7C, DB
        jmp     ?_162                                   ; 32C1 _ EB, 12

?_160:  add     dword [ebp-0CH], 32                     ; 32C3 _ 83. 45, F4, 20
?_161:  mov     eax, dword [ebp-0CH]                    ; 32C7 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 32CA _ 0F B6. 00
        test    al, al                                  ; 32CD _ 84. C0
        jne     ?_151                                   ; 32CF _ 0F 85, FFFFFECD
?_162:  mov     edx, dword [ebp-1CH]                    ; 32D5 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 32D8 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 32DD _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 32E5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 32E9 _ 89. 04 24
        call    _memman_free                            ; 32EC _ E8, 00000000(rel)
        nop                                             ; 32F1 _ 90
        leave                                           ; 32F2 _ C9
        ret                                             ; 32F3 _ C3
; _file_loadfile End of function

_kernel_api:; Function begin
        push    ebp                                     ; 32F4 _ 55
        mov     ebp, esp                                ; 32F5 _ 89. E5
        sub     esp, 24                                 ; 32F7 _ 83. EC, 18
        cmp     dword [ebp+1CH], 1                      ; 32FA _ 83. 7D, 1C, 01
        jnz     ?_163                                   ; 32FE _ 75, 18
        mov     eax, dword [ebp+24H]                    ; 3300 _ 8B. 45, 24
        movsx   eax, al                                 ; 3303 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 3306 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 330E _ 89. 04 24
        call    _cons_putchar                           ; 3311 _ E8, FFFFE59D
        jmp     ?_164                                   ; 3316 _ EB, 19

?_163:  cmp     dword [ebp+1CH], 2                      ; 3318 _ 83. 7D, 1C, 02
        jnz     ?_164                                   ; 331C _ 75, 13
        mov     edx, dword [_buffer]                    ; 331E _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+18H]                    ; 3324 _ 8B. 45, 18
        add     eax, edx                                ; 3327 _ 01. D0
        mov     dword [esp], eax                        ; 3329 _ 89. 04 24
        call    _cons_putstr                            ; 332C _ E8, FFFFE629
?_164:  nop                                             ; 3331 _ 90
        leave                                           ; 3332 _ C9
        ret                                             ; 3333 _ C3
; _kernel_api End of function


_shtctl_init:
        push    ebp                                     ; 3334 _ 55
        mov     ebp, esp                                ; 3335 _ 89. E5
        sub     esp, 40                                 ; 3337 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 333A _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3342 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3345 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3348 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 334D _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 3350 _ 83. 7D, F0, 00
        jnz     ?_165                                   ; 3354 _ 75, 0A
        mov     eax, 0                                  ; 3356 _ B8, 00000000
        jmp     ?_169                                   ; 335B _ E9, 0000009D

?_165:  mov     eax, dword [ebp+10H]                    ; 3360 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3363 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3367 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 336B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 336E _ 89. 04 24
        call    _memman_alloc_4k                        ; 3371 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3376 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3378 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 337B _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 337E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3381 _ 8B. 40, 04
        test    eax, eax                                ; 3384 _ 85. C0
        jnz     ?_166                                   ; 3386 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3388 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 338B _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3393 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3397 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 339A _ 89. 04 24
        call    _memman_free_4k                         ; 339D _ E8, 00000000(rel)
        mov     eax, 0                                  ; 33A2 _ B8, 00000000
        jmp     ?_169                                   ; 33A7 _ EB, 54

?_166:  mov     eax, dword [ebp-10H]                    ; 33A9 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 33AC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 33AF _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 33B1 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 33B4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 33B7 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 33BA _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 33BD _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 33C0 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 33C3 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 33C6 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 33CD _ C7. 45, F4, 00000000
        jmp     ?_168                                   ; 33D4 _ EB, 1B

?_167:  mov     edx, dword [ebp-10H]                    ; 33D6 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 33D9 _ 8B. 45, F4
        add     eax, 33                                 ; 33DC _ 83. C0, 21
        shl     eax, 5                                  ; 33DF _ C1. E0, 05
        add     eax, edx                                ; 33E2 _ 01. D0
        add     eax, 16                                 ; 33E4 _ 83. C0, 10
        mov     dword [eax], 0                          ; 33E7 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 33ED _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 255                    ; 33F1 _ 81. 7D, F4, 000000FF
        jle     ?_167                                   ; 33F8 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 33FA _ 8B. 45, F0
?_169:  leave                                           ; 33FD _ C9
        ret                                             ; 33FE _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 33FF _ 55
        mov     ebp, esp                                ; 3400 _ 89. E5
        sub     esp, 16                                 ; 3402 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3405 _ C7. 45, FC, 00000000
        jmp     ?_172                                   ; 340C _ EB, 5B

?_170:  mov     edx, dword [ebp+8H]                     ; 340E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3411 _ 8B. 45, FC
        add     eax, 33                                 ; 3414 _ 83. C0, 21
        shl     eax, 5                                  ; 3417 _ C1. E0, 05
        add     eax, edx                                ; 341A _ 01. D0
        add     eax, 16                                 ; 341C _ 83. C0, 10
        mov     eax, dword [eax]                        ; 341F _ 8B. 00
        test    eax, eax                                ; 3421 _ 85. C0
        jnz     ?_171                                   ; 3423 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 3425 _ 8B. 45, FC
        shl     eax, 5                                  ; 3428 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 342B _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3431 _ 8B. 45, 08
        add     eax, edx                                ; 3434 _ 01. D0
        add     eax, 4                                  ; 3436 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3439 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 343C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 343F _ 8B. 55, FC
        add     edx, 4                                  ; 3442 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 3445 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 3448 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 344C _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 344F _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 3456 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 3459 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 3460 _ 8B. 45, F8
        jmp     ?_173                                   ; 3463 _ EB, 12

?_171:  add     dword [ebp-4H], 1                       ; 3465 _ 83. 45, FC, 01
?_172:  cmp     dword [ebp-4H], 255                     ; 3469 _ 81. 7D, FC, 000000FF
        jle     ?_170                                   ; 3470 _ 7E, 9C
        mov     eax, 0                                  ; 3472 _ B8, 00000000
?_173:  leave                                           ; 3477 _ C9
        ret                                             ; 3478 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3479 _ 55
        mov     ebp, esp                                ; 347A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 347C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 347F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3482 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3484 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3487 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 348A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 348D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3490 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3493 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3496 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3499 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 349C _ 89. 50, 14
        nop                                             ; 349F _ 90
        pop     ebp                                     ; 34A0 _ 5D
        ret                                             ; 34A1 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 34A2 _ 55
        mov     ebp, esp                                ; 34A3 _ 89. E5
        push    edi                                     ; 34A5 _ 57
        push    esi                                     ; 34A6 _ 56
        push    ebx                                     ; 34A7 _ 53
        sub     esp, 60                                 ; 34A8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 34AB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 34AE _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 34B1 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 34B4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34B7 _ 8B. 40, 10
        add     eax, 1                                  ; 34BA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 34BD _ 39. 45, 10
        jle     ?_174                                   ; 34C0 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 34C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34C5 _ 8B. 40, 10
        add     eax, 1                                  ; 34C8 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 34CB _ 89. 45, 10
?_174:  cmp     dword [ebp+10H], -1                     ; 34CE _ 83. 7D, 10, FF
        jge     ?_175                                   ; 34D2 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 34D4 _ C7. 45, 10, FFFFFFFF
?_175:  mov     eax, dword [ebp+0CH]                    ; 34DB _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 34DE _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 34E1 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 34E4 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 34E7 _ 3B. 45, 10
        jle     ?_182                                   ; 34EA _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 34F0 _ 83. 7D, 10, 00
        js      ?_178                                   ; 34F4 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 34FA _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 34FD _ 89. 45, E4
        jmp     ?_177                                   ; 3500 _ EB, 34

?_176:  mov     eax, dword [ebp-1CH]                    ; 3502 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3505 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3508 _ 8B. 45, 08
        add     edx, 4                                  ; 350B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 350E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3512 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3515 _ 8B. 55, E4
        add     edx, 4                                  ; 3518 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 351B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 351F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3522 _ 8B. 55, E4
        add     edx, 4                                  ; 3525 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3528 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 352C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 352F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3532 _ 83. 6D, E4, 01
?_177:  mov     eax, dword [ebp-1CH]                    ; 3536 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3539 _ 3B. 45, 10
        jg      ?_176                                   ; 353C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 353E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3541 _ 8B. 55, 10
        add     edx, 4                                  ; 3544 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3547 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 354A _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 354E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3551 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3554 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3557 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 355A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 355D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3560 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3563 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3566 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3569 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 356C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 356F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3572 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3575 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3578 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 357B _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 357E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3582 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3586 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 358A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 358E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3592 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3595 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3598 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 359D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 35A0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 35A3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35A6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35A9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35AC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35AF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35B2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35B5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 35B8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 35BB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 35BE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 35C1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35C4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35C7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35CA _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 35CD _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 35D0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 35D4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 35D8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 35DC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35E0 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 35E4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35E8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35EB _ 89. 04 24
        call    _sheet_refreshsub                       ; 35EE _ E8, 00000465
        jmp     ?_189                                   ; 35F3 _ E9, 0000027D

?_178:  mov     eax, dword [ebp+8H]                     ; 35F8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 35FB _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 35FE _ 39. 45, E0
        jge     ?_181                                   ; 3601 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3603 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3606 _ 89. 45, E4
        jmp     ?_180                                   ; 3609 _ EB, 34

?_179:  mov     eax, dword [ebp-1CH]                    ; 360B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 360E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3611 _ 8B. 45, 08
        add     edx, 4                                  ; 3614 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3617 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 361B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 361E _ 8B. 55, E4
        add     edx, 4                                  ; 3621 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3624 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3628 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 362B _ 8B. 55, E4
        add     edx, 4                                  ; 362E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3631 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3635 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3638 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 363B _ 83. 45, E4, 01
?_180:  mov     eax, dword [ebp+8H]                     ; 363F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3642 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3645 _ 39. 45, E4
        jl      ?_179                                   ; 3648 _ 7C, C1
?_181:  mov     eax, dword [ebp+8H]                     ; 364A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 364D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3650 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3653 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3656 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3659 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 365C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 365F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3662 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3665 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3668 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 366B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 366E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3671 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3674 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3677 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 367A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 367D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3680 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3683 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 368B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 368F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3693 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3697 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 369B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 369E _ 89. 04 24
        call    _sheet_refreshmap                       ; 36A1 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 36A6 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 36A9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 36AC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36AF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36B2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 36B5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 36B8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 36BB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 36BE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 36C1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 36C4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 36C7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 36CA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36CD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36D0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 36D3 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 36D6 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 36DA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 36E2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 36E6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 36EA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 36EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36F5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 36F8 _ E8, 0000035B
        jmp     ?_189                                   ; 36FD _ E9, 00000173

?_182:  mov     eax, dword [ebp-20H]                    ; 3702 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3705 _ 3B. 45, 10
        jge     ?_189                                   ; 3708 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 370E _ 83. 7D, E0, 00
        js      ?_185                                   ; 3712 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3714 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3717 _ 89. 45, E4
        jmp     ?_184                                   ; 371A _ EB, 34

?_183:  mov     eax, dword [ebp-1CH]                    ; 371C _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 371F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3722 _ 8B. 45, 08
        add     edx, 4                                  ; 3725 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3728 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 372C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 372F _ 8B. 55, E4
        add     edx, 4                                  ; 3732 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3735 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3739 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 373C _ 8B. 55, E4
        add     edx, 4                                  ; 373F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3742 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3746 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3749 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 374C _ 83. 45, E4, 01
?_184:  mov     eax, dword [ebp-1CH]                    ; 3750 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3753 _ 3B. 45, 10
        jl      ?_183                                   ; 3756 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3758 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 375B _ 8B. 55, 10
        add     edx, 4                                  ; 375E _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3761 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3764 _ 89. 4C 90, 04
        jmp     ?_188                                   ; 3768 _ EB, 6C

?_185:  mov     eax, dword [ebp+8H]                     ; 376A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 376D _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3770 _ 89. 45, E4
        jmp     ?_187                                   ; 3773 _ EB, 3A

?_186:  mov     eax, dword [ebp-1CH]                    ; 3775 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 3778 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 377B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 377E _ 8B. 55, E4
        add     edx, 4                                  ; 3781 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3784 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3788 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 378B _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 378E _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3792 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3795 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3798 _ 8B. 45, 08
        add     edx, 4                                  ; 379B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 379E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 37A2 _ 8B. 55, E4
        add     edx, 1                                  ; 37A5 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 37A8 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 37AB _ 83. 6D, E4, 01
?_187:  mov     eax, dword [ebp-1CH]                    ; 37AF _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 37B2 _ 3B. 45, 10
        jge     ?_186                                   ; 37B5 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 37B7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 37BA _ 8B. 55, 10
        add     edx, 4                                  ; 37BD _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 37C0 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 37C3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37C7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37CA _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 37CD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37D0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37D3 _ 89. 50, 10
?_188:  mov     eax, dword [ebp+0CH]                    ; 37D6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37D9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37DC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 37DF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 37E2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 37E5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 37E8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 37EB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 37EE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 37F1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 37F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37FA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 37FD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3800 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3803 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3807 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 380B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 380F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3813 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3817 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 381A _ 89. 04 24
        call    _sheet_refreshmap                       ; 381D _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3822 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3825 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3828 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 382B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 382E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3831 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3834 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3837 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 383A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 383D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3840 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3843 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3846 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3849 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 384C _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 384F _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3853 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3856 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 385A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 385E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3862 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3866 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 386A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 386D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3870 _ E8, 000001E3
?_189:  nop                                             ; 3875 _ 90
        add     esp, 60                                 ; 3876 _ 83. C4, 3C
        pop     ebx                                     ; 3879 _ 5B
        pop     esi                                     ; 387A _ 5E
        pop     edi                                     ; 387B _ 5F
        pop     ebp                                     ; 387C _ 5D
        ret                                             ; 387D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 387E _ 55
        mov     ebp, esp                                ; 387F _ 89. E5
        push    edi                                     ; 3881 _ 57
        push    esi                                     ; 3882 _ 56
        push    ebx                                     ; 3883 _ 53
        sub     esp, 60                                 ; 3884 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3887 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 388A _ 8B. 40, 18
        test    eax, eax                                ; 388D _ 85. C0
        js      ?_190                                   ; 388F _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3891 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3894 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 3897 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 389A _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 389D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 38A0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 38A3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 38A6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 38A9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 38AC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 38AF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 38B2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 38B5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 38B8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 38BB _ 8B. 45, 14
        add     edx, eax                                ; 38BE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 38C0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 38C3 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 38C6 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 38C9 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 38CC _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 38CF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 38D3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 38D7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 38DB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 38DF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 38E3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38E7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38EA _ 89. 04 24
        call    _sheet_refreshsub                       ; 38ED _ E8, 00000166
?_190:  mov     eax, 0                                  ; 38F2 _ B8, 00000000
        add     esp, 60                                 ; 38F7 _ 83. C4, 3C
        pop     ebx                                     ; 38FA _ 5B
        pop     esi                                     ; 38FB _ 5E
        pop     edi                                     ; 38FC _ 5F
        pop     ebp                                     ; 38FD _ 5D
        ret                                             ; 38FE _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 38FF _ 55
        mov     ebp, esp                                ; 3900 _ 89. E5
        push    esi                                     ; 3902 _ 56
        push    ebx                                     ; 3903 _ 53
        sub     esp, 48                                 ; 3904 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 3907 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 390A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 390D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3910 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3913 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3916 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3919 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 391C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 391F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3922 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3925 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3928 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 392B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 392E _ 8B. 40, 18
        test    eax, eax                                ; 3931 _ 85. C0
        js      ?_191                                   ; 3933 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 3939 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 393C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 393F _ 8B. 45, F0
        add     edx, eax                                ; 3942 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3944 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3947 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 394A _ 8B. 45, F4
        add     eax, ecx                                ; 394D _ 01. C8
        mov     dword [esp+14H], 0                      ; 394F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3957 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 395B _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 395F _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3962 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3966 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3969 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 396D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3970 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3973 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 3978 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 397B _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 397E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3981 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3984 _ 8B. 45, 14
        add     edx, eax                                ; 3987 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3989 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 398C _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 398F _ 8B. 45, 10
        add     eax, ebx                                ; 3992 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 3994 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3998 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 399C _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 39A0 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 39A3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 39A7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 39AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39B1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 39B4 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 39B9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 39BC _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 39BF _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 39C2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 39C5 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 39C8 _ 8B. 45, F0
        add     edx, eax                                ; 39CB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 39CD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 39D0 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 39D3 _ 8B. 45, F4
        add     eax, ebx                                ; 39D6 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 39D8 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 39DC _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 39E4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 39E8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 39EC _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 39EF _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 39F3 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 39F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39FD _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A00 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3A05 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3A08 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3A0B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3A0E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3A11 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3A14 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3A17 _ 8B. 45, 14
        add     edx, eax                                ; 3A1A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3A1C _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3A1F _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3A22 _ 8B. 45, 10
        add     eax, esi                                ; 3A25 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 3A27 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3A2B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3A2F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3A33 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3A37 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3A3A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3A3E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3A41 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A45 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A48 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A4B _ E8, 00000008
?_191:  nop                                             ; 3A50 _ 90
        add     esp, 48                                 ; 3A51 _ 83. C4, 30
        pop     ebx                                     ; 3A54 _ 5B
        pop     esi                                     ; 3A55 _ 5E
        pop     ebp                                     ; 3A56 _ 5D
        ret                                             ; 3A57 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3A58 _ 55
        mov     ebp, esp                                ; 3A59 _ 89. E5
        sub     esp, 48                                 ; 3A5B _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3A5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3A61 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3A63 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3A66 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A69 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3A6C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3A6F _ 83. 7D, 0C, 00
        jns     ?_192                                   ; 3A73 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3A75 _ C7. 45, 0C, 00000000
?_192:  cmp     dword [ebp+10H], 8                      ; 3A7C _ 83. 7D, 10, 08
        jg      ?_193                                   ; 3A80 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3A82 _ C7. 45, 10, 00000000
?_193:  mov     eax, dword [ebp+8H]                     ; 3A89 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A8C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3A8F _ 39. 45, 14
        jle     ?_194                                   ; 3A92 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3A94 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A97 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3A9A _ 89. 45, 14
?_194:  mov     eax, dword [ebp+8H]                     ; 3A9D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AA0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3AA3 _ 39. 45, 18
        jle     ?_195                                   ; 3AA6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3AA8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AAB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3AAE _ 89. 45, 18
?_195:  mov     eax, dword [ebp+1CH]                    ; 3AB1 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3AB4 _ 89. 45, FC
        jmp     ?_202                                   ; 3AB7 _ E9, 0000010F

?_196:  mov     eax, dword [ebp+8H]                     ; 3ABC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3ABF _ 8B. 55, FC
        add     edx, 4                                  ; 3AC2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3AC5 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3AC9 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3ACC _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3ACF _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3AD1 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3AD4 _ 8B. 45, 08
        add     eax, 1044                               ; 3AD7 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3ADC _ 8B. 55, E8
        sub     edx, eax                                ; 3ADF _ 29. C2
        mov     eax, edx                                ; 3AE1 _ 89. D0
        sar     eax, 5                                  ; 3AE3 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3AE6 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3AE9 _ C7. 45, F4, 00000000
        jmp     ?_201                                   ; 3AF0 _ E9, 000000C3

?_197:  mov     eax, dword [ebp-18H]                    ; 3AF5 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3AF8 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3AFB _ 8B. 45, F4
        add     eax, edx                                ; 3AFE _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3B00 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3B03 _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 3B0A _ E9, 00000096

?_198:  mov     eax, dword [ebp-18H]                    ; 3B0F _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3B12 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3B15 _ 8B. 45, F8
        add     eax, edx                                ; 3B18 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3B1A _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3B1D _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3B20 _ 3B. 45, D8
        jg      ?_199                                   ; 3B23 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3B25 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3B28 _ 3B. 45, 14
        jge     ?_199                                   ; 3B2B _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3B2D _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3B30 _ 3B. 45, DC
        jg      ?_199                                   ; 3B33 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3B35 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3B38 _ 3B. 45, 18
        jge     ?_199                                   ; 3B3B _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3B3D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3B40 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3B43 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3B47 _ 8B. 55, F8
        add     eax, edx                                ; 3B4A _ 01. D0
        mov     edx, eax                                ; 3B4C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3B4E _ 8B. 45, E4
        add     eax, edx                                ; 3B51 _ 01. D0
        movzx   eax, byte [eax]                         ; 3B53 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3B56 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3B59 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B5C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3B5F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3B63 _ 8B. 55, D8
        add     eax, edx                                ; 3B66 _ 01. D0
        mov     edx, eax                                ; 3B68 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3B6A _ 8B. 45, EC
        add     eax, edx                                ; 3B6D _ 01. D0
        movzx   eax, byte [eax]                         ; 3B6F _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3B72 _ 38. 45, E3
        jnz     ?_199                                   ; 3B75 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3B77 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3B7B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3B7E _ 8B. 52, 14
        cmp     eax, edx                                ; 3B81 _ 39. D0
        jz      ?_199                                   ; 3B83 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3B85 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B88 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3B8B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3B8F _ 8B. 55, D8
        add     eax, edx                                ; 3B92 _ 01. D0
        mov     edx, eax                                ; 3B94 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3B96 _ 8B. 45, F0
        add     edx, eax                                ; 3B99 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3B9B _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3B9F _ 88. 02
?_199:  add     dword [ebp-8H], 1                       ; 3BA1 _ 83. 45, F8, 01
?_200:  mov     eax, dword [ebp-18H]                    ; 3BA5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3BA8 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3BAB _ 39. 45, F8
        jl      ?_198                                   ; 3BAE _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3BB4 _ 83. 45, F4, 01
?_201:  mov     eax, dword [ebp-18H]                    ; 3BB8 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3BBB _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3BBE _ 39. 45, F4
        jl      ?_197                                   ; 3BC1 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3BC7 _ 83. 45, FC, 01
?_202:  mov     eax, dword [ebp-4H]                     ; 3BCB _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3BCE _ 3B. 45, 20
        jle     ?_196                                   ; 3BD1 _ 0F 8E, FFFFFEE5
        nop                                             ; 3BD7 _ 90
        leave                                           ; 3BD8 _ C9
        ret                                             ; 3BD9 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3BDA _ 55
        mov     ebp, esp                                ; 3BDB _ 89. E5
        sub     esp, 64                                 ; 3BDD _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3BE0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BE3 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3BE6 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3BE9 _ 83. 7D, 0C, 00
        jns     ?_203                                   ; 3BED _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3BEF _ C7. 45, 0C, 00000000
?_203:  cmp     dword [ebp+10H], 0                      ; 3BF6 _ 83. 7D, 10, 00
        jns     ?_204                                   ; 3BFA _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3BFC _ C7. 45, 10, 00000000
?_204:  mov     eax, dword [ebp+8H]                     ; 3C03 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C06 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3C09 _ 39. 45, 14
        jle     ?_205                                   ; 3C0C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C0E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C11 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3C14 _ 89. 45, 14
?_205:  mov     eax, dword [ebp+8H]                     ; 3C17 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C1A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3C1D _ 39. 45, 18
        jle     ?_206                                   ; 3C20 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C22 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C25 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3C28 _ 89. 45, 18
?_206:  mov     eax, dword [ebp+1CH]                    ; 3C2B _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3C2E _ 89. 45, FC
        jmp     ?_217                                   ; 3C31 _ E9, 00000139

?_207:  mov     eax, dword [ebp+8H]                     ; 3C36 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3C39 _ 8B. 55, FC
        add     edx, 4                                  ; 3C3C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3C3F _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3C43 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3C46 _ 8B. 45, 08
        add     eax, 1044                               ; 3C49 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3C4E _ 8B. 55, DC
        sub     edx, eax                                ; 3C51 _ 29. C2
        mov     eax, edx                                ; 3C53 _ 89. D0
        sar     eax, 5                                  ; 3C55 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3C58 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3C5B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3C5E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3C60 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3C63 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3C66 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3C69 _ 8B. 55, 0C
        sub     edx, eax                                ; 3C6C _ 29. C2
        mov     eax, edx                                ; 3C6E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3C70 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3C73 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3C76 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3C79 _ 8B. 55, 10
        sub     edx, eax                                ; 3C7C _ 29. C2
        mov     eax, edx                                ; 3C7E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3C80 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3C83 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3C86 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3C89 _ 8B. 55, 14
        sub     edx, eax                                ; 3C8C _ 29. C2
        mov     eax, edx                                ; 3C8E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3C90 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3C93 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3C96 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3C99 _ 8B. 55, 18
        sub     edx, eax                                ; 3C9C _ 29. C2
        mov     eax, edx                                ; 3C9E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3CA0 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3CA3 _ 83. 7D, F0, 00
        jns     ?_208                                   ; 3CA7 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3CA9 _ C7. 45, F0, 00000000
?_208:  cmp     dword [ebp-14H], 0                      ; 3CB0 _ 83. 7D, EC, 00
        jns     ?_209                                   ; 3CB4 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3CB6 _ C7. 45, EC, 00000000
?_209:  mov     eax, dword [ebp-24H]                    ; 3CBD _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3CC0 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3CC3 _ 39. 45, E8
        jle     ?_210                                   ; 3CC6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3CC8 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3CCB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3CCE _ 89. 45, E8
?_210:  mov     eax, dword [ebp-24H]                    ; 3CD1 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3CD4 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3CD7 _ 39. 45, E4
        jle     ?_211                                   ; 3CDA _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3CDC _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3CDF _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3CE2 _ 89. 45, E4
?_211:  mov     eax, dword [ebp-14H]                    ; 3CE5 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3CE8 _ 89. 45, F4
        jmp     ?_216                                   ; 3CEB _ EB, 76

?_212:  mov     eax, dword [ebp-24H]                    ; 3CED _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3CF0 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3CF3 _ 8B. 45, F4
        add     eax, edx                                ; 3CF6 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3CF8 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3CFB _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3CFE _ 89. 45, F8
        jmp     ?_215                                   ; 3D01 _ EB, 54

?_213:  mov     eax, dword [ebp-24H]                    ; 3D03 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3D06 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3D09 _ 8B. 45, F8
        add     eax, edx                                ; 3D0C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3D0E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3D11 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3D14 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3D17 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3D1B _ 8B. 55, F8
        add     eax, edx                                ; 3D1E _ 01. D0
        mov     edx, eax                                ; 3D20 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3D22 _ 8B. 45, D4
        add     eax, edx                                ; 3D25 _ 01. D0
        movzx   eax, byte [eax]                         ; 3D27 _ 0F B6. 00
        movzx   eax, al                                 ; 3D2A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3D2D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3D30 _ 8B. 52, 14
        cmp     eax, edx                                ; 3D33 _ 39. D0
        jz      ?_214                                   ; 3D35 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3D37 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D3A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3D3D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3D41 _ 8B. 55, CC
        add     eax, edx                                ; 3D44 _ 01. D0
        mov     edx, eax                                ; 3D46 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3D48 _ 8B. 45, E0
        add     edx, eax                                ; 3D4B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3D4D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3D51 _ 88. 02
?_214:  add     dword [ebp-8H], 1                       ; 3D53 _ 83. 45, F8, 01
?_215:  mov     eax, dword [ebp-8H]                     ; 3D57 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3D5A _ 3B. 45, E8
        jl      ?_213                                   ; 3D5D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3D5F _ 83. 45, F4, 01
?_216:  mov     eax, dword [ebp-0CH]                    ; 3D63 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3D66 _ 3B. 45, E4
        jl      ?_212                                   ; 3D69 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3D6B _ 83. 45, FC, 01
?_217:  mov     eax, dword [ebp+8H]                     ; 3D6F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3D72 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3D75 _ 39. 45, FC
        jle     ?_207                                   ; 3D78 _ 0F 8E, FFFFFEB8
        nop                                             ; 3D7E _ 90
        leave                                           ; 3D7F _ C9
        ret                                             ; 3D80 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3D81 _ 90
        nop                                             ; 3D82 _ 90
        nop                                             ; 3D83 _ 90


_memman_init:
        push    ebp                                     ; 3D84 _ 55
        mov     ebp, esp                                ; 3D85 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3D87 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3D8A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D90 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3D93 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D9A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3D9D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3DA4 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3DA7 _ C7. 40, 0C, 00000000
        nop                                             ; 3DAE _ 90
        pop     ebp                                     ; 3DAF _ 5D
        ret                                             ; 3DB0 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3DB1 _ 55
        mov     ebp, esp                                ; 3DB2 _ 89. E5
        sub     esp, 16                                 ; 3DB4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3DB7 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3DBE _ C7. 45, FC, 00000000
        jmp     ?_219                                   ; 3DC5 _ EB, 14

?_218:  mov     eax, dword [ebp+8H]                     ; 3DC7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3DCA _ 8B. 55, FC
        add     edx, 2                                  ; 3DCD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3DD0 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3DD4 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3DD7 _ 83. 45, FC, 01
?_219:  mov     eax, dword [ebp+8H]                     ; 3DDB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DDE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3DE0 _ 39. 45, FC
        jc      ?_218                                   ; 3DE3 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3DE5 _ 8B. 45, F8
        leave                                           ; 3DE8 _ C9
        ret                                             ; 3DE9 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3DEA _ 55
        mov     ebp, esp                                ; 3DEB _ 89. E5
        sub     esp, 16                                 ; 3DED _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3DF0 _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 3DF7 _ E9, 00000083

?_220:  mov     eax, dword [ebp+8H]                     ; 3DFC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3DFF _ 8B. 55, FC
        add     edx, 2                                  ; 3E02 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E05 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3E09 _ 39. 45, 0C
        ja      ?_222                                   ; 3E0C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3E0E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E11 _ 8B. 55, FC
        add     edx, 2                                  ; 3E14 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3E17 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3E1A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3E1D _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E20 _ 8B. 55, FC
        add     edx, 2                                  ; 3E23 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3E26 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3E29 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3E2C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3E2F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E32 _ 8B. 55, FC
        add     edx, 2                                  ; 3E35 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3E38 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3E3B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E3E _ 8B. 55, FC
        add     edx, 2                                  ; 3E41 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E44 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3E48 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3E4B _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3E4E _ 8B. 4D, FC
        add     ecx, 2                                  ; 3E51 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3E54 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3E58 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E5B _ 8B. 55, FC
        add     edx, 2                                  ; 3E5E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E61 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3E65 _ 85. C0
        jnz     ?_221                                   ; 3E67 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3E69 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E6C _ 8B. 00
        lea     edx, [eax-1H]                           ; 3E6E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E71 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3E74 _ 89. 10
?_221:  mov     eax, dword [ebp-8H]                     ; 3E76 _ 8B. 45, F8
        jmp     ?_224                                   ; 3E79 _ EB, 17

?_222:  add     dword [ebp-4H], 1                       ; 3E7B _ 83. 45, FC, 01
?_223:  mov     eax, dword [ebp+8H]                     ; 3E7F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E82 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3E84 _ 39. 45, FC
        jc      ?_220                                   ; 3E87 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3E8D _ B8, 00000000
?_224:  leave                                           ; 3E92 _ C9
        ret                                             ; 3E93 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3E94 _ 55
        mov     ebp, esp                                ; 3E95 _ 89. E5
        push    ebx                                     ; 3E97 _ 53
        sub     esp, 16                                 ; 3E98 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3E9B _ C7. 45, F8, 00000000
        jmp     ?_226                                   ; 3EA2 _ EB, 15

?_225:  mov     eax, dword [ebp+8H]                     ; 3EA4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EA7 _ 8B. 55, F8
        add     edx, 2                                  ; 3EAA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3EAD _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3EB0 _ 39. 45, 0C
        jc      ?_227                                   ; 3EB3 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3EB5 _ 83. 45, F8, 01
?_226:  mov     eax, dword [ebp+8H]                     ; 3EB9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EBC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3EBE _ 39. 45, F8
        jl      ?_225                                   ; 3EC1 _ 7C, E1
        jmp     ?_228                                   ; 3EC3 _ EB, 01

?_227:  nop                                             ; 3EC5 _ 90
?_228:  cmp     dword [ebp-8H], 0                       ; 3EC6 _ 83. 7D, F8, 00
        jle     ?_230                                   ; 3ECA _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3ED0 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3ED3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3ED6 _ 8B. 45, 08
        add     edx, 2                                  ; 3ED9 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3EDC _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3EDF _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3EE2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3EE5 _ 8B. 45, 08
        add     edx, 2                                  ; 3EE8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3EEB _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3EEF _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3EF1 _ 39. 45, 0C
        jne     ?_230                                   ; 3EF4 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3EFA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3EFD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F00 _ 8B. 45, 08
        add     edx, 2                                  ; 3F03 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3F06 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3F0A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F0D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3F10 _ 8B. 45, 10
        add     ecx, eax                                ; 3F13 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3F15 _ 8B. 45, 08
        add     edx, 2                                  ; 3F18 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3F1B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3F1F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F22 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3F24 _ 39. 45, F8
        jge     ?_229                                   ; 3F27 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3F29 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3F2C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3F2F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3F32 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F35 _ 8B. 55, F8
        add     edx, 2                                  ; 3F38 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3F3B _ 8B. 04 D0
        cmp     ecx, eax                                ; 3F3E _ 39. C1
        jnz     ?_229                                   ; 3F40 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3F42 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F45 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F48 _ 8B. 45, 08
        add     edx, 2                                  ; 3F4B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3F4E _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3F52 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F55 _ 8B. 55, F8
        add     edx, 2                                  ; 3F58 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3F5B _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3F5F _ 8B. 55, F8
        sub     edx, 1                                  ; 3F62 _ 83. EA, 01
        add     ecx, eax                                ; 3F65 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3F67 _ 8B. 45, 08
        add     edx, 2                                  ; 3F6A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3F6D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3F71 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F74 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3F76 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F79 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3F7C _ 89. 10
?_229:  mov     eax, 0                                  ; 3F7E _ B8, 00000000
        jmp     ?_236                                   ; 3F83 _ E9, 0000011C

?_230:  mov     eax, dword [ebp+8H]                     ; 3F88 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F8B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3F8D _ 39. 45, F8
        jge     ?_231                                   ; 3F90 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3F92 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3F95 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3F98 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3F9B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F9E _ 8B. 55, F8
        add     edx, 2                                  ; 3FA1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3FA4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3FA7 _ 39. C1
        jnz     ?_231                                   ; 3FA9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3FAB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FAE _ 8B. 55, F8
        add     edx, 2                                  ; 3FB1 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3FB4 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3FB7 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3FBA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FBD _ 8B. 55, F8
        add     edx, 2                                  ; 3FC0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3FC3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 3FC7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3FCA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3FCD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FD0 _ 8B. 55, F8
        add     edx, 2                                  ; 3FD3 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3FD6 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3FDA _ B8, 00000000
        jmp     ?_236                                   ; 3FDF _ E9, 000000C0

?_231:  mov     eax, dword [ebp+8H]                     ; 3FE4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FE7 _ 8B. 00
        cmp     eax, 4095                               ; 3FE9 _ 3D, 00000FFF
        jg      ?_235                                   ; 3FEE _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3FF4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FF7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3FF9 _ 89. 45, F4
        jmp     ?_233                                   ; 3FFC _ EB, 28

?_232:  mov     eax, dword [ebp-0CH]                    ; 3FFE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4001 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4004 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 4007 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 400A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 400D _ 8B. 45, 08
        add     edx, 2                                  ; 4010 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4013 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 4016 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4018 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 401B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 401E _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 4022 _ 83. 6D, F4, 01
?_233:  mov     eax, dword [ebp-0CH]                    ; 4026 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 4029 _ 3B. 45, F8
        jg      ?_232                                   ; 402C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 402E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4031 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4033 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4036 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4039 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 403B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 403E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4041 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4044 _ 8B. 00
        cmp     edx, eax                                ; 4046 _ 39. C2
        jge     ?_234                                   ; 4048 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 404A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 404D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 404F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4052 _ 89. 50, 04
?_234:  mov     eax, dword [ebp+8H]                     ; 4055 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4058 _ 8B. 55, F8
        add     edx, 2                                  ; 405B _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 405E _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4061 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4064 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4067 _ 8B. 55, F8
        add     edx, 2                                  ; 406A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 406D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4070 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4074 _ B8, 00000000
        jmp     ?_236                                   ; 4079 _ EB, 29

?_235:  mov     eax, dword [ebp+8H]                     ; 407B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 407E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4081 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4084 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4087 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 408A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 408D _ 8B. 40, 08
        mov     edx, eax                                ; 4090 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4092 _ 8B. 45, 10
        add     eax, edx                                ; 4095 _ 01. D0
        mov     edx, eax                                ; 4097 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4099 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 409C _ 89. 50, 08
        mov     eax, 4294967295                         ; 409F _ B8, FFFFFFFF
?_236:  add     esp, 16                                 ; 40A4 _ 83. C4, 10
        pop     ebx                                     ; 40A7 _ 5B
        pop     ebp                                     ; 40A8 _ 5D
        ret                                             ; 40A9 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 40AA _ 55
        mov     ebp, esp                                ; 40AB _ 89. E5
        sub     esp, 24                                 ; 40AD _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 40B0 _ 8B. 45, 0C
        add     eax, 4095                               ; 40B3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 40B8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 40BD _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 40C0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40CA _ 89. 04 24
        call    _memman_alloc                           ; 40CD _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 40D2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 40D5 _ 8B. 45, FC
        leave                                           ; 40D8 _ C9
        ret                                             ; 40D9 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 40DA _ 55
        mov     ebp, esp                                ; 40DB _ 89. E5
        sub     esp, 28                                 ; 40DD _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 40E0 _ 8B. 45, 10
        add     eax, 4095                               ; 40E3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 40E8 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 40ED _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 40F0 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 40F3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 40F7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40FA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4101 _ 89. 04 24
        call    _memman_free                            ; 4104 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4109 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 410C _ 8B. 45, FC
        leave                                           ; 410F _ C9
        ret                                             ; 4110 _ C3
; _memman_free_4k End of function

        nop                                             ; 4111 _ 90
        nop                                             ; 4112 _ 90
        nop                                             ; 4113 _ 90


_fifo8_init:
        push    ebp                                     ; 4114 _ 55
        mov     ebp, esp                                ; 4115 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4117 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 411A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 411D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4120 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4123 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 4126 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4128 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 412B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 412E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4131 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 4134 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 413B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 413E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4145 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4148 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 414F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4152 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 4155 _ 89. 50, 18
        nop                                             ; 4158 _ 90
        pop     ebp                                     ; 4159 _ 5D
        ret                                             ; 415A _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 415B _ 55
        mov     ebp, esp                                ; 415C _ 89. E5
        sub     esp, 40                                 ; 415E _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4161 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 4164 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 4167 _ 83. 7D, 08, 00
        jnz     ?_237                                   ; 416B _ 75, 0A
        mov     eax, 4294967295                         ; 416D _ B8, FFFFFFFF
        jmp     ?_241                                   ; 4172 _ E9, 000000AB

?_237:  mov     eax, dword [ebp+8H]                     ; 4177 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 417A _ 8B. 40, 10
        test    eax, eax                                ; 417D _ 85. C0
        jnz     ?_238                                   ; 417F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4181 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4184 _ 8B. 40, 14
        or      eax, 01H                                ; 4187 _ 83. C8, 01
        mov     edx, eax                                ; 418A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 418C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 418F _ 89. 50, 14
        mov     eax, 4294967295                         ; 4192 _ B8, FFFFFFFF
        jmp     ?_241                                   ; 4197 _ E9, 00000086

?_238:  mov     eax, dword [ebp+8H]                     ; 419C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 419F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 41A1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 41A4 _ 8B. 40, 04
        add     edx, eax                                ; 41A7 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 41A9 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 41AD _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 41AF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 41B2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 41B5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41B8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 41BB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 41BE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 41C1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 41C4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41C7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 41CA _ 39. C2
        jnz     ?_239                                   ; 41CC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 41CE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 41D1 _ C7. 40, 04, 00000000
?_239:  mov     eax, dword [ebp+8H]                     ; 41D8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41DB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 41DE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 41E1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 41E4 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 41E7 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 41EA _ 8B. 40, 18
        test    eax, eax                                ; 41ED _ 85. C0
        jz      ?_240                                   ; 41EF _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 41F1 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 41F4 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 41F7 _ 8B. 40, 04
        cmp     eax, 2                                  ; 41FA _ 83. F8, 02
        jz      ?_240                                   ; 41FD _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 41FF _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4202 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4205 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 420D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 4215 _ 89. 04 24
        call    _task_run                               ; 4218 _ E8, 00000000(rel)
?_240:  mov     eax, 0                                  ; 421D _ B8, 00000000
?_241:  leave                                           ; 4222 _ C9
        ret                                             ; 4223 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 4224 _ 55
        mov     ebp, esp                                ; 4225 _ 89. E5
        sub     esp, 16                                 ; 4227 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 422A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 422D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4230 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4233 _ 8B. 40, 0C
        cmp     edx, eax                                ; 4236 _ 39. C2
        jnz     ?_242                                   ; 4238 _ 75, 07
        mov     eax, 4294967295                         ; 423A _ B8, FFFFFFFF
        jmp     ?_244                                   ; 423F _ EB, 51

?_242:  mov     eax, dword [ebp+8H]                     ; 4241 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4244 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4246 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4249 _ 8B. 40, 08
        add     eax, edx                                ; 424C _ 01. D0
        movzx   eax, byte [eax]                         ; 424E _ 0F B6. 00
        movzx   eax, al                                 ; 4251 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 4254 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4257 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 425A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 425D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4260 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4263 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4266 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 4269 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 426C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 426F _ 8B. 40, 0C
        cmp     edx, eax                                ; 4272 _ 39. C2
        jnz     ?_243                                   ; 4274 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4276 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4279 _ C7. 40, 08, 00000000
?_243:  mov     eax, dword [ebp+8H]                     ; 4280 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4283 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4286 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4289 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 428C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 428F _ 8B. 45, FC
?_244:  leave                                           ; 4292 _ C9
        ret                                             ; 4293 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4294 _ 55
        mov     ebp, esp                                ; 4295 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4297 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 429A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 429D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 42A0 _ 8B. 40, 10
        sub     edx, eax                                ; 42A3 _ 29. C2
        mov     eax, edx                                ; 42A5 _ 89. D0
        pop     ebp                                     ; 42A7 _ 5D
        ret                                             ; 42A8 _ C3
; _fifo8_status End of function

        nop                                             ; 42A9 _ 90
        nop                                             ; 42AA _ 90
        nop                                             ; 42AB _ 90


_init_pit:
        push    ebp                                     ; 42AC _ 55
        mov     ebp, esp                                ; 42AD _ 89. E5
        sub     esp, 40                                 ; 42AF _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 42B2 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 42BA _ C7. 04 24, 00000043
        call    _io_out8                                ; 42C1 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 42C6 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 42CE _ C7. 04 24, 00000040
        call    _io_out8                                ; 42D5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 42DA _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 42E2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 42E9 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 42EE _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 42F8 _ C7. 45, F4, 00000000
        jmp     ?_246                                   ; 42FF _ EB, 26

?_245:  mov     eax, dword [ebp-0CH]                    ; 4301 _ 8B. 45, F4
        shl     eax, 4                                  ; 4304 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4307 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 430C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4312 _ 8B. 45, F4
        shl     eax, 4                                  ; 4315 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 4318 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 431D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4323 _ 83. 45, F4, 01
?_246:  cmp     dword [ebp-0CH], 499                    ; 4327 _ 81. 7D, F4, 000001F3
        jle     ?_245                                   ; 432E _ 7E, D1
        nop                                             ; 4330 _ 90
        leave                                           ; 4331 _ C9
        ret                                             ; 4332 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4333 _ 55
        mov     ebp, esp                                ; 4334 _ 89. E5
        sub     esp, 16                                 ; 4336 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4339 _ C7. 45, FC, 00000000
        jmp     ?_249                                   ; 4340 _ EB, 36

?_247:  mov     eax, dword [ebp-4H]                     ; 4342 _ 8B. 45, FC
        shl     eax, 4                                  ; 4345 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4348 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 434D _ 8B. 00
        test    eax, eax                                ; 434F _ 85. C0
        jnz     ?_248                                   ; 4351 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 4353 _ 8B. 45, FC
        shl     eax, 4                                  ; 4356 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4359 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 435E _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4364 _ 8B. 45, FC
        shl     eax, 4                                  ; 4367 _ C1. E0, 04
        add     eax, _timerctl                               ; 436A _ 05, 00000000(d)
        add     eax, 4                                  ; 436F _ 83. C0, 04
        jmp     ?_250                                   ; 4372 _ EB, 12

?_248:  add     dword [ebp-4H], 1                       ; 4374 _ 83. 45, FC, 01
?_249:  cmp     dword [ebp-4H], 499                     ; 4378 _ 81. 7D, FC, 000001F3
        jle     ?_247                                   ; 437F _ 7E, C1
        mov     eax, 0                                  ; 4381 _ B8, 00000000
?_250:  leave                                           ; 4386 _ C9
        ret                                             ; 4387 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4388 _ 55
        mov     ebp, esp                                ; 4389 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 438B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 438E _ C7. 40, 04, 00000000
        nop                                             ; 4395 _ 90
        pop     ebp                                     ; 4396 _ 5D
        ret                                             ; 4397 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4398 _ 55
        mov     ebp, esp                                ; 4399 _ 89. E5
        sub     esp, 4                                  ; 439B _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 439E _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 43A1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 43A4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 43A7 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 43AA _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 43AD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 43B0 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 43B4 _ 88. 42, 0C
        nop                                             ; 43B7 _ 90
        leave                                           ; 43B8 _ C9
        ret                                             ; 43B9 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 43BA _ 55
        mov     ebp, esp                                ; 43BB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 43BD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 43C0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 43C3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 43C5 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 43C8 _ C7. 40, 04, 00000002
        nop                                             ; 43CF _ 90
        pop     ebp                                     ; 43D0 _ 5D
        ret                                             ; 43D1 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 43D2 _ 55
        mov     ebp, esp                                ; 43D3 _ 89. E5
        sub     esp, 40                                 ; 43D5 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 43D8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 43E0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 43E7 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 43EC _ A1, 00000000(d)
        add     eax, 1                                  ; 43F1 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 43F4 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 43F9 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 43FD _ C7. 45, F4, 00000000
        jmp     ?_254                                   ; 4404 _ E9, 000000AA

?_251:  mov     eax, dword [ebp-0CH]                    ; 4409 _ 8B. 45, F4
        shl     eax, 4                                  ; 440C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 440F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4414 _ 8B. 00
        cmp     eax, 2                                  ; 4416 _ 83. F8, 02
        jne     ?_252                                   ; 4419 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 441F _ 8B. 45, F4
        shl     eax, 4                                  ; 4422 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4425 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 442A _ 8B. 00
        lea     edx, [eax-1H]                           ; 442C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 442F _ 8B. 45, F4
        shl     eax, 4                                  ; 4432 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4435 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 443A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 443C _ 8B. 45, F4
        shl     eax, 4                                  ; 443F _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4442 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4447 _ 8B. 00
        test    eax, eax                                ; 4449 _ 85. C0
        jnz     ?_252                                   ; 444B _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 444D _ 8B. 45, F4
        shl     eax, 4                                  ; 4450 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4453 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4458 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 445E _ 8B. 45, F4
        shl     eax, 4                                  ; 4461 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4464 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4469 _ 0F B6. 00
        movzx   eax, al                                 ; 446C _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 446F _ 8B. 55, F4
        shl     edx, 4                                  ; 4472 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4475 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 447B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 447D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4481 _ 89. 14 24
        call    _fifo8_put                              ; 4484 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4489 _ 8B. 45, F4
        shl     eax, 4                                  ; 448C _ C1. E0, 04
        add     eax, _timerctl                               ; 448F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4494 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4497 _ A1, 00000000(d)
        cmp     edx, eax                                ; 449C _ 39. C2
        jnz     ?_252                                   ; 449E _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 44A0 _ C6. 45, F3, 01
?_252:  cmp     byte [ebp-0DH], 0                       ; 44A4 _ 80. 7D, F3, 00
        jz      ?_253                                   ; 44A8 _ 74, 05
        call    _task_switch                            ; 44AA _ E8, 00000000(rel)
?_253:  add     dword [ebp-0CH], 1                      ; 44AF _ 83. 45, F4, 01
?_254:  cmp     dword [ebp-0CH], 499                    ; 44B3 _ 81. 7D, F4, 000001F3
        jle     ?_251                                   ; 44BA _ 0F 8E, FFFFFF49
        nop                                             ; 44C0 _ 90
        leave                                           ; 44C1 _ C9
        ret                                             ; 44C2 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 44C3 _ B8, 00000000(d)
        ret                                             ; 44C8 _ C3
; _getTimerController End of function

        nop                                             ; 44C9 _ 90
        nop                                             ; 44CA _ 90
        nop                                             ; 44CB _ 90


_set_segmdesc:
        push    ebp                                     ; 44CC _ 55
        mov     ebp, esp                                ; 44CD _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 44CF _ 81. 7D, 0C, 000FFFFF
        jbe     ?_255                                   ; 44D6 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 44D8 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 44DF _ 8B. 45, 0C
        shr     eax, 12                                 ; 44E2 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 44E5 _ 89. 45, 0C
?_255:  mov     eax, dword [ebp+0CH]                    ; 44E8 _ 8B. 45, 0C
        mov     edx, eax                                ; 44EB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 44ED _ 8B. 45, 08
        mov     word [eax], dx                          ; 44F0 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 44F3 _ 8B. 45, 10
        mov     edx, eax                                ; 44F6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 44F8 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 44FB _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 44FF _ 8B. 45, 10
        sar     eax, 16                                 ; 4502 _ C1. F8, 10
        mov     edx, eax                                ; 4505 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4507 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 450A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 450D _ 8B. 45, 14
        mov     edx, eax                                ; 4510 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4512 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4515 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 4518 _ 8B. 45, 0C
        shr     eax, 16                                 ; 451B _ C1. E8, 10
        and     eax, 0FH                                ; 451E _ 83. E0, 0F
        mov     edx, eax                                ; 4521 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4523 _ 8B. 45, 14
        sar     eax, 8                                  ; 4526 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 4529 _ 83. E0, F0
        or      eax, edx                                ; 452C _ 09. D0
        mov     edx, eax                                ; 452E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4530 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4533 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 4536 _ 8B. 45, 10
        shr     eax, 24                                 ; 4539 _ C1. E8, 18
        mov     edx, eax                                ; 453C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 453E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4541 _ 88. 50, 07
        nop                                             ; 4544 _ 90
        pop     ebp                                     ; 4545 _ 5D
        ret                                             ; 4546 _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 4547 _ 55
        mov     ebp, esp                                ; 4548 _ 89. E5
        sub     esp, 16                                 ; 454A _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 454D _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4553 _ 8B. 55, 08
        mov     eax, edx                                ; 4556 _ 89. D0
        shl     eax, 2                                  ; 4558 _ C1. E0, 02
        add     eax, edx                                ; 455B _ 01. D0
        shl     eax, 2                                  ; 455D _ C1. E0, 02
        add     eax, ecx                                ; 4560 _ 01. C8
        add     eax, 8                                  ; 4562 _ 83. C0, 08
        mov     dword [eax], 0                          ; 4565 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 456B _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4571 _ 8B. 55, 08
        mov     eax, edx                                ; 4574 _ 89. D0
        shl     eax, 2                                  ; 4576 _ C1. E0, 02
        add     eax, edx                                ; 4579 _ 01. D0
        shl     eax, 2                                  ; 457B _ C1. E0, 02
        add     eax, ecx                                ; 457E _ 01. C8
        add     eax, 12                                 ; 4580 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4583 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4589 _ C7. 45, FC, 00000000
        jmp     ?_257                                   ; 4590 _ EB, 21

?_256:  mov     ecx, dword [_taskctl]                   ; 4592 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4598 _ 8B. 55, FC
        mov     eax, edx                                ; 459B _ 89. D0
        add     eax, eax                                ; 459D _ 01. C0
        add     eax, edx                                ; 459F _ 01. D0
        shl     eax, 3                                  ; 45A1 _ C1. E0, 03
        add     eax, ecx                                ; 45A4 _ 01. C8
        add     eax, 16                                 ; 45A6 _ 83. C0, 10
        mov     dword [eax], 0                          ; 45A9 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 45AF _ 83. 45, FC, 01
?_257:  cmp     dword [ebp-4H], 2                       ; 45B3 _ 83. 7D, FC, 02
        jle     ?_256                                   ; 45B7 _ 7E, D9
        nop                                             ; 45B9 _ 90
        leave                                           ; 45BA _ C9
        ret                                             ; 45BB _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 45BC _ 55
        mov     ebp, esp                                ; 45BD _ 89. E5
        sub     esp, 40                                 ; 45BF _ 83. EC, 28
        call    _get_addr_gdt                           ; 45C2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 45C7 _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 45CA _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 45D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 45D5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 45D8 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 45DD _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 45E2 _ C7. 45, F4, 00000000
        jmp     ?_259                                   ; 45E9 _ E9, 00000088

?_258:  mov     edx, dword [_taskctl]                   ; 45EE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 45F4 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 45F7 _ 69. C0, 00000094
        add     eax, edx                                ; 45FD _ 01. D0
        add     eax, 72                                 ; 45FF _ 83. C0, 48
        mov     dword [eax], 0                          ; 4602 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4608 _ 8B. 45, F4
        add     eax, 7                                  ; 460B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 460E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4614 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 461B _ 8B. 45, F4
        imul    eax, eax, 148                           ; 461E _ 69. C0, 00000094
        add     eax, ecx                                ; 4624 _ 01. C8
        add     eax, 68                                 ; 4626 _ 83. C0, 44
        mov     dword [eax], edx                        ; 4629 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 462B _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4631 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4634 _ 69. C0, 00000094
        add     eax, 96                                 ; 463A _ 83. C0, 60
        add     eax, edx                                ; 463D _ 01. D0
        add     eax, 16                                 ; 463F _ 83. C0, 10
        mov     ecx, eax                                ; 4642 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4644 _ 8B. 45, F4
        add     eax, 7                                  ; 4647 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 464A _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 4651 _ 8B. 45, F0
        add     eax, edx                                ; 4654 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 4656 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 465E _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 4662 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 466A _ 89. 04 24
        call    _set_segmdesc                           ; 466D _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 4672 _ 83. 45, F4, 01
?_259:  cmp     dword [ebp-0CH], 4                      ; 4676 _ 83. 7D, F4, 04
        jle     ?_258                                   ; 467A _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 4680 _ C7. 45, F4, 00000000
        jmp     ?_261                                   ; 4687 _ EB, 0F

?_260:  mov     eax, dword [ebp-0CH]                    ; 4689 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 468C _ 89. 04 24
        call    _init_task_level                        ; 468F _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 4694 _ 83. 45, F4, 01
?_261:  cmp     dword [ebp-0CH], 2                      ; 4698 _ 83. 7D, F4, 02
        jle     ?_260                                   ; 469C _ 7E, EB
        call    _task_alloc                             ; 469E _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 46A3 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 46A6 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 46A9 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 46B0 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 46B3 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 46BA _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 46BD _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 46C4 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 46C7 _ 89. 04 24
        call    _task_add                               ; 46CA _ E8, 0000003A
        call    _task_switchsub                         ; 46CF _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 46D4 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 46D7 _ 8B. 00
        mov     dword [esp], eax                        ; 46D9 _ 89. 04 24
        call    _load_tr                                ; 46DC _ E8, 00000000(rel)
        call    _timer_alloc                            ; 46E1 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 46E6 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 46EB _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 46EE _ 8B. 40, 08
        mov     edx, eax                                ; 46F1 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 46F3 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 46F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 46FC _ 89. 04 24
        call    _timer_settime                          ; 46FF _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4704 _ 8B. 45, EC
        leave                                           ; 4707 _ C9
        ret                                             ; 4708 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 4709 _ 55
        mov     ebp, esp                                ; 470A _ 89. E5
        sub     esp, 16                                 ; 470C _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 470F _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4715 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4718 _ 8B. 50, 0C
        mov     eax, edx                                ; 471B _ 89. D0
        shl     eax, 2                                  ; 471D _ C1. E0, 02
        add     eax, edx                                ; 4720 _ 01. D0
        shl     eax, 2                                  ; 4722 _ C1. E0, 02
        add     eax, ecx                                ; 4725 _ 01. C8
        add     eax, 8                                  ; 4727 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 472A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 472D _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4730 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4732 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4735 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4738 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 473C _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 473F _ 8B. 00
        lea     edx, [eax+1H]                           ; 4741 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4744 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4747 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4749 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 474C _ C7. 40, 04, 00000002
        nop                                             ; 4753 _ 90
        leave                                           ; 4754 _ C9
        ret                                             ; 4755 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 4756 _ 55
        mov     ebp, esp                                ; 4757 _ 89. E5
        sub     esp, 16                                 ; 4759 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 475C _ C7. 45, FC, 00000000
        jmp     ?_264                                   ; 4763 _ E9, 000000F7

?_262:  mov     edx, dword [_taskctl]                   ; 4768 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 476E _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4771 _ 69. C0, 00000094
        add     eax, edx                                ; 4777 _ 01. D0
        add     eax, 72                                 ; 4779 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 477C _ 8B. 00
        test    eax, eax                                ; 477E _ 85. C0
        jne     ?_263                                   ; 4780 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 4786 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 478C _ 8B. 45, FC
        imul    eax, eax, 148                           ; 478F _ 69. C0, 00000094
        add     eax, 64                                 ; 4795 _ 83. C0, 40
        add     eax, edx                                ; 4798 _ 01. D0
        add     eax, 4                                  ; 479A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 479D _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 47A0 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 47A3 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 47AA _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 47AD _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 47B4 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 47B7 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 47BE _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 47C1 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 47C8 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 47CB _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 47D2 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 47D5 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 47DC _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 47DF _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 47E6 _ 8B. 45, FC
        add     eax, 1                                  ; 47E9 _ 83. C0, 01
        shl     eax, 9                                  ; 47EC _ C1. E0, 09
        mov     edx, eax                                ; 47EF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 47F1 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 47F4 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 47F7 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 47FA _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4801 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4804 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 480B _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 480E _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4815 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 4818 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4822 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4825 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 482F _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4832 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 483C _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 483F _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4849 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 484C _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 4856 _ 8B. 45, F8
        jmp     ?_265                                   ; 4859 _ EB, 13

?_263:  add     dword [ebp-4H], 1                       ; 485B _ 83. 45, FC, 01
?_264:  cmp     dword [ebp-4H], 4                       ; 485F _ 83. 7D, FC, 04
        jle     ?_262                                   ; 4863 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 4869 _ B8, 00000000
?_265:  leave                                           ; 486E _ C9
        ret                                             ; 486F _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4870 _ 55
        mov     ebp, esp                                ; 4871 _ 89. E5
        sub     esp, 24                                 ; 4873 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 4876 _ 83. 7D, 0C, 00
        jns     ?_266                                   ; 487A _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 487C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 487F _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4882 _ 89. 45, 0C
?_266:  cmp     dword [ebp+10H], 0                      ; 4885 _ 83. 7D, 10, 00
        jle     ?_267                                   ; 4889 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 488B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 488E _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4891 _ 89. 50, 08
?_267:  mov     eax, dword [ebp+8H]                     ; 4894 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4897 _ 8B. 40, 04
        cmp     eax, 2                                  ; 489A _ 83. F8, 02
        jnz     ?_268                                   ; 489D _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 489F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 48A2 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 48A5 _ 39. 45, 0C
        jz      ?_268                                   ; 48A8 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 48AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48AD _ 89. 04 24
        call    _task_remove                            ; 48B0 _ E8, 0000002E
?_268:  mov     eax, dword [ebp+8H]                     ; 48B5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 48B8 _ 8B. 40, 04
        cmp     eax, 2                                  ; 48BB _ 83. F8, 02
        jz      ?_269                                   ; 48BE _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 48C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 48C3 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 48C6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 48C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48CC _ 89. 04 24
        call    _task_add                               ; 48CF _ E8, FFFFFE35
?_269:  mov     eax, dword [_taskctl]                   ; 48D4 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 48D9 _ C7. 40, 04, 00000001
        nop                                             ; 48E0 _ 90
        leave                                           ; 48E1 _ C9
        ret                                             ; 48E2 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 48E3 _ 55
        mov     ebp, esp                                ; 48E4 _ 89. E5
        sub     esp, 16                                 ; 48E6 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 48E9 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 48EF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 48F2 _ 8B. 50, 0C
        mov     eax, edx                                ; 48F5 _ 89. D0
        shl     eax, 2                                  ; 48F7 _ C1. E0, 02
        add     eax, edx                                ; 48FA _ 01. D0
        shl     eax, 2                                  ; 48FC _ C1. E0, 02
        add     eax, ecx                                ; 48FF _ 01. C8
        add     eax, 8                                  ; 4901 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4904 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 4907 _ C7. 45, FC, 00000000
        jmp     ?_272                                   ; 490E _ EB, 23

?_270:  mov     eax, dword [ebp-8H]                     ; 4910 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4913 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4916 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 491A _ 39. 45, 08
        jnz     ?_271                                   ; 491D _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 491F _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4922 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4925 _ C7. 44 90, 08, 00000000
        jmp     ?_273                                   ; 492D _ EB, 0E

?_271:  add     dword [ebp-4H], 1                       ; 492F _ 83. 45, FC, 01
?_272:  mov     eax, dword [ebp-8H]                     ; 4933 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4936 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4938 _ 39. 45, FC
        jl      ?_270                                   ; 493B _ 7C, D3
?_273:  mov     eax, dword [ebp-8H]                     ; 493D _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4940 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4942 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4945 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 4948 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 494A _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 494D _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4950 _ 39. 45, FC
        jge     ?_274                                   ; 4953 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4955 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4958 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 495B _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 495E _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4961 _ 89. 50, 04
?_274:  mov     eax, dword [ebp-8H]                     ; 4964 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 4967 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 496A _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 496D _ 8B. 00
        cmp     edx, eax                                ; 496F _ 39. C2
        jl      ?_275                                   ; 4971 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4973 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 4976 _ C7. 40, 04, 00000000
?_275:  mov     eax, dword [ebp+8H]                     ; 497D _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4980 _ C7. 40, 04, 00000001
        jmp     ?_277                                   ; 4987 _ EB, 1B

?_276:  mov     eax, dword [ebp-4H]                     ; 4989 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 498C _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 498F _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 4992 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 4996 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4999 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 499C _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 49A0 _ 83. 45, FC, 01
?_277:  mov     eax, dword [ebp-8H]                     ; 49A4 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 49A7 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 49A9 _ 39. 45, FC
        jl      ?_276                                   ; 49AC _ 7C, DB
        nop                                             ; 49AE _ 90
        leave                                           ; 49AF _ C9
        ret                                             ; 49B0 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 49B1 _ 55
        mov     ebp, esp                                ; 49B2 _ 89. E5
        sub     esp, 40                                 ; 49B4 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 49B7 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 49BD _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 49C2 _ 8B. 10
        mov     eax, edx                                ; 49C4 _ 89. D0
        shl     eax, 2                                  ; 49C6 _ C1. E0, 02
        add     eax, edx                                ; 49C9 _ 01. D0
        shl     eax, 2                                  ; 49CB _ C1. E0, 02
        add     eax, ecx                                ; 49CE _ 01. C8
        add     eax, 8                                  ; 49D0 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 49D3 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 49D6 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 49D9 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 49DC _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 49DF _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 49E3 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 49E6 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 49E9 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 49EC _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 49EF _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 49F2 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 49F5 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 49F8 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 49FB _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 49FE _ 8B. 00
        cmp     edx, eax                                ; 4A00 _ 39. C2
        jnz     ?_278                                   ; 4A02 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4A04 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 4A07 _ C7. 40, 04, 00000000
?_278:  mov     eax, dword [_taskctl]                   ; 4A0E _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4A13 _ 8B. 40, 04
        test    eax, eax                                ; 4A16 _ 85. C0
        jz      ?_279                                   ; 4A18 _ 74, 24
        call    _task_switchsub                         ; 4A1A _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4A1F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4A25 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4A2A _ 8B. 10
        mov     eax, edx                                ; 4A2C _ 89. D0
        shl     eax, 2                                  ; 4A2E _ C1. E0, 02
        add     eax, edx                                ; 4A31 _ 01. D0
        shl     eax, 2                                  ; 4A33 _ C1. E0, 02
        add     eax, ecx                                ; 4A36 _ 01. C8
        add     eax, 8                                  ; 4A38 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4A3B _ 89. 45, F4
?_279:  mov     eax, dword [ebp-0CH]                    ; 4A3E _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4A41 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4A44 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4A47 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4A4B _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4A4E _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4A51 _ 8B. 40, 08
        mov     edx, eax                                ; 4A54 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4A56 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4A5B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4A5F _ 89. 04 24
        call    _timer_settime                          ; 4A62 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4A67 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4A6A _ 3B. 45, F0
        jz      ?_280                                   ; 4A6D _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4A6F _ 83. 7D, EC, 00
        jz      ?_280                                   ; 4A73 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4A75 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4A78 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4A7A _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4A7E _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4A85 _ E8, 00000000(rel)
        nop                                             ; 4A8A _ 90
?_280:  nop                                             ; 4A8B _ 90
        leave                                           ; 4A8C _ C9
        ret                                             ; 4A8D _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4A8E _ 55
        mov     ebp, esp                                ; 4A8F _ 89. E5
        sub     esp, 40                                 ; 4A91 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4A94 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4A9B _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4AA2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4AA5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4AA8 _ 83. F8, 02
        jnz     ?_281                                   ; 4AAB _ 75, 51
        call    _task_now                               ; 4AAD _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4AB2 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4AB5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4AB8 _ 89. 04 24
        call    _task_remove                            ; 4ABB _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4AC0 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4AC7 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4ACA _ 3B. 45, F0
        jnz     ?_281                                   ; 4ACD _ 75, 2F
        call    _task_switchsub                         ; 4ACF _ E8, 0000002F
        call    _task_now                               ; 4AD4 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4AD9 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4ADC _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4AE3 _ 83. 7D, F0, 00
        jz      ?_281                                   ; 4AE7 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4AE9 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4AEC _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4AEE _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4AF2 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4AF9 _ E8, 00000000(rel)
?_281:  mov     eax, dword [ebp-0CH]                    ; 4AFE _ 8B. 45, F4
        leave                                           ; 4B01 _ C9
        ret                                             ; 4B02 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4B03 _ 55
        mov     ebp, esp                                ; 4B04 _ 89. E5
        sub     esp, 16                                 ; 4B06 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4B09 _ C7. 45, FC, 00000000
        jmp     ?_283                                   ; 4B10 _ EB, 22

?_282:  mov     ecx, dword [_taskctl]                   ; 4B12 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4B18 _ 8B. 55, FC
        mov     eax, edx                                ; 4B1B _ 89. D0
        shl     eax, 2                                  ; 4B1D _ C1. E0, 02
        add     eax, edx                                ; 4B20 _ 01. D0
        shl     eax, 2                                  ; 4B22 _ C1. E0, 02
        add     eax, ecx                                ; 4B25 _ 01. C8
        add     eax, 8                                  ; 4B27 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4B2A _ 8B. 00
        test    eax, eax                                ; 4B2C _ 85. C0
        jg      ?_284                                   ; 4B2E _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4B30 _ 83. 45, FC, 01
?_283:  cmp     dword [ebp-4H], 2                       ; 4B34 _ 83. 7D, FC, 02
        jle     ?_282                                   ; 4B38 _ 7E, D8
        jmp     ?_285                                   ; 4B3A _ EB, 01

?_284:  nop                                             ; 4B3C _ 90
?_285:  mov     eax, dword [_taskctl]                   ; 4B3D _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4B42 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4B45 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4B47 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4B4C _ C7. 40, 04, 00000000
        nop                                             ; 4B53 _ 90
        leave                                           ; 4B54 _ C9
        ret                                             ; 4B55 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4B56 _ 55
        mov     ebp, esp                                ; 4B57 _ 89. E5
        sub     esp, 16                                 ; 4B59 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4B5C _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4B62 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4B67 _ 8B. 10
        mov     eax, edx                                ; 4B69 _ 89. D0
        shl     eax, 2                                  ; 4B6B _ C1. E0, 02
        add     eax, edx                                ; 4B6E _ 01. D0
        shl     eax, 2                                  ; 4B70 _ C1. E0, 02
        add     eax, ecx                                ; 4B73 _ 01. C8
        add     eax, 8                                  ; 4B75 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4B78 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4B7B _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4B7E _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4B81 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4B84 _ 8B. 44 90, 08
        leave                                           ; 4B88 _ C9
        ret                                             ; 4B89 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4B8A _ 55
        mov     ebp, esp                                ; 4B8B _ 89. E5
        sub     esp, 24                                 ; 4B8D _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4B90 _ 8B. 45, 10
        movzx   eax, al                                 ; 4B93 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4B96 _ 8B. 55, 0C
        add     edx, 16                                 ; 4B99 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4B9C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4BA0 _ 89. 14 24
        call    _fifo8_put                              ; 4BA3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4BA8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BAB _ 89. 04 24
        call    _task_sleep                             ; 4BAE _ E8, FFFFFEDB
        nop                                             ; 4BB3 _ 90
        leave                                           ; 4BB4 _ C9
        ret                                             ; 4BB5 _ C3
; _send_message End of function

        nop                                             ; 4BB6 _ 90
        nop                                             ; 4BB7 _ 90


_strcmp:
        push    ebp                                     ; 4BB8 _ 55
        mov     ebp, esp                                ; 4BB9 _ 89. E5
        sub     esp, 16                                 ; 4BBB _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4BBE _ 83. 7D, 08, 00
        jz      ?_286                                   ; 4BC2 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4BC4 _ 83. 7D, 0C, 00
        jnz     ?_287                                   ; 4BC8 _ 75, 0A
?_286:  mov     eax, 0                                  ; 4BCA _ B8, 00000000
        jmp     ?_294                                   ; 4BCF _ E9, 0000009B

?_287:  mov     dword [ebp-4H], 0                       ; 4BD4 _ C7. 45, FC, 00000000
        jmp     ?_290                                   ; 4BDB _ EB, 25

?_288:  mov     edx, dword [ebp-4H]                     ; 4BDD _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4BE0 _ 8B. 45, 08
        add     eax, edx                                ; 4BE3 _ 01. D0
        movzx   edx, byte [eax]                         ; 4BE5 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4BE8 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4BEB _ 8B. 45, 0C
        add     eax, ecx                                ; 4BEE _ 01. C8
        movzx   eax, byte [eax]                         ; 4BF0 _ 0F B6. 00
        cmp     dl, al                                  ; 4BF3 _ 38. C2
        jz      ?_289                                   ; 4BF5 _ 74, 07
        mov     eax, 0                                  ; 4BF7 _ B8, 00000000
        jmp     ?_294                                   ; 4BFC _ EB, 71

?_289:  add     dword [ebp-4H], 1                       ; 4BFE _ 83. 45, FC, 01
?_290:  mov     edx, dword [ebp-4H]                     ; 4C02 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C05 _ 8B. 45, 08
        add     eax, edx                                ; 4C08 _ 01. D0
        movzx   eax, byte [eax]                         ; 4C0A _ 0F B6. 00
        test    al, al                                  ; 4C0D _ 84. C0
        jz      ?_291                                   ; 4C0F _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4C11 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4C14 _ 8B. 45, 0C
        add     eax, edx                                ; 4C17 _ 01. D0
        movzx   eax, byte [eax]                         ; 4C19 _ 0F B6. 00
        test    al, al                                  ; 4C1C _ 84. C0
        jnz     ?_288                                   ; 4C1E _ 75, BD
?_291:  mov     edx, dword [ebp-4H]                     ; 4C20 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C23 _ 8B. 45, 08
        add     eax, edx                                ; 4C26 _ 01. D0
        movzx   eax, byte [eax]                         ; 4C28 _ 0F B6. 00
        test    al, al                                  ; 4C2B _ 84. C0
        jnz     ?_292                                   ; 4C2D _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4C2F _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4C32 _ 8B. 45, 0C
        add     eax, edx                                ; 4C35 _ 01. D0
        movzx   eax, byte [eax]                         ; 4C37 _ 0F B6. 00
        test    al, al                                  ; 4C3A _ 84. C0
        jz      ?_292                                   ; 4C3C _ 74, 07
        mov     eax, 0                                  ; 4C3E _ B8, 00000000
        jmp     ?_294                                   ; 4C43 _ EB, 2A

?_292:  mov     edx, dword [ebp-4H]                     ; 4C45 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C48 _ 8B. 45, 08
        add     eax, edx                                ; 4C4B _ 01. D0
        movzx   eax, byte [eax]                         ; 4C4D _ 0F B6. 00
        test    al, al                                  ; 4C50 _ 84. C0
        jz      ?_293                                   ; 4C52 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4C54 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4C57 _ 8B. 45, 0C
        add     eax, edx                                ; 4C5A _ 01. D0
        movzx   eax, byte [eax]                         ; 4C5C _ 0F B6. 00
        test    al, al                                  ; 4C5F _ 84. C0
        jz      ?_293                                   ; 4C61 _ 74, 07
        mov     eax, 0                                  ; 4C63 _ B8, 00000000
        jmp     ?_294                                   ; 4C68 _ EB, 05

?_293:  mov     eax, 1                                  ; 4C6A _ B8, 00000001
?_294:  leave                                           ; 4C6F _ C9
        ret                                             ; 4C70 _ C3

        nop                                             ; 4C71 _ 90
        nop                                             ; 4C72 _ 90
        nop                                             ; 4C73 _ 90



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

?_295:  db 00H                                          ; 0102 _ .

?_296:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2522:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2569:                                           ; byte
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

_closebtn.2688:                                         ; byte
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



?_297:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_298:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_299:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_300:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_301:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_302:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_303:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_304:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0025 _ abc.exe.

?_305:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 002D _ mem.

?_306:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0031 _ cls.

?_307:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0035 _ hlt.

?_308:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0039 _ dir.

?_309:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003D _ page is:
        db 20H, 00H                                     ; 0045 _  .

?_310:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0047 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 004F _ L: .

?_311:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0053 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 005B _ H: .

?_312:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005F _ lengthLo
        db 77H, 3AH, 20H, 00H, 00H                      ; 0067 _ w: ..



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

?_313:  resd    1                                       ; 000C

?_314:  resd    1                                       ; 0010

?_315:  resd    1                                       ; 0014

?_316:  resb    1                                       ; 0018

?_317:  resb    3                                       ; 0019

_bootInfo:                                              ; dword
        resd    1                                       ; 001C

?_318:  resw    1                                       ; 0020

?_319:  resw    1                                       ; 0022

_keyinfo:                                               ; byte
        resb    24                                      ; 0024

?_320:  resd    1                                       ; 003C

_mouseinfo:                                             ; byte
        resb    32                                      ; 0040

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_321:  resd    1                                       ; 010C

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

?_322:  resd    1                                       ; 027C

_task_a.2331:                                           ; dword
        resd    8                                       ; 0280

_tss_a.2330:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2329:                                            ; byte
        resb    104                                     ; 0320

_str.2617:                                              ; byte
        resb    1                                       ; 0388

?_323:  resb    9                                       ; 0389

?_324:  resb    14                                      ; 0392

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


