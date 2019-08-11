; Disassembly of file: ckernel.o
; Sun Aug 11 23:59:38 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 116                                ; 0004 _ 83. EC, 74
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 0000001C(d)
        call    _initBootInfo                           ; 000E _ E8, 00001EC9
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
        call    _init_palette                           ; 0148 _ E8, 00001E59
        call    _init_keyboard                          ; 014D _ E8, 000023C2
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
        call    _init_screen8                           ; 027E _ E8, 00001791
        mov     dword [esp+4H], 99                      ; 0283 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028B _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0292 _ E8, 00001FAB
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
        call    _message_box                            ; 0333 _ E8, 00002607
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
        call    _enable_mouse                           ; 0387 _ E8, 000021C3
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
        call    _make_wtitle8                           ; 04B1 _ E8, 00002839
        mov     eax, dword [_shtctl]                    ; 04B6 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BB _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_299                   ; 04C3 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 04CB _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 04CE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04D2 _ 89. 04 24
        call    _make_wtitle8                           ; 04D5 _ E8, 00002815
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
        call    _make_wtitle8                           ; 053A _ E8, 000027B0
        mov     eax, dword [_shtctl]                    ; 053F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0544 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_299                   ; 054C _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 0554 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0557 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 055B _ 89. 04 24
        call    _make_wtitle8                           ; 055E _ E8, 0000278C
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
        call    _showString                             ; 06B3 _ E8, 00001845
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
        call    _show_mouse_info                        ; 0767 _ E8, 000016B8
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
        call    _boxfill8                               ; 08A4 _ E8, 000017C8
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
        call    _make_window8                           ; 0AE5 _ E8, 00001F40
        mov     dword [esp+14H], 0                      ; 0AEA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0AF2 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0AFA _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B02 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B0A _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B12 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B15 _ 89. 04 24
        call    _make_textbox8                          ; 0B18 _ E8, 00002310
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
        add     eax, _console_task                      ; 0B4C _ 05, 00001342(d)
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
        call    _showString                             ; 0D29 _ E8, 000011CF
        mov     dword [ebp-1CH], 136                    ; 0D2E _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0D35 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0D38 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0D3B _ 89. 04 24
        call    _intToHexStr                            ; 0D3E _ E8, 0000171B
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
        call    _showString                             ; 0D78 _ E8, 00001180
        mov     edx, dword [_g_Console]                 ; 0D7D _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 0D83 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0D88 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D8C _ 89. 04 24
        call    _cons_newline                           ; 0D8F _ E8, 00000B50
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
        call    _showString                             ; 0F89 _ E8, 00000F6F
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
        call    _cons_newline                           ; 0FC3 _ E8, 0000091C
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
        call    _cons_newline                           ; 0FF3 _ E8, 000008EC
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
        call    _showString                             ; 1040 _ E8, 00000EB8
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
        call    _cons_newline                           ; 107A _ E8, 00000865
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
        call    _cons_newline                           ; 10BB _ E8, 00000824
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
        call    _intToHexStr                            ; 110E _ E8, 0000134B
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
        call    _showString                             ; 114A _ E8, 00000DAE
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
        call    _showString                             ; 1182 _ E8, 00000D76
        mov     ecx, dword [?_314]                      ; 1187 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 118D _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1193 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_302                  ; 1198 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 11A0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11A8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 11AC _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 11B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11B8 _ 89. 04 24
        call    _showString                             ; 11BB _ E8, 00000D3D
        mov     edx, dword [_g_Console]                 ; 11C0 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_314]                      ; 11C6 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 11CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11CF _ 89. 04 24
        call    _cons_newline                           ; 11D2 _ E8, 0000070D
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
        call    _showString                             ; 12B3 _ E8, 00000C45
        nop                                             ; 12B8 _ 90
        leave                                           ; 12B9 _ C9
        ret                                             ; 12BA _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 12BB _ 55
        mov     ebp, esp                                ; 12BC _ 89. E5
        sub     esp, 40                                 ; 12BE _ 83. EC, 28
        mov     dword [esp+4H], _buffer                 ; 12C1 _ C7. 44 24, 04, 00000278(d)
        mov     dword [esp], ?_304                      ; 12C9 _ C7. 04 24, 00000025(d)
        call    _file_loadfile                          ; 12D0 _ E8, 00001DF2
        call    _get_addr_gdt                           ; 12D5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 12DA _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 12DD _ A1, 00000278(d)
        mov     edx, eax                                ; 12E2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 12E4 _ 8B. 45, F4
        add     eax, 152                                ; 12E7 _ 05, 00000098
        mov     dword [esp+0CH], 16536                  ; 12EC _ C7. 44 24, 0C, 00004098
        mov     dword [esp+8H], edx                     ; 12F4 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 12F8 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 1300 _ 89. 04 24
        call    _set_segmdesc                           ; 1303 _ E8, 00000000(rel)
        mov     dword [esp+4H], 152                     ; 1308 _ C7. 44 24, 04, 00000098
        mov     dword [esp], 0                          ; 1310 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 1317 _ E8, 00000000(rel)
        mov     eax, dword [?_322]                      ; 131C _ A1, 0000027C(d)
        mov     ecx, eax                                ; 1321 _ 89. C1
        mov     eax, dword [_buffer]                    ; 1323 _ A1, 00000278(d)
        mov     edx, eax                                ; 1328 _ 89. C2
        mov     eax, dword [_memman]                    ; 132A _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 132F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1333 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1337 _ 89. 04 24
        call    _memman_free_4k                         ; 133A _ E8, 00000000(rel)
        nop                                             ; 133F _ 90
        leave                                           ; 1340 _ C9
        ret                                             ; 1341 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 1342 _ 55
        mov     ebp, esp                                ; 1343 _ 89. E5
        push    ebx                                     ; 1345 _ 53
        sub     esp, 84                                 ; 1346 _ 83. EC, 54
        call    _task_now                               ; 1349 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 134E _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1351 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1358 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 135F _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1366 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 136B _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1373 _ 89. 04 24
        call    _memman_alloc                           ; 1376 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 137B _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 137E _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1383 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 138B _ 89. 04 24
        call    _memman_alloc                           ; 138E _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 1393 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1396 _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 1399 _ A3, 00000008(d)
        mov     dword [?_313], 16                       ; 139E _ C7. 05, 0000000C(d), 00000010
        mov     dword [?_314], 28                       ; 13A8 _ C7. 05, 00000010(d), 0000001C
        mov     dword [?_315], -1                       ; 13B2 _ C7. 05, 00000014(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 13BC _ 8B. 45, F0
        add     eax, 16                                 ; 13BF _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 13C2 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 13C5 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 13C9 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 13CC _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 13D0 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 13D8 _ 89. 04 24
        call    _fifo8_init                             ; 13DB _ E8, 00000000(rel)
        call    _timer_alloc                            ; 13E0 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 13E5 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 13E8 _ 8B. 45, F0
        add     eax, 16                                 ; 13EB _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 13EE _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 13F6 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 13FA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 13FD _ 89. 04 24
        call    _timer_init                             ; 1400 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1405 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 140D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1410 _ 89. 04 24
        call    _timer_settime                          ; 1413 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1418 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 141D _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1425 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 142D _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1435 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 143D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1440 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1444 _ 89. 04 24
        call    _showString                             ; 1447 _ E8, 00000AB1
        mov     dword [ebp-28H], 0                      ; 144C _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 1453 _ C7. 45, D4, 00013400
?_060:  call    _io_cli                                 ; 145A _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 145F _ 8B. 45, F0
        add     eax, 16                                 ; 1462 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1465 _ 89. 04 24
        call    _fifo8_status                           ; 1468 _ E8, 00000000(rel)
        test    eax, eax                                ; 146D _ 85. C0
        jnz     ?_061                                   ; 146F _ 75, 07
        call    _io_sti                                 ; 1471 _ E8, 00000000(rel)
        jmp     ?_060                                   ; 1476 _ EB, E2
; _console_task End of function

?_061:  ; Local function
        call    _io_sti                                 ; 1478 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 147D _ 8B. 45, F0
        add     eax, 16                                 ; 1480 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1483 _ 89. 04 24
        call    _fifo8_get                              ; 1486 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 148B _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 148E _ 83. 7D, D0, 01
        jg      ?_064                                   ; 1492 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1494 _ 83. 7D, F4, 00
        js      ?_064                                   ; 1498 _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 149A _ 83. 7D, D0, 00
        jz      ?_062                                   ; 149E _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 14A0 _ 8B. 45, F0
        add     eax, 16                                 ; 14A3 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 14A6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 14AE _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 14B2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14B5 _ 89. 04 24
        call    _timer_init                             ; 14B8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 14BD _ C7. 45, F4, 00000007
        jmp     ?_063                                   ; 14C4 _ EB, 24

?_062:  mov     eax, dword [ebp-10H]                    ; 14C6 _ 8B. 45, F0
        add     eax, 16                                 ; 14C9 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 14CC _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 14D4 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 14D8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14DB _ 89. 04 24
        call    _timer_init                             ; 14DE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 14E3 _ C7. 45, F4, 00000000
?_063:  mov     dword [esp+4H], 50                      ; 14EA _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 14F2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14F5 _ 89. 04 24
        call    _timer_settime                          ; 14F8 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 14FD _ E9, 000002CB

?_064:  cmp     dword [ebp-30H], 87                     ; 1502 _ 83. 7D, D0, 57
        jnz     ?_065                                   ; 1506 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1508 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 150F _ 8B. 45, F0
        add     eax, 16                                 ; 1512 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1515 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 151D _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1521 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1524 _ 89. 04 24
        call    _timer_init                             ; 1527 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 152C _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1534 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1537 _ 89. 04 24
        call    _timer_settime                          ; 153A _ E8, 00000000(rel)
        jmp     ?_074                                   ; 153F _ E9, 00000289

?_065:  cmp     dword [ebp-30H], 88                     ; 1544 _ 83. 7D, D0, 58
        jnz     ?_066                                   ; 1548 _ 75, 59
        mov     ecx, dword [?_314]                      ; 154A _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 1550 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1556 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 155B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1563 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1567 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 156B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 156E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1572 _ 89. 04 24
        call    _set_cursor                             ; 1575 _ E8, FFFFF2E4
        mov     dword [ebp-0CH], -1                     ; 157A _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1581 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1586 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 158E _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1596 _ 89. 04 24
        call    _task_run                               ; 1599 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 159E _ E9, 0000022A

?_066:  cmp     dword [ebp-30H], 28                     ; 15A3 _ 83. 7D, D0, 1C
        jne     ?_072                                   ; 15A7 _ 0F 85, 00000134
        mov     ecx, dword [?_314]                      ; 15AD _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 15B3 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 15B9 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 15BE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 15C6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 15CA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 15CE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 15D1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15D5 _ 89. 04 24
        call    _set_cursor                             ; 15D8 _ E8, FFFFF281
        mov     eax, dword [?_313]                      ; 15DD _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 15E2 _ 8D. 50, 07
        test    eax, eax                                ; 15E5 _ 85. C0
        cmovs   eax, edx                                ; 15E7 _ 0F 48. C2
        sar     eax, 3                                  ; 15EA _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 15ED _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 15F0 _ 8B. 45, E0
        add     eax, edx                                ; 15F3 _ 01. D0
        mov     byte [eax], 0                           ; 15F5 _ C6. 00, 00
        mov     eax, dword [?_314]                      ; 15F8 _ A1, 00000010(d)
        mov     edx, dword [ebp+8H]                     ; 15FD _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1600 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1604 _ 89. 04 24
        call    _cons_newline                           ; 1607 _ E8, 000002D8
        mov     dword [?_314], eax                      ; 160C _ A3, 00000010(d)
        mov     dword [esp+4H], ?_305                   ; 1611 _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-20H]                    ; 1619 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 161C _ 89. 04 24
        call    _strcmp                                 ; 161F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1624 _ 83. F8, 01
        jnz     ?_067                                   ; 1627 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1629 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 162C _ 89. 04 24
        call    _cmd_mem                                ; 162F _ E8, FFFFFABF
        jmp     ?_071                                   ; 1634 _ E9, 00000099

?_067:  mov     dword [esp+4H], ?_306                   ; 1639 _ C7. 44 24, 04, 00000031(d)
        mov     eax, dword [ebp-20H]                    ; 1641 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1644 _ 89. 04 24
        call    _strcmp                                 ; 1647 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 164C _ 83. F8, 01
        jnz     ?_068                                   ; 164F _ 75, 07
        call    _cmd_cls                                ; 1651 _ E8, FFFFFB8D
        jmp     ?_071                                   ; 1656 _ EB, 7A

?_068:  mov     dword [esp+4H], ?_307                   ; 1658 _ C7. 44 24, 04, 00000035(d)
        mov     eax, dword [ebp-20H]                    ; 1660 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1663 _ 89. 04 24
        call    _strcmp                                 ; 1666 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 166B _ 83. F8, 01
        jnz     ?_069                                   ; 166E _ 75, 07
        call    _cmd_hlt                                ; 1670 _ E8, FFFFFC46
        jmp     ?_071                                   ; 1675 _ EB, 5B

?_069:  mov     dword [esp+4H], ?_308                   ; 1677 _ C7. 44 24, 04, 00000039(d)
        mov     eax, dword [ebp-20H]                    ; 167F _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1682 _ 89. 04 24
        call    _strcmp                                 ; 1685 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 168A _ 83. F8, 01
        jnz     ?_070                                   ; 168D _ 75, 07
        call    _cmd_dir                                ; 168F _ E8, FFFFF5AB
        jmp     ?_071                                   ; 1694 _ EB, 3C

?_070:  mov     eax, dword [ebp-20H]                    ; 1696 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1699 _ 0F B6. 00
        cmp     al, 116                                 ; 169C _ 3C, 74
        jnz     ?_071                                   ; 169E _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 16A0 _ 8B. 45, E0
        add     eax, 1                                  ; 16A3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 16A6 _ 0F B6. 00
        cmp     al, 121                                 ; 16A9 _ 3C, 79
        jnz     ?_071                                   ; 16AB _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 16AD _ 8B. 45, E0
        add     eax, 2                                  ; 16B0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 16B3 _ 0F B6. 00
        cmp     al, 112                                 ; 16B6 _ 3C, 70
        jnz     ?_071                                   ; 16B8 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 16BA _ 8B. 45, E0
        add     eax, 3                                  ; 16BD _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 16C0 _ 0F B6. 00
        cmp     al, 101                                 ; 16C3 _ 3C, 65
        jnz     ?_071                                   ; 16C5 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 16C7 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16CA _ 89. 04 24
        call    _cmd_type                               ; 16CD _ E8, FFFFF6FC
?_071:  mov     dword [?_313], 16                       ; 16D2 _ C7. 05, 0000000C(d), 00000010
        jmp     ?_074                                   ; 16DC _ E9, 000000EC

?_072:  cmp     dword [ebp-30H], 14                     ; 16E1 _ 83. 7D, D0, 0E
        jnz     ?_073                                   ; 16E5 _ 75, 79
        mov     eax, dword [?_313]                      ; 16E7 _ A1, 0000000C(d)
        cmp     eax, 8                                  ; 16EC _ 83. F8, 08
        jle     ?_073                                   ; 16EF _ 7E, 6F
        mov     ecx, dword [?_314]                      ; 16F1 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 16F7 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 16FD _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1702 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 170A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 170E _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1712 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1715 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1719 _ 89. 04 24
        call    _set_cursor                             ; 171C _ E8, FFFFF13D
        mov     eax, dword [?_313]                      ; 1721 _ A1, 0000000C(d)
        sub     eax, 8                                  ; 1726 _ 83. E8, 08
        mov     dword [?_313], eax                      ; 1729 _ A3, 0000000C(d)
        mov     ecx, dword [?_314]                      ; 172E _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 1734 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 173A _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 173F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1747 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 174B _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 174F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1752 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1756 _ 89. 04 24
        call    _set_cursor                             ; 1759 _ E8, FFFFF100
        jmp     ?_074                                   ; 175E _ EB, 6D

?_073:  mov     eax, dword [ebp-30H]                    ; 1760 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 1763 _ 89. 04 24
        call    _transferScanCode                       ; 1766 _ E8, FFFFF1C6
        mov     byte [ebp-31H], al                      ; 176B _ 88. 45, CF
        mov     eax, dword [?_313]                      ; 176E _ A1, 0000000C(d)
        cmp     eax, 239                                ; 1773 _ 3D, 000000EF
        jg      ?_074                                   ; 1778 _ 7F, 53
        cmp     byte [ebp-31H], 0                       ; 177A _ 80. 7D, CF, 00
        jz      ?_074                                   ; 177E _ 74, 4D
        mov     eax, dword [?_313]                      ; 1780 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 1785 _ 8D. 50, 07
        test    eax, eax                                ; 1788 _ 85. C0
        cmovs   eax, edx                                ; 178A _ 0F 48. C2
        sar     eax, 3                                  ; 178D _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1790 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1793 _ 8B. 45, E0
        add     edx, eax                                ; 1796 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 1798 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 179C _ 88. 02
        mov     eax, dword [?_313]                      ; 179E _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 17A3 _ 8D. 50, 07
        test    eax, eax                                ; 17A6 _ 85. C0
        cmovs   eax, edx                                ; 17A8 _ 0F 48. C2
        sar     eax, 3                                  ; 17AB _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 17AE _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 17B1 _ 8B. 45, E0
        add     eax, edx                                ; 17B4 _ 01. D0
        mov     byte [eax], 0                           ; 17B6 _ C6. 00, 00
        movsx   eax, byte [ebp-31H]                     ; 17B9 _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 17BD _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 17C5 _ 89. 04 24
        call    _cons_putchar                           ; 17C8 _ E8, 0000003E
?_074:  cmp     dword [ebp-0CH], 0                      ; 17CD _ 83. 7D, F4, 00
        js      ?_060                                   ; 17D1 _ 0F 88, FFFFFC83
        mov     ecx, dword [?_314]                      ; 17D7 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_313]                      ; 17DD _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17E3 _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 17E8 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 17EB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 17EF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17F3 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17F7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17FA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FE _ 89. 04 24
        call    _set_cursor                             ; 1801 _ E8, FFFFF058
        jmp     ?_060                                   ; 1806 _ E9, FFFFFC4F

_cons_putchar:; Function begin
        push    ebp                                     ; 180B _ 55
        mov     ebp, esp                                ; 180C _ 89. E5
        push    ebx                                     ; 180E _ 53
        sub     esp, 52                                 ; 180F _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1812 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1815 _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1818 _ 88. 45, F4
        mov     eax, edx                                ; 181B _ 89. D0
        mov     byte [ebp-10H], al                      ; 181D _ 88. 45, F0
        mov     ebx, dword [?_314]                      ; 1820 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_313]                      ; 1826 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 182C _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1832 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1837 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 183F _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1843 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1847 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 184B _ 89. 04 24
        call    _set_cursor                             ; 184E _ E8, FFFFF00B
        movzx   eax, byte [ebp-0CH]                     ; 1853 _ 0F B6. 45, F4
        mov     byte [?_316], al                        ; 1857 _ A2, 00000018(d)
        mov     byte [?_317], 0                         ; 185C _ C6. 05, 00000019(d), 00
        mov     ebx, dword [?_314]                      ; 1863 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_313]                      ; 1869 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 186F _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1875 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_316                  ; 187A _ C7. 44 24, 14, 00000018(d)
        mov     dword [esp+10H], 7                      ; 1882 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 188A _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 188E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1892 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1896 _ 89. 04 24
        call    _showString                             ; 1899 _ E8, 0000065F
        mov     eax, dword [?_313]                      ; 189E _ A1, 0000000C(d)
        add     eax, 8                                  ; 18A3 _ 83. C0, 08
        mov     dword [?_313], eax                      ; 18A6 _ A3, 0000000C(d)
        nop                                             ; 18AB _ 90
        add     esp, 52                                 ; 18AC _ 83. C4, 34
        pop     ebx                                     ; 18AF _ 5B
        pop     ebp                                     ; 18B0 _ 5D
        ret                                             ; 18B1 _ C3
; _cons_putchar End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 18B2 _ 55
        mov     ebp, esp                                ; 18B3 _ 89. E5
        sub     esp, 24                                 ; 18B5 _ 83. EC, 18
        jmp     ?_076                                   ; 18B8 _ EB, 1D

?_075:  mov     eax, dword [ebp+8H]                     ; 18BA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18BD _ 0F B6. 00
        movsx   eax, al                                 ; 18C0 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 18C3 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 18CB _ 89. 04 24
        call    _cons_putchar                           ; 18CE _ E8, FFFFFF38
        add     dword [ebp+8H], 1                       ; 18D3 _ 83. 45, 08, 01
?_076:  mov     eax, dword [ebp+8H]                     ; 18D7 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18DA _ 0F B6. 00
        test    al, al                                  ; 18DD _ 84. C0
        jnz     ?_075                                   ; 18DF _ 75, D9
        nop                                             ; 18E1 _ 90
        leave                                           ; 18E2 _ C9
        ret                                             ; 18E3 _ C3
; _cons_putstr End of function

_cons_newline:; Function begin
        push    ebp                                     ; 18E4 _ 55
        mov     ebp, esp                                ; 18E5 _ 89. E5
        push    ebx                                     ; 18E7 _ 53
        sub     esp, 52                                 ; 18E8 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 18EB _ 81. 7D, 08, 0000008B
        jg      ?_077                                   ; 18F2 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 18F4 _ 83. 45, 08, 10
        jmp     ?_086                                   ; 18F8 _ E9, 000000DB

?_077:  mov     dword [ebp-10H], 28                     ; 18FD _ C7. 45, F0, 0000001C
        jmp     ?_081                                   ; 1904 _ EB, 50

?_078:  mov     dword [ebp-0CH], 8                      ; 1906 _ C7. 45, F4, 00000008
        jmp     ?_080                                   ; 190D _ EB, 3A

?_079:  mov     eax, dword [ebp+0CH]                    ; 190F _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1912 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 1914 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 1917 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 191A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 191D _ 8B. 40, 04
        imul    eax, ecx                                ; 1920 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 1923 _ 8B. 4D, F4
        add     eax, ecx                                ; 1926 _ 01. C8
        add     eax, edx                                ; 1928 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 192A _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 192D _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 192F _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1932 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 1935 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 1939 _ 8B. 5D, F4
        add     edx, ebx                                ; 193C _ 01. DA
        add     edx, ecx                                ; 193E _ 01. CA
        movzx   eax, byte [eax]                         ; 1940 _ 0F B6. 00
        mov     byte [edx], al                          ; 1943 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1945 _ 83. 45, F4, 01
?_080:  cmp     dword [ebp-0CH], 247                    ; 1949 _ 81. 7D, F4, 000000F7
        jle     ?_079                                   ; 1950 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 1952 _ 83. 45, F0, 01
?_081:  cmp     dword [ebp-10H], 139                    ; 1956 _ 81. 7D, F0, 0000008B
        jle     ?_078                                   ; 195D _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 195F _ C7. 45, F0, 0000008C
        jmp     ?_085                                   ; 1966 _ EB, 33

?_082:  mov     dword [ebp-0CH], 8                      ; 1968 _ C7. 45, F4, 00000008
        jmp     ?_084                                   ; 196F _ EB, 1D

?_083:  mov     eax, dword [ebp+0CH]                    ; 1971 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1974 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1976 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1979 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 197C _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1980 _ 8B. 4D, F4
        add     eax, ecx                                ; 1983 _ 01. C8
        add     eax, edx                                ; 1985 _ 01. D0
        mov     byte [eax], 0                           ; 1987 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 198A _ 83. 45, F4, 01
?_084:  cmp     dword [ebp-0CH], 247                    ; 198E _ 81. 7D, F4, 000000F7
        jle     ?_083                                   ; 1995 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 1997 _ 83. 45, F0, 01
?_085:  cmp     dword [ebp-10H], 155                    ; 199B _ 81. 7D, F0, 0000009B
        jle     ?_082                                   ; 19A2 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 19A4 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 19A9 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 19B1 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 19B9 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 19C1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 19C9 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 19CC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19D0 _ 89. 04 24
        call    _sheet_refresh                          ; 19D3 _ E8, 00000000(rel)
?_086:  mov     eax, dword [_shtctl]                    ; 19D8 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 19DD _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 19E5 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 19ED _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 19F0 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 19F4 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 19FC _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 19FF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A03 _ 89. 04 24
        call    _showString                             ; 1A06 _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 1A0B _ 8B. 45, 08
        add     esp, 52                                 ; 1A0E _ 83. C4, 34
        pop     ebx                                     ; 1A11 _ 5B
        pop     ebp                                     ; 1A12 _ 5D
        ret                                             ; 1A13 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 1A14 _ 55
        mov     ebp, esp                                ; 1A15 _ 89. E5
        push    ebx                                     ; 1A17 _ 53
        sub     esp, 36                                 ; 1A18 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 1A1B _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 1A1E _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 1A21 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1A24 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 1A27 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 1A2B _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1A2F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1A37 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1A3F _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 1A47 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A51 _ 89. 04 24
        call    _boxfill8                               ; 1A54 _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 1A59 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 1A5C _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 1A5F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1A62 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1A65 _ 8B. 45, 10
        sub     eax, 28                                 ; 1A68 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 1A6B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1A6F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A73 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1A77 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1A7F _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1A87 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A8A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A8E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A91 _ 89. 04 24
        call    _boxfill8                               ; 1A94 _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 1A99 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 1A9C _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 1A9F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1AA2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1AA5 _ 8B. 45, 10
        sub     eax, 27                                 ; 1AA8 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 1AAB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1AAF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AB3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1AB7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 1ABF _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1AC7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1ACA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1ACE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AD1 _ 89. 04 24
        call    _boxfill8                               ; 1AD4 _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 1AD9 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1ADC _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1ADF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1AE2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1AE5 _ 8B. 45, 10
        sub     eax, 26                                 ; 1AE8 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 1AEB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1AEF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AF3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1AF7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AFF _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B07 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B0A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B0E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B11 _ 89. 04 24
        call    _boxfill8                               ; 1B14 _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 1B19 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1B1C _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 1B1F _ 8B. 45, 10
        sub     eax, 24                                 ; 1B22 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1B25 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1B29 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1B31 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1B35 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 1B3D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1B45 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B4F _ 89. 04 24
        call    _boxfill8                               ; 1B52 _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 1B57 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1B5A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1B5D _ 8B. 45, 10
        sub     eax, 24                                 ; 1B60 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1B63 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 1B67 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 1B6F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1B73 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 1B7B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1B83 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B86 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B8A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B8D _ 89. 04 24
        call    _boxfill8                               ; 1B90 _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 1B95 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1B98 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1B9B _ 8B. 45, 10
        sub     eax, 4                                  ; 1B9E _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 1BA1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1BA5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1BAD _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1BB1 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 1BB9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1BC1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BC4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BC8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BCB _ 89. 04 24
        call    _boxfill8                               ; 1BCE _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 1BD3 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1BD6 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1BD9 _ 8B. 45, 10
        sub     eax, 23                                 ; 1BDC _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 1BDF _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1BE3 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1BEB _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 1BEF _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 1BF7 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1BFF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C09 _ 89. 04 24
        call    _boxfill8                               ; 1C0C _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 1C11 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1C14 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1C17 _ 8B. 45, 10
        sub     eax, 3                                  ; 1C1A _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 1C1D _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C21 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C29 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1C2D _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 1C35 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1C3D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C40 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C44 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C47 _ 89. 04 24
        call    _boxfill8                               ; 1C4A _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 1C4F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1C52 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1C55 _ 8B. 45, 10
        sub     eax, 24                                 ; 1C58 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C5B _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 1C5F _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 1C67 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 1C6B _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 1C73 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1C7B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C7E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C85 _ 89. 04 24
        call    _boxfill8                               ; 1C88 _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 1C8D _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 1C90 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 1C93 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1C96 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1C99 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1C9C _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1C9F _ 8B. 45, 0C
        sub     eax, 47                                 ; 1CA2 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1CA5 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CA9 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CAD _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1CB1 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1CB5 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CBD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CC0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CC4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CC7 _ 89. 04 24
        call    _boxfill8                               ; 1CCA _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 1CCF _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1CD2 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1CD5 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1CD8 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1CDB _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 1CDE _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 1CE1 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1CE4 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1CE7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CEB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CEF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1CF3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1CF7 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CFF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D09 _ 89. 04 24
        call    _boxfill8                               ; 1D0C _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 1D11 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1D14 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1D17 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D1A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D1D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1D20 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D23 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D26 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D29 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D2D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D31 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D35 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1D39 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1D41 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D44 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D48 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D4B _ 89. 04 24
        call    _boxfill8                               ; 1D4E _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 1D53 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1D56 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1D59 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1D5C _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1D5F _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1D62 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1D65 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1D68 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 1D6B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D6F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D73 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D77 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1D7B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1D83 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D86 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D8A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D8D _ 89. 04 24
        call    _boxfill8                               ; 1D90 _ E8, 000002DC
        nop                                             ; 1D95 _ 90
        add     esp, 36                                 ; 1D96 _ 83. C4, 24
        pop     ebx                                     ; 1D99 _ 5B
        pop     ebp                                     ; 1D9A _ 5D
        ret                                             ; 1D9B _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 1D9C _ 55
        mov     ebp, esp                                ; 1D9D _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1D9F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1DA2 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 1DA5 _ A1, 00000134(d)
        add     eax, edx                                ; 1DAA _ 01. D0
        mov     dword [_mx], eax                        ; 1DAC _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 1DB1 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1DB4 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 1DB7 _ A1, 00000138(d)
        add     eax, edx                                ; 1DBC _ 01. D0
        mov     dword [_my], eax                        ; 1DBE _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 1DC3 _ A1, 00000134(d)
        test    eax, eax                                ; 1DC8 _ 85. C0
        jns     ?_087                                   ; 1DCA _ 79, 0A
        mov     dword [_mx], 0                          ; 1DCC _ C7. 05, 00000134(d), 00000000
?_087:  mov     eax, dword [_my]                        ; 1DD6 _ A1, 00000138(d)
        test    eax, eax                                ; 1DDB _ 85. C0
        jns     ?_088                                   ; 1DDD _ 79, 0A
        mov     dword [_my], 0                          ; 1DDF _ C7. 05, 00000138(d), 00000000
?_088:  mov     edx, dword [_xsize]                     ; 1DE9 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1DEF _ A1, 00000134(d)
        cmp     edx, eax                                ; 1DF4 _ 39. C2
        jg      ?_089                                   ; 1DF6 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1DF8 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 1DFD _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1E00 _ A3, 00000134(d)
?_089:  mov     edx, dword [_ysize]                     ; 1E05 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 1E0B _ A1, 00000138(d)
        cmp     edx, eax                                ; 1E10 _ 39. C2
        jg      ?_090                                   ; 1E12 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1E14 _ A1, 00000140(d)
        sub     eax, 1                                  ; 1E19 _ 83. E8, 01
        mov     dword [_my], eax                        ; 1E1C _ A3, 00000138(d)
?_090:  nop                                             ; 1E21 _ 90
        pop     ebp                                     ; 1E22 _ 5D
        ret                                             ; 1E23 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1E24 _ 55
        mov     ebp, esp                                ; 1E25 _ 89. E5
        sub     esp, 40                                 ; 1E27 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 1E2A _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1E2F _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1E32 _ C6. 45, F3, 00
        call    _io_sti                                 ; 1E36 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1E3B _ C7. 04 24, 00000040(d)
        call    _fifo8_get                              ; 1E42 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1E47 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 1E4A _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1E4E _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1E52 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1E59 _ E8, 00000787
        test    eax, eax                                ; 1E5E _ 85. C0
        jz      ?_091                                   ; 1E60 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1E62 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 1E6A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E6D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E71 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E74 _ 89. 04 24
        call    _computeMousePosition                   ; 1E77 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1E7C _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1E82 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1E87 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1E8B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1E8F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1E92 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E96 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E99 _ 89. 04 24
        call    _sheet_slide                            ; 1E9C _ E8, 00000000(rel)
        mov     eax, dword [?_321]                      ; 1EA1 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1EA6 _ 83. E0, 01
        test    eax, eax                                ; 1EA9 _ 85. C0
        jz      ?_091                                   ; 1EAB _ 74, 2C
        mov     eax, dword [_my]                        ; 1EAD _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1EB2 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1EB5 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 1EBA _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1EBD _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1EC2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EC6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1ECA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1ECE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1ED1 _ 89. 04 24
        call    _sheet_slide                            ; 1ED4 _ E8, 00000000(rel)
?_091:  nop                                             ; 1ED9 _ 90
        leave                                           ; 1EDA _ C9
        ret                                             ; 1EDB _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1EDC _ 55
        mov     ebp, esp                                ; 1EDD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1EDF _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1EE2 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1EE8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1EEB _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1EF1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1EF4 _ 66: C7. 40, 06, 01E0
        nop                                             ; 1EFA _ 90
        pop     ebp                                     ; 1EFB _ 5D
        ret                                             ; 1EFC _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1EFD _ 55
        mov     ebp, esp                                ; 1EFE _ 89. E5
        push    ebx                                     ; 1F00 _ 53
        sub     esp, 68                                 ; 1F01 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1F04 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1F07 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1F0A _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1F0D _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 1F10 _ C7. 45, F0, 00000000
        jmp     ?_093                                   ; 1F17 _ EB, 4B

?_092:  mov     eax, dword [ebp+1CH]                    ; 1F19 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1F1C _ 0F B6. 00
        movzx   eax, al                                 ; 1F1F _ 0F B6. C0
        shl     eax, 4                                  ; 1F22 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 1F25 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1F2B _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 1F2F _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1F32 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1F35 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1F38 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1F3A _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1F3E _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1F42 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1F45 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1F49 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1F4C _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1F50 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1F54 _ 89. 14 24
        call    _showFont8                              ; 1F57 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1F5C _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1F60 _ 83. 45, 1C, 01
?_093:  mov     eax, dword [ebp+1CH]                    ; 1F64 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1F67 _ 0F B6. 00
        test    al, al                                  ; 1F6A _ 84. C0
        jnz     ?_092                                   ; 1F6C _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 1F6E _ 8B. 45, 14
        add     eax, 16                                 ; 1F71 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 1F74 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1F78 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 1F7B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1F7F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1F82 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1F86 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1F89 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1F8D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F90 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F94 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F97 _ 89. 04 24
        call    _sheet_refresh                          ; 1F9A _ E8, 00000000(rel)
        nop                                             ; 1F9F _ 90
        add     esp, 68                                 ; 1FA0 _ 83. C4, 44
        pop     ebx                                     ; 1FA3 _ 5B
        pop     ebp                                     ; 1FA4 _ 5D
        ret                                             ; 1FA5 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 1FA6 _ 55
        mov     ebp, esp                                ; 1FA7 _ 89. E5
        sub     esp, 24                                 ; 1FA9 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2519         ; 1FAC _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 1FB4 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 1FBC _ C7. 04 24, 00000000
        call    _set_palette                            ; 1FC3 _ E8, 00000003
        nop                                             ; 1FC8 _ 90
        leave                                           ; 1FC9 _ C9
        ret                                             ; 1FCA _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1FCB _ 55
        mov     ebp, esp                                ; 1FCC _ 89. E5
        sub     esp, 40                                 ; 1FCE _ 83. EC, 28
        call    _io_load_eflags                         ; 1FD1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1FD6 _ 89. 45, F0
        call    _io_cli                                 ; 1FD9 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1FDE _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 1FE1 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 1FE5 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1FEC _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1FF1 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 1FF4 _ 89. 45, F4
        jmp     ?_095                                   ; 1FF7 _ EB, 62

?_094:  mov     eax, dword [ebp+10H]                    ; 1FF9 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1FFC _ 0F B6. 00
        shr     al, 2                                   ; 1FFF _ C0. E8, 02
        movzx   eax, al                                 ; 2002 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2005 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2009 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2010 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2015 _ 8B. 45, 10
        add     eax, 1                                  ; 2018 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 201B _ 0F B6. 00
        shr     al, 2                                   ; 201E _ C0. E8, 02
        movzx   eax, al                                 ; 2021 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2024 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2028 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 202F _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2034 _ 8B. 45, 10
        add     eax, 2                                  ; 2037 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 203A _ 0F B6. 00
        shr     al, 2                                   ; 203D _ C0. E8, 02
        movzx   eax, al                                 ; 2040 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2043 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2047 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 204E _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 2053 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2057 _ 83. 45, F4, 01
?_095:  mov     eax, dword [ebp-0CH]                    ; 205B _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 205E _ 3B. 45, 0C
        jle     ?_094                                   ; 2061 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 2063 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2066 _ 89. 04 24
        call    _io_store_eflags                        ; 2069 _ E8, 00000000(rel)
        nop                                             ; 206E _ 90
        leave                                           ; 206F _ C9
        ret                                             ; 2070 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 2071 _ 55
        mov     ebp, esp                                ; 2072 _ 89. E5
        sub     esp, 20                                 ; 2074 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2077 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 207A _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 207D _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2080 _ 89. 45, F8
        jmp     ?_099                                   ; 2083 _ EB, 31

?_096:  mov     eax, dword [ebp+14H]                    ; 2085 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2088 _ 89. 45, FC
        jmp     ?_098                                   ; 208B _ EB, 1D

?_097:  mov     eax, dword [ebp-8H]                     ; 208D _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2090 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 2094 _ 8B. 55, FC
        add     eax, edx                                ; 2097 _ 01. D0
        mov     edx, eax                                ; 2099 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 209B _ 8B. 45, 08
        add     edx, eax                                ; 209E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 20A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 20A4 _ 88. 02
        add     dword [ebp-4H], 1                       ; 20A6 _ 83. 45, FC, 01
?_098:  mov     eax, dword [ebp-4H]                     ; 20AA _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 20AD _ 3B. 45, 1C
        jle     ?_097                                   ; 20B0 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 20B2 _ 83. 45, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 20B6 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 20B9 _ 3B. 45, 20
        jle     ?_096                                   ; 20BC _ 7E, C7
        nop                                             ; 20BE _ 90
        leave                                           ; 20BF _ C9
        ret                                             ; 20C0 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 20C1 _ 55
        mov     ebp, esp                                ; 20C2 _ 89. E5
        sub     esp, 20                                 ; 20C4 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 20C7 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 20CA _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 20CD _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 20D4 _ E9, 0000015C

?_100:  mov     edx, dword [ebp-4H]                     ; 20D9 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 20DC _ 8B. 45, 1C
        add     eax, edx                                ; 20DF _ 01. D0
        movzx   eax, byte [eax]                         ; 20E1 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 20E4 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 20E7 _ 80. 7D, FB, 00
        jns     ?_101                                   ; 20EB _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 20ED _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 20F0 _ 8B. 45, FC
        add     eax, edx                                ; 20F3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 20F5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 20F9 _ 8B. 55, 10
        add     eax, edx                                ; 20FC _ 01. D0
        mov     edx, eax                                ; 20FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2100 _ 8B. 45, 08
        add     edx, eax                                ; 2103 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2105 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2109 _ 88. 02
?_101:  movsx   eax, byte [ebp-5H]                      ; 210B _ 0F BE. 45, FB
        and     eax, 40H                                ; 210F _ 83. E0, 40
        test    eax, eax                                ; 2112 _ 85. C0
        jz      ?_102                                   ; 2114 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2116 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2119 _ 8B. 45, FC
        add     eax, edx                                ; 211C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 211E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2122 _ 8B. 55, 10
        add     eax, edx                                ; 2125 _ 01. D0
        lea     edx, [eax+1H]                           ; 2127 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 212A _ 8B. 45, 08
        add     edx, eax                                ; 212D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 212F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2133 _ 88. 02
?_102:  movsx   eax, byte [ebp-5H]                      ; 2135 _ 0F BE. 45, FB
        and     eax, 20H                                ; 2139 _ 83. E0, 20
        test    eax, eax                                ; 213C _ 85. C0
        jz      ?_103                                   ; 213E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2140 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2143 _ 8B. 45, FC
        add     eax, edx                                ; 2146 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2148 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 214C _ 8B. 55, 10
        add     eax, edx                                ; 214F _ 01. D0
        lea     edx, [eax+2H]                           ; 2151 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2154 _ 8B. 45, 08
        add     edx, eax                                ; 2157 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2159 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 215D _ 88. 02
?_103:  movsx   eax, byte [ebp-5H]                      ; 215F _ 0F BE. 45, FB
        and     eax, 10H                                ; 2163 _ 83. E0, 10
        test    eax, eax                                ; 2166 _ 85. C0
        jz      ?_104                                   ; 2168 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 216A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 216D _ 8B. 45, FC
        add     eax, edx                                ; 2170 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2172 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2176 _ 8B. 55, 10
        add     eax, edx                                ; 2179 _ 01. D0
        lea     edx, [eax+3H]                           ; 217B _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 217E _ 8B. 45, 08
        add     edx, eax                                ; 2181 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2183 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2187 _ 88. 02
?_104:  movsx   eax, byte [ebp-5H]                      ; 2189 _ 0F BE. 45, FB
        and     eax, 08H                                ; 218D _ 83. E0, 08
        test    eax, eax                                ; 2190 _ 85. C0
        jz      ?_105                                   ; 2192 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2194 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2197 _ 8B. 45, FC
        add     eax, edx                                ; 219A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 219C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21A0 _ 8B. 55, 10
        add     eax, edx                                ; 21A3 _ 01. D0
        lea     edx, [eax+4H]                           ; 21A5 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21A8 _ 8B. 45, 08
        add     edx, eax                                ; 21AB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21AD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21B1 _ 88. 02
?_105:  movsx   eax, byte [ebp-5H]                      ; 21B3 _ 0F BE. 45, FB
        and     eax, 04H                                ; 21B7 _ 83. E0, 04
        test    eax, eax                                ; 21BA _ 85. C0
        jz      ?_106                                   ; 21BC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21BE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21C1 _ 8B. 45, FC
        add     eax, edx                                ; 21C4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21C6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21CA _ 8B. 55, 10
        add     eax, edx                                ; 21CD _ 01. D0
        lea     edx, [eax+5H]                           ; 21CF _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 21D2 _ 8B. 45, 08
        add     edx, eax                                ; 21D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21DB _ 88. 02
?_106:  movsx   eax, byte [ebp-5H]                      ; 21DD _ 0F BE. 45, FB
        and     eax, 02H                                ; 21E1 _ 83. E0, 02
        test    eax, eax                                ; 21E4 _ 85. C0
        jz      ?_107                                   ; 21E6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21EB _ 8B. 45, FC
        add     eax, edx                                ; 21EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21F0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21F4 _ 8B. 55, 10
        add     eax, edx                                ; 21F7 _ 01. D0
        lea     edx, [eax+6H]                           ; 21F9 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 21FC _ 8B. 45, 08
        add     edx, eax                                ; 21FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2201 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2205 _ 88. 02
?_107:  movsx   eax, byte [ebp-5H]                      ; 2207 _ 0F BE. 45, FB
        and     eax, 01H                                ; 220B _ 83. E0, 01
        test    eax, eax                                ; 220E _ 85. C0
        jz      ?_108                                   ; 2210 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2212 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2215 _ 8B. 45, FC
        add     eax, edx                                ; 2218 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 221A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 221E _ 8B. 55, 10
        add     eax, edx                                ; 2221 _ 01. D0
        lea     edx, [eax+7H]                           ; 2223 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        add     edx, eax                                ; 2229 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 222B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 222F _ 88. 02
?_108:  add     dword [ebp-4H], 1                       ; 2231 _ 83. 45, FC, 01
?_109:  cmp     dword [ebp-4H], 15                      ; 2235 _ 83. 7D, FC, 0F
        jle     ?_100                                   ; 2239 _ 0F 8E, FFFFFE9A
        nop                                             ; 223F _ 90
        leave                                           ; 2240 _ C9
        ret                                             ; 2241 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 2242 _ 55
        mov     ebp, esp                                ; 2243 _ 89. E5
        sub     esp, 20                                 ; 2245 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 2248 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 224B _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 224E _ C7. 45, F8, 00000000
        jmp     ?_116                                   ; 2255 _ E9, 000000B1

?_110:  mov     dword [ebp-4H], 0                       ; 225A _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 2261 _ E9, 00000097

?_111:  mov     eax, dword [ebp-8H]                     ; 2266 _ 8B. 45, F8
        shl     eax, 4                                  ; 2269 _ C1. E0, 04
        mov     edx, eax                                ; 226C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 226E _ 8B. 45, FC
        add     eax, edx                                ; 2271 _ 01. D0
        add     eax, _cursor.2566                       ; 2273 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2278 _ 0F B6. 00
        cmp     al, 42                                  ; 227B _ 3C, 2A
        jnz     ?_112                                   ; 227D _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 227F _ 8B. 45, F8
        shl     eax, 4                                  ; 2282 _ C1. E0, 04
        mov     edx, eax                                ; 2285 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2287 _ 8B. 45, FC
        add     eax, edx                                ; 228A _ 01. D0
        mov     edx, eax                                ; 228C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 228E _ 8B. 45, 08
        add     eax, edx                                ; 2291 _ 01. D0
        mov     byte [eax], 0                           ; 2293 _ C6. 00, 00
?_112:  mov     eax, dword [ebp-8H]                     ; 2296 _ 8B. 45, F8
        shl     eax, 4                                  ; 2299 _ C1. E0, 04
        mov     edx, eax                                ; 229C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 229E _ 8B. 45, FC
        add     eax, edx                                ; 22A1 _ 01. D0
        add     eax, _cursor.2566                       ; 22A3 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 22A8 _ 0F B6. 00
        cmp     al, 79                                  ; 22AB _ 3C, 4F
        jnz     ?_113                                   ; 22AD _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 22AF _ 8B. 45, F8
        shl     eax, 4                                  ; 22B2 _ C1. E0, 04
        mov     edx, eax                                ; 22B5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22B7 _ 8B. 45, FC
        add     eax, edx                                ; 22BA _ 01. D0
        mov     edx, eax                                ; 22BC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22BE _ 8B. 45, 08
        add     eax, edx                                ; 22C1 _ 01. D0
        mov     byte [eax], 7                           ; 22C3 _ C6. 00, 07
?_113:  mov     eax, dword [ebp-8H]                     ; 22C6 _ 8B. 45, F8
        shl     eax, 4                                  ; 22C9 _ C1. E0, 04
        mov     edx, eax                                ; 22CC _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22CE _ 8B. 45, FC
        add     eax, edx                                ; 22D1 _ 01. D0
        add     eax, _cursor.2566                       ; 22D3 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 22D8 _ 0F B6. 00
        cmp     al, 46                                  ; 22DB _ 3C, 2E
        jnz     ?_114                                   ; 22DD _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 22DF _ 8B. 45, F8
        shl     eax, 4                                  ; 22E2 _ C1. E0, 04
        mov     edx, eax                                ; 22E5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22E7 _ 8B. 45, FC
        add     eax, edx                                ; 22EA _ 01. D0
        mov     edx, eax                                ; 22EC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22EE _ 8B. 45, 08
        add     edx, eax                                ; 22F1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22F3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22F7 _ 88. 02
?_114:  add     dword [ebp-4H], 1                       ; 22F9 _ 83. 45, FC, 01
?_115:  cmp     dword [ebp-4H], 15                      ; 22FD _ 83. 7D, FC, 0F
        jle     ?_111                                   ; 2301 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 2307 _ 83. 45, F8, 01
?_116:  cmp     dword [ebp-8H], 15                      ; 230B _ 83. 7D, F8, 0F
        jle     ?_110                                   ; 230F _ 0F 8E, FFFFFF45
        nop                                             ; 2315 _ 90
        leave                                           ; 2316 _ C9
        ret                                             ; 2317 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 2318 _ 55
        mov     ebp, esp                                ; 2319 _ 89. E5
        push    ebx                                     ; 231B _ 53
        sub     esp, 16                                 ; 231C _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 231F _ C7. 45, F4, 00000000
        jmp     ?_120                                   ; 2326 _ EB, 4E

?_117:  mov     dword [ebp-8H], 0                       ; 2328 _ C7. 45, F8, 00000000
        jmp     ?_119                                   ; 232F _ EB, 39

?_118:  mov     eax, dword [ebp-0CH]                    ; 2331 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 2334 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 2338 _ 8B. 55, F8
        add     eax, edx                                ; 233B _ 01. D0
        mov     edx, eax                                ; 233D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 233F _ 8B. 45, 20
        add     eax, edx                                ; 2342 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2344 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2347 _ 8B. 55, F4
        add     edx, ecx                                ; 234A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 234C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2350 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 2353 _ 8B. 4D, F8
        add     ecx, ebx                                ; 2356 _ 01. D9
        add     edx, ecx                                ; 2358 _ 01. CA
        mov     ecx, edx                                ; 235A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 235C _ 8B. 55, 08
        add     edx, ecx                                ; 235F _ 01. CA
        movzx   eax, byte [eax]                         ; 2361 _ 0F B6. 00
        mov     byte [edx], al                          ; 2364 _ 88. 02
        add     dword [ebp-8H], 1                       ; 2366 _ 83. 45, F8, 01
?_119:  mov     eax, dword [ebp-8H]                     ; 236A _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 236D _ 3B. 45, 10
        jl      ?_118                                   ; 2370 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 2372 _ 83. 45, F4, 01
?_120:  mov     eax, dword [ebp-0CH]                    ; 2376 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2379 _ 3B. 45, 14
        jl      ?_117                                   ; 237C _ 7C, AA
        nop                                             ; 237E _ 90
        add     esp, 16                                 ; 237F _ 83. C4, 10
        pop     ebx                                     ; 2382 _ 5B
        pop     ebp                                     ; 2383 _ 5D
        ret                                             ; 2384 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 2385 _ 55
        mov     ebp, esp                                ; 2386 _ 89. E5
        sub     esp, 40                                 ; 2388 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 238B _ A1, 0000001C(d)
        mov     dword [ebp-0CH], eax                    ; 2390 _ 89. 45, F4
        movzx   eax, word [?_318]                       ; 2393 _ 0F B7. 05, 00000020(d)
        cwde                                            ; 239A _ 98
        mov     dword [ebp-10H], eax                    ; 239B _ 89. 45, F0
        movzx   eax, word [?_319]                       ; 239E _ 0F B7. 05, 00000022(d)
        cwde                                            ; 23A5 _ 98
        mov     dword [ebp-14H], eax                    ; 23A6 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 23A9 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 23B1 _ C7. 04 24, 00000020
        call    _io_out8                                ; 23B8 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 23BD _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 23C1 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 23C8 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 23CD _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 23D0 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 23D4 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 23D8 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 23DF _ E8, 00000000(rel)
        nop                                             ; 23E4 _ 90
        leave                                           ; 23E5 _ C9
        ret                                             ; 23E6 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 23E7 _ 55
        mov     ebp, esp                                ; 23E8 _ 89. E5
        sub     esp, 4                                  ; 23EA _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 23ED _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 23F0 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 23F3 _ 80. 7D, FC, 09
        jle     ?_121                                   ; 23F7 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 23F9 _ 0F B6. 45, FC
        add     eax, 55                                 ; 23FD _ 83. C0, 37
        jmp     ?_122                                   ; 2400 _ EB, 07

?_121:  movzx   eax, byte [ebp-4H]                      ; 2402 _ 0F B6. 45, FC
        add     eax, 48                                 ; 2406 _ 83. C0, 30
?_122:  leave                                           ; 2409 _ C9
        ret                                             ; 240A _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 240B _ 55
        mov     ebp, esp                                ; 240C _ 89. E5
        sub     esp, 24                                 ; 240E _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2411 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 2414 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2417 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 241E _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2422 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2425 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2428 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 242C _ 89. 04 24
        call    _charToHexVal                           ; 242F _ E8, FFFFFFB3
        mov     byte [?_296], al                        ; 2434 _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 2439 _ 0F B6. 45, EC
        shr     al, 4                                   ; 243D _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2440 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2443 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2447 _ 0F BE. C0
        mov     dword [esp], eax                        ; 244A _ 89. 04 24
        call    _charToHexVal                           ; 244D _ E8, FFFFFF95
        mov     byte [?_295], al                        ; 2452 _ A2, 00000102(d)
        mov     eax, _keyval                            ; 2457 _ B8, 00000100(d)
        leave                                           ; 245C _ C9
        ret                                             ; 245D _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 245E _ 55
        mov     ebp, esp                                ; 245F _ 89. E5
        sub     esp, 16                                 ; 2461 _ 83. EC, 10
        mov     byte [_str.2614], 48                    ; 2464 _ C6. 05, 00000388(d), 30
        mov     byte [?_323], 88                        ; 246B _ C6. 05, 00000389(d), 58
        mov     byte [?_324], 0                         ; 2472 _ C6. 05, 00000392(d), 00
        mov     dword [ebp-4H], 2                       ; 2479 _ C7. 45, FC, 00000002
        jmp     ?_124                                   ; 2480 _ EB, 0F

?_123:  mov     eax, dword [ebp-4H]                     ; 2482 _ 8B. 45, FC
        add     eax, _str.2614                          ; 2485 _ 05, 00000388(d)
        mov     byte [eax], 48                          ; 248A _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 248D _ 83. 45, FC, 01
?_124:  cmp     dword [ebp-4H], 9                       ; 2491 _ 83. 7D, FC, 09
        jle     ?_123                                   ; 2495 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2497 _ C7. 45, F8, 00000009
        jmp     ?_128                                   ; 249E _ EB, 42

?_125:  mov     eax, dword [ebp+8H]                     ; 24A0 _ 8B. 45, 08
        and     eax, 0FH                                ; 24A3 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 24A6 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 24A9 _ 8B. 45, 08
        shr     eax, 4                                  ; 24AC _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 24AF _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 24B2 _ 83. 7D, F4, 09
        jle     ?_126                                   ; 24B6 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 24B8 _ 8B. 45, F4
        add     eax, 55                                 ; 24BB _ 83. C0, 37
        mov     edx, eax                                ; 24BE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 24C0 _ 8B. 45, F8
        add     eax, _str.2614                          ; 24C3 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 24C8 _ 88. 10
        jmp     ?_127                                   ; 24CA _ EB, 12

?_126:  mov     eax, dword [ebp-0CH]                    ; 24CC _ 8B. 45, F4
        add     eax, 48                                 ; 24CF _ 83. C0, 30
        mov     edx, eax                                ; 24D2 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 24D4 _ 8B. 45, F8
        add     eax, _str.2614                          ; 24D7 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 24DC _ 88. 10
?_127:  sub     dword [ebp-8H], 1                       ; 24DE _ 83. 6D, F8, 01
?_128:  cmp     dword [ebp-8H], 1                       ; 24E2 _ 83. 7D, F8, 01
        jle     ?_129                                   ; 24E6 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 24E8 _ 83. 7D, 08, 00
        jnz     ?_125                                   ; 24EC _ 75, B2
?_129:  mov     eax, _str.2614                          ; 24EE _ B8, 00000388(d)
        leave                                           ; 24F3 _ C9
        ret                                             ; 24F4 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 24F5 _ 55
        mov     ebp, esp                                ; 24F6 _ 89. E5
        sub     esp, 24                                 ; 24F8 _ 83. EC, 18
?_130:  mov     dword [esp], 100                        ; 24FB _ C7. 04 24, 00000064
        call    _io_in8                                 ; 2502 _ E8, 00000000(rel)
        and     eax, 02H                                ; 2507 _ 83. E0, 02
        test    eax, eax                                ; 250A _ 85. C0
        jz      ?_131                                   ; 250C _ 74, 02
        jmp     ?_130                                   ; 250E _ EB, EB
; _wait_KBC_sendready End of function

?_131:  ; Local function
        nop                                             ; 2510 _ 90
        nop                                             ; 2511 _ 90
        leave                                           ; 2512 _ C9
        ret                                             ; 2513 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 2514 _ 55
        mov     ebp, esp                                ; 2515 _ 89. E5
        sub     esp, 24                                 ; 2517 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 251A _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 251F _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2527 _ C7. 04 24, 00000064
        call    _io_out8                                ; 252E _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2533 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 2538 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 2540 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2547 _ E8, 00000000(rel)
        nop                                             ; 254C _ 90
        leave                                           ; 254D _ C9
        ret                                             ; 254E _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 254F _ 55
        mov     ebp, esp                                ; 2550 _ 89. E5
        sub     esp, 24                                 ; 2552 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2555 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 255A _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 2562 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2569 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 256E _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 2573 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 257B _ C7. 04 24, 00000060
        call    _io_out8                                ; 2582 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2587 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 258A _ C6. 40, 03, 00
        nop                                             ; 258E _ 90
        leave                                           ; 258F _ C9
        ret                                             ; 2590 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 2591 _ 55
        mov     ebp, esp                                ; 2592 _ 89. E5
        sub     esp, 40                                 ; 2594 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2597 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 259F _ C7. 04 24, 000000A0
        call    _io_out8                                ; 25A6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 25AB _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 25B3 _ C7. 04 24, 00000020
        call    _io_out8                                ; 25BA _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 25BF _ C7. 04 24, 00000060
        call    _io_in8                                 ; 25C6 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 25CB _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 25CE _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 25D2 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 25D6 _ C7. 04 24, 00000040(d)
        call    _fifo8_put                              ; 25DD _ E8, 00000000(rel)
        nop                                             ; 25E2 _ 90
        leave                                           ; 25E3 _ C9
        ret                                             ; 25E4 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 25E5 _ 55
        mov     ebp, esp                                ; 25E6 _ 89. E5
        sub     esp, 4                                  ; 25E8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 25EB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 25EE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 25F1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 25F4 _ 0F B6. 40, 03
        test    al, al                                  ; 25F8 _ 84. C0
        jnz     ?_133                                   ; 25FA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 25FC _ 80. 7D, FC, FA
        jnz     ?_132                                   ; 2600 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2602 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2605 _ C6. 40, 03, 01
?_132:  mov     eax, 0                                  ; 2609 _ B8, 00000000
        jmp     ?_140                                   ; 260E _ E9, 0000010F

?_133:  mov     eax, dword [ebp+8H]                     ; 2613 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2616 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 261A _ 3C, 01
        jnz     ?_135                                   ; 261C _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 261E _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2622 _ 25, 000000C8
        cmp     eax, 8                                  ; 2627 _ 83. F8, 08
        jnz     ?_134                                   ; 262A _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 262C _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 262F _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2633 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2635 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2638 _ C6. 40, 03, 02
?_134:  mov     eax, 0                                  ; 263C _ B8, 00000000
        jmp     ?_140                                   ; 2641 _ E9, 000000DC

?_135:  mov     eax, dword [ebp+8H]                     ; 2646 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2649 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 264D _ 3C, 02
        jnz     ?_136                                   ; 264F _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 2651 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2654 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2658 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 265B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 265E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2662 _ B8, 00000000
        jmp     ?_140                                   ; 2667 _ E9, 000000B6

?_136:  mov     eax, dword [ebp+8H]                     ; 266C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 266F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 2673 _ 3C, 03
        jne     ?_139                                   ; 2675 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 267B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 267E _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 2682 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 2685 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2688 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 268C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 268F _ 0F B6. 00
        movzx   eax, al                                 ; 2692 _ 0F B6. C0
        and     eax, 07H                                ; 2695 _ 83. E0, 07
        mov     edx, eax                                ; 2698 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 269A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 269D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 26A0 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 26A3 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 26A7 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 26AA _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 26AD _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 26B0 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 26B3 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 26B7 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 26BA _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 26BD _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 26C0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 26C3 _ 0F B6. 00
        movzx   eax, al                                 ; 26C6 _ 0F B6. C0
        and     eax, 10H                                ; 26C9 _ 83. E0, 10
        test    eax, eax                                ; 26CC _ 85. C0
        jz      ?_137                                   ; 26CE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 26D0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 26D3 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 26D6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 26DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 26DD _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 26E0 _ 89. 50, 04
?_137:  mov     eax, dword [ebp+8H]                     ; 26E3 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 26E6 _ 0F B6. 00
        movzx   eax, al                                 ; 26E9 _ 0F B6. C0
        and     eax, 20H                                ; 26EC _ 83. E0, 20
        test    eax, eax                                ; 26EF _ 85. C0
        jz      ?_138                                   ; 26F1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 26F3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 26F6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 26F9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 26FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2700 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2703 _ 89. 50, 08
?_138:  mov     eax, dword [ebp+8H]                     ; 2706 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2709 _ 8B. 40, 08
        neg     eax                                     ; 270C _ F7. D8
        mov     edx, eax                                ; 270E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2710 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2713 _ 89. 50, 08
        mov     eax, 1                                  ; 2716 _ B8, 00000001
        jmp     ?_140                                   ; 271B _ EB, 05

?_139:  mov     eax, 4294967295                         ; 271D _ B8, FFFFFFFF
?_140:  leave                                           ; 2722 _ C9
        ret                                             ; 2723 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 2724 _ 55
        mov     ebp, esp                                ; 2725 _ 89. E5
        sub     esp, 72                                 ; 2727 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 272A _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 2731 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 2738 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 273F _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 2746 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 274C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 274F _ 8B. 00
        mov     dword [esp+8H], edx                     ; 2751 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 2755 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 2758 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 275C _ 89. 04 24
        call    _init_screen8                           ; 275F _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 2764 _ 8B. 45, 20
        movsx   eax, al                                 ; 2767 _ 0F BE. C0
        mov     dword [esp+14H], ?_309                  ; 276A _ C7. 44 24, 14, 0000003D(d)
        mov     dword [esp+10H], eax                    ; 2772 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2776 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2779 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 277D _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2780 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2784 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2787 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 278B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 278E _ 89. 04 24
        call    _showString                             ; 2791 _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 2796 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2799 _ 89. 04 24
        call    _intToHexStr                            ; 279C _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 27A1 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 27A4 _ 8B. 45, 20
        movsx   eax, al                                 ; 27A7 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 27AA _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 27AD _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 27B1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 27B5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 27B8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 27BC _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 27BF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 27C3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 27C6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27CA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27CD _ 89. 04 24
        call    _showString                             ; 27D0 _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 27D5 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 27D9 _ 8B. 45, 20
        movsx   eax, al                                 ; 27DC _ 0F BE. C0
        mov     dword [esp+14H], ?_310                  ; 27DF _ C7. 44 24, 14, 00000047(d)
        mov     dword [esp+10H], eax                    ; 27E7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 27EB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 27EE _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 27F2 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 27F5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 27F9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 27FC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2800 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2803 _ 89. 04 24
        call    _showString                             ; 2806 _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 280B _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 280E _ 8B. 00
        mov     dword [esp], eax                        ; 2810 _ 89. 04 24
        call    _intToHexStr                            ; 2813 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 2818 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 281B _ 8B. 45, 20
        movsx   eax, al                                 ; 281E _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 2821 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 2824 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2828 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 282C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 282F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2833 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2836 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 283A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 283D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2841 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2844 _ 89. 04 24
        call    _showString                             ; 2847 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 284C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2850 _ 8B. 45, 20
        movsx   eax, al                                 ; 2853 _ 0F BE. C0
        mov     dword [esp+14H], ?_311                  ; 2856 _ C7. 44 24, 14, 00000053(d)
        mov     dword [esp+10H], eax                    ; 285E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2862 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2865 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2869 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 286C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2870 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2873 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2877 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 287A _ 89. 04 24
        call    _showString                             ; 287D _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 2882 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2885 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 2888 _ 89. 04 24
        call    _intToHexStr                            ; 288B _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 2890 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 2893 _ 8B. 45, 20
        movsx   eax, al                                 ; 2896 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 2899 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 289C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 28A0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28A4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28A7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 28AB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 28AE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28B2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28BC _ 89. 04 24
        call    _showString                             ; 28BF _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 28C4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 28C8 _ 8B. 45, 20
        movsx   eax, al                                 ; 28CB _ 0F BE. C0
        mov     dword [esp+14H], ?_312                  ; 28CE _ C7. 44 24, 14, 0000005F(d)
        mov     dword [esp+10H], eax                    ; 28D6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28DA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28DD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 28E1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 28E4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28E8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28F2 _ 89. 04 24
        call    _showString                             ; 28F5 _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 28FA _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 28FD _ 8B. 40, 08
        mov     dword [esp], eax                        ; 2900 _ 89. 04 24
        call    _intToHexStr                            ; 2903 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 2908 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 290B _ 8B. 45, 20
        movsx   eax, al                                 ; 290E _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 2911 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 2914 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2918 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 291C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 291F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2923 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2926 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 292A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 292D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2931 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2934 _ 89. 04 24
        call    _showString                             ; 2937 _ E8, FFFFF5C1
        nop                                             ; 293C _ 90
        leave                                           ; 293D _ C9
        ret                                             ; 293E _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 293F _ 55
        mov     ebp, esp                                ; 2940 _ 89. E5
        sub     esp, 56                                 ; 2942 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 2945 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2948 _ 89. 04 24
        call    _sheet_alloc                            ; 294B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2950 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2953 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 2958 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 2960 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2963 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2968 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 296B _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 2973 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 297B _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 2983 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2986 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 298A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 298D _ 89. 04 24
        call    _sheet_setbuf                           ; 2990 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2995 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 299D _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 29A0 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 29A4 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 29A7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29AB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29AE _ 89. 04 24
        call    _make_window8                           ; 29B1 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 29B6 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 29BE _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 29C6 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 29CE _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 29D6 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 29DE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 29E1 _ 89. 04 24
        call    _make_textbox8                          ; 29E4 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 29E9 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 29F1 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 29F9 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 29FC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A00 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A03 _ 89. 04 24
        call    _sheet_slide                            ; 2A06 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2A0B _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2A13 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A16 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A1A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A1D _ 89. 04 24
        call    _sheet_updown                           ; 2A20 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2A25 _ 8B. 45, F4
        leave                                           ; 2A28 _ C9
        ret                                             ; 2A29 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 2A2A _ 55
        mov     ebp, esp                                ; 2A2B _ 89. E5
        push    ebx                                     ; 2A2D _ 53
        sub     esp, 68                                 ; 2A2E _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2A31 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2A34 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2A37 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A3A _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2A3D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2A40 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A43 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 2A46 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2A49 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2A4C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2A4F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A52 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 2A54 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 2A5C _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 2A60 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2A68 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2A70 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2A78 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2A7B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A7F _ 89. 04 24
        call    _boxfill8                               ; 2A82 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 2A87 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2A8A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2A8D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A90 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 2A92 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 2A9A _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 2A9E _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2AA6 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2AAE _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2AB6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2AB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2ABD _ 89. 04 24
        call    _boxfill8                               ; 2AC0 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 2AC5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2AC8 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2ACB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2ACE _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2AD0 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 2AD4 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 2ADC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2AE4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2AEC _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2AF4 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2AF7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AFB _ 89. 04 24
        call    _boxfill8                               ; 2AFE _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 2B03 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B06 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B09 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B0C _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2B0E _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 2B12 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 2B1A _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B22 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2B2A _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2B32 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B35 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B39 _ 89. 04 24
        call    _boxfill8                               ; 2B3C _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 2B41 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2B44 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2B47 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2B4A _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2B4D _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2B50 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B53 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B56 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2B58 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2B5C _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 2B60 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 2B68 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 2B6C _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2B74 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B77 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B7B _ 89. 04 24
        call    _boxfill8                               ; 2B7E _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 2B83 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2B86 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2B89 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2B8C _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2B8F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2B92 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B95 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B98 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2B9A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2B9E _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 2BA2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 2BAA _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 2BAE _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2BB6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BBD _ 89. 04 24
        call    _boxfill8                               ; 2BC0 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 2BC5 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 2BC8 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 2BCB _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 2BCE _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2BD1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BD4 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 2BD6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2BDA _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 2BDE _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 2BE6 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 2BEE _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2BF6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BF9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BFD _ 89. 04 24
        call    _boxfill8                               ; 2C00 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 2C05 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 2C08 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2C0B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C0E _ 8B. 00
        mov     dword [esp+18H], 20                     ; 2C10 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2C18 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2C1C _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2C24 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2C2C _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 2C34 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C37 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C3B _ 89. 04 24
        call    _boxfill8                               ; 2C3E _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 2C43 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2C46 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2C49 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2C4C _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2C4F _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2C52 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2C55 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C58 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C5A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C5E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2C62 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2C66 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 2C6E _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2C76 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C79 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C7D _ 89. 04 24
        call    _boxfill8                               ; 2C80 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 2C85 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2C88 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2C8B _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2C8E _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2C91 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2C94 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C97 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C9A _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C9C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2CA0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2CA4 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2CA8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2CB0 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2CB8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CBB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CBF _ 89. 04 24
        call    _boxfill8                               ; 2CC2 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 2CC7 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 2CCB _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2CCF _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2CD2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2CD6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2CD9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CDD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CE0 _ 89. 04 24
        call    _make_wtitle8                           ; 2CE3 _ E8, 00000007
        nop                                             ; 2CE8 _ 90
        add     esp, 68                                 ; 2CE9 _ 83. C4, 44
        pop     ebx                                     ; 2CEC _ 5B
        pop     ebp                                     ; 2CED _ 5D
        ret                                             ; 2CEE _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 2CEF _ 55
        mov     ebp, esp                                ; 2CF0 _ 89. E5
        push    ebx                                     ; 2CF2 _ 53
        sub     esp, 68                                 ; 2CF3 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2CF6 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2CF9 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 2CFC _ 80. 7D, E4, 00
        jz      ?_141                                   ; 2D00 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 2D02 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 2D06 _ C6. 45, ED, 0C
        jmp     ?_142                                   ; 2D0A _ EB, 08

?_141:  mov     byte [ebp-12H], 8                       ; 2D0C _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 2D10 _ C6. 45, ED, 0F
?_142:  mov     eax, dword [ebp+0CH]                    ; 2D14 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D17 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 2D1A _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 2D1D _ 0F B6. 45, ED
        movzx   eax, al                                 ; 2D21 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2D24 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2D27 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2D2A _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2D2D _ 8B. 12
        mov     dword [esp+18H], 20                     ; 2D2F _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 2D37 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 2D3B _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2D43 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 2D4B _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2D4F _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2D53 _ 89. 14 24
        call    _boxfill8                               ; 2D56 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 2D5B _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 2D5F _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2D62 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2D66 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 2D6A _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 2D72 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2D7A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D7D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D81 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D84 _ 89. 04 24
        call    _showString                             ; 2D87 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 2D8C _ C7. 45, F0, 00000000
        jmp     ?_150                                   ; 2D93 _ E9, 00000084

?_143:  mov     dword [ebp-0CH], 0                      ; 2D98 _ C7. 45, F4, 00000000
        jmp     ?_149                                   ; 2D9F _ EB, 71

?_144:  mov     eax, dword [ebp-10H]                    ; 2DA1 _ 8B. 45, F0
        shl     eax, 4                                  ; 2DA4 _ C1. E0, 04
        mov     edx, eax                                ; 2DA7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2DA9 _ 8B. 45, F4
        add     eax, edx                                ; 2DAC _ 01. D0
        add     eax, _closebtn.2685                     ; 2DAE _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2DB3 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 2DB6 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2DB9 _ 80. 7D, EF, 40
        jnz     ?_145                                   ; 2DBD _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2DBF _ C6. 45, EF, 00
        jmp     ?_148                                   ; 2DC3 _ EB, 1C

?_145:  cmp     byte [ebp-11H], 36                      ; 2DC5 _ 80. 7D, EF, 24
        jnz     ?_146                                   ; 2DC9 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2DCB _ C6. 45, EF, 0F
        jmp     ?_148                                   ; 2DCF _ EB, 10

?_146:  cmp     byte [ebp-11H], 81                      ; 2DD1 _ 80. 7D, EF, 51
        jnz     ?_147                                   ; 2DD5 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 2DD7 _ C6. 45, EF, 08
        jmp     ?_148                                   ; 2DDB _ EB, 04

?_147:  mov     byte [ebp-11H], 7                       ; 2DDD _ C6. 45, EF, 07
?_148:  mov     eax, dword [ebp+0CH]                    ; 2DE1 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 2DE4 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 2DE6 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2DE9 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2DEC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DEF _ 8B. 40, 04
        imul    eax, edx                                ; 2DF2 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 2DF5 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2DF8 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2DFB _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2DFE _ 8B. 55, F4
        add     edx, ebx                                ; 2E01 _ 01. DA
        add     eax, edx                                ; 2E03 _ 01. D0
        lea     edx, [ecx+eax]                          ; 2E05 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2E08 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2E0C _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2E0E _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 15                     ; 2E12 _ 83. 7D, F4, 0F
        jle     ?_144                                   ; 2E16 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2E18 _ 83. 45, F0, 01
?_150:  cmp     dword [ebp-10H], 13                     ; 2E1C _ 83. 7D, F0, 0D
        jle     ?_143                                   ; 2E20 _ 0F 8E, FFFFFF72
        nop                                             ; 2E26 _ 90
        add     esp, 68                                 ; 2E27 _ 83. C4, 44
        pop     ebx                                     ; 2E2A _ 5B
        pop     ebp                                     ; 2E2B _ 5D
        ret                                             ; 2E2C _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 2E2D _ 55
        mov     ebp, esp                                ; 2E2E _ 89. E5
        push    edi                                     ; 2E30 _ 57
        push    esi                                     ; 2E31 _ 56
        push    ebx                                     ; 2E32 _ 53
        sub     esp, 44                                 ; 2E33 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 2E36 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2E39 _ 8B. 45, 14
        add     eax, edx                                ; 2E3C _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2E3E _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2E41 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 2E44 _ 8B. 45, 18
        add     eax, edx                                ; 2E47 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2E49 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2E4C _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2E4F _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 2E52 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2E55 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2E58 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2E5B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2E5E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2E61 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2E64 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2E67 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2E6A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E6D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2E6F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2E73 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2E77 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2E7B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2E7F _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2E87 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2E8B _ 89. 04 24
        call    _boxfill8                               ; 2E8E _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2E93 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2E96 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2E99 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2E9C _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2E9F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2EA2 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2EA5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2EA8 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2EAB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2EAE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2EB1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EB4 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2EB6 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2EBA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2EBE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2EC2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2EC6 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2ECE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2ED2 _ 89. 04 24
        call    _boxfill8                               ; 2ED5 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2EDA _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2EDD _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2EE0 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2EE3 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2EE6 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2EE9 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2EEC _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2EEF _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2EF2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2EF5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2EF8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EFB _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2EFD _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F01 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F05 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F09 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2F0D _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2F15 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F19 _ 89. 04 24
        call    _boxfill8                               ; 2F1C _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 2F21 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2F24 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2F27 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 2F2A _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 2F2D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F30 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 2F33 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 2F36 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 2F39 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F3C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F3F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F42 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F44 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F48 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F4C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F50 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2F54 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2F5C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F60 _ 89. 04 24
        call    _boxfill8                               ; 2F63 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 2F68 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2F6B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2F6E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2F71 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2F74 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2F77 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2F7A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F7D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F80 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F83 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2F85 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2F89 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2F8C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F90 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F94 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2F98 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2FA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FA4 _ 89. 04 24
        call    _boxfill8                               ; 2FA7 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 2FAC _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2FAF _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2FB2 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2FB5 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2FB8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2FBB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2FBE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FC1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FC4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FC7 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2FC9 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2FCC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FD0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FD4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FD8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2FDC _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2FE4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FE8 _ 89. 04 24
        call    _boxfill8                               ; 2FEB _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 2FF0 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 2FF3 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2FF6 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 2FF9 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2FFC _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2FFF _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3002 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3005 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3008 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 300B _ 8B. 00
        mov     dword [esp+18H], esi                    ; 300D _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3011 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3014 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3018 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 301C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3020 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3028 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 302C _ 89. 04 24
        call    _boxfill8                               ; 302F _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 3034 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3037 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 303A _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 303D _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3040 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3043 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3046 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3049 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 304C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 304F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3052 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3055 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3057 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 305B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 305F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3063 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3067 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 306F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3073 _ 89. 04 24
        call    _boxfill8                               ; 3076 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 307B _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 307E _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3081 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3084 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3087 _ 8B. 45, 1C
        movzx   eax, al                                 ; 308A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 308D _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3090 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 3093 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3096 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3098 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 309B _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 309F _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 30A2 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 30A6 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 30AA _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 30AE _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 30B2 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 30B6 _ 89. 14 24
        call    _boxfill8                               ; 30B9 _ E8, FFFFEFB3
        nop                                             ; 30BE _ 90
        add     esp, 44                                 ; 30BF _ 83. C4, 2C
        pop     ebx                                     ; 30C2 _ 5B
        pop     esi                                     ; 30C3 _ 5E
        pop     edi                                     ; 30C4 _ 5F
        pop     ebp                                     ; 30C5 _ 5D
        ret                                             ; 30C6 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 30C7 _ 55
        mov     ebp, esp                                ; 30C8 _ 89. E5
        sub     esp, 56                                 ; 30CA _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 30CD _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 30D4 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 30D9 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 30E1 _ 89. 04 24
        call    _memman_alloc                           ; 30E4 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 30E9 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 30EC _ 8B. 45, E4
        add     eax, 12                                 ; 30EF _ 83. C0, 0C
        mov     byte [eax], 0                           ; 30F2 _ C6. 00, 00
        jmp     ?_161                                   ; 30F5 _ E9, 00000125

?_151:  mov     dword [ebp-10H], 0                      ; 30FA _ C7. 45, F0, 00000000
        jmp     ?_153                                   ; 3101 _ EB, 2A

?_152:  mov     edx, dword [ebp-0CH]                    ; 3103 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3106 _ 8B. 45, F0
        add     eax, edx                                ; 3109 _ 01. D0
        movzx   eax, byte [eax]                         ; 310B _ 0F B6. 00
        test    al, al                                  ; 310E _ 84. C0
        jz      ?_154                                   ; 3110 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 3112 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3115 _ 8B. 45, F0
        add     eax, edx                                ; 3118 _ 01. D0
        movzx   ecx, byte [eax]                         ; 311A _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 311D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3120 _ 8B. 45, E4
        add     eax, edx                                ; 3123 _ 01. D0
        mov     edx, ecx                                ; 3125 _ 89. CA
        mov     byte [eax], dl                          ; 3127 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3129 _ 83. 45, F0, 01
?_153:  cmp     dword [ebp-10H], 7                      ; 312D _ 83. 7D, F0, 07
        jle     ?_152                                   ; 3131 _ 7E, D0
        jmp     ?_155                                   ; 3133 _ EB, 01

?_154:  nop                                             ; 3135 _ 90
?_155:  mov     dword [ebp-14H], 0                      ; 3136 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 313D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3140 _ 8B. 45, E4
        add     eax, edx                                ; 3143 _ 01. D0
        mov     byte [eax], 46                          ; 3145 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3148 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 314C _ C7. 45, EC, 00000000
        jmp     ?_157                                   ; 3153 _ EB, 22

?_156:  mov     edx, dword [ebp-0CH]                    ; 3155 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3158 _ 8B. 45, EC
        add     eax, edx                                ; 315B _ 01. D0
        add     eax, 8                                  ; 315D _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3160 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3163 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3166 _ 8B. 45, E4
        add     eax, edx                                ; 3169 _ 01. D0
        mov     edx, ecx                                ; 316B _ 89. CA
        mov     byte [eax], dl                          ; 316D _ 88. 10
        add     dword [ebp-10H], 1                      ; 316F _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3173 _ 83. 45, EC, 01
?_157:  cmp     dword [ebp-14H], 2                      ; 3177 _ 83. 7D, EC, 02
        jle     ?_156                                   ; 317B _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 317D _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3180 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3184 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3187 _ 89. 04 24
        call    _strcmp                                 ; 318A _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 318F _ 83. F8, 01
        jne     ?_160                                   ; 3192 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3198 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 319B _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 319E _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 31A3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 31A7 _ 89. 04 24
        call    _memman_alloc_4k                        ; 31AA _ E8, 00000000(rel)
        mov     edx, eax                                ; 31AF _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 31B1 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 31B4 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 31B6 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 31B9 _ 8B. 40, 1C
        mov     edx, eax                                ; 31BC _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 31BE _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 31C1 _ 89. 50, 04
        mov     dword [ebp-20H], 88064                  ; 31C4 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 31CB _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 31CE _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 31D2 _ 0F B7. C0
        shl     eax, 9                                  ; 31D5 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 31D8 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 31DB _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 31DE _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 31E1 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 31E4 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 31EB _ C7. 45, E8, 00000000
        jmp     ?_159                                   ; 31F2 _ EB, 1D

?_158:  mov     edx, dword [ebp-18H]                    ; 31F4 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 31F7 _ 8B. 45, E0
        add     eax, edx                                ; 31FA _ 01. D0
        movzx   ecx, byte [eax]                         ; 31FC _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 31FF _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 3202 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3204 _ 8B. 45, E8
        add     eax, edx                                ; 3207 _ 01. D0
        mov     edx, ecx                                ; 3209 _ 89. CA
        mov     byte [eax], dl                          ; 320B _ 88. 10
        add     dword [ebp-18H], 1                      ; 320D _ 83. 45, E8, 01
?_159:  mov     eax, dword [ebp-18H]                    ; 3211 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 3214 _ 3B. 45, DC
        jl      ?_158                                   ; 3217 _ 7C, DB
        jmp     ?_162                                   ; 3219 _ EB, 12

?_160:  add     dword [ebp-0CH], 32                     ; 321B _ 83. 45, F4, 20
?_161:  mov     eax, dword [ebp-0CH]                    ; 321F _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 3222 _ 0F B6. 00
        test    al, al                                  ; 3225 _ 84. C0
        jne     ?_151                                   ; 3227 _ 0F 85, FFFFFECD
?_162:  mov     edx, dword [ebp-1CH]                    ; 322D _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 3230 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3235 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 323D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3241 _ 89. 04 24
        call    _memman_free                            ; 3244 _ E8, 00000000(rel)
        nop                                             ; 3249 _ 90
        leave                                           ; 324A _ C9
        ret                                             ; 324B _ C3
; _file_loadfile End of function

_kernel_api:; Function begin
        push    ebp                                     ; 324C _ 55
        mov     ebp, esp                                ; 324D _ 89. E5
        sub     esp, 24                                 ; 324F _ 83. EC, 18
        cmp     dword [ebp+1CH], 1                      ; 3252 _ 83. 7D, 1C, 01
        jnz     ?_163                                   ; 3256 _ 75, 18
        mov     eax, dword [ebp+24H]                    ; 3258 _ 8B. 45, 24
        movsx   eax, al                                 ; 325B _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 325E _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 3266 _ 89. 04 24
        call    _cons_putchar                           ; 3269 _ E8, FFFFE59D
        jmp     ?_164                                   ; 326E _ EB, 19

?_163:  cmp     dword [ebp+1CH], 2                      ; 3270 _ 83. 7D, 1C, 02
        jnz     ?_164                                   ; 3274 _ 75, 13
        mov     edx, dword [_buffer]                    ; 3276 _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+18H]                    ; 327C _ 8B. 45, 18
        add     eax, edx                                ; 327F _ 01. D0
        mov     dword [esp], eax                        ; 3281 _ 89. 04 24
        call    _cons_putstr                            ; 3284 _ E8, FFFFE629
?_164:  nop                                             ; 3289 _ 90
        leave                                           ; 328A _ C9
        ret                                             ; 328B _ C3
; _kernel_api End of function


_shtctl_init:
        push    ebp                                     ; 328C _ 55
        mov     ebp, esp                                ; 328D _ 89. E5
        sub     esp, 40                                 ; 328F _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 3292 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 329A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 329D _ 89. 04 24
        call    _memman_alloc_4k                        ; 32A0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 32A5 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 32A8 _ 83. 7D, F0, 00
        jnz     ?_165                                   ; 32AC _ 75, 0A
        mov     eax, 0                                  ; 32AE _ B8, 00000000
        jmp     ?_169                                   ; 32B3 _ E9, 0000009D

?_165:  mov     eax, dword [ebp+10H]                    ; 32B8 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 32BB _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 32BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32C6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 32C9 _ E8, 00000000(rel)
        mov     edx, eax                                ; 32CE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 32D0 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 32D3 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 32D6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32D9 _ 8B. 40, 04
        test    eax, eax                                ; 32DC _ 85. C0
        jnz     ?_166                                   ; 32DE _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 32E0 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 32E3 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 32EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32F2 _ 89. 04 24
        call    _memman_free_4k                         ; 32F5 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 32FA _ B8, 00000000
        jmp     ?_169                                   ; 32FF _ EB, 54

?_166:  mov     eax, dword [ebp-10H]                    ; 3301 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 3304 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3307 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3309 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 330C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 330F _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3312 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3315 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3318 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 331B _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 331E _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3325 _ C7. 45, F4, 00000000
        jmp     ?_168                                   ; 332C _ EB, 1B

?_167:  mov     edx, dword [ebp-10H]                    ; 332E _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 3331 _ 8B. 45, F4
        add     eax, 33                                 ; 3334 _ 83. C0, 21
        shl     eax, 5                                  ; 3337 _ C1. E0, 05
        add     eax, edx                                ; 333A _ 01. D0
        add     eax, 16                                 ; 333C _ 83. C0, 10
        mov     dword [eax], 0                          ; 333F _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3345 _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 255                    ; 3349 _ 81. 7D, F4, 000000FF
        jle     ?_167                                   ; 3350 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 3352 _ 8B. 45, F0
?_169:  leave                                           ; 3355 _ C9
        ret                                             ; 3356 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3357 _ 55
        mov     ebp, esp                                ; 3358 _ 89. E5
        sub     esp, 16                                 ; 335A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 335D _ C7. 45, FC, 00000000
        jmp     ?_172                                   ; 3364 _ EB, 5B

?_170:  mov     edx, dword [ebp+8H]                     ; 3366 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3369 _ 8B. 45, FC
        add     eax, 33                                 ; 336C _ 83. C0, 21
        shl     eax, 5                                  ; 336F _ C1. E0, 05
        add     eax, edx                                ; 3372 _ 01. D0
        add     eax, 16                                 ; 3374 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3377 _ 8B. 00
        test    eax, eax                                ; 3379 _ 85. C0
        jnz     ?_171                                   ; 337B _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 337D _ 8B. 45, FC
        shl     eax, 5                                  ; 3380 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 3383 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3389 _ 8B. 45, 08
        add     eax, edx                                ; 338C _ 01. D0
        add     eax, 4                                  ; 338E _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3391 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3394 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3397 _ 8B. 55, FC
        add     edx, 4                                  ; 339A _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 339D _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 33A0 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 33A4 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 33A7 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 33AE _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 33B1 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 33B8 _ 8B. 45, F8
        jmp     ?_173                                   ; 33BB _ EB, 12

?_171:  add     dword [ebp-4H], 1                       ; 33BD _ 83. 45, FC, 01
?_172:  cmp     dword [ebp-4H], 255                     ; 33C1 _ 81. 7D, FC, 000000FF
        jle     ?_170                                   ; 33C8 _ 7E, 9C
        mov     eax, 0                                  ; 33CA _ B8, 00000000
?_173:  leave                                           ; 33CF _ C9
        ret                                             ; 33D0 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 33D1 _ 55
        mov     ebp, esp                                ; 33D2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 33D4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 33D7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 33DA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 33DC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 33DF _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 33E2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 33E5 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 33E8 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 33EB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 33EE _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 33F1 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 33F4 _ 89. 50, 14
        nop                                             ; 33F7 _ 90
        pop     ebp                                     ; 33F8 _ 5D
        ret                                             ; 33F9 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 33FA _ 55
        mov     ebp, esp                                ; 33FB _ 89. E5
        push    edi                                     ; 33FD _ 57
        push    esi                                     ; 33FE _ 56
        push    ebx                                     ; 33FF _ 53
        sub     esp, 60                                 ; 3400 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3403 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3406 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3409 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 340C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 340F _ 8B. 40, 10
        add     eax, 1                                  ; 3412 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3415 _ 39. 45, 10
        jle     ?_174                                   ; 3418 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 341A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 341D _ 8B. 40, 10
        add     eax, 1                                  ; 3420 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3423 _ 89. 45, 10
?_174:  cmp     dword [ebp+10H], -1                     ; 3426 _ 83. 7D, 10, FF
        jge     ?_175                                   ; 342A _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 342C _ C7. 45, 10, FFFFFFFF
?_175:  mov     eax, dword [ebp+0CH]                    ; 3433 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3436 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3439 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 343C _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 343F _ 3B. 45, 10
        jle     ?_182                                   ; 3442 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3448 _ 83. 7D, 10, 00
        js      ?_178                                   ; 344C _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 3452 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3455 _ 89. 45, E4
        jmp     ?_177                                   ; 3458 _ EB, 34

?_176:  mov     eax, dword [ebp-1CH]                    ; 345A _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 345D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3460 _ 8B. 45, 08
        add     edx, 4                                  ; 3463 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3466 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 346A _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 346D _ 8B. 55, E4
        add     edx, 4                                  ; 3470 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3473 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3477 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 347A _ 8B. 55, E4
        add     edx, 4                                  ; 347D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3480 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3484 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3487 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 348A _ 83. 6D, E4, 01
?_177:  mov     eax, dword [ebp-1CH]                    ; 348E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3491 _ 3B. 45, 10
        jg      ?_176                                   ; 3494 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3496 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3499 _ 8B. 55, 10
        add     edx, 4                                  ; 349C _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 349F _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 34A2 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 34A6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 34A9 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 34AC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34AF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34B2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34B5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 34B8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34BB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34BE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 34C1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 34C4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 34C7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 34CA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34CD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34D0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 34D3 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 34D6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 34DA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 34DE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 34E2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 34E6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34EA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34ED _ 89. 04 24
        call    _sheet_refreshmap                       ; 34F0 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 34F5 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 34F8 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 34FB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34FE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3501 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3504 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3507 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 350A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 350D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3510 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3513 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3516 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3519 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 351C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 351F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3522 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3525 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3528 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 352C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3530 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3534 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3538 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 353C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3540 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3543 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3546 _ E8, 00000465
        jmp     ?_189                                   ; 354B _ E9, 0000027D

?_178:  mov     eax, dword [ebp+8H]                     ; 3550 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3553 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3556 _ 39. 45, E0
        jge     ?_181                                   ; 3559 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 355B _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 355E _ 89. 45, E4
        jmp     ?_180                                   ; 3561 _ EB, 34

?_179:  mov     eax, dword [ebp-1CH]                    ; 3563 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3566 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3569 _ 8B. 45, 08
        add     edx, 4                                  ; 356C _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 356F _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3573 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3576 _ 8B. 55, E4
        add     edx, 4                                  ; 3579 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 357C _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3580 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3583 _ 8B. 55, E4
        add     edx, 4                                  ; 3586 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3589 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 358D _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3590 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3593 _ 83. 45, E4, 01
?_180:  mov     eax, dword [ebp+8H]                     ; 3597 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 359A _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 359D _ 39. 45, E4
        jl      ?_179                                   ; 35A0 _ 7C, C1
?_181:  mov     eax, dword [ebp+8H]                     ; 35A2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 35A5 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 35A8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 35AB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 35AE _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35B1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35B4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35B7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35BA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35BD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35C0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35C3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 35C6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 35C9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 35CC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 35CF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35D2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35D5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35D8 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 35DB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 35E3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 35E7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35EB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 35EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35F6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 35F9 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 35FE _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3601 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3604 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3607 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 360A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 360D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3610 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3613 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3616 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3619 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 361C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 361F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3622 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3625 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3628 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 362B _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 362E _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 3632 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 363A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 363E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3642 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3646 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 364A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 364D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3650 _ E8, 0000035B
        jmp     ?_189                                   ; 3655 _ E9, 00000173

?_182:  mov     eax, dword [ebp-20H]                    ; 365A _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 365D _ 3B. 45, 10
        jge     ?_189                                   ; 3660 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3666 _ 83. 7D, E0, 00
        js      ?_185                                   ; 366A _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 366C _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 366F _ 89. 45, E4
        jmp     ?_184                                   ; 3672 _ EB, 34

?_183:  mov     eax, dword [ebp-1CH]                    ; 3674 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3677 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 367A _ 8B. 45, 08
        add     edx, 4                                  ; 367D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3680 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3684 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3687 _ 8B. 55, E4
        add     edx, 4                                  ; 368A _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 368D _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3691 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3694 _ 8B. 55, E4
        add     edx, 4                                  ; 3697 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 369A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 369E _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 36A1 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 36A4 _ 83. 45, E4, 01
?_184:  mov     eax, dword [ebp-1CH]                    ; 36A8 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 36AB _ 3B. 45, 10
        jl      ?_183                                   ; 36AE _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 36B0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 36B3 _ 8B. 55, 10
        add     edx, 4                                  ; 36B6 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 36B9 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 36BC _ 89. 4C 90, 04
        jmp     ?_188                                   ; 36C0 _ EB, 6C

?_185:  mov     eax, dword [ebp+8H]                     ; 36C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36C5 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 36C8 _ 89. 45, E4
        jmp     ?_187                                   ; 36CB _ EB, 3A

?_186:  mov     eax, dword [ebp-1CH]                    ; 36CD _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 36D0 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 36D3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36D6 _ 8B. 55, E4
        add     edx, 4                                  ; 36D9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 36DC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36E0 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 36E3 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 36E6 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 36EA _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 36ED _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36F0 _ 8B. 45, 08
        add     edx, 4                                  ; 36F3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 36F6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 36FA _ 8B. 55, E4
        add     edx, 1                                  ; 36FD _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3700 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3703 _ 83. 6D, E4, 01
?_187:  mov     eax, dword [ebp-1CH]                    ; 3707 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 370A _ 3B. 45, 10
        jge     ?_186                                   ; 370D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 370F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3712 _ 8B. 55, 10
        add     edx, 4                                  ; 3715 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3718 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 371B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 371F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3722 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3725 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3728 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 372B _ 89. 50, 10
?_188:  mov     eax, dword [ebp+0CH]                    ; 372E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3731 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3734 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3737 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 373A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 373D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3740 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3743 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3746 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3749 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 374C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 374F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3752 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3755 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3758 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 375B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 375F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3763 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3767 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 376B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 376F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3772 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3775 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 377A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 377D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3780 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3783 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3786 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3789 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 378C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 378F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3792 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3795 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3798 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 379B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 379E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 37A1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 37A4 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 37A7 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 37AB _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 37AE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 37B2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 37B6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 37BA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 37BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 37C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 37C5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 37C8 _ E8, 000001E3
?_189:  nop                                             ; 37CD _ 90
        add     esp, 60                                 ; 37CE _ 83. C4, 3C
        pop     ebx                                     ; 37D1 _ 5B
        pop     esi                                     ; 37D2 _ 5E
        pop     edi                                     ; 37D3 _ 5F
        pop     ebp                                     ; 37D4 _ 5D
        ret                                             ; 37D5 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 37D6 _ 55
        mov     ebp, esp                                ; 37D7 _ 89. E5
        push    edi                                     ; 37D9 _ 57
        push    esi                                     ; 37DA _ 56
        push    ebx                                     ; 37DB _ 53
        sub     esp, 60                                 ; 37DC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 37DF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 37E2 _ 8B. 40, 18
        test    eax, eax                                ; 37E5 _ 85. C0
        js      ?_190                                   ; 37E7 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 37E9 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 37EC _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 37EF _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 37F2 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 37F5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37F8 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 37FB _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 37FE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3801 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3804 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3807 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 380A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 380D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3810 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3813 _ 8B. 45, 14
        add     edx, eax                                ; 3816 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3818 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 381B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 381E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3821 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3824 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3827 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 382B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 382F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3833 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3837 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 383B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 383F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3842 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3845 _ E8, 00000166
?_190:  mov     eax, 0                                  ; 384A _ B8, 00000000
        add     esp, 60                                 ; 384F _ 83. C4, 3C
        pop     ebx                                     ; 3852 _ 5B
        pop     esi                                     ; 3853 _ 5E
        pop     edi                                     ; 3854 _ 5F
        pop     ebp                                     ; 3855 _ 5D
        ret                                             ; 3856 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3857 _ 55
        mov     ebp, esp                                ; 3858 _ 89. E5
        push    esi                                     ; 385A _ 56
        push    ebx                                     ; 385B _ 53
        sub     esp, 48                                 ; 385C _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 385F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3862 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3865 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3868 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 386B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 386E _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3871 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3874 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3877 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 387A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 387D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3880 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3883 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3886 _ 8B. 40, 18
        test    eax, eax                                ; 3889 _ 85. C0
        js      ?_191                                   ; 388B _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 3891 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3894 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3897 _ 8B. 45, F0
        add     edx, eax                                ; 389A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 389C _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 389F _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 38A2 _ 8B. 45, F4
        add     eax, ecx                                ; 38A5 _ 01. C8
        mov     dword [esp+14H], 0                      ; 38A7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 38AF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 38B3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 38B7 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 38BA _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 38BE _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 38C1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38C5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38C8 _ 89. 04 24
        call    _sheet_refreshmap                       ; 38CB _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 38D0 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 38D3 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 38D6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 38D9 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 38DC _ 8B. 45, 14
        add     edx, eax                                ; 38DF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 38E1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 38E4 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 38E7 _ 8B. 45, 10
        add     eax, ebx                                ; 38EA _ 01. D8
        mov     dword [esp+14H], ecx                    ; 38EC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 38F0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 38F4 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 38F8 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 38FB _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 38FF _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3902 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3906 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3909 _ 89. 04 24
        call    _sheet_refreshmap                       ; 390C _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3911 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3914 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3917 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 391A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 391D _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3920 _ 8B. 45, F0
        add     edx, eax                                ; 3923 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3925 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3928 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 392B _ 8B. 45, F4
        add     eax, ebx                                ; 392E _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3930 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3934 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 393C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3940 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3944 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3947 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 394B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 394E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3952 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3955 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3958 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 395D _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3960 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3963 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3966 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3969 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 396C _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 396F _ 8B. 45, 14
        add     edx, eax                                ; 3972 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3974 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3977 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 397A _ 8B. 45, 10
        add     eax, esi                                ; 397D _ 01. F0
        mov     dword [esp+18H], ebx                    ; 397F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3983 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3987 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 398B _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 398F _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3992 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3996 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3999 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 399D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39A0 _ 89. 04 24
        call    _sheet_refreshsub                       ; 39A3 _ E8, 00000008
?_191:  nop                                             ; 39A8 _ 90
        add     esp, 48                                 ; 39A9 _ 83. C4, 30
        pop     ebx                                     ; 39AC _ 5B
        pop     esi                                     ; 39AD _ 5E
        pop     ebp                                     ; 39AE _ 5D
        ret                                             ; 39AF _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 39B0 _ 55
        mov     ebp, esp                                ; 39B1 _ 89. E5
        sub     esp, 48                                 ; 39B3 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 39B6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 39B9 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 39BB _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 39BE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 39C1 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 39C4 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 39C7 _ 83. 7D, 0C, 00
        jns     ?_192                                   ; 39CB _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 39CD _ C7. 45, 0C, 00000000
?_192:  cmp     dword [ebp+10H], 8                      ; 39D4 _ 83. 7D, 10, 08
        jg      ?_193                                   ; 39D8 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 39DA _ C7. 45, 10, 00000000
?_193:  mov     eax, dword [ebp+8H]                     ; 39E1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 39E4 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 39E7 _ 39. 45, 14
        jle     ?_194                                   ; 39EA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 39EC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 39EF _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 39F2 _ 89. 45, 14
?_194:  mov     eax, dword [ebp+8H]                     ; 39F5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39F8 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 39FB _ 39. 45, 18
        jle     ?_195                                   ; 39FE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3A00 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A03 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3A06 _ 89. 45, 18
?_195:  mov     eax, dword [ebp+1CH]                    ; 3A09 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3A0C _ 89. 45, FC
        jmp     ?_202                                   ; 3A0F _ E9, 0000010F

?_196:  mov     eax, dword [ebp+8H]                     ; 3A14 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A17 _ 8B. 55, FC
        add     edx, 4                                  ; 3A1A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3A1D _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3A21 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3A24 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3A27 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3A29 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3A2C _ 8B. 45, 08
        add     eax, 1044                               ; 3A2F _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3A34 _ 8B. 55, E8
        sub     edx, eax                                ; 3A37 _ 29. C2
        mov     eax, edx                                ; 3A39 _ 89. D0
        sar     eax, 5                                  ; 3A3B _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3A3E _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3A41 _ C7. 45, F4, 00000000
        jmp     ?_201                                   ; 3A48 _ E9, 000000C3

?_197:  mov     eax, dword [ebp-18H]                    ; 3A4D _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3A50 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3A53 _ 8B. 45, F4
        add     eax, edx                                ; 3A56 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3A58 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3A5B _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 3A62 _ E9, 00000096

?_198:  mov     eax, dword [ebp-18H]                    ; 3A67 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3A6A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3A6D _ 8B. 45, F8
        add     eax, edx                                ; 3A70 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3A72 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3A75 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3A78 _ 3B. 45, D8
        jg      ?_199                                   ; 3A7B _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3A7D _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3A80 _ 3B. 45, 14
        jge     ?_199                                   ; 3A83 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3A85 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3A88 _ 3B. 45, DC
        jg      ?_199                                   ; 3A8B _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3A8D _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3A90 _ 3B. 45, 18
        jge     ?_199                                   ; 3A93 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3A95 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3A98 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3A9B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3A9F _ 8B. 55, F8
        add     eax, edx                                ; 3AA2 _ 01. D0
        mov     edx, eax                                ; 3AA4 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3AA6 _ 8B. 45, E4
        add     eax, edx                                ; 3AA9 _ 01. D0
        movzx   eax, byte [eax]                         ; 3AAB _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3AAE _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3AB1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AB4 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3AB7 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3ABB _ 8B. 55, D8
        add     eax, edx                                ; 3ABE _ 01. D0
        mov     edx, eax                                ; 3AC0 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3AC2 _ 8B. 45, EC
        add     eax, edx                                ; 3AC5 _ 01. D0
        movzx   eax, byte [eax]                         ; 3AC7 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3ACA _ 38. 45, E3
        jnz     ?_199                                   ; 3ACD _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3ACF _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3AD3 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3AD6 _ 8B. 52, 14
        cmp     eax, edx                                ; 3AD9 _ 39. D0
        jz      ?_199                                   ; 3ADB _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3ADD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AE0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3AE3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3AE7 _ 8B. 55, D8
        add     eax, edx                                ; 3AEA _ 01. D0
        mov     edx, eax                                ; 3AEC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3AEE _ 8B. 45, F0
        add     edx, eax                                ; 3AF1 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3AF3 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3AF7 _ 88. 02
?_199:  add     dword [ebp-8H], 1                       ; 3AF9 _ 83. 45, F8, 01
?_200:  mov     eax, dword [ebp-18H]                    ; 3AFD _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3B00 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3B03 _ 39. 45, F8
        jl      ?_198                                   ; 3B06 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3B0C _ 83. 45, F4, 01
?_201:  mov     eax, dword [ebp-18H]                    ; 3B10 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3B13 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3B16 _ 39. 45, F4
        jl      ?_197                                   ; 3B19 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3B1F _ 83. 45, FC, 01
?_202:  mov     eax, dword [ebp-4H]                     ; 3B23 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3B26 _ 3B. 45, 20
        jle     ?_196                                   ; 3B29 _ 0F 8E, FFFFFEE5
        nop                                             ; 3B2F _ 90
        leave                                           ; 3B30 _ C9
        ret                                             ; 3B31 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3B32 _ 55
        mov     ebp, esp                                ; 3B33 _ 89. E5
        sub     esp, 64                                 ; 3B35 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3B38 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B3B _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3B3E _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3B41 _ 83. 7D, 0C, 00
        jns     ?_203                                   ; 3B45 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3B47 _ C7. 45, 0C, 00000000
?_203:  cmp     dword [ebp+10H], 0                      ; 3B4E _ 83. 7D, 10, 00
        jns     ?_204                                   ; 3B52 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3B54 _ C7. 45, 10, 00000000
?_204:  mov     eax, dword [ebp+8H]                     ; 3B5B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B5E _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3B61 _ 39. 45, 14
        jle     ?_205                                   ; 3B64 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B66 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B69 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3B6C _ 89. 45, 14
?_205:  mov     eax, dword [ebp+8H]                     ; 3B6F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B72 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3B75 _ 39. 45, 18
        jle     ?_206                                   ; 3B78 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B7A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B7D _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3B80 _ 89. 45, 18
?_206:  mov     eax, dword [ebp+1CH]                    ; 3B83 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3B86 _ 89. 45, FC
        jmp     ?_217                                   ; 3B89 _ E9, 00000139

?_207:  mov     eax, dword [ebp+8H]                     ; 3B8E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3B91 _ 8B. 55, FC
        add     edx, 4                                  ; 3B94 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3B97 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3B9B _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3B9E _ 8B. 45, 08
        add     eax, 1044                               ; 3BA1 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3BA6 _ 8B. 55, DC
        sub     edx, eax                                ; 3BA9 _ 29. C2
        mov     eax, edx                                ; 3BAB _ 89. D0
        sar     eax, 5                                  ; 3BAD _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3BB0 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3BB3 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3BB6 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3BB8 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3BBB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3BBE _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3BC1 _ 8B. 55, 0C
        sub     edx, eax                                ; 3BC4 _ 29. C2
        mov     eax, edx                                ; 3BC6 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3BC8 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3BCB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3BCE _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3BD1 _ 8B. 55, 10
        sub     edx, eax                                ; 3BD4 _ 29. C2
        mov     eax, edx                                ; 3BD6 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3BD8 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3BDB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3BDE _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3BE1 _ 8B. 55, 14
        sub     edx, eax                                ; 3BE4 _ 29. C2
        mov     eax, edx                                ; 3BE6 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3BE8 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3BEB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3BEE _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3BF1 _ 8B. 55, 18
        sub     edx, eax                                ; 3BF4 _ 29. C2
        mov     eax, edx                                ; 3BF6 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3BF8 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3BFB _ 83. 7D, F0, 00
        jns     ?_208                                   ; 3BFF _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3C01 _ C7. 45, F0, 00000000
?_208:  cmp     dword [ebp-14H], 0                      ; 3C08 _ 83. 7D, EC, 00
        jns     ?_209                                   ; 3C0C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3C0E _ C7. 45, EC, 00000000
?_209:  mov     eax, dword [ebp-24H]                    ; 3C15 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C18 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3C1B _ 39. 45, E8
        jle     ?_210                                   ; 3C1E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3C20 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C23 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3C26 _ 89. 45, E8
?_210:  mov     eax, dword [ebp-24H]                    ; 3C29 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3C2C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3C2F _ 39. 45, E4
        jle     ?_211                                   ; 3C32 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3C34 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3C37 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3C3A _ 89. 45, E4
?_211:  mov     eax, dword [ebp-14H]                    ; 3C3D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3C40 _ 89. 45, F4
        jmp     ?_216                                   ; 3C43 _ EB, 76

?_212:  mov     eax, dword [ebp-24H]                    ; 3C45 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3C48 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3C4B _ 8B. 45, F4
        add     eax, edx                                ; 3C4E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3C50 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3C53 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3C56 _ 89. 45, F8
        jmp     ?_215                                   ; 3C59 _ EB, 54

?_213:  mov     eax, dword [ebp-24H]                    ; 3C5B _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3C5E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3C61 _ 8B. 45, F8
        add     eax, edx                                ; 3C64 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3C66 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3C69 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C6C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3C6F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3C73 _ 8B. 55, F8
        add     eax, edx                                ; 3C76 _ 01. D0
        mov     edx, eax                                ; 3C78 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3C7A _ 8B. 45, D4
        add     eax, edx                                ; 3C7D _ 01. D0
        movzx   eax, byte [eax]                         ; 3C7F _ 0F B6. 00
        movzx   eax, al                                 ; 3C82 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3C85 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3C88 _ 8B. 52, 14
        cmp     eax, edx                                ; 3C8B _ 39. D0
        jz      ?_214                                   ; 3C8D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3C8F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C92 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3C95 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3C99 _ 8B. 55, CC
        add     eax, edx                                ; 3C9C _ 01. D0
        mov     edx, eax                                ; 3C9E _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3CA0 _ 8B. 45, E0
        add     edx, eax                                ; 3CA3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3CA5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3CA9 _ 88. 02
?_214:  add     dword [ebp-8H], 1                       ; 3CAB _ 83. 45, F8, 01
?_215:  mov     eax, dword [ebp-8H]                     ; 3CAF _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3CB2 _ 3B. 45, E8
        jl      ?_213                                   ; 3CB5 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3CB7 _ 83. 45, F4, 01
?_216:  mov     eax, dword [ebp-0CH]                    ; 3CBB _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3CBE _ 3B. 45, E4
        jl      ?_212                                   ; 3CC1 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3CC3 _ 83. 45, FC, 01
?_217:  mov     eax, dword [ebp+8H]                     ; 3CC7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3CCA _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3CCD _ 39. 45, FC
        jle     ?_207                                   ; 3CD0 _ 0F 8E, FFFFFEB8
        nop                                             ; 3CD6 _ 90
        leave                                           ; 3CD7 _ C9
        ret                                             ; 3CD8 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3CD9 _ 90
        nop                                             ; 3CDA _ 90
        nop                                             ; 3CDB _ 90


_memman_init:
        push    ebp                                     ; 3CDC _ 55
        mov     ebp, esp                                ; 3CDD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3CDF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3CE2 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CE8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3CEB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CF2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3CF5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CFC _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3CFF _ C7. 40, 0C, 00000000
        nop                                             ; 3D06 _ 90
        pop     ebp                                     ; 3D07 _ 5D
        ret                                             ; 3D08 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3D09 _ 55
        mov     ebp, esp                                ; 3D0A _ 89. E5
        sub     esp, 16                                 ; 3D0C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3D0F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3D16 _ C7. 45, FC, 00000000
        jmp     ?_219                                   ; 3D1D _ EB, 14

?_218:  mov     eax, dword [ebp+8H]                     ; 3D1F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D22 _ 8B. 55, FC
        add     edx, 2                                  ; 3D25 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D28 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3D2C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3D2F _ 83. 45, FC, 01
?_219:  mov     eax, dword [ebp+8H]                     ; 3D33 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D36 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3D38 _ 39. 45, FC
        jc      ?_218                                   ; 3D3B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3D3D _ 8B. 45, F8
        leave                                           ; 3D40 _ C9
        ret                                             ; 3D41 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3D42 _ 55
        mov     ebp, esp                                ; 3D43 _ 89. E5
        sub     esp, 16                                 ; 3D45 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3D48 _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 3D4F _ E9, 00000083

?_220:  mov     eax, dword [ebp+8H]                     ; 3D54 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D57 _ 8B. 55, FC
        add     edx, 2                                  ; 3D5A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D5D _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3D61 _ 39. 45, 0C
        ja      ?_222                                   ; 3D64 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3D66 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D69 _ 8B. 55, FC
        add     edx, 2                                  ; 3D6C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3D6F _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3D72 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3D75 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D78 _ 8B. 55, FC
        add     edx, 2                                  ; 3D7B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3D7E _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3D81 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3D84 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3D87 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D8A _ 8B. 55, FC
        add     edx, 2                                  ; 3D8D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3D90 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3D93 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D96 _ 8B. 55, FC
        add     edx, 2                                  ; 3D99 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D9C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3DA0 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3DA3 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3DA6 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3DA9 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3DAC _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3DB0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3DB3 _ 8B. 55, FC
        add     edx, 2                                  ; 3DB6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3DB9 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3DBD _ 85. C0
        jnz     ?_221                                   ; 3DBF _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3DC1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DC4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3DC6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3DC9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3DCC _ 89. 10
?_221:  mov     eax, dword [ebp-8H]                     ; 3DCE _ 8B. 45, F8
        jmp     ?_224                                   ; 3DD1 _ EB, 17

?_222:  add     dword [ebp-4H], 1                       ; 3DD3 _ 83. 45, FC, 01
?_223:  mov     eax, dword [ebp+8H]                     ; 3DD7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DDA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3DDC _ 39. 45, FC
        jc      ?_220                                   ; 3DDF _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3DE5 _ B8, 00000000
?_224:  leave                                           ; 3DEA _ C9
        ret                                             ; 3DEB _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3DEC _ 55
        mov     ebp, esp                                ; 3DED _ 89. E5
        push    ebx                                     ; 3DEF _ 53
        sub     esp, 16                                 ; 3DF0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3DF3 _ C7. 45, F8, 00000000
        jmp     ?_226                                   ; 3DFA _ EB, 15

?_225:  mov     eax, dword [ebp+8H]                     ; 3DFC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3DFF _ 8B. 55, F8
        add     edx, 2                                  ; 3E02 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3E05 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3E08 _ 39. 45, 0C
        jc      ?_227                                   ; 3E0B _ 72, 10
        add     dword [ebp-8H], 1                       ; 3E0D _ 83. 45, F8, 01
?_226:  mov     eax, dword [ebp+8H]                     ; 3E11 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E14 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E16 _ 39. 45, F8
        jl      ?_225                                   ; 3E19 _ 7C, E1
        jmp     ?_228                                   ; 3E1B _ EB, 01

?_227:  nop                                             ; 3E1D _ 90
?_228:  cmp     dword [ebp-8H], 0                       ; 3E1E _ 83. 7D, F8, 00
        jle     ?_230                                   ; 3E22 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3E28 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E2B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E2E _ 8B. 45, 08
        add     edx, 2                                  ; 3E31 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3E34 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3E37 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E3A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E3D _ 8B. 45, 08
        add     edx, 2                                  ; 3E40 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E43 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3E47 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3E49 _ 39. 45, 0C
        jne     ?_230                                   ; 3E4C _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3E52 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E55 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E58 _ 8B. 45, 08
        add     edx, 2                                  ; 3E5B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3E5E _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3E62 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E65 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3E68 _ 8B. 45, 10
        add     ecx, eax                                ; 3E6B _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3E6D _ 8B. 45, 08
        add     edx, 2                                  ; 3E70 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3E73 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3E77 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E7A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E7C _ 39. 45, F8
        jge     ?_229                                   ; 3E7F _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3E81 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3E84 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3E87 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3E8A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3E8D _ 8B. 55, F8
        add     edx, 2                                  ; 3E90 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3E93 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3E96 _ 39. C1
        jnz     ?_229                                   ; 3E98 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3E9A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E9D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3EA0 _ 8B. 45, 08
        add     edx, 2                                  ; 3EA3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3EA6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3EAA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EAD _ 8B. 55, F8
        add     edx, 2                                  ; 3EB0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3EB3 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3EB7 _ 8B. 55, F8
        sub     edx, 1                                  ; 3EBA _ 83. EA, 01
        add     ecx, eax                                ; 3EBD _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3EBF _ 8B. 45, 08
        add     edx, 2                                  ; 3EC2 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3EC5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3EC9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3ECC _ 8B. 00
        lea     edx, [eax-1H]                           ; 3ECE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3ED1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3ED4 _ 89. 10
?_229:  mov     eax, 0                                  ; 3ED6 _ B8, 00000000
        jmp     ?_236                                   ; 3EDB _ E9, 0000011C

?_230:  mov     eax, dword [ebp+8H]                     ; 3EE0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EE3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3EE5 _ 39. 45, F8
        jge     ?_231                                   ; 3EE8 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3EEA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3EED _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3EF0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3EF3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EF6 _ 8B. 55, F8
        add     edx, 2                                  ; 3EF9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3EFC _ 8B. 04 D0
        cmp     ecx, eax                                ; 3EFF _ 39. C1
        jnz     ?_231                                   ; 3F01 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3F03 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F06 _ 8B. 55, F8
        add     edx, 2                                  ; 3F09 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3F0C _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3F0F _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3F12 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F15 _ 8B. 55, F8
        add     edx, 2                                  ; 3F18 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3F1B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 3F1F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3F22 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3F25 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F28 _ 8B. 55, F8
        add     edx, 2                                  ; 3F2B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3F2E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3F32 _ B8, 00000000
        jmp     ?_236                                   ; 3F37 _ E9, 000000C0

?_231:  mov     eax, dword [ebp+8H]                     ; 3F3C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F3F _ 8B. 00
        cmp     eax, 4095                               ; 3F41 _ 3D, 00000FFF
        jg      ?_235                                   ; 3F46 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3F4C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F4F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3F51 _ 89. 45, F4
        jmp     ?_233                                   ; 3F54 _ EB, 28

?_232:  mov     eax, dword [ebp-0CH]                    ; 3F56 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3F59 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3F5C _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 3F5F _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 3F62 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3F65 _ 8B. 45, 08
        add     edx, 2                                  ; 3F68 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 3F6B _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 3F6E _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 3F70 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 3F73 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 3F76 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 3F7A _ 83. 6D, F4, 01
?_233:  mov     eax, dword [ebp-0CH]                    ; 3F7E _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 3F81 _ 3B. 45, F8
        jg      ?_232                                   ; 3F84 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 3F86 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F89 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3F8B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3F8E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3F91 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3F93 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3F96 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3F99 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F9C _ 8B. 00
        cmp     edx, eax                                ; 3F9E _ 39. C2
        jge     ?_234                                   ; 3FA0 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3FA2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3FA5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3FA7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3FAA _ 89. 50, 04
?_234:  mov     eax, dword [ebp+8H]                     ; 3FAD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FB0 _ 8B. 55, F8
        add     edx, 2                                  ; 3FB3 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3FB6 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3FB9 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3FBC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FBF _ 8B. 55, F8
        add     edx, 2                                  ; 3FC2 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3FC5 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3FC8 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3FCC _ B8, 00000000
        jmp     ?_236                                   ; 3FD1 _ EB, 29

?_235:  mov     eax, dword [ebp+8H]                     ; 3FD3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FD6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3FD9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3FDC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3FDF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3FE2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3FE5 _ 8B. 40, 08
        mov     edx, eax                                ; 3FE8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3FEA _ 8B. 45, 10
        add     eax, edx                                ; 3FED _ 01. D0
        mov     edx, eax                                ; 3FEF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3FF1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3FF4 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3FF7 _ B8, FFFFFFFF
?_236:  add     esp, 16                                 ; 3FFC _ 83. C4, 10
        pop     ebx                                     ; 3FFF _ 5B
        pop     ebp                                     ; 4000 _ 5D
        ret                                             ; 4001 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 4002 _ 55
        mov     ebp, esp                                ; 4003 _ 89. E5
        sub     esp, 24                                 ; 4005 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4008 _ 8B. 45, 0C
        add     eax, 4095                               ; 400B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4010 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 4015 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4018 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 401B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 401F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4022 _ 89. 04 24
        call    _memman_alloc                           ; 4025 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 402A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 402D _ 8B. 45, FC
        leave                                           ; 4030 _ C9
        ret                                             ; 4031 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 4032 _ 55
        mov     ebp, esp                                ; 4033 _ 89. E5
        sub     esp, 28                                 ; 4035 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4038 _ 8B. 45, 10
        add     eax, 4095                               ; 403B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4040 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4045 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4048 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 404B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 404F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4052 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4056 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4059 _ 89. 04 24
        call    _memman_free                            ; 405C _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4061 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4064 _ 8B. 45, FC
        leave                                           ; 4067 _ C9
        ret                                             ; 4068 _ C3
; _memman_free_4k End of function

        nop                                             ; 4069 _ 90
        nop                                             ; 406A _ 90
        nop                                             ; 406B _ 90


_fifo8_init:
        push    ebp                                     ; 406C _ 55
        mov     ebp, esp                                ; 406D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 406F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4072 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4075 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4078 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 407B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 407E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4080 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4083 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4086 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4089 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 408C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 4093 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4096 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 409D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 40A0 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 40A7 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 40AA _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 40AD _ 89. 50, 18
        nop                                             ; 40B0 _ 90
        pop     ebp                                     ; 40B1 _ 5D
        ret                                             ; 40B2 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 40B3 _ 55
        mov     ebp, esp                                ; 40B4 _ 89. E5
        sub     esp, 40                                 ; 40B6 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 40B9 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 40BC _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 40BF _ 83. 7D, 08, 00
        jnz     ?_237                                   ; 40C3 _ 75, 0A
        mov     eax, 4294967295                         ; 40C5 _ B8, FFFFFFFF
        jmp     ?_241                                   ; 40CA _ E9, 000000AB

?_237:  mov     eax, dword [ebp+8H]                     ; 40CF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 40D2 _ 8B. 40, 10
        test    eax, eax                                ; 40D5 _ 85. C0
        jnz     ?_238                                   ; 40D7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 40D9 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 40DC _ 8B. 40, 14
        or      eax, 01H                                ; 40DF _ 83. C8, 01
        mov     edx, eax                                ; 40E2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 40E4 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 40E7 _ 89. 50, 14
        mov     eax, 4294967295                         ; 40EA _ B8, FFFFFFFF
        jmp     ?_241                                   ; 40EF _ E9, 00000086

?_238:  mov     eax, dword [ebp+8H]                     ; 40F4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 40F7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 40F9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 40FC _ 8B. 40, 04
        add     edx, eax                                ; 40FF _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4101 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 4105 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 4107 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 410A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 410D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4110 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4113 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4116 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4119 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 411C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 411F _ 8B. 40, 0C
        cmp     edx, eax                                ; 4122 _ 39. C2
        jnz     ?_239                                   ; 4124 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4126 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4129 _ C7. 40, 04, 00000000
?_239:  mov     eax, dword [ebp+8H]                     ; 4130 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4133 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4136 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4139 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 413C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 413F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4142 _ 8B. 40, 18
        test    eax, eax                                ; 4145 _ 85. C0
        jz      ?_240                                   ; 4147 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4149 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 414C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 414F _ 8B. 40, 04
        cmp     eax, 2                                  ; 4152 _ 83. F8, 02
        jz      ?_240                                   ; 4155 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4157 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 415A _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 415D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4165 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 416D _ 89. 04 24
        call    _task_run                               ; 4170 _ E8, 00000000(rel)
?_240:  mov     eax, 0                                  ; 4175 _ B8, 00000000
?_241:  leave                                           ; 417A _ C9
        ret                                             ; 417B _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 417C _ 55
        mov     ebp, esp                                ; 417D _ 89. E5
        sub     esp, 16                                 ; 417F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 4182 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4185 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4188 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 418B _ 8B. 40, 0C
        cmp     edx, eax                                ; 418E _ 39. C2
        jnz     ?_242                                   ; 4190 _ 75, 07
        mov     eax, 4294967295                         ; 4192 _ B8, FFFFFFFF
        jmp     ?_244                                   ; 4197 _ EB, 51

?_242:  mov     eax, dword [ebp+8H]                     ; 4199 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 419C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 419E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 41A1 _ 8B. 40, 08
        add     eax, edx                                ; 41A4 _ 01. D0
        movzx   eax, byte [eax]                         ; 41A6 _ 0F B6. 00
        movzx   eax, al                                 ; 41A9 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 41AC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 41AF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 41B2 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 41B5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41B8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 41BB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 41BE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 41C1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 41C4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41C7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 41CA _ 39. C2
        jnz     ?_243                                   ; 41CC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 41CE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 41D1 _ C7. 40, 08, 00000000
?_243:  mov     eax, dword [ebp+8H]                     ; 41D8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41DB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 41DE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41E1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 41E4 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 41E7 _ 8B. 45, FC
?_244:  leave                                           ; 41EA _ C9
        ret                                             ; 41EB _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 41EC _ 55
        mov     ebp, esp                                ; 41ED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 41EF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 41F2 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 41F5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41F8 _ 8B. 40, 10
        sub     edx, eax                                ; 41FB _ 29. C2
        mov     eax, edx                                ; 41FD _ 89. D0
        pop     ebp                                     ; 41FF _ 5D
        ret                                             ; 4200 _ C3
; _fifo8_status End of function

        nop                                             ; 4201 _ 90
        nop                                             ; 4202 _ 90
        nop                                             ; 4203 _ 90


_init_pit:
        push    ebp                                     ; 4204 _ 55
        mov     ebp, esp                                ; 4205 _ 89. E5
        sub     esp, 40                                 ; 4207 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 420A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 4212 _ C7. 04 24, 00000043
        call    _io_out8                                ; 4219 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 421E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4226 _ C7. 04 24, 00000040
        call    _io_out8                                ; 422D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 4232 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 423A _ C7. 04 24, 00000040
        call    _io_out8                                ; 4241 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4246 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4250 _ C7. 45, F4, 00000000
        jmp     ?_246                                   ; 4257 _ EB, 26

?_245:  mov     eax, dword [ebp-0CH]                    ; 4259 _ 8B. 45, F4
        shl     eax, 4                                  ; 425C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 425F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4264 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 426A _ 8B. 45, F4
        shl     eax, 4                                  ; 426D _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 4270 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4275 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 427B _ 83. 45, F4, 01
?_246:  cmp     dword [ebp-0CH], 499                    ; 427F _ 81. 7D, F4, 000001F3
        jle     ?_245                                   ; 4286 _ 7E, D1
        nop                                             ; 4288 _ 90
        leave                                           ; 4289 _ C9
        ret                                             ; 428A _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 428B _ 55
        mov     ebp, esp                                ; 428C _ 89. E5
        sub     esp, 16                                 ; 428E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4291 _ C7. 45, FC, 00000000
        jmp     ?_249                                   ; 4298 _ EB, 36

?_247:  mov     eax, dword [ebp-4H]                     ; 429A _ 8B. 45, FC
        shl     eax, 4                                  ; 429D _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 42A0 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 42A5 _ 8B. 00
        test    eax, eax                                ; 42A7 _ 85. C0
        jnz     ?_248                                   ; 42A9 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 42AB _ 8B. 45, FC
        shl     eax, 4                                  ; 42AE _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 42B1 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 42B6 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 42BC _ 8B. 45, FC
        shl     eax, 4                                  ; 42BF _ C1. E0, 04
        add     eax, _timerctl                               ; 42C2 _ 05, 00000000(d)
        add     eax, 4                                  ; 42C7 _ 83. C0, 04
        jmp     ?_250                                   ; 42CA _ EB, 12

?_248:  add     dword [ebp-4H], 1                       ; 42CC _ 83. 45, FC, 01
?_249:  cmp     dword [ebp-4H], 499                     ; 42D0 _ 81. 7D, FC, 000001F3
        jle     ?_247                                   ; 42D7 _ 7E, C1
        mov     eax, 0                                  ; 42D9 _ B8, 00000000
?_250:  leave                                           ; 42DE _ C9
        ret                                             ; 42DF _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 42E0 _ 55
        mov     ebp, esp                                ; 42E1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 42E3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 42E6 _ C7. 40, 04, 00000000
        nop                                             ; 42ED _ 90
        pop     ebp                                     ; 42EE _ 5D
        ret                                             ; 42EF _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 42F0 _ 55
        mov     ebp, esp                                ; 42F1 _ 89. E5
        sub     esp, 4                                  ; 42F3 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 42F6 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 42F9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 42FC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42FF _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 4302 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 4305 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4308 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 430C _ 88. 42, 0C
        nop                                             ; 430F _ 90
        leave                                           ; 4310 _ C9
        ret                                             ; 4311 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 4312 _ 55
        mov     ebp, esp                                ; 4313 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4315 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4318 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 431B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 431D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4320 _ C7. 40, 04, 00000002
        nop                                             ; 4327 _ 90
        pop     ebp                                     ; 4328 _ 5D
        ret                                             ; 4329 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 432A _ 55
        mov     ebp, esp                                ; 432B _ 89. E5
        sub     esp, 40                                 ; 432D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4330 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4338 _ C7. 04 24, 00000020
        call    _io_out8                                ; 433F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4344 _ A1, 00000000(d)
        add     eax, 1                                  ; 4349 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 434C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4351 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4355 _ C7. 45, F4, 00000000
        jmp     ?_254                                   ; 435C _ E9, 000000AA

?_251:  mov     eax, dword [ebp-0CH]                    ; 4361 _ 8B. 45, F4
        shl     eax, 4                                  ; 4364 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4367 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 436C _ 8B. 00
        cmp     eax, 2                                  ; 436E _ 83. F8, 02
        jne     ?_252                                   ; 4371 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4377 _ 8B. 45, F4
        shl     eax, 4                                  ; 437A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 437D _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4382 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4384 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4387 _ 8B. 45, F4
        shl     eax, 4                                  ; 438A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 438D _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 4392 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4394 _ 8B. 45, F4
        shl     eax, 4                                  ; 4397 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 439A _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 439F _ 8B. 00
        test    eax, eax                                ; 43A1 _ 85. C0
        jnz     ?_252                                   ; 43A3 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 43A5 _ 8B. 45, F4
        shl     eax, 4                                  ; 43A8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 43AB _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 43B0 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 43B6 _ 8B. 45, F4
        shl     eax, 4                                  ; 43B9 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 43BC _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 43C1 _ 0F B6. 00
        movzx   eax, al                                 ; 43C4 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 43C7 _ 8B. 55, F4
        shl     edx, 4                                  ; 43CA _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 43CD _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 43D3 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 43D5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 43D9 _ 89. 14 24
        call    _fifo8_put                              ; 43DC _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 43E1 _ 8B. 45, F4
        shl     eax, 4                                  ; 43E4 _ C1. E0, 04
        add     eax, _timerctl                               ; 43E7 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 43EC _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 43EF _ A1, 00000000(d)
        cmp     edx, eax                                ; 43F4 _ 39. C2
        jnz     ?_252                                   ; 43F6 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 43F8 _ C6. 45, F3, 01
?_252:  cmp     byte [ebp-0DH], 0                       ; 43FC _ 80. 7D, F3, 00
        jz      ?_253                                   ; 4400 _ 74, 05
        call    _task_switch                            ; 4402 _ E8, 00000000(rel)
?_253:  add     dword [ebp-0CH], 1                      ; 4407 _ 83. 45, F4, 01
?_254:  cmp     dword [ebp-0CH], 499                    ; 440B _ 81. 7D, F4, 000001F3
        jle     ?_251                                   ; 4412 _ 0F 8E, FFFFFF49
        nop                                             ; 4418 _ 90
        leave                                           ; 4419 _ C9
        ret                                             ; 441A _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 441B _ B8, 00000000(d)
        ret                                             ; 4420 _ C3
; _getTimerController End of function

        nop                                             ; 4421 _ 90
        nop                                             ; 4422 _ 90
        nop                                             ; 4423 _ 90


_set_segmdesc:
        push    ebp                                     ; 4424 _ 55
        mov     ebp, esp                                ; 4425 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4427 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_255                                   ; 442E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4430 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4437 _ 8B. 45, 0C
        shr     eax, 12                                 ; 443A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 443D _ 89. 45, 0C
?_255:  mov     eax, dword [ebp+0CH]                    ; 4440 _ 8B. 45, 0C
        mov     edx, eax                                ; 4443 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4445 _ 8B. 45, 08
        mov     word [eax], dx                          ; 4448 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 444B _ 8B. 45, 10
        mov     edx, eax                                ; 444E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4450 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 4453 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4457 _ 8B. 45, 10
        sar     eax, 16                                 ; 445A _ C1. F8, 10
        mov     edx, eax                                ; 445D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 445F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 4462 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4465 _ 8B. 45, 14
        mov     edx, eax                                ; 4468 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 446A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 446D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 4470 _ 8B. 45, 0C
        shr     eax, 16                                 ; 4473 _ C1. E8, 10
        and     eax, 0FH                                ; 4476 _ 83. E0, 0F
        mov     edx, eax                                ; 4479 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 447B _ 8B. 45, 14
        sar     eax, 8                                  ; 447E _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 4481 _ 83. E0, F0
        or      eax, edx                                ; 4484 _ 09. D0
        mov     edx, eax                                ; 4486 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4488 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 448B _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 448E _ 8B. 45, 10
        shr     eax, 24                                 ; 4491 _ C1. E8, 18
        mov     edx, eax                                ; 4494 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4496 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4499 _ 88. 50, 07
        nop                                             ; 449C _ 90
        pop     ebp                                     ; 449D _ 5D
        ret                                             ; 449E _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 449F _ 55
        mov     ebp, esp                                ; 44A0 _ 89. E5
        sub     esp, 16                                 ; 44A2 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 44A5 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 44AB _ 8B. 55, 08
        mov     eax, edx                                ; 44AE _ 89. D0
        shl     eax, 2                                  ; 44B0 _ C1. E0, 02
        add     eax, edx                                ; 44B3 _ 01. D0
        shl     eax, 2                                  ; 44B5 _ C1. E0, 02
        add     eax, ecx                                ; 44B8 _ 01. C8
        add     eax, 8                                  ; 44BA _ 83. C0, 08
        mov     dword [eax], 0                          ; 44BD _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 44C3 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 44C9 _ 8B. 55, 08
        mov     eax, edx                                ; 44CC _ 89. D0
        shl     eax, 2                                  ; 44CE _ C1. E0, 02
        add     eax, edx                                ; 44D1 _ 01. D0
        shl     eax, 2                                  ; 44D3 _ C1. E0, 02
        add     eax, ecx                                ; 44D6 _ 01. C8
        add     eax, 12                                 ; 44D8 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 44DB _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 44E1 _ C7. 45, FC, 00000000
        jmp     ?_257                                   ; 44E8 _ EB, 21

?_256:  mov     ecx, dword [_taskctl]                   ; 44EA _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 44F0 _ 8B. 55, FC
        mov     eax, edx                                ; 44F3 _ 89. D0
        add     eax, eax                                ; 44F5 _ 01. C0
        add     eax, edx                                ; 44F7 _ 01. D0
        shl     eax, 3                                  ; 44F9 _ C1. E0, 03
        add     eax, ecx                                ; 44FC _ 01. C8
        add     eax, 16                                 ; 44FE _ 83. C0, 10
        mov     dword [eax], 0                          ; 4501 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 4507 _ 83. 45, FC, 01
?_257:  cmp     dword [ebp-4H], 2                       ; 450B _ 83. 7D, FC, 02
        jle     ?_256                                   ; 450F _ 7E, D9
        nop                                             ; 4511 _ 90
        leave                                           ; 4512 _ C9
        ret                                             ; 4513 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4514 _ 55
        mov     ebp, esp                                ; 4515 _ 89. E5
        sub     esp, 40                                 ; 4517 _ 83. EC, 28
        call    _get_addr_gdt                           ; 451A _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 451F _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 4522 _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 452A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 452D _ 89. 04 24
        call    _memman_alloc_4k                        ; 4530 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4535 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 453A _ C7. 45, F4, 00000000
        jmp     ?_259                                   ; 4541 _ E9, 00000088

?_258:  mov     edx, dword [_taskctl]                   ; 4546 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 454C _ 8B. 45, F4
        imul    eax, eax, 148                           ; 454F _ 69. C0, 00000094
        add     eax, edx                                ; 4555 _ 01. D0
        add     eax, 72                                 ; 4557 _ 83. C0, 48
        mov     dword [eax], 0                          ; 455A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4560 _ 8B. 45, F4
        add     eax, 7                                  ; 4563 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4566 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 456C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4573 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4576 _ 69. C0, 00000094
        add     eax, ecx                                ; 457C _ 01. C8
        add     eax, 68                                 ; 457E _ 83. C0, 44
        mov     dword [eax], edx                        ; 4581 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 4583 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4589 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 458C _ 69. C0, 00000094
        add     eax, 96                                 ; 4592 _ 83. C0, 60
        add     eax, edx                                ; 4595 _ 01. D0
        add     eax, 16                                 ; 4597 _ 83. C0, 10
        mov     ecx, eax                                ; 459A _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 459C _ 8B. 45, F4
        add     eax, 7                                  ; 459F _ 83. C0, 07
        lea     edx, [eax*8]                            ; 45A2 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 45A9 _ 8B. 45, F0
        add     eax, edx                                ; 45AC _ 01. D0
        mov     dword [esp+0CH], 137                    ; 45AE _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 45B6 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 45BA _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 45C2 _ 89. 04 24
        call    _set_segmdesc                           ; 45C5 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 45CA _ 83. 45, F4, 01
?_259:  cmp     dword [ebp-0CH], 4                      ; 45CE _ 83. 7D, F4, 04
        jle     ?_258                                   ; 45D2 _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 45D8 _ C7. 45, F4, 00000000
        jmp     ?_261                                   ; 45DF _ EB, 0F

?_260:  mov     eax, dword [ebp-0CH]                    ; 45E1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 45E4 _ 89. 04 24
        call    _init_task_level                        ; 45E7 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 45EC _ 83. 45, F4, 01
?_261:  cmp     dword [ebp-0CH], 2                      ; 45F0 _ 83. 7D, F4, 02
        jle     ?_260                                   ; 45F4 _ 7E, EB
        call    _task_alloc                             ; 45F6 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 45FB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 45FE _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 4601 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4608 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 460B _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 4612 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4615 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 461C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 461F _ 89. 04 24
        call    _task_add                               ; 4622 _ E8, 0000003A
        call    _task_switchsub                         ; 4627 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 462C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 462F _ 8B. 00
        mov     dword [esp], eax                        ; 4631 _ 89. 04 24
        call    _load_tr                                ; 4634 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4639 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 463E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 4643 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4646 _ 8B. 40, 08
        mov     edx, eax                                ; 4649 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 464B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4650 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4654 _ 89. 04 24
        call    _timer_settime                          ; 4657 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 465C _ 8B. 45, EC
        leave                                           ; 465F _ C9
        ret                                             ; 4660 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 4661 _ 55
        mov     ebp, esp                                ; 4662 _ 89. E5
        sub     esp, 16                                 ; 4664 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4667 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 466D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4670 _ 8B. 50, 0C
        mov     eax, edx                                ; 4673 _ 89. D0
        shl     eax, 2                                  ; 4675 _ C1. E0, 02
        add     eax, edx                                ; 4678 _ 01. D0
        shl     eax, 2                                  ; 467A _ C1. E0, 02
        add     eax, ecx                                ; 467D _ 01. C8
        add     eax, 8                                  ; 467F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4682 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4685 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4688 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 468A _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 468D _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4690 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4694 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4697 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4699 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 469C _ 8B. 45, FC
        mov     dword [eax], edx                        ; 469F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 46A1 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 46A4 _ C7. 40, 04, 00000002
        nop                                             ; 46AB _ 90
        leave                                           ; 46AC _ C9
        ret                                             ; 46AD _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 46AE _ 55
        mov     ebp, esp                                ; 46AF _ 89. E5
        sub     esp, 16                                 ; 46B1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 46B4 _ C7. 45, FC, 00000000
        jmp     ?_264                                   ; 46BB _ E9, 000000F7

?_262:  mov     edx, dword [_taskctl]                   ; 46C0 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 46C6 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 46C9 _ 69. C0, 00000094
        add     eax, edx                                ; 46CF _ 01. D0
        add     eax, 72                                 ; 46D1 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 46D4 _ 8B. 00
        test    eax, eax                                ; 46D6 _ 85. C0
        jne     ?_263                                   ; 46D8 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 46DE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 46E4 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 46E7 _ 69. C0, 00000094
        add     eax, 64                                 ; 46ED _ 83. C0, 40
        add     eax, edx                                ; 46F0 _ 01. D0
        add     eax, 4                                  ; 46F2 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 46F5 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 46F8 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 46FB _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 4702 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 4705 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 470C _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 470F _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4716 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4719 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 4720 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 4723 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 472A _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 472D _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4734 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4737 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 473E _ 8B. 45, FC
        add     eax, 1                                  ; 4741 _ 83. C0, 01
        shl     eax, 9                                  ; 4744 _ C1. E0, 09
        mov     edx, eax                                ; 4747 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4749 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 474C _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 474F _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 4752 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4759 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 475C _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 4763 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4766 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 476D _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 4770 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 477A _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 477D _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4787 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 478A _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4794 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4797 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 47A1 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 47A4 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 47AE _ 8B. 45, F8
        jmp     ?_265                                   ; 47B1 _ EB, 13

?_263:  add     dword [ebp-4H], 1                       ; 47B3 _ 83. 45, FC, 01
?_264:  cmp     dword [ebp-4H], 4                       ; 47B7 _ 83. 7D, FC, 04
        jle     ?_262                                   ; 47BB _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 47C1 _ B8, 00000000
?_265:  leave                                           ; 47C6 _ C9
        ret                                             ; 47C7 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 47C8 _ 55
        mov     ebp, esp                                ; 47C9 _ 89. E5
        sub     esp, 24                                 ; 47CB _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 47CE _ 83. 7D, 0C, 00
        jns     ?_266                                   ; 47D2 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 47D4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 47D7 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 47DA _ 89. 45, 0C
?_266:  cmp     dword [ebp+10H], 0                      ; 47DD _ 83. 7D, 10, 00
        jle     ?_267                                   ; 47E1 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 47E3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 47E6 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 47E9 _ 89. 50, 08
?_267:  mov     eax, dword [ebp+8H]                     ; 47EC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 47EF _ 8B. 40, 04
        cmp     eax, 2                                  ; 47F2 _ 83. F8, 02
        jnz     ?_268                                   ; 47F5 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 47F7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 47FA _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 47FD _ 39. 45, 0C
        jz      ?_268                                   ; 4800 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4802 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4805 _ 89. 04 24
        call    _task_remove                            ; 4808 _ E8, 0000002E
?_268:  mov     eax, dword [ebp+8H]                     ; 480D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4810 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4813 _ 83. F8, 02
        jz      ?_269                                   ; 4816 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4818 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 481B _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 481E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4821 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4824 _ 89. 04 24
        call    _task_add                               ; 4827 _ E8, FFFFFE35
?_269:  mov     eax, dword [_taskctl]                   ; 482C _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 4831 _ C7. 40, 04, 00000001
        nop                                             ; 4838 _ 90
        leave                                           ; 4839 _ C9
        ret                                             ; 483A _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 483B _ 55
        mov     ebp, esp                                ; 483C _ 89. E5
        sub     esp, 16                                 ; 483E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4841 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4847 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 484A _ 8B. 50, 0C
        mov     eax, edx                                ; 484D _ 89. D0
        shl     eax, 2                                  ; 484F _ C1. E0, 02
        add     eax, edx                                ; 4852 _ 01. D0
        shl     eax, 2                                  ; 4854 _ C1. E0, 02
        add     eax, ecx                                ; 4857 _ 01. C8
        add     eax, 8                                  ; 4859 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 485C _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 485F _ C7. 45, FC, 00000000
        jmp     ?_272                                   ; 4866 _ EB, 23

?_270:  mov     eax, dword [ebp-8H]                     ; 4868 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 486B _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 486E _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 4872 _ 39. 45, 08
        jnz     ?_271                                   ; 4875 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4877 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 487A _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 487D _ C7. 44 90, 08, 00000000
        jmp     ?_273                                   ; 4885 _ EB, 0E

?_271:  add     dword [ebp-4H], 1                       ; 4887 _ 83. 45, FC, 01
?_272:  mov     eax, dword [ebp-8H]                     ; 488B _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 488E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4890 _ 39. 45, FC
        jl      ?_270                                   ; 4893 _ 7C, D3
?_273:  mov     eax, dword [ebp-8H]                     ; 4895 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4898 _ 8B. 00
        lea     edx, [eax-1H]                           ; 489A _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 489D _ 8B. 45, F8
        mov     dword [eax], edx                        ; 48A0 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 48A2 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 48A5 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 48A8 _ 39. 45, FC
        jge     ?_274                                   ; 48AB _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 48AD _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 48B0 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 48B3 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 48B6 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 48B9 _ 89. 50, 04
?_274:  mov     eax, dword [ebp-8H]                     ; 48BC _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 48BF _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 48C2 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 48C5 _ 8B. 00
        cmp     edx, eax                                ; 48C7 _ 39. C2
        jl      ?_275                                   ; 48C9 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 48CB _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 48CE _ C7. 40, 04, 00000000
?_275:  mov     eax, dword [ebp+8H]                     ; 48D5 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 48D8 _ C7. 40, 04, 00000001
        jmp     ?_277                                   ; 48DF _ EB, 1B

?_276:  mov     eax, dword [ebp-4H]                     ; 48E1 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 48E4 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 48E7 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 48EA _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 48EE _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 48F1 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 48F4 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 48F8 _ 83. 45, FC, 01
?_277:  mov     eax, dword [ebp-8H]                     ; 48FC _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 48FF _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4901 _ 39. 45, FC
        jl      ?_276                                   ; 4904 _ 7C, DB
        nop                                             ; 4906 _ 90
        leave                                           ; 4907 _ C9
        ret                                             ; 4908 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4909 _ 55
        mov     ebp, esp                                ; 490A _ 89. E5
        sub     esp, 40                                 ; 490C _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 490F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4915 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 491A _ 8B. 10
        mov     eax, edx                                ; 491C _ 89. D0
        shl     eax, 2                                  ; 491E _ C1. E0, 02
        add     eax, edx                                ; 4921 _ 01. D0
        shl     eax, 2                                  ; 4923 _ C1. E0, 02
        add     eax, ecx                                ; 4926 _ 01. C8
        add     eax, 8                                  ; 4928 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 492B _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 492E _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4931 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4934 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4937 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 493B _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 493E _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 4941 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4944 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4947 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 494A _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 494D _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4950 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4953 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4956 _ 8B. 00
        cmp     edx, eax                                ; 4958 _ 39. C2
        jnz     ?_278                                   ; 495A _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 495C _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 495F _ C7. 40, 04, 00000000
?_278:  mov     eax, dword [_taskctl]                   ; 4966 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 496B _ 8B. 40, 04
        test    eax, eax                                ; 496E _ 85. C0
        jz      ?_279                                   ; 4970 _ 74, 24
        call    _task_switchsub                         ; 4972 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4977 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 497D _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4982 _ 8B. 10
        mov     eax, edx                                ; 4984 _ 89. D0
        shl     eax, 2                                  ; 4986 _ C1. E0, 02
        add     eax, edx                                ; 4989 _ 01. D0
        shl     eax, 2                                  ; 498B _ C1. E0, 02
        add     eax, ecx                                ; 498E _ 01. C8
        add     eax, 8                                  ; 4990 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4993 _ 89. 45, F4
?_279:  mov     eax, dword [ebp-0CH]                    ; 4996 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4999 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 499C _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 499F _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 49A3 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 49A6 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 49A9 _ 8B. 40, 08
        mov     edx, eax                                ; 49AC _ 89. C2
        mov     eax, dword [_task_timer]                       ; 49AE _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 49B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 49B7 _ 89. 04 24
        call    _timer_settime                          ; 49BA _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 49BF _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 49C2 _ 3B. 45, F0
        jz      ?_280                                   ; 49C5 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 49C7 _ 83. 7D, EC, 00
        jz      ?_280                                   ; 49CB _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 49CD _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 49D0 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 49D2 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 49D6 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 49DD _ E8, 00000000(rel)
        nop                                             ; 49E2 _ 90
?_280:  nop                                             ; 49E3 _ 90
        leave                                           ; 49E4 _ C9
        ret                                             ; 49E5 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 49E6 _ 55
        mov     ebp, esp                                ; 49E7 _ 89. E5
        sub     esp, 40                                 ; 49E9 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 49EC _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 49F3 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 49FA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 49FD _ 8B. 40, 04
        cmp     eax, 2                                  ; 4A00 _ 83. F8, 02
        jnz     ?_281                                   ; 4A03 _ 75, 51
        call    _task_now                               ; 4A05 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4A0A _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4A0D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A10 _ 89. 04 24
        call    _task_remove                            ; 4A13 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4A18 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4A1F _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4A22 _ 3B. 45, F0
        jnz     ?_281                                   ; 4A25 _ 75, 2F
        call    _task_switchsub                         ; 4A27 _ E8, 0000002F
        call    _task_now                               ; 4A2C _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4A31 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4A34 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4A3B _ 83. 7D, F0, 00
        jz      ?_281                                   ; 4A3F _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4A41 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4A44 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4A46 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4A4A _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4A51 _ E8, 00000000(rel)
?_281:  mov     eax, dword [ebp-0CH]                    ; 4A56 _ 8B. 45, F4
        leave                                           ; 4A59 _ C9
        ret                                             ; 4A5A _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4A5B _ 55
        mov     ebp, esp                                ; 4A5C _ 89. E5
        sub     esp, 16                                 ; 4A5E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4A61 _ C7. 45, FC, 00000000
        jmp     ?_283                                   ; 4A68 _ EB, 22

?_282:  mov     ecx, dword [_taskctl]                   ; 4A6A _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4A70 _ 8B. 55, FC
        mov     eax, edx                                ; 4A73 _ 89. D0
        shl     eax, 2                                  ; 4A75 _ C1. E0, 02
        add     eax, edx                                ; 4A78 _ 01. D0
        shl     eax, 2                                  ; 4A7A _ C1. E0, 02
        add     eax, ecx                                ; 4A7D _ 01. C8
        add     eax, 8                                  ; 4A7F _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4A82 _ 8B. 00
        test    eax, eax                                ; 4A84 _ 85. C0
        jg      ?_284                                   ; 4A86 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4A88 _ 83. 45, FC, 01
?_283:  cmp     dword [ebp-4H], 2                       ; 4A8C _ 83. 7D, FC, 02
        jle     ?_282                                   ; 4A90 _ 7E, D8
        jmp     ?_285                                   ; 4A92 _ EB, 01

?_284:  nop                                             ; 4A94 _ 90
?_285:  mov     eax, dword [_taskctl]                   ; 4A95 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4A9A _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4A9D _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4A9F _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4AA4 _ C7. 40, 04, 00000000
        nop                                             ; 4AAB _ 90
        leave                                           ; 4AAC _ C9
        ret                                             ; 4AAD _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4AAE _ 55
        mov     ebp, esp                                ; 4AAF _ 89. E5
        sub     esp, 16                                 ; 4AB1 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4AB4 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4ABA _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4ABF _ 8B. 10
        mov     eax, edx                                ; 4AC1 _ 89. D0
        shl     eax, 2                                  ; 4AC3 _ C1. E0, 02
        add     eax, edx                                ; 4AC6 _ 01. D0
        shl     eax, 2                                  ; 4AC8 _ C1. E0, 02
        add     eax, ecx                                ; 4ACB _ 01. C8
        add     eax, 8                                  ; 4ACD _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4AD0 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4AD3 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4AD6 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4AD9 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4ADC _ 8B. 44 90, 08
        leave                                           ; 4AE0 _ C9
        ret                                             ; 4AE1 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4AE2 _ 55
        mov     ebp, esp                                ; 4AE3 _ 89. E5
        sub     esp, 24                                 ; 4AE5 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4AE8 _ 8B. 45, 10
        movzx   eax, al                                 ; 4AEB _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4AEE _ 8B. 55, 0C
        add     edx, 16                                 ; 4AF1 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4AF4 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4AF8 _ 89. 14 24
        call    _fifo8_put                              ; 4AFB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4B00 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B03 _ 89. 04 24
        call    _task_sleep                             ; 4B06 _ E8, FFFFFEDB
        nop                                             ; 4B0B _ 90
        leave                                           ; 4B0C _ C9
        ret                                             ; 4B0D _ C3
; _send_message End of function

        nop                                             ; 4B0E _ 90
        nop                                             ; 4B0F _ 90


_strcmp:
        push    ebp                                     ; 4B10 _ 55
        mov     ebp, esp                                ; 4B11 _ 89. E5
        sub     esp, 16                                 ; 4B13 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4B16 _ 83. 7D, 08, 00
        jz      ?_286                                   ; 4B1A _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4B1C _ 83. 7D, 0C, 00
        jnz     ?_287                                   ; 4B20 _ 75, 0A
?_286:  mov     eax, 0                                  ; 4B22 _ B8, 00000000
        jmp     ?_294                                   ; 4B27 _ E9, 0000009B

?_287:  mov     dword [ebp-4H], 0                       ; 4B2C _ C7. 45, FC, 00000000
        jmp     ?_290                                   ; 4B33 _ EB, 25

?_288:  mov     edx, dword [ebp-4H]                     ; 4B35 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B38 _ 8B. 45, 08
        add     eax, edx                                ; 4B3B _ 01. D0
        movzx   edx, byte [eax]                         ; 4B3D _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4B40 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4B43 _ 8B. 45, 0C
        add     eax, ecx                                ; 4B46 _ 01. C8
        movzx   eax, byte [eax]                         ; 4B48 _ 0F B6. 00
        cmp     dl, al                                  ; 4B4B _ 38. C2
        jz      ?_289                                   ; 4B4D _ 74, 07
        mov     eax, 0                                  ; 4B4F _ B8, 00000000
        jmp     ?_294                                   ; 4B54 _ EB, 71

?_289:  add     dword [ebp-4H], 1                       ; 4B56 _ 83. 45, FC, 01
?_290:  mov     edx, dword [ebp-4H]                     ; 4B5A _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B5D _ 8B. 45, 08
        add     eax, edx                                ; 4B60 _ 01. D0
        movzx   eax, byte [eax]                         ; 4B62 _ 0F B6. 00
        test    al, al                                  ; 4B65 _ 84. C0
        jz      ?_291                                   ; 4B67 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4B69 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4B6C _ 8B. 45, 0C
        add     eax, edx                                ; 4B6F _ 01. D0
        movzx   eax, byte [eax]                         ; 4B71 _ 0F B6. 00
        test    al, al                                  ; 4B74 _ 84. C0
        jnz     ?_288                                   ; 4B76 _ 75, BD
?_291:  mov     edx, dword [ebp-4H]                     ; 4B78 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B7B _ 8B. 45, 08
        add     eax, edx                                ; 4B7E _ 01. D0
        movzx   eax, byte [eax]                         ; 4B80 _ 0F B6. 00
        test    al, al                                  ; 4B83 _ 84. C0
        jnz     ?_292                                   ; 4B85 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4B87 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4B8A _ 8B. 45, 0C
        add     eax, edx                                ; 4B8D _ 01. D0
        movzx   eax, byte [eax]                         ; 4B8F _ 0F B6. 00
        test    al, al                                  ; 4B92 _ 84. C0
        jz      ?_292                                   ; 4B94 _ 74, 07
        mov     eax, 0                                  ; 4B96 _ B8, 00000000
        jmp     ?_294                                   ; 4B9B _ EB, 2A

?_292:  mov     edx, dword [ebp-4H]                     ; 4B9D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4BA0 _ 8B. 45, 08
        add     eax, edx                                ; 4BA3 _ 01. D0
        movzx   eax, byte [eax]                         ; 4BA5 _ 0F B6. 00
        test    al, al                                  ; 4BA8 _ 84. C0
        jz      ?_293                                   ; 4BAA _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4BAC _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4BAF _ 8B. 45, 0C
        add     eax, edx                                ; 4BB2 _ 01. D0
        movzx   eax, byte [eax]                         ; 4BB4 _ 0F B6. 00
        test    al, al                                  ; 4BB7 _ 84. C0
        jz      ?_293                                   ; 4BB9 _ 74, 07
        mov     eax, 0                                  ; 4BBB _ B8, 00000000
        jmp     ?_294                                   ; 4BC0 _ EB, 05

?_293:  mov     eax, 1                                  ; 4BC2 _ B8, 00000001
?_294:  leave                                           ; 4BC7 _ C9
        ret                                             ; 4BC8 _ C3

        nop                                             ; 4BC9 _ 90
        nop                                             ; 4BCA _ 90
        nop                                             ; 4BCB _ 90



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

_table_rgb.2519:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2566:                                           ; byte
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

_closebtn.2685:                                         ; byte
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

_str.2614:                                              ; byte
        resb    1                                       ; 0388

?_323:  resb    9                                       ; 0389

?_324:  resb    14                                      ; 0392

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


