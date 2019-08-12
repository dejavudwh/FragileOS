; Disassembly of file: ckernel.o
; Mon Aug 12 21:27:44 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 116                                ; 0004 _ 83. EC, 74
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 0000001C(d)
        call    _initBootInfo                           ; 000E _ E8, 00001F42
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 0000001C(d)
        mov     dword [ebp-1CH], eax                    ; 0018 _ 89. 45, E4
        movzx   eax, word [?_322]                       ; 001B _ 0F B7. 05, 00000020(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000013C(d)
        movzx   eax, word [?_323]                       ; 0028 _ 0F B7. 05, 00000022(d)
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
        call    _init_palette                           ; 0148 _ E8, 00001ED2
        call    _init_keyboard                          ; 014D _ E8, 0000243B
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
        call    _init_screen8                           ; 027E _ E8, 0000180A
        mov     dword [esp+4H], 99                      ; 0283 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028B _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0292 _ E8, 00002024
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
        mov     dword [esp+4H], ?_299                   ; 0328 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0330 _ 89. 04 24
        call    _message_box                            ; 0333 _ E8, 00002680
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
        call    _enable_mouse                           ; 0387 _ E8, 0000223C
        mov     eax, dword [_memman]                    ; 038C _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0391 _ 89. 04 24
        call    _task_init                              ; 0394 _ E8, 00000000(rel)
        mov     dword [_task_a.2331], eax               ; 0399 _ A3, 00000280(d)
        mov     eax, dword [_task_a.2331]               ; 039E _ A1, 00000280(d)
        mov     dword [?_324], eax                      ; 03A3 _ A3, 0000003C(d)
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
        mov     dword [esp+8H], ?_300                   ; 04A2 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 04AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04AE _ 89. 04 24
        call    _make_wtitle8                           ; 04B1 _ E8, 000028B2
        mov     eax, dword [_shtctl]                    ; 04B6 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BB _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_301                   ; 04C3 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 04CB _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 04CE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04D2 _ 89. 04 24
        call    _make_wtitle8                           ; 04D5 _ E8, 0000288E
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
        mov     dword [esp+8H], ?_300                   ; 052B _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0533 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0537 _ 89. 04 24
        call    _make_wtitle8                           ; 053A _ E8, 00002829
        mov     eax, dword [_shtctl]                    ; 053F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0544 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_301                   ; 054C _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-34H]                    ; 0554 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0557 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 055B _ 89. 04 24
        call    _make_wtitle8                           ; 055E _ E8, 00002805
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
        call    _showString                             ; 06B3 _ E8, 000018BE
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
        call    _show_mouse_info                        ; 0767 _ E8, 00001731
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
        call    _boxfill8                               ; 08A4 _ E8, 00001841
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
        mov     dword [esp+8H], ?_301                   ; 0AD3 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0ADB _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0ADE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AE2 _ 89. 04 24
        call    _make_window8                           ; 0AE5 _ E8, 00001FB9
        mov     dword [esp+14H], 0                      ; 0AEA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0AF2 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0AFA _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B02 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B0A _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B12 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B15 _ 89. 04 24
        call    _make_textbox8                          ; 0B18 _ E8, 00002389
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
        add     eax, _console_task                      ; 0B4C _ 05, 000013BB(d)
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
        mov     ecx, dword [?_318]                      ; 0CF6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0CFC _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0D02 _ A1, 00000264(d)
        mov     ebx, dword [ebp-18H]                    ; 0D07 _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0D0A _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0D0E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0D16 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0D1A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0D22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D26 _ 89. 04 24
        call    _showString                             ; 0D29 _ E8, 00001248
        mov     dword [ebp-1CH], 136                    ; 0D2E _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0D35 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0D38 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0D3B _ 89. 04 24
        call    _intToHexStr                            ; 0D3E _ E8, 00001794
        mov     dword [ebp-20H], eax                    ; 0D43 _ 89. 45, E0
        mov     ecx, dword [?_318]                      ; 0D46 _ 8B. 0D, 00000010(d)
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
        call    _showString                             ; 0D78 _ E8, 000011F9
        mov     edx, dword [_g_Console]                 ; 0D7D _ 8B. 15, 00000008(d)
        mov     eax, dword [?_318]                      ; 0D83 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0D88 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D8C _ 89. 04 24
        call    _cons_newline                           ; 0D8F _ E8, 00000BC9
        mov     dword [?_318], eax                      ; 0D94 _ A3, 00000010(d)
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
        mov     dword [?_317], 16                       ; 0F23 _ C7. 05, 0000000C(d), 00000010
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
?_048:  mov     ebx, dword [?_318]                      ; 0F53 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_317]                      ; 0F59 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 0F5F _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0F65 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_302                  ; 0F6A _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 0F72 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 0F7A _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0F7E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0F82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F86 _ 89. 04 24
        call    _showString                             ; 0F89 _ E8, 00000FE8
        mov     eax, dword [?_317]                      ; 0F8E _ A1, 0000000C(d)
        add     eax, 8                                  ; 0F93 _ 83. C0, 08
        mov     dword [?_317], eax                      ; 0F96 _ A3, 0000000C(d)
        mov     eax, dword [?_317]                      ; 0F9B _ A1, 0000000C(d)
        cmp     eax, 248                                ; 0FA0 _ 3D, 000000F8
        jnz     ?_048                                   ; 0FA5 _ 75, AC
        mov     dword [?_317], 8                        ; 0FA7 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 0FB1 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_318]                      ; 0FB7 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0FBC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FC0 _ 89. 04 24
        call    _cons_newline                           ; 0FC3 _ E8, 00000995
        mov     dword [?_318], eax                      ; 0FC8 _ A3, 00000010(d)
        jmp     ?_048                                   ; 0FCD _ EB, 84

?_049:  movzx   eax, byte [ebp-3BH]                     ; 0FCF _ 0F B6. 45, C5
        cmp     al, 10                                  ; 0FD3 _ 3C, 0A
        jnz     ?_050                                   ; 0FD5 _ 75, 2B
        mov     dword [?_317], 8                        ; 0FD7 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 0FE1 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_318]                      ; 0FE7 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0FEC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FF0 _ 89. 04 24
        call    _cons_newline                           ; 0FF3 _ E8, 00000965
        mov     dword [?_318], eax                      ; 0FF8 _ A3, 00000010(d)
        jmp     ?_051                                   ; 0FFD _ E9, 00000082

?_050:  movzx   eax, byte [ebp-3BH]                     ; 1002 _ 0F B6. 45, C5
        cmp     al, 13                                  ; 1006 _ 3C, 0D
        jz      ?_051                                   ; 1008 _ 74, 7A
        mov     esi, dword [?_318]                      ; 100A _ 8B. 35, 00000010(d)
        mov     ebx, dword [?_317]                      ; 1010 _ 8B. 1D, 0000000C(d)
        mov     ecx, dword [_g_Console]                 ; 1016 _ 8B. 0D, 00000008(d)
        mov     edx, dword [_shtctl]                    ; 101C _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3BH]                          ; 1022 _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 1025 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1029 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1031 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1035 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1039 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 103D _ 89. 14 24
        call    _showString                             ; 1040 _ E8, 00000F31
        mov     eax, dword [?_317]                      ; 1045 _ A1, 0000000C(d)
        add     eax, 8                                  ; 104A _ 83. C0, 08
        mov     dword [?_317], eax                      ; 104D _ A3, 0000000C(d)
        mov     eax, dword [?_317]                      ; 1052 _ A1, 0000000C(d)
        cmp     eax, 248                                ; 1057 _ 3D, 000000F8
        jnz     ?_051                                   ; 105C _ 75, 26
        mov     dword [?_317], 16                       ; 105E _ C7. 05, 0000000C(d), 00000010
        mov     edx, dword [_g_Console]                 ; 1068 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_318]                      ; 106E _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 1073 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1077 _ 89. 04 24
        call    _cons_newline                           ; 107A _ E8, 000008DE
        mov     dword [?_318], eax                      ; 107F _ A3, 00000010(d)
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
        mov     eax, dword [?_318]                      ; 10AF _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 10B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _cons_newline                           ; 10BB _ E8, 0000089D
        mov     dword [?_318], eax                      ; 10C0 _ A3, 00000010(d)
        mov     edx, dword [ebp-24H]                    ; 10C5 _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 10C8 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 10CD _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10D9 _ 89. 04 24
        call    _memman_free                            ; 10DC _ E8, 00000000(rel)
        mov     dword [?_317], 16                       ; 10E1 _ C7. 05, 0000000C(d), 00000010
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
        call    _intToHexStr                            ; 110E _ E8, 000013C4
        mov     dword [ebp-0CH], eax                    ; 1113 _ 89. 45, F4
        mov     ecx, dword [?_318]                      ; 1116 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 111C _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1122 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_303                  ; 1127 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 112F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1137 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 113B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1143 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1147 _ 89. 04 24
        call    _showString                             ; 114A _ E8, 00000E27
        mov     ecx, dword [?_318]                      ; 114F _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1155 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 115B _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 1160 _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 1163 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1167 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 116F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 1173 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 117B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 117F _ 89. 04 24
        call    _showString                             ; 1182 _ E8, 00000DEF
        mov     ecx, dword [?_318]                      ; 1187 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 118D _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1193 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_304                  ; 1198 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 11A0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11A8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 11AC _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 11B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11B8 _ 89. 04 24
        call    _showString                             ; 11BB _ E8, 00000DB6
        mov     edx, dword [_g_Console]                 ; 11C0 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_318]                      ; 11C6 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 11CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11CF _ 89. 04 24
        call    _cons_newline                           ; 11D2 _ E8, 00000786
        mov     dword [?_318], eax                      ; 11D7 _ A3, 00000010(d)
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
        mov     dword [?_318], 28                       ; 1277 _ C7. 05, 00000010(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 1281 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1287 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_305                  ; 128C _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1294 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 129C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 12A4 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 12AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12B0 _ 89. 04 24
        call    _showString                             ; 12B3 _ E8, 00000CBE
        nop                                             ; 12B8 _ 90
        leave                                           ; 12B9 _ C9
        ret                                             ; 12BA _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 12BB _ 55
        mov     ebp, esp                                ; 12BC _ 89. E5
        sub     esp, 56                                 ; 12BE _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 12C1 _ C7. 44 24, 04, 00000278(d)
        mov     dword [esp], ?_306                      ; 12C9 _ C7. 04 24, 00000025(d)
        call    _file_loadfile                          ; 12D0 _ E8, 00001E6B
        call    _get_addr_gdt                           ; 12D5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 12DA _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 12DD _ A1, 00000278(d)
        mov     edx, eax                                ; 12E2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 12E4 _ 8B. 45, F4
        add     eax, 88                                 ; 12E7 _ 83. C0, 58
        mov     dword [esp+0CH], 16634                  ; 12EA _ C7. 44 24, 0C, 000040FA
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
        mov     dword [esp+0CH], 16626                  ; 1327 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 132F _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 1333 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 133B _ 89. 04 24
        call    _set_segmdesc                           ; 133E _ E8, 00000000(rel)
        call    _task_now                               ; 1343 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1348 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 134B _ 8B. 45, EC
        add     eax, 48                                 ; 134E _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 1351 _ 89. 44 24, 10
        mov     dword [esp+0CH], 96                     ; 1355 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 135D _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 1365 _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 136D _ C7. 04 24, 00000000
        call    _start_app                              ; 1374 _ E8, 00000000(rel)
        mov     eax, dword [?_326]                      ; 1379 _ A1, 0000027C(d)
        mov     ecx, eax                                ; 137E _ 89. C1
        mov     eax, dword [_buffer]                    ; 1380 _ A1, 00000278(d)
        mov     edx, eax                                ; 1385 _ 89. C2
        mov     eax, dword [_memman]                    ; 1387 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 138C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1390 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1394 _ 89. 04 24
        call    _memman_free_4k                         ; 1397 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 139C _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 139F _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 13A4 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 13AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13B0 _ 89. 04 24
        call    _memman_free_4k                         ; 13B3 _ E8, 00000000(rel)
        nop                                             ; 13B8 _ 90
        leave                                           ; 13B9 _ C9
        ret                                             ; 13BA _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 13BB _ 55
        mov     ebp, esp                                ; 13BC _ 89. E5
        push    ebx                                     ; 13BE _ 53
        sub     esp, 84                                 ; 13BF _ 83. EC, 54
        call    _task_now                               ; 13C2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 13C7 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 13CA _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 13D1 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 13D8 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 13DF _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 13E4 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 13EC _ 89. 04 24
        call    _memman_alloc                           ; 13EF _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 13F4 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 13F7 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 13FC _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1404 _ 89. 04 24
        call    _memman_alloc                           ; 1407 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 140C _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 140F _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 1412 _ A3, 00000008(d)
        mov     dword [?_317], 16                       ; 1417 _ C7. 05, 0000000C(d), 00000010
        mov     dword [?_318], 28                       ; 1421 _ C7. 05, 00000010(d), 0000001C
        mov     dword [?_319], -1                       ; 142B _ C7. 05, 00000014(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 1435 _ 8B. 45, F0
        add     eax, 16                                 ; 1438 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 143B _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 143E _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 1442 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 1445 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 1449 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1451 _ 89. 04 24
        call    _fifo8_init                             ; 1454 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 1459 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 145E _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 1461 _ 8B. 45, F0
        add     eax, 16                                 ; 1464 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1467 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 146F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1473 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1476 _ 89. 04 24
        call    _timer_init                             ; 1479 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 147E _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1486 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1489 _ 89. 04 24
        call    _timer_settime                          ; 148C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1491 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_305                  ; 1496 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 149E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 14A6 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 14AE _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 14B6 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 14B9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14BD _ 89. 04 24
        call    _showString                             ; 14C0 _ E8, 00000AB1
        mov     dword [ebp-28H], 0                      ; 14C5 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 14CC _ C7. 45, D4, 00013400
?_060:  call    _io_cli                                 ; 14D3 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 14D8 _ 8B. 45, F0
        add     eax, 16                                 ; 14DB _ 83. C0, 10
        mov     dword [esp], eax                        ; 14DE _ 89. 04 24
        call    _fifo8_status                           ; 14E1 _ E8, 00000000(rel)
        test    eax, eax                                ; 14E6 _ 85. C0
        jnz     ?_061                                   ; 14E8 _ 75, 07
        call    _io_sti                                 ; 14EA _ E8, 00000000(rel)
        jmp     ?_060                                   ; 14EF _ EB, E2
; _console_task End of function

?_061:  ; Local function
        call    _io_sti                                 ; 14F1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 14F6 _ 8B. 45, F0
        add     eax, 16                                 ; 14F9 _ 83. C0, 10
        mov     dword [esp], eax                        ; 14FC _ 89. 04 24
        call    _fifo8_get                              ; 14FF _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 1504 _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 1507 _ 83. 7D, D0, 01
        jg      ?_064                                   ; 150B _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 150D _ 83. 7D, F4, 00
        js      ?_064                                   ; 1511 _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 1513 _ 83. 7D, D0, 00
        jz      ?_062                                   ; 1517 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1519 _ 8B. 45, F0
        add     eax, 16                                 ; 151C _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 151F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1527 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 152B _ 8B. 45, DC
        mov     dword [esp], eax                        ; 152E _ 89. 04 24
        call    _timer_init                             ; 1531 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1536 _ C7. 45, F4, 00000007
        jmp     ?_063                                   ; 153D _ EB, 24

?_062:  mov     eax, dword [ebp-10H]                    ; 153F _ 8B. 45, F0
        add     eax, 16                                 ; 1542 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1545 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 154D _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1551 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1554 _ 89. 04 24
        call    _timer_init                             ; 1557 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 155C _ C7. 45, F4, 00000000
?_063:  mov     dword [esp+4H], 50                      ; 1563 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 156B _ 8B. 45, DC
        mov     dword [esp], eax                        ; 156E _ 89. 04 24
        call    _timer_settime                          ; 1571 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 1576 _ E9, 000002CB

?_064:  cmp     dword [ebp-30H], 87                     ; 157B _ 83. 7D, D0, 57
        jnz     ?_065                                   ; 157F _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1581 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1588 _ 8B. 45, F0
        add     eax, 16                                 ; 158B _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 158E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1596 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 159A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 159D _ 89. 04 24
        call    _timer_init                             ; 15A0 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 15A5 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 15AD _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15B0 _ 89. 04 24
        call    _timer_settime                          ; 15B3 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 15B8 _ E9, 00000289

?_065:  cmp     dword [ebp-30H], 88                     ; 15BD _ 83. 7D, D0, 58
        jnz     ?_066                                   ; 15C1 _ 75, 59
        mov     ecx, dword [?_318]                      ; 15C3 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_317]                      ; 15C9 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 15CF _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 15D4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 15DC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 15E0 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 15E4 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 15E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15EB _ 89. 04 24
        call    _set_cursor                             ; 15EE _ E8, FFFFF26B
        mov     dword [ebp-0CH], -1                     ; 15F3 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 15FA _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 15FF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1607 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 160F _ 89. 04 24
        call    _task_run                               ; 1612 _ E8, 00000000(rel)
        jmp     ?_074                                   ; 1617 _ E9, 0000022A

?_066:  cmp     dword [ebp-30H], 28                     ; 161C _ 83. 7D, D0, 1C
        jne     ?_072                                   ; 1620 _ 0F 85, 00000134
        mov     ecx, dword [?_318]                      ; 1626 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_317]                      ; 162C _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1632 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1637 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 163F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1643 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1647 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 164A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 164E _ 89. 04 24
        call    _set_cursor                             ; 1651 _ E8, FFFFF208
        mov     eax, dword [?_317]                      ; 1656 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 165B _ 8D. 50, 07
        test    eax, eax                                ; 165E _ 85. C0
        cmovs   eax, edx                                ; 1660 _ 0F 48. C2
        sar     eax, 3                                  ; 1663 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1666 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1669 _ 8B. 45, E0
        add     eax, edx                                ; 166C _ 01. D0
        mov     byte [eax], 0                           ; 166E _ C6. 00, 00
        mov     eax, dword [?_318]                      ; 1671 _ A1, 00000010(d)
        mov     edx, dword [ebp+8H]                     ; 1676 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1679 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 167D _ 89. 04 24
        call    _cons_newline                           ; 1680 _ E8, 000002D8
        mov     dword [?_318], eax                      ; 1685 _ A3, 00000010(d)
        mov     dword [esp+4H], ?_307                   ; 168A _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-20H]                    ; 1692 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1695 _ 89. 04 24
        call    _strcmp                                 ; 1698 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 169D _ 83. F8, 01
        jnz     ?_067                                   ; 16A0 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 16A2 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 16A5 _ 89. 04 24
        call    _cmd_mem                                ; 16A8 _ E8, FFFFFA46
        jmp     ?_071                                   ; 16AD _ E9, 00000099

?_067:  mov     dword [esp+4H], ?_308                   ; 16B2 _ C7. 44 24, 04, 00000031(d)
        mov     eax, dword [ebp-20H]                    ; 16BA _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16BD _ 89. 04 24
        call    _strcmp                                 ; 16C0 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 16C5 _ 83. F8, 01
        jnz     ?_068                                   ; 16C8 _ 75, 07
        call    _cmd_cls                                ; 16CA _ E8, FFFFFB14
        jmp     ?_071                                   ; 16CF _ EB, 7A

?_068:  mov     dword [esp+4H], ?_309                   ; 16D1 _ C7. 44 24, 04, 00000035(d)
        mov     eax, dword [ebp-20H]                    ; 16D9 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16DC _ 89. 04 24
        call    _strcmp                                 ; 16DF _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 16E4 _ 83. F8, 01
        jnz     ?_069                                   ; 16E7 _ 75, 07
        call    _cmd_hlt                                ; 16E9 _ E8, FFFFFBCD
        jmp     ?_071                                   ; 16EE _ EB, 5B

?_069:  mov     dword [esp+4H], ?_310                   ; 16F0 _ C7. 44 24, 04, 00000039(d)
        mov     eax, dword [ebp-20H]                    ; 16F8 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16FB _ 89. 04 24
        call    _strcmp                                 ; 16FE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1703 _ 83. F8, 01
        jnz     ?_070                                   ; 1706 _ 75, 07
        call    _cmd_dir                                ; 1708 _ E8, FFFFF532
        jmp     ?_071                                   ; 170D _ EB, 3C

?_070:  mov     eax, dword [ebp-20H]                    ; 170F _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1712 _ 0F B6. 00
        cmp     al, 116                                 ; 1715 _ 3C, 74
        jnz     ?_071                                   ; 1717 _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 1719 _ 8B. 45, E0
        add     eax, 1                                  ; 171C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 171F _ 0F B6. 00
        cmp     al, 121                                 ; 1722 _ 3C, 79
        jnz     ?_071                                   ; 1724 _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1726 _ 8B. 45, E0
        add     eax, 2                                  ; 1729 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 172C _ 0F B6. 00
        cmp     al, 112                                 ; 172F _ 3C, 70
        jnz     ?_071                                   ; 1731 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1733 _ 8B. 45, E0
        add     eax, 3                                  ; 1736 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1739 _ 0F B6. 00
        cmp     al, 101                                 ; 173C _ 3C, 65
        jnz     ?_071                                   ; 173E _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 1740 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1743 _ 89. 04 24
        call    _cmd_type                               ; 1746 _ E8, FFFFF683
?_071:  mov     dword [?_317], 16                       ; 174B _ C7. 05, 0000000C(d), 00000010
        jmp     ?_074                                   ; 1755 _ E9, 000000EC

?_072:  cmp     dword [ebp-30H], 14                     ; 175A _ 83. 7D, D0, 0E
        jnz     ?_073                                   ; 175E _ 75, 79
        mov     eax, dword [?_317]                      ; 1760 _ A1, 0000000C(d)
        cmp     eax, 8                                  ; 1765 _ 83. F8, 08
        jle     ?_073                                   ; 1768 _ 7E, 6F
        mov     ecx, dword [?_318]                      ; 176A _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_317]                      ; 1770 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1776 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 177B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1783 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1787 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 178B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 178E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1792 _ 89. 04 24
        call    _set_cursor                             ; 1795 _ E8, FFFFF0C4
        mov     eax, dword [?_317]                      ; 179A _ A1, 0000000C(d)
        sub     eax, 8                                  ; 179F _ 83. E8, 08
        mov     dword [?_317], eax                      ; 17A2 _ A3, 0000000C(d)
        mov     ecx, dword [?_318]                      ; 17A7 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_317]                      ; 17AD _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17B3 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 17B8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 17C0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17C4 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17C8 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17CF _ 89. 04 24
        call    _set_cursor                             ; 17D2 _ E8, FFFFF087
        jmp     ?_074                                   ; 17D7 _ EB, 6D

?_073:  mov     eax, dword [ebp-30H]                    ; 17D9 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 17DC _ 89. 04 24
        call    _transferScanCode                       ; 17DF _ E8, FFFFF14D
        mov     byte [ebp-31H], al                      ; 17E4 _ 88. 45, CF
        mov     eax, dword [?_317]                      ; 17E7 _ A1, 0000000C(d)
        cmp     eax, 239                                ; 17EC _ 3D, 000000EF
        jg      ?_074                                   ; 17F1 _ 7F, 53
        cmp     byte [ebp-31H], 0                       ; 17F3 _ 80. 7D, CF, 00
        jz      ?_074                                   ; 17F7 _ 74, 4D
        mov     eax, dword [?_317]                      ; 17F9 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 17FE _ 8D. 50, 07
        test    eax, eax                                ; 1801 _ 85. C0
        cmovs   eax, edx                                ; 1803 _ 0F 48. C2
        sar     eax, 3                                  ; 1806 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1809 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 180C _ 8B. 45, E0
        add     edx, eax                                ; 180F _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 1811 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 1815 _ 88. 02
        mov     eax, dword [?_317]                      ; 1817 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 181C _ 8D. 50, 07
        test    eax, eax                                ; 181F _ 85. C0
        cmovs   eax, edx                                ; 1821 _ 0F 48. C2
        sar     eax, 3                                  ; 1824 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1827 _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 182A _ 8B. 45, E0
        add     eax, edx                                ; 182D _ 01. D0
        mov     byte [eax], 0                           ; 182F _ C6. 00, 00
        movsx   eax, byte [ebp-31H]                     ; 1832 _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 1836 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 183E _ 89. 04 24
        call    _cons_putchar                           ; 1841 _ E8, 0000003E
?_074:  cmp     dword [ebp-0CH], 0                      ; 1846 _ 83. 7D, F4, 00
        js      ?_060                                   ; 184A _ 0F 88, FFFFFC83
        mov     ecx, dword [?_318]                      ; 1850 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_317]                      ; 1856 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 185C _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 1861 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 1864 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1868 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 186C _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1870 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1873 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1877 _ 89. 04 24
        call    _set_cursor                             ; 187A _ E8, FFFFEFDF
        jmp     ?_060                                   ; 187F _ E9, FFFFFC4F

_cons_putchar:; Function begin
        push    ebp                                     ; 1884 _ 55
        mov     ebp, esp                                ; 1885 _ 89. E5
        push    ebx                                     ; 1887 _ 53
        sub     esp, 52                                 ; 1888 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 188B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 188E _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1891 _ 88. 45, F4
        mov     eax, edx                                ; 1894 _ 89. D0
        mov     byte [ebp-10H], al                      ; 1896 _ 88. 45, F0
        mov     ebx, dword [?_318]                      ; 1899 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_317]                      ; 189F _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 18A5 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 18AB _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 18B0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 18B8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 18BC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 18C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18C4 _ 89. 04 24
        call    _set_cursor                             ; 18C7 _ E8, FFFFEF92
        movzx   eax, byte [ebp-0CH]                     ; 18CC _ 0F B6. 45, F4
        mov     byte [?_320], al                        ; 18D0 _ A2, 00000018(d)
        mov     byte [?_321], 0                         ; 18D5 _ C6. 05, 00000019(d), 00
        mov     ebx, dword [?_318]                      ; 18DC _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_317]                      ; 18E2 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 18E8 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 18EE _ A1, 00000264(d)
        mov     dword [esp+14H], ?_320                  ; 18F3 _ C7. 44 24, 14, 00000018(d)
        mov     dword [esp+10H], 7                      ; 18FB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1903 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1907 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 190B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 190F _ 89. 04 24
        call    _showString                             ; 1912 _ E8, 0000065F
        mov     eax, dword [?_317]                      ; 1917 _ A1, 0000000C(d)
        add     eax, 8                                  ; 191C _ 83. C0, 08
        mov     dword [?_317], eax                      ; 191F _ A3, 0000000C(d)
        nop                                             ; 1924 _ 90
        add     esp, 52                                 ; 1925 _ 83. C4, 34
        pop     ebx                                     ; 1928 _ 5B
        pop     ebp                                     ; 1929 _ 5D
        ret                                             ; 192A _ C3
; _cons_putchar End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 192B _ 55
        mov     ebp, esp                                ; 192C _ 89. E5
        sub     esp, 24                                 ; 192E _ 83. EC, 18
        jmp     ?_076                                   ; 1931 _ EB, 1D

?_075:  mov     eax, dword [ebp+8H]                     ; 1933 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1936 _ 0F B6. 00
        movsx   eax, al                                 ; 1939 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 193C _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1944 _ 89. 04 24
        call    _cons_putchar                           ; 1947 _ E8, FFFFFF38
        add     dword [ebp+8H], 1                       ; 194C _ 83. 45, 08, 01
?_076:  mov     eax, dword [ebp+8H]                     ; 1950 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1953 _ 0F B6. 00
        test    al, al                                  ; 1956 _ 84. C0
        jnz     ?_075                                   ; 1958 _ 75, D9
        nop                                             ; 195A _ 90
        leave                                           ; 195B _ C9
        ret                                             ; 195C _ C3
; _cons_putstr End of function

_cons_newline:; Function begin
        push    ebp                                     ; 195D _ 55
        mov     ebp, esp                                ; 195E _ 89. E5
        push    ebx                                     ; 1960 _ 53
        sub     esp, 52                                 ; 1961 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 1964 _ 81. 7D, 08, 0000008B
        jg      ?_077                                   ; 196B _ 7F, 09
        add     dword [ebp+8H], 16                      ; 196D _ 83. 45, 08, 10
        jmp     ?_086                                   ; 1971 _ E9, 000000DB

?_077:  mov     dword [ebp-10H], 28                     ; 1976 _ C7. 45, F0, 0000001C
        jmp     ?_081                                   ; 197D _ EB, 50

?_078:  mov     dword [ebp-0CH], 8                      ; 197F _ C7. 45, F4, 00000008
        jmp     ?_080                                   ; 1986 _ EB, 3A

?_079:  mov     eax, dword [ebp+0CH]                    ; 1988 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 198B _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 198D _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 1990 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 1993 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1996 _ 8B. 40, 04
        imul    eax, ecx                                ; 1999 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 199C _ 8B. 4D, F4
        add     eax, ecx                                ; 199F _ 01. C8
        add     eax, edx                                ; 19A1 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 19A3 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 19A6 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 19A8 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 19AB _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 19AE _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 19B2 _ 8B. 5D, F4
        add     edx, ebx                                ; 19B5 _ 01. DA
        add     edx, ecx                                ; 19B7 _ 01. CA
        movzx   eax, byte [eax]                         ; 19B9 _ 0F B6. 00
        mov     byte [edx], al                          ; 19BC _ 88. 02
        add     dword [ebp-0CH], 1                      ; 19BE _ 83. 45, F4, 01
?_080:  cmp     dword [ebp-0CH], 247                    ; 19C2 _ 81. 7D, F4, 000000F7
        jle     ?_079                                   ; 19C9 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 19CB _ 83. 45, F0, 01
?_081:  cmp     dword [ebp-10H], 139                    ; 19CF _ 81. 7D, F0, 0000008B
        jle     ?_078                                   ; 19D6 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 19D8 _ C7. 45, F0, 0000008C
        jmp     ?_085                                   ; 19DF _ EB, 33

?_082:  mov     dword [ebp-0CH], 8                      ; 19E1 _ C7. 45, F4, 00000008
        jmp     ?_084                                   ; 19E8 _ EB, 1D

?_083:  mov     eax, dword [ebp+0CH]                    ; 19EA _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 19ED _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 19EF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 19F2 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 19F5 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 19F9 _ 8B. 4D, F4
        add     eax, ecx                                ; 19FC _ 01. C8
        add     eax, edx                                ; 19FE _ 01. D0
        mov     byte [eax], 0                           ; 1A00 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1A03 _ 83. 45, F4, 01
?_084:  cmp     dword [ebp-0CH], 247                    ; 1A07 _ 81. 7D, F4, 000000F7
        jle     ?_083                                   ; 1A0E _ 7E, DA
        add     dword [ebp-10H], 1                      ; 1A10 _ 83. 45, F0, 01
?_085:  cmp     dword [ebp-10H], 155                    ; 1A14 _ 81. 7D, F0, 0000009B
        jle     ?_082                                   ; 1A1B _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 1A1D _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1A22 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1A2A _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1A32 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1A3A _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1A42 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1A45 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A49 _ 89. 04 24
        call    _sheet_refresh                          ; 1A4C _ E8, 00000000(rel)
?_086:  mov     eax, dword [_shtctl]                    ; 1A51 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_305                  ; 1A56 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1A5E _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 1A66 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1A69 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 1A6D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1A75 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1A78 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A7C _ 89. 04 24
        call    _showString                             ; 1A7F _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 1A84 _ 8B. 45, 08
        add     esp, 52                                 ; 1A87 _ 83. C4, 34
        pop     ebx                                     ; 1A8A _ 5B
        pop     ebp                                     ; 1A8B _ 5D
        ret                                             ; 1A8C _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 1A8D _ 55
        mov     ebp, esp                                ; 1A8E _ 89. E5
        push    ebx                                     ; 1A90 _ 53
        sub     esp, 36                                 ; 1A91 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 1A94 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 1A97 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 1A9A _ 8B. 45, 0C
        sub     eax, 1                                  ; 1A9D _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 1AA0 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 1AA4 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1AA8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1AB0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1AB8 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 1AC0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1ACA _ 89. 04 24
        call    _boxfill8                               ; 1ACD _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 1AD2 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 1AD5 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 1AD8 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1ADB _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1ADE _ 8B. 45, 10
        sub     eax, 28                                 ; 1AE1 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 1AE4 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1AE8 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AEC _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1AF0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AF8 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B00 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B03 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B07 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B0A _ 89. 04 24
        call    _boxfill8                               ; 1B0D _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 1B12 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 1B15 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 1B18 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B1B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B1E _ 8B. 45, 10
        sub     eax, 27                                 ; 1B21 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 1B24 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B28 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B2C _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B30 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 1B38 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1B40 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B4A _ 89. 04 24
        call    _boxfill8                               ; 1B4D _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 1B52 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1B55 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1B58 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B5B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B5E _ 8B. 45, 10
        sub     eax, 26                                 ; 1B61 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 1B64 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B68 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B6C _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B70 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B78 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B80 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B83 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B87 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B8A _ 89. 04 24
        call    _boxfill8                               ; 1B8D _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 1B92 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1B95 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 1B98 _ 8B. 45, 10
        sub     eax, 24                                 ; 1B9B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1B9E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1BA2 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1BAA _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1BAE _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 1BB6 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1BBE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BC1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BC5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BC8 _ 89. 04 24
        call    _boxfill8                               ; 1BCB _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 1BD0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1BD3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1BD6 _ 8B. 45, 10
        sub     eax, 24                                 ; 1BD9 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1BDC _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 1BE0 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 1BE8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1BEC _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 1BF4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1BFC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BFF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C03 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C06 _ 89. 04 24
        call    _boxfill8                               ; 1C09 _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 1C0E _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C11 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C14 _ 8B. 45, 10
        sub     eax, 4                                  ; 1C17 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 1C1A _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C1E _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C26 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C2A _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 1C32 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1C3A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C3D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C41 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C44 _ 89. 04 24
        call    _boxfill8                               ; 1C47 _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 1C4C _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1C4F _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1C52 _ 8B. 45, 10
        sub     eax, 23                                 ; 1C55 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 1C58 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C5C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C64 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 1C68 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 1C70 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1C78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C82 _ 89. 04 24
        call    _boxfill8                               ; 1C85 _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 1C8A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1C8D _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1C90 _ 8B. 45, 10
        sub     eax, 3                                  ; 1C93 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 1C96 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C9A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1CA2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1CA6 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 1CAE _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1CB6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CB9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CBD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CC0 _ 89. 04 24
        call    _boxfill8                               ; 1CC3 _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 1CC8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1CCB _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1CCE _ 8B. 45, 10
        sub     eax, 24                                 ; 1CD1 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1CD4 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 1CD8 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 1CE0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 1CE4 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 1CEC _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1CF4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CF7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CFB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CFE _ 89. 04 24
        call    _boxfill8                               ; 1D01 _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 1D06 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 1D09 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 1D0C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D0F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D12 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1D15 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1D18 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D1B _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D1E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D22 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D26 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D2A _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1D2E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1D36 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D39 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D3D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D40 _ 89. 04 24
        call    _boxfill8                               ; 1D43 _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 1D48 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1D4B _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1D4E _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1D51 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1D54 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 1D57 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 1D5A _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D5D _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D60 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D64 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D68 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D6C _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1D70 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1D78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D82 _ 89. 04 24
        call    _boxfill8                               ; 1D85 _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 1D8A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1D8D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1D90 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D93 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D96 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1D99 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D9C _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D9F _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1DA2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DA6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DAA _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DAE _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1DB2 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1DBA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DBD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DC1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DC4 _ 89. 04 24
        call    _boxfill8                               ; 1DC7 _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 1DCC _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DCF _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1DD2 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1DD5 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1DD8 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1DDB _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1DDE _ 8B. 45, 0C
        sub     eax, 3                                  ; 1DE1 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 1DE4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DE8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DEC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DF0 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1DF4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1DFC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DFF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E03 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E06 _ 89. 04 24
        call    _boxfill8                               ; 1E09 _ E8, 000002DC
        nop                                             ; 1E0E _ 90
        add     esp, 36                                 ; 1E0F _ 83. C4, 24
        pop     ebx                                     ; 1E12 _ 5B
        pop     ebp                                     ; 1E13 _ 5D
        ret                                             ; 1E14 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 1E15 _ 55
        mov     ebp, esp                                ; 1E16 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1E18 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1E1B _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 1E1E _ A1, 00000134(d)
        add     eax, edx                                ; 1E23 _ 01. D0
        mov     dword [_mx], eax                        ; 1E25 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 1E2A _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1E2D _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 1E30 _ A1, 00000138(d)
        add     eax, edx                                ; 1E35 _ 01. D0
        mov     dword [_my], eax                        ; 1E37 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 1E3C _ A1, 00000134(d)
        test    eax, eax                                ; 1E41 _ 85. C0
        jns     ?_087                                   ; 1E43 _ 79, 0A
        mov     dword [_mx], 0                          ; 1E45 _ C7. 05, 00000134(d), 00000000
?_087:  mov     eax, dword [_my]                        ; 1E4F _ A1, 00000138(d)
        test    eax, eax                                ; 1E54 _ 85. C0
        jns     ?_088                                   ; 1E56 _ 79, 0A
        mov     dword [_my], 0                          ; 1E58 _ C7. 05, 00000138(d), 00000000
?_088:  mov     edx, dword [_xsize]                     ; 1E62 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1E68 _ A1, 00000134(d)
        cmp     edx, eax                                ; 1E6D _ 39. C2
        jg      ?_089                                   ; 1E6F _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1E71 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 1E76 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1E79 _ A3, 00000134(d)
?_089:  mov     edx, dword [_ysize]                     ; 1E7E _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 1E84 _ A1, 00000138(d)
        cmp     edx, eax                                ; 1E89 _ 39. C2
        jg      ?_090                                   ; 1E8B _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1E8D _ A1, 00000140(d)
        sub     eax, 1                                  ; 1E92 _ 83. E8, 01
        mov     dword [_my], eax                        ; 1E95 _ A3, 00000138(d)
?_090:  nop                                             ; 1E9A _ 90
        pop     ebp                                     ; 1E9B _ 5D
        ret                                             ; 1E9C _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1E9D _ 55
        mov     ebp, esp                                ; 1E9E _ 89. E5
        sub     esp, 40                                 ; 1EA0 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 1EA3 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1EA8 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1EAB _ C6. 45, F3, 00
        call    _io_sti                                 ; 1EAF _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1EB4 _ C7. 04 24, 00000040(d)
        call    _fifo8_get                              ; 1EBB _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1EC0 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 1EC3 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1EC7 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1ECB _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1ED2 _ E8, 00000787
        test    eax, eax                                ; 1ED7 _ 85. C0
        jz      ?_091                                   ; 1ED9 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1EDB _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 1EE3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1EE6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EEA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EED _ 89. 04 24
        call    _computeMousePosition                   ; 1EF0 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1EF5 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1EFB _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1F00 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1F04 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F08 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F12 _ 89. 04 24
        call    _sheet_slide                            ; 1F15 _ E8, 00000000(rel)
        mov     eax, dword [?_325]                      ; 1F1A _ A1, 0000010C(d)
        and     eax, 01H                                ; 1F1F _ 83. E0, 01
        test    eax, eax                                ; 1F22 _ 85. C0
        jz      ?_091                                   ; 1F24 _ 74, 2C
        mov     eax, dword [_my]                        ; 1F26 _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1F2B _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1F2E _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 1F33 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1F36 _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1F3B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F3F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F4A _ 89. 04 24
        call    _sheet_slide                            ; 1F4D _ E8, 00000000(rel)
?_091:  nop                                             ; 1F52 _ 90
        leave                                           ; 1F53 _ C9
        ret                                             ; 1F54 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1F55 _ 55
        mov     ebp, esp                                ; 1F56 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1F58 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1F5B _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1F61 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1F64 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1F6A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1F6D _ 66: C7. 40, 06, 01E0
        nop                                             ; 1F73 _ 90
        pop     ebp                                     ; 1F74 _ 5D
        ret                                             ; 1F75 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1F76 _ 55
        mov     ebp, esp                                ; 1F77 _ 89. E5
        push    ebx                                     ; 1F79 _ 53
        sub     esp, 68                                 ; 1F7A _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1F7D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1F80 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1F83 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1F86 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 1F89 _ C7. 45, F0, 00000000
        jmp     ?_093                                   ; 1F90 _ EB, 4B

?_092:  mov     eax, dword [ebp+1CH]                    ; 1F92 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1F95 _ 0F B6. 00
        movzx   eax, al                                 ; 1F98 _ 0F B6. C0
        shl     eax, 4                                  ; 1F9B _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 1F9E _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1FA4 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 1FA8 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1FAB _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1FAE _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1FB1 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1FB3 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1FB7 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1FBB _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1FBE _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1FC2 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1FC5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1FC9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1FCD _ 89. 14 24
        call    _showFont8                              ; 1FD0 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1FD5 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1FD9 _ 83. 45, 1C, 01
?_093:  mov     eax, dword [ebp+1CH]                    ; 1FDD _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1FE0 _ 0F B6. 00
        test    al, al                                  ; 1FE3 _ 84. C0
        jnz     ?_092                                   ; 1FE5 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 1FE7 _ 8B. 45, 14
        add     eax, 16                                 ; 1FEA _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 1FED _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1FF1 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 1FF4 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1FF8 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1FFB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1FFF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2002 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2006 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2009 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 200D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2010 _ 89. 04 24
        call    _sheet_refresh                          ; 2013 _ E8, 00000000(rel)
        nop                                             ; 2018 _ 90
        add     esp, 68                                 ; 2019 _ 83. C4, 44
        pop     ebx                                     ; 201C _ 5B
        pop     ebp                                     ; 201D _ 5D
        ret                                             ; 201E _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 201F _ 55
        mov     ebp, esp                                ; 2020 _ 89. E5
        sub     esp, 24                                 ; 2022 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2522         ; 2025 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 202D _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2035 _ C7. 04 24, 00000000
        call    _set_palette                            ; 203C _ E8, 00000003
        nop                                             ; 2041 _ 90
        leave                                           ; 2042 _ C9
        ret                                             ; 2043 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 2044 _ 55
        mov     ebp, esp                                ; 2045 _ 89. E5
        sub     esp, 40                                 ; 2047 _ 83. EC, 28
        call    _io_load_eflags                         ; 204A _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 204F _ 89. 45, F0
        call    _io_cli                                 ; 2052 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2057 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 205A _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 205E _ C7. 04 24, 000003C8
        call    _io_out8                                ; 2065 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 206A _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 206D _ 89. 45, F4
        jmp     ?_095                                   ; 2070 _ EB, 62

?_094:  mov     eax, dword [ebp+10H]                    ; 2072 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 2075 _ 0F B6. 00
        shr     al, 2                                   ; 2078 _ C0. E8, 02
        movzx   eax, al                                 ; 207B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 207E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2082 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2089 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 208E _ 8B. 45, 10
        add     eax, 1                                  ; 2091 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 2094 _ 0F B6. 00
        shr     al, 2                                   ; 2097 _ C0. E8, 02
        movzx   eax, al                                 ; 209A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 209D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20A1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20A8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 20AD _ 8B. 45, 10
        add     eax, 2                                  ; 20B0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 20B3 _ 0F B6. 00
        shr     al, 2                                   ; 20B6 _ C0. E8, 02
        movzx   eax, al                                 ; 20B9 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20BC _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20C0 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20C7 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 20CC _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 20D0 _ 83. 45, F4, 01
?_095:  mov     eax, dword [ebp-0CH]                    ; 20D4 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 20D7 _ 3B. 45, 0C
        jle     ?_094                                   ; 20DA _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 20DC _ 8B. 45, F0
        mov     dword [esp], eax                        ; 20DF _ 89. 04 24
        call    _io_store_eflags                        ; 20E2 _ E8, 00000000(rel)
        nop                                             ; 20E7 _ 90
        leave                                           ; 20E8 _ C9
        ret                                             ; 20E9 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 20EA _ 55
        mov     ebp, esp                                ; 20EB _ 89. E5
        sub     esp, 20                                 ; 20ED _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 20F0 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 20F3 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 20F6 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 20F9 _ 89. 45, F8
        jmp     ?_099                                   ; 20FC _ EB, 31

?_096:  mov     eax, dword [ebp+14H]                    ; 20FE _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2101 _ 89. 45, FC
        jmp     ?_098                                   ; 2104 _ EB, 1D

?_097:  mov     eax, dword [ebp-8H]                     ; 2106 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2109 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 210D _ 8B. 55, FC
        add     eax, edx                                ; 2110 _ 01. D0
        mov     edx, eax                                ; 2112 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2114 _ 8B. 45, 08
        add     edx, eax                                ; 2117 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2119 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 211D _ 88. 02
        add     dword [ebp-4H], 1                       ; 211F _ 83. 45, FC, 01
?_098:  mov     eax, dword [ebp-4H]                     ; 2123 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 2126 _ 3B. 45, 1C
        jle     ?_097                                   ; 2129 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 212B _ 83. 45, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 212F _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 2132 _ 3B. 45, 20
        jle     ?_096                                   ; 2135 _ 7E, C7
        nop                                             ; 2137 _ 90
        leave                                           ; 2138 _ C9
        ret                                             ; 2139 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 213A _ 55
        mov     ebp, esp                                ; 213B _ 89. E5
        sub     esp, 20                                 ; 213D _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 2140 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 2143 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2146 _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 214D _ E9, 0000015C

?_100:  mov     edx, dword [ebp-4H]                     ; 2152 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 2155 _ 8B. 45, 1C
        add     eax, edx                                ; 2158 _ 01. D0
        movzx   eax, byte [eax]                         ; 215A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 215D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 2160 _ 80. 7D, FB, 00
        jns     ?_101                                   ; 2164 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 2166 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2169 _ 8B. 45, FC
        add     eax, edx                                ; 216C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 216E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2172 _ 8B. 55, 10
        add     eax, edx                                ; 2175 _ 01. D0
        mov     edx, eax                                ; 2177 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2179 _ 8B. 45, 08
        add     edx, eax                                ; 217C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 217E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2182 _ 88. 02
?_101:  movsx   eax, byte [ebp-5H]                      ; 2184 _ 0F BE. 45, FB
        and     eax, 40H                                ; 2188 _ 83. E0, 40
        test    eax, eax                                ; 218B _ 85. C0
        jz      ?_102                                   ; 218D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 218F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2192 _ 8B. 45, FC
        add     eax, edx                                ; 2195 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2197 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 219B _ 8B. 55, 10
        add     eax, edx                                ; 219E _ 01. D0
        lea     edx, [eax+1H]                           ; 21A0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 21A3 _ 8B. 45, 08
        add     edx, eax                                ; 21A6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21A8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21AC _ 88. 02
?_102:  movsx   eax, byte [ebp-5H]                      ; 21AE _ 0F BE. 45, FB
        and     eax, 20H                                ; 21B2 _ 83. E0, 20
        test    eax, eax                                ; 21B5 _ 85. C0
        jz      ?_103                                   ; 21B7 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21B9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21BC _ 8B. 45, FC
        add     eax, edx                                ; 21BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21C1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21C5 _ 8B. 55, 10
        add     eax, edx                                ; 21C8 _ 01. D0
        lea     edx, [eax+2H]                           ; 21CA _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 21CD _ 8B. 45, 08
        add     edx, eax                                ; 21D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21D6 _ 88. 02
?_103:  movsx   eax, byte [ebp-5H]                      ; 21D8 _ 0F BE. 45, FB
        and     eax, 10H                                ; 21DC _ 83. E0, 10
        test    eax, eax                                ; 21DF _ 85. C0
        jz      ?_104                                   ; 21E1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21E3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21E6 _ 8B. 45, FC
        add     eax, edx                                ; 21E9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21EB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21EF _ 8B. 55, 10
        add     eax, edx                                ; 21F2 _ 01. D0
        lea     edx, [eax+3H]                           ; 21F4 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 21F7 _ 8B. 45, 08
        add     edx, eax                                ; 21FA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21FC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2200 _ 88. 02
?_104:  movsx   eax, byte [ebp-5H]                      ; 2202 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2206 _ 83. E0, 08
        test    eax, eax                                ; 2209 _ 85. C0
        jz      ?_105                                   ; 220B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 220D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2210 _ 8B. 45, FC
        add     eax, edx                                ; 2213 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2215 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2219 _ 8B. 55, 10
        add     eax, edx                                ; 221C _ 01. D0
        lea     edx, [eax+4H]                           ; 221E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2221 _ 8B. 45, 08
        add     edx, eax                                ; 2224 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2226 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 222A _ 88. 02
?_105:  movsx   eax, byte [ebp-5H]                      ; 222C _ 0F BE. 45, FB
        and     eax, 04H                                ; 2230 _ 83. E0, 04
        test    eax, eax                                ; 2233 _ 85. C0
        jz      ?_106                                   ; 2235 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2237 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 223A _ 8B. 45, FC
        add     eax, edx                                ; 223D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 223F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2243 _ 8B. 55, 10
        add     eax, edx                                ; 2246 _ 01. D0
        lea     edx, [eax+5H]                           ; 2248 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 224B _ 8B. 45, 08
        add     edx, eax                                ; 224E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2250 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2254 _ 88. 02
?_106:  movsx   eax, byte [ebp-5H]                      ; 2256 _ 0F BE. 45, FB
        and     eax, 02H                                ; 225A _ 83. E0, 02
        test    eax, eax                                ; 225D _ 85. C0
        jz      ?_107                                   ; 225F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2261 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2264 _ 8B. 45, FC
        add     eax, edx                                ; 2267 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2269 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 226D _ 8B. 55, 10
        add     eax, edx                                ; 2270 _ 01. D0
        lea     edx, [eax+6H]                           ; 2272 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 2275 _ 8B. 45, 08
        add     edx, eax                                ; 2278 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 227A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 227E _ 88. 02
?_107:  movsx   eax, byte [ebp-5H]                      ; 2280 _ 0F BE. 45, FB
        and     eax, 01H                                ; 2284 _ 83. E0, 01
        test    eax, eax                                ; 2287 _ 85. C0
        jz      ?_108                                   ; 2289 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 228B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 228E _ 8B. 45, FC
        add     eax, edx                                ; 2291 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2293 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2297 _ 8B. 55, 10
        add     eax, edx                                ; 229A _ 01. D0
        lea     edx, [eax+7H]                           ; 229C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 229F _ 8B. 45, 08
        add     edx, eax                                ; 22A2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22A4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22A8 _ 88. 02
?_108:  add     dword [ebp-4H], 1                       ; 22AA _ 83. 45, FC, 01
?_109:  cmp     dword [ebp-4H], 15                      ; 22AE _ 83. 7D, FC, 0F
        jle     ?_100                                   ; 22B2 _ 0F 8E, FFFFFE9A
        nop                                             ; 22B8 _ 90
        leave                                           ; 22B9 _ C9
        ret                                             ; 22BA _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 22BB _ 55
        mov     ebp, esp                                ; 22BC _ 89. E5
        sub     esp, 20                                 ; 22BE _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 22C1 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 22C4 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 22C7 _ C7. 45, F8, 00000000
        jmp     ?_116                                   ; 22CE _ E9, 000000B1

?_110:  mov     dword [ebp-4H], 0                       ; 22D3 _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 22DA _ E9, 00000097

?_111:  mov     eax, dword [ebp-8H]                     ; 22DF _ 8B. 45, F8
        shl     eax, 4                                  ; 22E2 _ C1. E0, 04
        mov     edx, eax                                ; 22E5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22E7 _ 8B. 45, FC
        add     eax, edx                                ; 22EA _ 01. D0
        add     eax, _cursor.2569                       ; 22EC _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 22F1 _ 0F B6. 00
        cmp     al, 42                                  ; 22F4 _ 3C, 2A
        jnz     ?_112                                   ; 22F6 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 22F8 _ 8B. 45, F8
        shl     eax, 4                                  ; 22FB _ C1. E0, 04
        mov     edx, eax                                ; 22FE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2300 _ 8B. 45, FC
        add     eax, edx                                ; 2303 _ 01. D0
        mov     edx, eax                                ; 2305 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2307 _ 8B. 45, 08
        add     eax, edx                                ; 230A _ 01. D0
        mov     byte [eax], 0                           ; 230C _ C6. 00, 00
?_112:  mov     eax, dword [ebp-8H]                     ; 230F _ 8B. 45, F8
        shl     eax, 4                                  ; 2312 _ C1. E0, 04
        mov     edx, eax                                ; 2315 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2317 _ 8B. 45, FC
        add     eax, edx                                ; 231A _ 01. D0
        add     eax, _cursor.2569                       ; 231C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2321 _ 0F B6. 00
        cmp     al, 79                                  ; 2324 _ 3C, 4F
        jnz     ?_113                                   ; 2326 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2328 _ 8B. 45, F8
        shl     eax, 4                                  ; 232B _ C1. E0, 04
        mov     edx, eax                                ; 232E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2330 _ 8B. 45, FC
        add     eax, edx                                ; 2333 _ 01. D0
        mov     edx, eax                                ; 2335 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2337 _ 8B. 45, 08
        add     eax, edx                                ; 233A _ 01. D0
        mov     byte [eax], 7                           ; 233C _ C6. 00, 07
?_113:  mov     eax, dword [ebp-8H]                     ; 233F _ 8B. 45, F8
        shl     eax, 4                                  ; 2342 _ C1. E0, 04
        mov     edx, eax                                ; 2345 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2347 _ 8B. 45, FC
        add     eax, edx                                ; 234A _ 01. D0
        add     eax, _cursor.2569                       ; 234C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2351 _ 0F B6. 00
        cmp     al, 46                                  ; 2354 _ 3C, 2E
        jnz     ?_114                                   ; 2356 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 2358 _ 8B. 45, F8
        shl     eax, 4                                  ; 235B _ C1. E0, 04
        mov     edx, eax                                ; 235E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2360 _ 8B. 45, FC
        add     eax, edx                                ; 2363 _ 01. D0
        mov     edx, eax                                ; 2365 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2367 _ 8B. 45, 08
        add     edx, eax                                ; 236A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 236C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2370 _ 88. 02
?_114:  add     dword [ebp-4H], 1                       ; 2372 _ 83. 45, FC, 01
?_115:  cmp     dword [ebp-4H], 15                      ; 2376 _ 83. 7D, FC, 0F
        jle     ?_111                                   ; 237A _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 2380 _ 83. 45, F8, 01
?_116:  cmp     dword [ebp-8H], 15                      ; 2384 _ 83. 7D, F8, 0F
        jle     ?_110                                   ; 2388 _ 0F 8E, FFFFFF45
        nop                                             ; 238E _ 90
        leave                                           ; 238F _ C9
        ret                                             ; 2390 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 2391 _ 55
        mov     ebp, esp                                ; 2392 _ 89. E5
        push    ebx                                     ; 2394 _ 53
        sub     esp, 16                                 ; 2395 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2398 _ C7. 45, F4, 00000000
        jmp     ?_120                                   ; 239F _ EB, 4E

?_117:  mov     dword [ebp-8H], 0                       ; 23A1 _ C7. 45, F8, 00000000
        jmp     ?_119                                   ; 23A8 _ EB, 39

?_118:  mov     eax, dword [ebp-0CH]                    ; 23AA _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 23AD _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 23B1 _ 8B. 55, F8
        add     eax, edx                                ; 23B4 _ 01. D0
        mov     edx, eax                                ; 23B6 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 23B8 _ 8B. 45, 20
        add     eax, edx                                ; 23BB _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 23BD _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 23C0 _ 8B. 55, F4
        add     edx, ecx                                ; 23C3 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 23C5 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 23C9 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 23CC _ 8B. 4D, F8
        add     ecx, ebx                                ; 23CF _ 01. D9
        add     edx, ecx                                ; 23D1 _ 01. CA
        mov     ecx, edx                                ; 23D3 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 23D5 _ 8B. 55, 08
        add     edx, ecx                                ; 23D8 _ 01. CA
        movzx   eax, byte [eax]                         ; 23DA _ 0F B6. 00
        mov     byte [edx], al                          ; 23DD _ 88. 02
        add     dword [ebp-8H], 1                       ; 23DF _ 83. 45, F8, 01
?_119:  mov     eax, dword [ebp-8H]                     ; 23E3 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 23E6 _ 3B. 45, 10
        jl      ?_118                                   ; 23E9 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 23EB _ 83. 45, F4, 01
?_120:  mov     eax, dword [ebp-0CH]                    ; 23EF _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 23F2 _ 3B. 45, 14
        jl      ?_117                                   ; 23F5 _ 7C, AA
        nop                                             ; 23F7 _ 90
        add     esp, 16                                 ; 23F8 _ 83. C4, 10
        pop     ebx                                     ; 23FB _ 5B
        pop     ebp                                     ; 23FC _ 5D
        ret                                             ; 23FD _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 23FE _ 55
        mov     ebp, esp                                ; 23FF _ 89. E5
        sub     esp, 40                                 ; 2401 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2404 _ A1, 0000001C(d)
        mov     dword [ebp-0CH], eax                    ; 2409 _ 89. 45, F4
        movzx   eax, word [?_322]                       ; 240C _ 0F B7. 05, 00000020(d)
        cwde                                            ; 2413 _ 98
        mov     dword [ebp-10H], eax                    ; 2414 _ 89. 45, F0
        movzx   eax, word [?_323]                       ; 2417 _ 0F B7. 05, 00000022(d)
        cwde                                            ; 241E _ 98
        mov     dword [ebp-14H], eax                    ; 241F _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2422 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 242A _ C7. 04 24, 00000020
        call    _io_out8                                ; 2431 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 2436 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 243A _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2441 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 2446 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2449 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 244D _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 2451 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 2458 _ E8, 00000000(rel)
        nop                                             ; 245D _ 90
        leave                                           ; 245E _ C9
        ret                                             ; 245F _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 2460 _ 55
        mov     ebp, esp                                ; 2461 _ 89. E5
        sub     esp, 4                                  ; 2463 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2466 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2469 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 246C _ 80. 7D, FC, 09
        jle     ?_121                                   ; 2470 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 2472 _ 0F B6. 45, FC
        add     eax, 55                                 ; 2476 _ 83. C0, 37
        jmp     ?_122                                   ; 2479 _ EB, 07

?_121:  movzx   eax, byte [ebp-4H]                      ; 247B _ 0F B6. 45, FC
        add     eax, 48                                 ; 247F _ 83. C0, 30
?_122:  leave                                           ; 2482 _ C9
        ret                                             ; 2483 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 2484 _ 55
        mov     ebp, esp                                ; 2485 _ 89. E5
        sub     esp, 24                                 ; 2487 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 248A _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 248D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2490 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2497 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 249B _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 249E _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 24A1 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 24A5 _ 89. 04 24
        call    _charToHexVal                           ; 24A8 _ E8, FFFFFFB3
        mov     byte [?_298], al                        ; 24AD _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 24B2 _ 0F B6. 45, EC
        shr     al, 4                                   ; 24B6 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 24B9 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 24BC _ 0F B6. 45, EC
        movsx   eax, al                                 ; 24C0 _ 0F BE. C0
        mov     dword [esp], eax                        ; 24C3 _ 89. 04 24
        call    _charToHexVal                           ; 24C6 _ E8, FFFFFF95
        mov     byte [?_297], al                        ; 24CB _ A2, 00000102(d)
        mov     eax, _keyval                            ; 24D0 _ B8, 00000100(d)
        leave                                           ; 24D5 _ C9
        ret                                             ; 24D6 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 24D7 _ 55
        mov     ebp, esp                                ; 24D8 _ 89. E5
        sub     esp, 16                                 ; 24DA _ 83. EC, 10
        mov     byte [_str.2617], 48                    ; 24DD _ C6. 05, 00000388(d), 30
        mov     byte [?_327], 88                        ; 24E4 _ C6. 05, 00000389(d), 58
        mov     byte [?_328], 0                         ; 24EB _ C6. 05, 00000392(d), 00
        mov     dword [ebp-4H], 2                       ; 24F2 _ C7. 45, FC, 00000002
        jmp     ?_124                                   ; 24F9 _ EB, 0F

?_123:  mov     eax, dword [ebp-4H]                     ; 24FB _ 8B. 45, FC
        add     eax, _str.2617                          ; 24FE _ 05, 00000388(d)
        mov     byte [eax], 48                          ; 2503 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2506 _ 83. 45, FC, 01
?_124:  cmp     dword [ebp-4H], 9                       ; 250A _ 83. 7D, FC, 09
        jle     ?_123                                   ; 250E _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2510 _ C7. 45, F8, 00000009
        jmp     ?_128                                   ; 2517 _ EB, 42

?_125:  mov     eax, dword [ebp+8H]                     ; 2519 _ 8B. 45, 08
        and     eax, 0FH                                ; 251C _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 251F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2522 _ 8B. 45, 08
        shr     eax, 4                                  ; 2525 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2528 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 252B _ 83. 7D, F4, 09
        jle     ?_126                                   ; 252F _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 2531 _ 8B. 45, F4
        add     eax, 55                                 ; 2534 _ 83. C0, 37
        mov     edx, eax                                ; 2537 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2539 _ 8B. 45, F8
        add     eax, _str.2617                          ; 253C _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 2541 _ 88. 10
        jmp     ?_127                                   ; 2543 _ EB, 12

?_126:  mov     eax, dword [ebp-0CH]                    ; 2545 _ 8B. 45, F4
        add     eax, 48                                 ; 2548 _ 83. C0, 30
        mov     edx, eax                                ; 254B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 254D _ 8B. 45, F8
        add     eax, _str.2617                          ; 2550 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 2555 _ 88. 10
?_127:  sub     dword [ebp-8H], 1                       ; 2557 _ 83. 6D, F8, 01
?_128:  cmp     dword [ebp-8H], 1                       ; 255B _ 83. 7D, F8, 01
        jle     ?_129                                   ; 255F _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2561 _ 83. 7D, 08, 00
        jnz     ?_125                                   ; 2565 _ 75, B2
?_129:  mov     eax, _str.2617                          ; 2567 _ B8, 00000388(d)
        leave                                           ; 256C _ C9
        ret                                             ; 256D _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 256E _ 55
        mov     ebp, esp                                ; 256F _ 89. E5
        sub     esp, 24                                 ; 2571 _ 83. EC, 18
?_130:  mov     dword [esp], 100                        ; 2574 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 257B _ E8, 00000000(rel)
        and     eax, 02H                                ; 2580 _ 83. E0, 02
        test    eax, eax                                ; 2583 _ 85. C0
        jz      ?_131                                   ; 2585 _ 74, 02
        jmp     ?_130                                   ; 2587 _ EB, EB
; _wait_KBC_sendready End of function

?_131:  ; Local function
        nop                                             ; 2589 _ 90
        nop                                             ; 258A _ 90
        leave                                           ; 258B _ C9
        ret                                             ; 258C _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 258D _ 55
        mov     ebp, esp                                ; 258E _ 89. E5
        sub     esp, 24                                 ; 2590 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2593 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2598 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 25A0 _ C7. 04 24, 00000064
        call    _io_out8                                ; 25A7 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 25AC _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 25B1 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 25B9 _ C7. 04 24, 00000060
        call    _io_out8                                ; 25C0 _ E8, 00000000(rel)
        nop                                             ; 25C5 _ 90
        leave                                           ; 25C6 _ C9
        ret                                             ; 25C7 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 25C8 _ 55
        mov     ebp, esp                                ; 25C9 _ 89. E5
        sub     esp, 24                                 ; 25CB _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 25CE _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 25D3 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 25DB _ C7. 04 24, 00000064
        call    _io_out8                                ; 25E2 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 25E7 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 25EC _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 25F4 _ C7. 04 24, 00000060
        call    _io_out8                                ; 25FB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2600 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2603 _ C6. 40, 03, 00
        nop                                             ; 2607 _ 90
        leave                                           ; 2608 _ C9
        ret                                             ; 2609 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 260A _ 55
        mov     ebp, esp                                ; 260B _ 89. E5
        sub     esp, 40                                 ; 260D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2610 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2618 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 261F _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 2624 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 262C _ C7. 04 24, 00000020
        call    _io_out8                                ; 2633 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 2638 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 263F _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 2644 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2647 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 264B _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 264F _ C7. 04 24, 00000040(d)
        call    _fifo8_put                              ; 2656 _ E8, 00000000(rel)
        nop                                             ; 265B _ 90
        leave                                           ; 265C _ C9
        ret                                             ; 265D _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 265E _ 55
        mov     ebp, esp                                ; 265F _ 89. E5
        sub     esp, 4                                  ; 2661 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2664 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2667 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 266A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 266D _ 0F B6. 40, 03
        test    al, al                                  ; 2671 _ 84. C0
        jnz     ?_133                                   ; 2673 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2675 _ 80. 7D, FC, FA
        jnz     ?_132                                   ; 2679 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 267B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 267E _ C6. 40, 03, 01
?_132:  mov     eax, 0                                  ; 2682 _ B8, 00000000
        jmp     ?_140                                   ; 2687 _ E9, 0000010F

?_133:  mov     eax, dword [ebp+8H]                     ; 268C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 268F _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2693 _ 3C, 01
        jnz     ?_135                                   ; 2695 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2697 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 269B _ 25, 000000C8
        cmp     eax, 8                                  ; 26A0 _ 83. F8, 08
        jnz     ?_134                                   ; 26A3 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 26A5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 26A8 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 26AC _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 26AE _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 26B1 _ C6. 40, 03, 02
?_134:  mov     eax, 0                                  ; 26B5 _ B8, 00000000
        jmp     ?_140                                   ; 26BA _ E9, 000000DC

?_135:  mov     eax, dword [ebp+8H]                     ; 26BF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26C2 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 26C6 _ 3C, 02
        jnz     ?_136                                   ; 26C8 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 26CA _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 26CD _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 26D1 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 26D4 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 26D7 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 26DB _ B8, 00000000
        jmp     ?_140                                   ; 26E0 _ E9, 000000B6

?_136:  mov     eax, dword [ebp+8H]                     ; 26E5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26E8 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 26EC _ 3C, 03
        jne     ?_139                                   ; 26EE _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 26F4 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 26F7 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 26FB _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 26FE _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2701 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2705 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2708 _ 0F B6. 00
        movzx   eax, al                                 ; 270B _ 0F B6. C0
        and     eax, 07H                                ; 270E _ 83. E0, 07
        mov     edx, eax                                ; 2711 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2713 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2716 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2719 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 271C _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2720 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2723 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2726 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2729 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 272C _ 0F B6. 40, 02
        movzx   eax, al                                 ; 2730 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2733 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 2736 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 2739 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 273C _ 0F B6. 00
        movzx   eax, al                                 ; 273F _ 0F B6. C0
        and     eax, 10H                                ; 2742 _ 83. E0, 10
        test    eax, eax                                ; 2745 _ 85. C0
        jz      ?_137                                   ; 2747 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2749 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 274C _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 274F _ 0D, FFFFFF00
        mov     edx, eax                                ; 2754 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2756 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2759 _ 89. 50, 04
?_137:  mov     eax, dword [ebp+8H]                     ; 275C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 275F _ 0F B6. 00
        movzx   eax, al                                 ; 2762 _ 0F B6. C0
        and     eax, 20H                                ; 2765 _ 83. E0, 20
        test    eax, eax                                ; 2768 _ 85. C0
        jz      ?_138                                   ; 276A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 276C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 276F _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2772 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2777 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2779 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 277C _ 89. 50, 08
?_138:  mov     eax, dword [ebp+8H]                     ; 277F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2782 _ 8B. 40, 08
        neg     eax                                     ; 2785 _ F7. D8
        mov     edx, eax                                ; 2787 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2789 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 278C _ 89. 50, 08
        mov     eax, 1                                  ; 278F _ B8, 00000001
        jmp     ?_140                                   ; 2794 _ EB, 05

?_139:  mov     eax, 4294967295                         ; 2796 _ B8, FFFFFFFF
?_140:  leave                                           ; 279B _ C9
        ret                                             ; 279C _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 279D _ 55
        mov     ebp, esp                                ; 279E _ 89. E5
        sub     esp, 72                                 ; 27A0 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 27A3 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 27AA _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 27B1 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 27B8 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 27BF _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 27C5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 27C8 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 27CA _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 27CE _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 27D1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27D5 _ 89. 04 24
        call    _init_screen8                           ; 27D8 _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 27DD _ 8B. 45, 20
        movsx   eax, al                                 ; 27E0 _ 0F BE. C0
        mov     dword [esp+14H], ?_311                  ; 27E3 _ C7. 44 24, 14, 0000003D(d)
        mov     dword [esp+10H], eax                    ; 27EB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 27EF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 27F2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 27F6 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 27F9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 27FD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2800 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2804 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2807 _ 89. 04 24
        call    _showString                             ; 280A _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 280F _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2812 _ 89. 04 24
        call    _intToHexStr                            ; 2815 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 281A _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 281D _ 8B. 45, 20
        movsx   eax, al                                 ; 2820 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 2823 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 2826 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 282A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 282E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2831 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2835 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2838 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 283C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 283F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2843 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2846 _ 89. 04 24
        call    _showString                             ; 2849 _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 284E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2852 _ 8B. 45, 20
        movsx   eax, al                                 ; 2855 _ 0F BE. C0
        mov     dword [esp+14H], ?_312                  ; 2858 _ C7. 44 24, 14, 00000047(d)
        mov     dword [esp+10H], eax                    ; 2860 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2864 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2867 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 286B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 286E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2872 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2875 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2879 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 287C _ 89. 04 24
        call    _showString                             ; 287F _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 2884 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2887 _ 8B. 00
        mov     dword [esp], eax                        ; 2889 _ 89. 04 24
        call    _intToHexStr                            ; 288C _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 2891 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2894 _ 8B. 45, 20
        movsx   eax, al                                 ; 2897 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 289A _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 289D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 28A1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28A5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28A8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 28AC _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 28AF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28B3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28B6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28BA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28BD _ 89. 04 24
        call    _showString                             ; 28C0 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 28C5 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 28C9 _ 8B. 45, 20
        movsx   eax, al                                 ; 28CC _ 0F BE. C0
        mov     dword [esp+14H], ?_313                  ; 28CF _ C7. 44 24, 14, 00000053(d)
        mov     dword [esp+10H], eax                    ; 28D7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28DB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28DE _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 28E2 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 28E5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28E9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28EC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28F0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28F3 _ 89. 04 24
        call    _showString                             ; 28F6 _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 28FB _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 28FE _ 8B. 40, 04
        mov     dword [esp], eax                        ; 2901 _ 89. 04 24
        call    _intToHexStr                            ; 2904 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 2909 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 290C _ 8B. 45, 20
        movsx   eax, al                                 ; 290F _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 2912 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 2915 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2919 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 291D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2920 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2924 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2927 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 292B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 292E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2932 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2935 _ 89. 04 24
        call    _showString                             ; 2938 _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 293D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2941 _ 8B. 45, 20
        movsx   eax, al                                 ; 2944 _ 0F BE. C0
        mov     dword [esp+14H], ?_314                  ; 2947 _ C7. 44 24, 14, 0000005F(d)
        mov     dword [esp+10H], eax                    ; 294F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2953 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2956 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 295A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 295D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2961 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2964 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2968 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 296B _ 89. 04 24
        call    _showString                             ; 296E _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 2973 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 2976 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 2979 _ 89. 04 24
        call    _intToHexStr                            ; 297C _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 2981 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 2984 _ 8B. 45, 20
        movsx   eax, al                                 ; 2987 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 298A _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 298D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2991 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2995 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2998 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 299C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 299F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 29A3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29A6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29AD _ 89. 04 24
        call    _showString                             ; 29B0 _ E8, FFFFF5C1
        nop                                             ; 29B5 _ 90
        leave                                           ; 29B6 _ C9
        ret                                             ; 29B7 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 29B8 _ 55
        mov     ebp, esp                                ; 29B9 _ 89. E5
        sub     esp, 56                                 ; 29BB _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 29BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29C1 _ 89. 04 24
        call    _sheet_alloc                            ; 29C4 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 29C9 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 29CC _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 29D1 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 29D9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 29DC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 29E1 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 29E4 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 29EC _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 29F4 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 29FC _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 29FF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2A03 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A06 _ 89. 04 24
        call    _sheet_setbuf                           ; 2A09 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2A0E _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 2A16 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2A19 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2A1D _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A20 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A24 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A27 _ 89. 04 24
        call    _make_window8                           ; 2A2A _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 2A2F _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 2A37 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 2A3F _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 2A47 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2A4F _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2A57 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A5A _ 89. 04 24
        call    _make_textbox8                          ; 2A5D _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 2A62 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 2A6A _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 2A72 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A75 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A79 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A7C _ 89. 04 24
        call    _sheet_slide                            ; 2A7F _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2A84 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2A8C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A96 _ 89. 04 24
        call    _sheet_updown                           ; 2A99 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2A9E _ 8B. 45, F4
        leave                                           ; 2AA1 _ C9
        ret                                             ; 2AA2 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 2AA3 _ 55
        mov     ebp, esp                                ; 2AA4 _ 89. E5
        push    ebx                                     ; 2AA6 _ 53
        sub     esp, 68                                 ; 2AA7 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2AAA _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2AAD _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2AB0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AB3 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2AB6 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2AB9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2ABC _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 2ABF _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2AC2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2AC5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2AC8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2ACB _ 8B. 00
        mov     dword [esp+18H], 0                      ; 2ACD _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 2AD5 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 2AD9 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2AE1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2AE9 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2AF1 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2AF4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AF8 _ 89. 04 24
        call    _boxfill8                               ; 2AFB _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 2B00 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2B03 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B06 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B09 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 2B0B _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 2B13 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 2B17 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B1F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2B27 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2B2F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B32 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B36 _ 89. 04 24
        call    _boxfill8                               ; 2B39 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 2B3E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B41 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B44 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B47 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2B49 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 2B4D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 2B55 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2B5D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2B65 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2B6D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B70 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B74 _ 89. 04 24
        call    _boxfill8                               ; 2B77 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 2B7C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B7F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B82 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B85 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2B87 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 2B8B _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 2B93 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B9B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2BA3 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2BAB _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BAE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BB2 _ 89. 04 24
        call    _boxfill8                               ; 2BB5 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 2BBA _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2BBD _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2BC0 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2BC3 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2BC6 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2BC9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2BCC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BCF _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2BD1 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2BD5 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 2BD9 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 2BE1 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 2BE5 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2BED _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BF0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BF4 _ 89. 04 24
        call    _boxfill8                               ; 2BF7 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 2BFC _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2BFF _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2C02 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2C05 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2C08 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C0B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C0E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C11 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C13 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C17 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 2C1B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 2C23 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 2C27 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2C2F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C32 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C36 _ 89. 04 24
        call    _boxfill8                               ; 2C39 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 2C3E _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 2C41 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 2C44 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 2C47 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2C4A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C4D _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 2C4F _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2C53 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 2C57 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 2C5F _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 2C67 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2C6F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C72 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C76 _ 89. 04 24
        call    _boxfill8                               ; 2C79 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 2C7E _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 2C81 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2C84 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C87 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 2C89 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2C91 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2C95 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2C9D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2CA5 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 2CAD _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CB0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CB4 _ 89. 04 24
        call    _boxfill8                               ; 2CB7 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 2CBC _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2CBF _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2CC2 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2CC5 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2CC8 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2CCB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2CCE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CD1 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2CD3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2CD7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2CDB _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2CDF _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 2CE7 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2CEF _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CF2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CF6 _ 89. 04 24
        call    _boxfill8                               ; 2CF9 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 2CFE _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2D01 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2D04 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2D07 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2D0A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2D0D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2D10 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D13 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D15 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D19 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D1D _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2D21 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2D29 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2D31 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D34 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D38 _ 89. 04 24
        call    _boxfill8                               ; 2D3B _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 2D40 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 2D44 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2D48 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2D4B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2D4F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D52 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D56 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D59 _ 89. 04 24
        call    _make_wtitle8                           ; 2D5C _ E8, 00000007
        nop                                             ; 2D61 _ 90
        add     esp, 68                                 ; 2D62 _ 83. C4, 44
        pop     ebx                                     ; 2D65 _ 5B
        pop     ebp                                     ; 2D66 _ 5D
        ret                                             ; 2D67 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 2D68 _ 55
        mov     ebp, esp                                ; 2D69 _ 89. E5
        push    ebx                                     ; 2D6B _ 53
        sub     esp, 68                                 ; 2D6C _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2D6F _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2D72 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 2D75 _ 80. 7D, E4, 00
        jz      ?_141                                   ; 2D79 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 2D7B _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 2D7F _ C6. 45, ED, 0C
        jmp     ?_142                                   ; 2D83 _ EB, 08

?_141:  mov     byte [ebp-12H], 8                       ; 2D85 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 2D89 _ C6. 45, ED, 0F
?_142:  mov     eax, dword [ebp+0CH]                    ; 2D8D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D90 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 2D93 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 2D96 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 2D9A _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2D9D _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2DA0 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DA3 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2DA6 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 2DA8 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 2DB0 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 2DB4 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2DBC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 2DC4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2DC8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2DCC _ 89. 14 24
        call    _boxfill8                               ; 2DCF _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 2DD4 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 2DD8 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2DDB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2DDF _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 2DE3 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 2DEB _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2DF3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DF6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DFA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DFD _ 89. 04 24
        call    _showString                             ; 2E00 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 2E05 _ C7. 45, F0, 00000000
        jmp     ?_150                                   ; 2E0C _ E9, 00000084

?_143:  mov     dword [ebp-0CH], 0                      ; 2E11 _ C7. 45, F4, 00000000
        jmp     ?_149                                   ; 2E18 _ EB, 71

?_144:  mov     eax, dword [ebp-10H]                    ; 2E1A _ 8B. 45, F0
        shl     eax, 4                                  ; 2E1D _ C1. E0, 04
        mov     edx, eax                                ; 2E20 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E22 _ 8B. 45, F4
        add     eax, edx                                ; 2E25 _ 01. D0
        add     eax, _closebtn.2688                     ; 2E27 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2E2C _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 2E2F _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2E32 _ 80. 7D, EF, 40
        jnz     ?_145                                   ; 2E36 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2E38 _ C6. 45, EF, 00
        jmp     ?_148                                   ; 2E3C _ EB, 1C

?_145:  cmp     byte [ebp-11H], 36                      ; 2E3E _ 80. 7D, EF, 24
        jnz     ?_146                                   ; 2E42 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2E44 _ C6. 45, EF, 0F
        jmp     ?_148                                   ; 2E48 _ EB, 10

?_146:  cmp     byte [ebp-11H], 81                      ; 2E4A _ 80. 7D, EF, 51
        jnz     ?_147                                   ; 2E4E _ 75, 06
        mov     byte [ebp-11H], 8                       ; 2E50 _ C6. 45, EF, 08
        jmp     ?_148                                   ; 2E54 _ EB, 04

?_147:  mov     byte [ebp-11H], 7                       ; 2E56 _ C6. 45, EF, 07
?_148:  mov     eax, dword [ebp+0CH]                    ; 2E5A _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 2E5D _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 2E5F _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2E62 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2E65 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E68 _ 8B. 40, 04
        imul    eax, edx                                ; 2E6B _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 2E6E _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2E71 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2E74 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2E77 _ 8B. 55, F4
        add     edx, ebx                                ; 2E7A _ 01. DA
        add     eax, edx                                ; 2E7C _ 01. D0
        lea     edx, [ecx+eax]                          ; 2E7E _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2E81 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2E85 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2E87 _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 15                     ; 2E8B _ 83. 7D, F4, 0F
        jle     ?_144                                   ; 2E8F _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2E91 _ 83. 45, F0, 01
?_150:  cmp     dword [ebp-10H], 13                     ; 2E95 _ 83. 7D, F0, 0D
        jle     ?_143                                   ; 2E99 _ 0F 8E, FFFFFF72
        nop                                             ; 2E9F _ 90
        add     esp, 68                                 ; 2EA0 _ 83. C4, 44
        pop     ebx                                     ; 2EA3 _ 5B
        pop     ebp                                     ; 2EA4 _ 5D
        ret                                             ; 2EA5 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 2EA6 _ 55
        mov     ebp, esp                                ; 2EA7 _ 89. E5
        push    edi                                     ; 2EA9 _ 57
        push    esi                                     ; 2EAA _ 56
        push    ebx                                     ; 2EAB _ 53
        sub     esp, 44                                 ; 2EAC _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 2EAF _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2EB2 _ 8B. 45, 14
        add     eax, edx                                ; 2EB5 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2EB7 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2EBA _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 2EBD _ 8B. 45, 18
        add     eax, edx                                ; 2EC0 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2EC2 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2EC5 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2EC8 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 2ECB _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2ECE _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2ED1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2ED4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2ED7 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2EDA _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2EDD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2EE0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2EE3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EE6 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2EE8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2EEC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2EF0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2EF4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2EF8 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F00 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F04 _ 89. 04 24
        call    _boxfill8                               ; 2F07 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2F0C _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2F0F _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2F12 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2F15 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2F18 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F1B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F1E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F21 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F27 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F2A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F2D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F2F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F33 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F37 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F3B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2F3F _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F47 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F4B _ 89. 04 24
        call    _boxfill8                               ; 2F4E _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2F53 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2F56 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2F59 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2F5C _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2F5F _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2F62 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2F65 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F68 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F6B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F6E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F74 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F76 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F7A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F7E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F82 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2F86 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2F8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F92 _ 89. 04 24
        call    _boxfill8                               ; 2F95 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 2F9A _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2F9D _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2FA0 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 2FA3 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 2FA6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2FA9 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 2FAC _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 2FAF _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 2FB2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FB5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FB8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FBB _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FBD _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FC1 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FC5 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FC9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2FCD _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2FD5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FD9 _ 89. 04 24
        call    _boxfill8                               ; 2FDC _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 2FE1 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2FE4 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2FE7 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2FEA _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2FED _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2FF0 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2FF3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FF6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FF9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FFC _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2FFE _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3002 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3005 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3009 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 300D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3011 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3019 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 301D _ 89. 04 24
        call    _boxfill8                               ; 3020 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3025 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3028 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 302B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 302E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3031 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3034 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3037 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 303A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 303D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3040 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 3042 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3045 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3049 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 304D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3051 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3055 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 305D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3061 _ 89. 04 24
        call    _boxfill8                               ; 3064 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 3069 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 306C _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 306F _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 3072 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 3075 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3078 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 307B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 307E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3081 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3084 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3086 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 308A _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 308D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3091 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3095 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3099 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 30A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 30A5 _ 89. 04 24
        call    _boxfill8                               ; 30A8 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 30AD _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 30B0 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 30B3 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 30B6 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 30B9 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 30BC _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 30BF _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 30C2 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 30C5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30C8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30CE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 30D0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 30D4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30D8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30DC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 30E0 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 30E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 30EC _ 89. 04 24
        call    _boxfill8                               ; 30EF _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 30F4 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 30F7 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 30FA _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 30FD _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3100 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3103 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3106 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3109 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 310C _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 310F _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3111 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3114 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3118 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 311B _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 311F _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3123 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3127 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 312B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 312F _ 89. 14 24
        call    _boxfill8                               ; 3132 _ E8, FFFFEFB3
        nop                                             ; 3137 _ 90
        add     esp, 44                                 ; 3138 _ 83. C4, 2C
        pop     ebx                                     ; 313B _ 5B
        pop     esi                                     ; 313C _ 5E
        pop     edi                                     ; 313D _ 5F
        pop     ebp                                     ; 313E _ 5D
        ret                                             ; 313F _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 3140 _ 55
        mov     ebp, esp                                ; 3141 _ 89. E5
        sub     esp, 56                                 ; 3143 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 3146 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 314D _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 3152 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 315A _ 89. 04 24
        call    _memman_alloc                           ; 315D _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 3162 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 3165 _ 8B. 45, E4
        add     eax, 12                                 ; 3168 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 316B _ C6. 00, 00
        jmp     ?_161                                   ; 316E _ E9, 00000125

?_151:  mov     dword [ebp-10H], 0                      ; 3173 _ C7. 45, F0, 00000000
        jmp     ?_153                                   ; 317A _ EB, 2A

?_152:  mov     edx, dword [ebp-0CH]                    ; 317C _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 317F _ 8B. 45, F0
        add     eax, edx                                ; 3182 _ 01. D0
        movzx   eax, byte [eax]                         ; 3184 _ 0F B6. 00
        test    al, al                                  ; 3187 _ 84. C0
        jz      ?_154                                   ; 3189 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 318B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 318E _ 8B. 45, F0
        add     eax, edx                                ; 3191 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3193 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3196 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3199 _ 8B. 45, E4
        add     eax, edx                                ; 319C _ 01. D0
        mov     edx, ecx                                ; 319E _ 89. CA
        mov     byte [eax], dl                          ; 31A0 _ 88. 10
        add     dword [ebp-10H], 1                      ; 31A2 _ 83. 45, F0, 01
?_153:  cmp     dword [ebp-10H], 7                      ; 31A6 _ 83. 7D, F0, 07
        jle     ?_152                                   ; 31AA _ 7E, D0
        jmp     ?_155                                   ; 31AC _ EB, 01

?_154:  nop                                             ; 31AE _ 90
?_155:  mov     dword [ebp-14H], 0                      ; 31AF _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 31B6 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 31B9 _ 8B. 45, E4
        add     eax, edx                                ; 31BC _ 01. D0
        mov     byte [eax], 46                          ; 31BE _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 31C1 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 31C5 _ C7. 45, EC, 00000000
        jmp     ?_157                                   ; 31CC _ EB, 22

?_156:  mov     edx, dword [ebp-0CH]                    ; 31CE _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 31D1 _ 8B. 45, EC
        add     eax, edx                                ; 31D4 _ 01. D0
        add     eax, 8                                  ; 31D6 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 31D9 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 31DC _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 31DF _ 8B. 45, E4
        add     eax, edx                                ; 31E2 _ 01. D0
        mov     edx, ecx                                ; 31E4 _ 89. CA
        mov     byte [eax], dl                          ; 31E6 _ 88. 10
        add     dword [ebp-10H], 1                      ; 31E8 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 31EC _ 83. 45, EC, 01
?_157:  cmp     dword [ebp-14H], 2                      ; 31F0 _ 83. 7D, EC, 02
        jle     ?_156                                   ; 31F4 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 31F6 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 31F9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31FD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3200 _ 89. 04 24
        call    _strcmp                                 ; 3203 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3208 _ 83. F8, 01
        jne     ?_160                                   ; 320B _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3211 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3214 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3217 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 321C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3220 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3223 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3228 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 322A _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 322D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 322F _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3232 _ 8B. 40, 1C
        mov     edx, eax                                ; 3235 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3237 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 323A _ 89. 50, 04
        mov     dword [ebp-20H], 88064                  ; 323D _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3244 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3247 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 324B _ 0F B7. C0
        shl     eax, 9                                  ; 324E _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 3251 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3254 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3257 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 325A _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 325D _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3264 _ C7. 45, E8, 00000000
        jmp     ?_159                                   ; 326B _ EB, 1D

?_158:  mov     edx, dword [ebp-18H]                    ; 326D _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 3270 _ 8B. 45, E0
        add     eax, edx                                ; 3273 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3275 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 3278 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 327B _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 327D _ 8B. 45, E8
        add     eax, edx                                ; 3280 _ 01. D0
        mov     edx, ecx                                ; 3282 _ 89. CA
        mov     byte [eax], dl                          ; 3284 _ 88. 10
        add     dword [ebp-18H], 1                      ; 3286 _ 83. 45, E8, 01
?_159:  mov     eax, dword [ebp-18H]                    ; 328A _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 328D _ 3B. 45, DC
        jl      ?_158                                   ; 3290 _ 7C, DB
        jmp     ?_162                                   ; 3292 _ EB, 12

?_160:  add     dword [ebp-0CH], 32                     ; 3294 _ 83. 45, F4, 20
?_161:  mov     eax, dword [ebp-0CH]                    ; 3298 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 329B _ 0F B6. 00
        test    al, al                                  ; 329E _ 84. C0
        jne     ?_151                                   ; 32A0 _ 0F 85, FFFFFECD
?_162:  mov     edx, dword [ebp-1CH]                    ; 32A6 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 32A9 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 32AE _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 32B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 32BA _ 89. 04 24
        call    _memman_free                            ; 32BD _ E8, 00000000(rel)
        nop                                             ; 32C2 _ 90
        leave                                           ; 32C3 _ C9
        ret                                             ; 32C4 _ C3
; _file_loadfile End of function

_kernel_api:; Function begin
        push    ebp                                     ; 32C5 _ 55
        mov     ebp, esp                                ; 32C6 _ 89. E5
        sub     esp, 40                                 ; 32C8 _ 83. EC, 28
        call    _task_now                               ; 32CB _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 32D0 _ 89. 45, F4
        cmp     dword [ebp+1CH], 1                      ; 32D3 _ 83. 7D, 1C, 01
        jnz     ?_163                                   ; 32D7 _ 75, 18
        mov     eax, dword [ebp+24H]                    ; 32D9 _ 8B. 45, 24
        movsx   eax, al                                 ; 32DC _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 32DF _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 32E7 _ 89. 04 24
        call    _cons_putchar                           ; 32EA _ E8, FFFFE595
        jmp     ?_165                                   ; 32EF _ EB, 29

?_163:  cmp     dword [ebp+1CH], 2                      ; 32F1 _ 83. 7D, 1C, 02
        jnz     ?_164                                   ; 32F5 _ 75, 15
        mov     edx, dword [_buffer]                    ; 32F7 _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+18H]                    ; 32FD _ 8B. 45, 18
        add     eax, edx                                ; 3300 _ 01. D0
        mov     dword [esp], eax                        ; 3302 _ 89. 04 24
        call    _cons_putstr                            ; 3305 _ E8, FFFFE621
        jmp     ?_165                                   ; 330A _ EB, 0E

?_164:  cmp     dword [ebp+1CH], 4                      ; 330C _ 83. 7D, 1C, 04
        jnz     ?_165                                   ; 3310 _ 75, 08
        mov     eax, dword [ebp-0CH]                    ; 3312 _ 8B. 45, F4
        add     eax, 48                                 ; 3315 _ 83. C0, 30
        jmp     ?_166                                   ; 3318 _ EB, 05

?_165:  mov     eax, 0                                  ; 331A _ B8, 00000000
?_166:  leave                                           ; 331F _ C9
        ret                                             ; 3320 _ C3
; _kernel_api End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 3321 _ 55
        mov     ebp, esp                                ; 3322 _ 89. E5
        sub     esp, 40                                 ; 3324 _ 83. EC, 28
        mov     dword [?_317], 8                        ; 3327 _ C7. 05, 0000000C(d), 00000008
        mov     dword [esp], ?_315                      ; 3331 _ C7. 04 24, 0000006B(d)
        call    _cons_putstr                            ; 3338 _ E8, FFFFE5EE
        mov     dword [?_317], 8                        ; 333D _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_318]                      ; 3347 _ A1, 00000010(d)
        add     eax, 16                                 ; 334C _ 83. C0, 10
        mov     dword [?_318], eax                      ; 334F _ A3, 00000010(d)
        mov     dword [esp], ?_316                      ; 3354 _ C7. 04 24, 00000073(d)
        call    _cons_putstr                            ; 335B _ E8, FFFFE5CB
        mov     eax, dword [?_318]                      ; 3360 _ A1, 00000010(d)
        add     eax, 16                                 ; 3365 _ 83. C0, 10
        mov     dword [?_318], eax                      ; 3368 _ A3, 00000010(d)
        mov     dword [?_317], 8                        ; 336D _ C7. 05, 0000000C(d), 00000008
        call    _task_now                               ; 3377 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 337C _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 337F _ 8B. 45, F4
        add     eax, 48                                 ; 3382 _ 83. C0, 30
        leave                                           ; 3385 _ C9
        ret                                             ; 3386 _ C3
; _intHandlerForException End of function

        nop                                             ; 3387 _ 90


_shtctl_init:
        push    ebp                                     ; 3388 _ 55
        mov     ebp, esp                                ; 3389 _ 89. E5
        sub     esp, 40                                 ; 338B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 338E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3396 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3399 _ 89. 04 24
        call    _memman_alloc_4k                        ; 339C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 33A1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 33A4 _ 83. 7D, F0, 00
        jnz     ?_167                                   ; 33A8 _ 75, 0A
        mov     eax, 0                                  ; 33AA _ B8, 00000000
        jmp     ?_171                                   ; 33AF _ E9, 0000009D

?_167:  mov     eax, dword [ebp+10H]                    ; 33B4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 33B7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 33BB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33BF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33C2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 33C5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 33CA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 33CC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 33CF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 33D2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 33D5 _ 8B. 40, 04
        test    eax, eax                                ; 33D8 _ 85. C0
        jnz     ?_168                                   ; 33DA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 33DC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 33DF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 33E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33EE _ 89. 04 24
        call    _memman_free_4k                         ; 33F1 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 33F6 _ B8, 00000000
        jmp     ?_171                                   ; 33FB _ EB, 54

?_168:  mov     eax, dword [ebp-10H]                    ; 33FD _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 3400 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3403 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3405 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3408 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 340B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 340E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3411 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3414 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3417 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 341A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3421 _ C7. 45, F4, 00000000
        jmp     ?_170                                   ; 3428 _ EB, 1B

?_169:  mov     edx, dword [ebp-10H]                    ; 342A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 342D _ 8B. 45, F4
        add     eax, 33                                 ; 3430 _ 83. C0, 21
        shl     eax, 5                                  ; 3433 _ C1. E0, 05
        add     eax, edx                                ; 3436 _ 01. D0
        add     eax, 16                                 ; 3438 _ 83. C0, 10
        mov     dword [eax], 0                          ; 343B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3441 _ 83. 45, F4, 01
?_170:  cmp     dword [ebp-0CH], 255                    ; 3445 _ 81. 7D, F4, 000000FF
        jle     ?_169                                   ; 344C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 344E _ 8B. 45, F0
?_171:  leave                                           ; 3451 _ C9
        ret                                             ; 3452 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3453 _ 55
        mov     ebp, esp                                ; 3454 _ 89. E5
        sub     esp, 16                                 ; 3456 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3459 _ C7. 45, FC, 00000000
        jmp     ?_174                                   ; 3460 _ EB, 5B

?_172:  mov     edx, dword [ebp+8H]                     ; 3462 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3465 _ 8B. 45, FC
        add     eax, 33                                 ; 3468 _ 83. C0, 21
        shl     eax, 5                                  ; 346B _ C1. E0, 05
        add     eax, edx                                ; 346E _ 01. D0
        add     eax, 16                                 ; 3470 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3473 _ 8B. 00
        test    eax, eax                                ; 3475 _ 85. C0
        jnz     ?_173                                   ; 3477 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 3479 _ 8B. 45, FC
        shl     eax, 5                                  ; 347C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 347F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3485 _ 8B. 45, 08
        add     eax, edx                                ; 3488 _ 01. D0
        add     eax, 4                                  ; 348A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 348D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3490 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3493 _ 8B. 55, FC
        add     edx, 4                                  ; 3496 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 3499 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 349C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 34A0 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 34A3 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 34AA _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 34AD _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 34B4 _ 8B. 45, F8
        jmp     ?_175                                   ; 34B7 _ EB, 12

?_173:  add     dword [ebp-4H], 1                       ; 34B9 _ 83. 45, FC, 01
?_174:  cmp     dword [ebp-4H], 255                     ; 34BD _ 81. 7D, FC, 000000FF
        jle     ?_172                                   ; 34C4 _ 7E, 9C
        mov     eax, 0                                  ; 34C6 _ B8, 00000000
?_175:  leave                                           ; 34CB _ C9
        ret                                             ; 34CC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 34CD _ 55
        mov     ebp, esp                                ; 34CE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 34D0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 34D3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 34D6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 34D8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 34DB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 34DE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 34E1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 34E4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 34E7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 34EA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 34ED _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 34F0 _ 89. 50, 14
        nop                                             ; 34F3 _ 90
        pop     ebp                                     ; 34F4 _ 5D
        ret                                             ; 34F5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 34F6 _ 55
        mov     ebp, esp                                ; 34F7 _ 89. E5
        push    edi                                     ; 34F9 _ 57
        push    esi                                     ; 34FA _ 56
        push    ebx                                     ; 34FB _ 53
        sub     esp, 60                                 ; 34FC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 34FF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3502 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3505 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3508 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 350B _ 8B. 40, 10
        add     eax, 1                                  ; 350E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3511 _ 39. 45, 10
        jle     ?_176                                   ; 3514 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3516 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3519 _ 8B. 40, 10
        add     eax, 1                                  ; 351C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 351F _ 89. 45, 10
?_176:  cmp     dword [ebp+10H], -1                     ; 3522 _ 83. 7D, 10, FF
        jge     ?_177                                   ; 3526 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3528 _ C7. 45, 10, FFFFFFFF
?_177:  mov     eax, dword [ebp+0CH]                    ; 352F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3532 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3535 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3538 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 353B _ 3B. 45, 10
        jle     ?_184                                   ; 353E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3544 _ 83. 7D, 10, 00
        js      ?_180                                   ; 3548 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 354E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3551 _ 89. 45, E4
        jmp     ?_179                                   ; 3554 _ EB, 34

?_178:  mov     eax, dword [ebp-1CH]                    ; 3556 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3559 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 355C _ 8B. 45, 08
        add     edx, 4                                  ; 355F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3562 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3566 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3569 _ 8B. 55, E4
        add     edx, 4                                  ; 356C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 356F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3573 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3576 _ 8B. 55, E4
        add     edx, 4                                  ; 3579 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 357C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3580 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3583 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3586 _ 83. 6D, E4, 01
?_179:  mov     eax, dword [ebp-1CH]                    ; 358A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 358D _ 3B. 45, 10
        jg      ?_178                                   ; 3590 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3592 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3595 _ 8B. 55, 10
        add     edx, 4                                  ; 3598 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 359B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 359E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 35A2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 35A5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 35A8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35AB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35AE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35B1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35B4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35B7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35BA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 35BD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 35C0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 35C3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 35C6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35C9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35CC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35CF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 35D2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 35D6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 35DA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35DE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 35E2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35E6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35E9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 35EC _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 35F1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 35F4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 35F7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35FA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35FD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3600 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3603 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3606 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3609 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 360C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 360F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3612 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3615 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3618 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 361B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 361E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3621 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3624 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3628 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 362C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3630 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3634 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3638 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 363C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 363F _ 89. 04 24
        call    _sheet_refreshsub                       ; 3642 _ E8, 00000465
        jmp     ?_191                                   ; 3647 _ E9, 0000027D

?_180:  mov     eax, dword [ebp+8H]                     ; 364C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 364F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3652 _ 39. 45, E0
        jge     ?_183                                   ; 3655 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3657 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 365A _ 89. 45, E4
        jmp     ?_182                                   ; 365D _ EB, 34

?_181:  mov     eax, dword [ebp-1CH]                    ; 365F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3662 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3665 _ 8B. 45, 08
        add     edx, 4                                  ; 3668 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 366B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 366F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3672 _ 8B. 55, E4
        add     edx, 4                                  ; 3675 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3678 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 367C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 367F _ 8B. 55, E4
        add     edx, 4                                  ; 3682 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3685 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3689 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 368C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 368F _ 83. 45, E4, 01
?_182:  mov     eax, dword [ebp+8H]                     ; 3693 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3696 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3699 _ 39. 45, E4
        jl      ?_181                                   ; 369C _ 7C, C1
?_183:  mov     eax, dword [ebp+8H]                     ; 369E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36A1 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 36A4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 36A7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 36AA _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36AD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36B0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36B3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 36B6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 36B9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 36BC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 36BF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 36C2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 36C5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 36C8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 36CB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36CE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36D1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 36D4 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 36D7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 36DF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 36E3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 36E7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 36EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36F2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 36F5 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 36FA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 36FD _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3700 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3703 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3706 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3709 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 370C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 370F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3712 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3715 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3718 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 371B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 371E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3721 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3724 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3727 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 372A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 372E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3736 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 373A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 373E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3742 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3746 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3749 _ 89. 04 24
        call    _sheet_refreshsub                       ; 374C _ E8, 0000035B
        jmp     ?_191                                   ; 3751 _ E9, 00000173

?_184:  mov     eax, dword [ebp-20H]                    ; 3756 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3759 _ 3B. 45, 10
        jge     ?_191                                   ; 375C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3762 _ 83. 7D, E0, 00
        js      ?_187                                   ; 3766 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3768 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 376B _ 89. 45, E4
        jmp     ?_186                                   ; 376E _ EB, 34

?_185:  mov     eax, dword [ebp-1CH]                    ; 3770 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3773 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3776 _ 8B. 45, 08
        add     edx, 4                                  ; 3779 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 377C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3780 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3783 _ 8B. 55, E4
        add     edx, 4                                  ; 3786 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3789 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 378D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3790 _ 8B. 55, E4
        add     edx, 4                                  ; 3793 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3796 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 379A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 379D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 37A0 _ 83. 45, E4, 01
?_186:  mov     eax, dword [ebp-1CH]                    ; 37A4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 37A7 _ 3B. 45, 10
        jl      ?_185                                   ; 37AA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 37AC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 37AF _ 8B. 55, 10
        add     edx, 4                                  ; 37B2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 37B5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 37B8 _ 89. 4C 90, 04
        jmp     ?_190                                   ; 37BC _ EB, 6C

?_187:  mov     eax, dword [ebp+8H]                     ; 37BE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37C1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 37C4 _ 89. 45, E4
        jmp     ?_189                                   ; 37C7 _ EB, 3A

?_188:  mov     eax, dword [ebp-1CH]                    ; 37C9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 37CC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 37CF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 37D2 _ 8B. 55, E4
        add     edx, 4                                  ; 37D5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 37D8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37DC _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 37DF _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 37E2 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 37E6 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 37E9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37EC _ 8B. 45, 08
        add     edx, 4                                  ; 37EF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 37F2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 37F6 _ 8B. 55, E4
        add     edx, 1                                  ; 37F9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 37FC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 37FF _ 83. 6D, E4, 01
?_189:  mov     eax, dword [ebp-1CH]                    ; 3803 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3806 _ 3B. 45, 10
        jge     ?_188                                   ; 3809 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 380B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 380E _ 8B. 55, 10
        add     edx, 4                                  ; 3811 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3814 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3817 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 381B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 381E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3821 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3824 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3827 _ 89. 50, 10
?_190:  mov     eax, dword [ebp+0CH]                    ; 382A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 382D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3830 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3833 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3836 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3839 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 383C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 383F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3842 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3845 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3848 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 384B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 384E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3851 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3854 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3857 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 385B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 385F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3863 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3867 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 386B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 386E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3871 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3876 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3879 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 387C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 387F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3882 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3885 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3888 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 388B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 388E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3891 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3894 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3897 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 389A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 389D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 38A0 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 38A3 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 38A7 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 38AA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 38AE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 38B2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 38B6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 38BA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38C1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 38C4 _ E8, 000001E3
?_191:  nop                                             ; 38C9 _ 90
        add     esp, 60                                 ; 38CA _ 83. C4, 3C
        pop     ebx                                     ; 38CD _ 5B
        pop     esi                                     ; 38CE _ 5E
        pop     edi                                     ; 38CF _ 5F
        pop     ebp                                     ; 38D0 _ 5D
        ret                                             ; 38D1 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 38D2 _ 55
        mov     ebp, esp                                ; 38D3 _ 89. E5
        push    edi                                     ; 38D5 _ 57
        push    esi                                     ; 38D6 _ 56
        push    ebx                                     ; 38D7 _ 53
        sub     esp, 60                                 ; 38D8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 38DB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 38DE _ 8B. 40, 18
        test    eax, eax                                ; 38E1 _ 85. C0
        js      ?_192                                   ; 38E3 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 38E5 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 38E8 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 38EB _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 38EE _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 38F1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 38F4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 38F7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 38FA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 38FD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3900 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3903 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3906 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3909 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 390C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 390F _ 8B. 45, 14
        add     edx, eax                                ; 3912 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3914 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3917 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 391A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 391D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3920 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3923 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3927 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 392B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 392F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3933 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3937 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 393B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 393E _ 89. 04 24
        call    _sheet_refreshsub                       ; 3941 _ E8, 00000166
?_192:  mov     eax, 0                                  ; 3946 _ B8, 00000000
        add     esp, 60                                 ; 394B _ 83. C4, 3C
        pop     ebx                                     ; 394E _ 5B
        pop     esi                                     ; 394F _ 5E
        pop     edi                                     ; 3950 _ 5F
        pop     ebp                                     ; 3951 _ 5D
        ret                                             ; 3952 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3953 _ 55
        mov     ebp, esp                                ; 3954 _ 89. E5
        push    esi                                     ; 3956 _ 56
        push    ebx                                     ; 3957 _ 53
        sub     esp, 48                                 ; 3958 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 395B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 395E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3961 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3964 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3967 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 396A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 396D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3970 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3973 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3976 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3979 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 397C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 397F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3982 _ 8B. 40, 18
        test    eax, eax                                ; 3985 _ 85. C0
        js      ?_193                                   ; 3987 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 398D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3990 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3993 _ 8B. 45, F0
        add     edx, eax                                ; 3996 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3998 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 399B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 399E _ 8B. 45, F4
        add     eax, ecx                                ; 39A1 _ 01. C8
        mov     dword [esp+14H], 0                      ; 39A3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 39AB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 39AF _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 39B3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 39B6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 39BA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 39BD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39C1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39C4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 39C7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 39CC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 39CF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 39D2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 39D5 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 39D8 _ 8B. 45, 14
        add     edx, eax                                ; 39DB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 39DD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 39E0 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 39E3 _ 8B. 45, 10
        add     eax, ebx                                ; 39E6 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 39E8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 39EC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 39F0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 39F4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 39F7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 39FB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 39FE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A02 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A05 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3A08 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3A0D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3A10 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3A13 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3A16 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3A19 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3A1C _ 8B. 45, F0
        add     edx, eax                                ; 3A1F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3A21 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3A24 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3A27 _ 8B. 45, F4
        add     eax, ebx                                ; 3A2A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3A2C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3A30 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3A38 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3A3C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3A40 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3A43 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3A47 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3A4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A51 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A54 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3A59 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3A5C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3A5F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3A62 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3A65 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3A68 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3A6B _ 8B. 45, 14
        add     edx, eax                                ; 3A6E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3A70 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3A73 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3A76 _ 8B. 45, 10
        add     eax, esi                                ; 3A79 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 3A7B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3A7F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3A83 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3A87 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3A8B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3A8E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3A92 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3A95 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A99 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A9C _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A9F _ E8, 00000008
?_193:  nop                                             ; 3AA4 _ 90
        add     esp, 48                                 ; 3AA5 _ 83. C4, 30
        pop     ebx                                     ; 3AA8 _ 5B
        pop     esi                                     ; 3AA9 _ 5E
        pop     ebp                                     ; 3AAA _ 5D
        ret                                             ; 3AAB _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3AAC _ 55
        mov     ebp, esp                                ; 3AAD _ 89. E5
        sub     esp, 48                                 ; 3AAF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3AB2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3AB5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3AB7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3ABA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3ABD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3AC0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3AC3 _ 83. 7D, 0C, 00
        jns     ?_194                                   ; 3AC7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3AC9 _ C7. 45, 0C, 00000000
?_194:  cmp     dword [ebp+10H], 8                      ; 3AD0 _ 83. 7D, 10, 08
        jg      ?_195                                   ; 3AD4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3AD6 _ C7. 45, 10, 00000000
?_195:  mov     eax, dword [ebp+8H]                     ; 3ADD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AE0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3AE3 _ 39. 45, 14
        jle     ?_196                                   ; 3AE6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3AE8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AEB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3AEE _ 89. 45, 14
?_196:  mov     eax, dword [ebp+8H]                     ; 3AF1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AF4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3AF7 _ 39. 45, 18
        jle     ?_197                                   ; 3AFA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3AFC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AFF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3B02 _ 89. 45, 18
?_197:  mov     eax, dword [ebp+1CH]                    ; 3B05 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3B08 _ 89. 45, FC
        jmp     ?_204                                   ; 3B0B _ E9, 0000010F

?_198:  mov     eax, dword [ebp+8H]                     ; 3B10 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3B13 _ 8B. 55, FC
        add     edx, 4                                  ; 3B16 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3B19 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3B1D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3B20 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3B23 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3B25 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3B28 _ 8B. 45, 08
        add     eax, 1044                               ; 3B2B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3B30 _ 8B. 55, E8
        sub     edx, eax                                ; 3B33 _ 29. C2
        mov     eax, edx                                ; 3B35 _ 89. D0
        sar     eax, 5                                  ; 3B37 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3B3A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3B3D _ C7. 45, F4, 00000000
        jmp     ?_203                                   ; 3B44 _ E9, 000000C3

?_199:  mov     eax, dword [ebp-18H]                    ; 3B49 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3B4C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3B4F _ 8B. 45, F4
        add     eax, edx                                ; 3B52 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3B54 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3B57 _ C7. 45, F8, 00000000
        jmp     ?_202                                   ; 3B5E _ E9, 00000096

?_200:  mov     eax, dword [ebp-18H]                    ; 3B63 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3B66 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3B69 _ 8B. 45, F8
        add     eax, edx                                ; 3B6C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3B6E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3B71 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3B74 _ 3B. 45, D8
        jg      ?_201                                   ; 3B77 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3B79 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3B7C _ 3B. 45, 14
        jge     ?_201                                   ; 3B7F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3B81 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3B84 _ 3B. 45, DC
        jg      ?_201                                   ; 3B87 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3B89 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3B8C _ 3B. 45, 18
        jge     ?_201                                   ; 3B8F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3B91 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3B94 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3B97 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3B9B _ 8B. 55, F8
        add     eax, edx                                ; 3B9E _ 01. D0
        mov     edx, eax                                ; 3BA0 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3BA2 _ 8B. 45, E4
        add     eax, edx                                ; 3BA5 _ 01. D0
        movzx   eax, byte [eax]                         ; 3BA7 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3BAA _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3BAD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3BB0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3BB3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3BB7 _ 8B. 55, D8
        add     eax, edx                                ; 3BBA _ 01. D0
        mov     edx, eax                                ; 3BBC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3BBE _ 8B. 45, EC
        add     eax, edx                                ; 3BC1 _ 01. D0
        movzx   eax, byte [eax]                         ; 3BC3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3BC6 _ 38. 45, E3
        jnz     ?_201                                   ; 3BC9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3BCB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3BCF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3BD2 _ 8B. 52, 14
        cmp     eax, edx                                ; 3BD5 _ 39. D0
        jz      ?_201                                   ; 3BD7 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3BD9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3BDC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3BDF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3BE3 _ 8B. 55, D8
        add     eax, edx                                ; 3BE6 _ 01. D0
        mov     edx, eax                                ; 3BE8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3BEA _ 8B. 45, F0
        add     edx, eax                                ; 3BED _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3BEF _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3BF3 _ 88. 02
?_201:  add     dword [ebp-8H], 1                       ; 3BF5 _ 83. 45, F8, 01
?_202:  mov     eax, dword [ebp-18H]                    ; 3BF9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3BFC _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3BFF _ 39. 45, F8
        jl      ?_200                                   ; 3C02 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3C08 _ 83. 45, F4, 01
?_203:  mov     eax, dword [ebp-18H]                    ; 3C0C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3C0F _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3C12 _ 39. 45, F4
        jl      ?_199                                   ; 3C15 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3C1B _ 83. 45, FC, 01
?_204:  mov     eax, dword [ebp-4H]                     ; 3C1F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3C22 _ 3B. 45, 20
        jle     ?_198                                   ; 3C25 _ 0F 8E, FFFFFEE5
        nop                                             ; 3C2B _ 90
        leave                                           ; 3C2C _ C9
        ret                                             ; 3C2D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3C2E _ 55
        mov     ebp, esp                                ; 3C2F _ 89. E5
        sub     esp, 64                                 ; 3C31 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3C34 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C37 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3C3A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3C3D _ 83. 7D, 0C, 00
        jns     ?_205                                   ; 3C41 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3C43 _ C7. 45, 0C, 00000000
?_205:  cmp     dword [ebp+10H], 0                      ; 3C4A _ 83. 7D, 10, 00
        jns     ?_206                                   ; 3C4E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3C50 _ C7. 45, 10, 00000000
?_206:  mov     eax, dword [ebp+8H]                     ; 3C57 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C5A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3C5D _ 39. 45, 14
        jle     ?_207                                   ; 3C60 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C62 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C65 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3C68 _ 89. 45, 14
?_207:  mov     eax, dword [ebp+8H]                     ; 3C6B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C6E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3C71 _ 39. 45, 18
        jle     ?_208                                   ; 3C74 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C76 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C79 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3C7C _ 89. 45, 18
?_208:  mov     eax, dword [ebp+1CH]                    ; 3C7F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3C82 _ 89. 45, FC
        jmp     ?_219                                   ; 3C85 _ E9, 00000139

?_209:  mov     eax, dword [ebp+8H]                     ; 3C8A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3C8D _ 8B. 55, FC
        add     edx, 4                                  ; 3C90 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3C93 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3C97 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3C9A _ 8B. 45, 08
        add     eax, 1044                               ; 3C9D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3CA2 _ 8B. 55, DC
        sub     edx, eax                                ; 3CA5 _ 29. C2
        mov     eax, edx                                ; 3CA7 _ 89. D0
        sar     eax, 5                                  ; 3CA9 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3CAC _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3CAF _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3CB2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3CB4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3CB7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3CBA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3CBD _ 8B. 55, 0C
        sub     edx, eax                                ; 3CC0 _ 29. C2
        mov     eax, edx                                ; 3CC2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3CC4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3CC7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3CCA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3CCD _ 8B. 55, 10
        sub     edx, eax                                ; 3CD0 _ 29. C2
        mov     eax, edx                                ; 3CD2 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3CD4 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3CD7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3CDA _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3CDD _ 8B. 55, 14
        sub     edx, eax                                ; 3CE0 _ 29. C2
        mov     eax, edx                                ; 3CE2 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3CE4 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3CE7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3CEA _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3CED _ 8B. 55, 18
        sub     edx, eax                                ; 3CF0 _ 29. C2
        mov     eax, edx                                ; 3CF2 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3CF4 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3CF7 _ 83. 7D, F0, 00
        jns     ?_210                                   ; 3CFB _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3CFD _ C7. 45, F0, 00000000
?_210:  cmp     dword [ebp-14H], 0                      ; 3D04 _ 83. 7D, EC, 00
        jns     ?_211                                   ; 3D08 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3D0A _ C7. 45, EC, 00000000
?_211:  mov     eax, dword [ebp-24H]                    ; 3D11 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3D14 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3D17 _ 39. 45, E8
        jle     ?_212                                   ; 3D1A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3D1C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3D1F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3D22 _ 89. 45, E8
?_212:  mov     eax, dword [ebp-24H]                    ; 3D25 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3D28 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3D2B _ 39. 45, E4
        jle     ?_213                                   ; 3D2E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3D30 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3D33 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3D36 _ 89. 45, E4
?_213:  mov     eax, dword [ebp-14H]                    ; 3D39 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3D3C _ 89. 45, F4
        jmp     ?_218                                   ; 3D3F _ EB, 76

?_214:  mov     eax, dword [ebp-24H]                    ; 3D41 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3D44 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3D47 _ 8B. 45, F4
        add     eax, edx                                ; 3D4A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3D4C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3D4F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3D52 _ 89. 45, F8
        jmp     ?_217                                   ; 3D55 _ EB, 54

?_215:  mov     eax, dword [ebp-24H]                    ; 3D57 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3D5A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3D5D _ 8B. 45, F8
        add     eax, edx                                ; 3D60 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3D62 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3D65 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3D68 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3D6B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3D6F _ 8B. 55, F8
        add     eax, edx                                ; 3D72 _ 01. D0
        mov     edx, eax                                ; 3D74 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3D76 _ 8B. 45, D4
        add     eax, edx                                ; 3D79 _ 01. D0
        movzx   eax, byte [eax]                         ; 3D7B _ 0F B6. 00
        movzx   eax, al                                 ; 3D7E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3D81 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3D84 _ 8B. 52, 14
        cmp     eax, edx                                ; 3D87 _ 39. D0
        jz      ?_216                                   ; 3D89 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3D8B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D8E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3D91 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3D95 _ 8B. 55, CC
        add     eax, edx                                ; 3D98 _ 01. D0
        mov     edx, eax                                ; 3D9A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3D9C _ 8B. 45, E0
        add     edx, eax                                ; 3D9F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3DA1 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3DA5 _ 88. 02
?_216:  add     dword [ebp-8H], 1                       ; 3DA7 _ 83. 45, F8, 01
?_217:  mov     eax, dword [ebp-8H]                     ; 3DAB _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3DAE _ 3B. 45, E8
        jl      ?_215                                   ; 3DB1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3DB3 _ 83. 45, F4, 01
?_218:  mov     eax, dword [ebp-0CH]                    ; 3DB7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3DBA _ 3B. 45, E4
        jl      ?_214                                   ; 3DBD _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3DBF _ 83. 45, FC, 01
?_219:  mov     eax, dword [ebp+8H]                     ; 3DC3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3DC6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3DC9 _ 39. 45, FC
        jle     ?_209                                   ; 3DCC _ 0F 8E, FFFFFEB8
        nop                                             ; 3DD2 _ 90
        leave                                           ; 3DD3 _ C9
        ret                                             ; 3DD4 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3DD5 _ 90
        nop                                             ; 3DD6 _ 90
        nop                                             ; 3DD7 _ 90


_memman_init:
        push    ebp                                     ; 3DD8 _ 55
        mov     ebp, esp                                ; 3DD9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3DDB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3DDE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3DE4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3DE7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3DEE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3DF1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3DF8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3DFB _ C7. 40, 0C, 00000000
        nop                                             ; 3E02 _ 90
        pop     ebp                                     ; 3E03 _ 5D
        ret                                             ; 3E04 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3E05 _ 55
        mov     ebp, esp                                ; 3E06 _ 89. E5
        sub     esp, 16                                 ; 3E08 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3E0B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3E12 _ C7. 45, FC, 00000000
        jmp     ?_221                                   ; 3E19 _ EB, 14

?_220:  mov     eax, dword [ebp+8H]                     ; 3E1B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E1E _ 8B. 55, FC
        add     edx, 2                                  ; 3E21 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E24 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3E28 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3E2B _ 83. 45, FC, 01
?_221:  mov     eax, dword [ebp+8H]                     ; 3E2F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E32 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3E34 _ 39. 45, FC
        jc      ?_220                                   ; 3E37 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3E39 _ 8B. 45, F8
        leave                                           ; 3E3C _ C9
        ret                                             ; 3E3D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3E3E _ 55
        mov     ebp, esp                                ; 3E3F _ 89. E5
        sub     esp, 16                                 ; 3E41 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3E44 _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 3E4B _ E9, 00000083

?_222:  mov     eax, dword [ebp+8H]                     ; 3E50 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E53 _ 8B. 55, FC
        add     edx, 2                                  ; 3E56 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E59 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3E5D _ 39. 45, 0C
        ja      ?_224                                   ; 3E60 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3E62 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E65 _ 8B. 55, FC
        add     edx, 2                                  ; 3E68 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3E6B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3E6E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3E71 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E74 _ 8B. 55, FC
        add     edx, 2                                  ; 3E77 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3E7A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3E7D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3E80 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3E83 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E86 _ 8B. 55, FC
        add     edx, 2                                  ; 3E89 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3E8C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3E8F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E92 _ 8B. 55, FC
        add     edx, 2                                  ; 3E95 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E98 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3E9C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3E9F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3EA2 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3EA5 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3EA8 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3EAC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3EAF _ 8B. 55, FC
        add     edx, 2                                  ; 3EB2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3EB5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3EB9 _ 85. C0
        jnz     ?_223                                   ; 3EBB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3EBD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EC0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3EC2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3EC5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3EC8 _ 89. 10
?_223:  mov     eax, dword [ebp-8H]                     ; 3ECA _ 8B. 45, F8
        jmp     ?_226                                   ; 3ECD _ EB, 17

?_224:  add     dword [ebp-4H], 1                       ; 3ECF _ 83. 45, FC, 01
?_225:  mov     eax, dword [ebp+8H]                     ; 3ED3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3ED6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3ED8 _ 39. 45, FC
        jc      ?_222                                   ; 3EDB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3EE1 _ B8, 00000000
?_226:  leave                                           ; 3EE6 _ C9
        ret                                             ; 3EE7 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3EE8 _ 55
        mov     ebp, esp                                ; 3EE9 _ 89. E5
        push    ebx                                     ; 3EEB _ 53
        sub     esp, 16                                 ; 3EEC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3EEF _ C7. 45, F8, 00000000
        jmp     ?_228                                   ; 3EF6 _ EB, 15

?_227:  mov     eax, dword [ebp+8H]                     ; 3EF8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EFB _ 8B. 55, F8
        add     edx, 2                                  ; 3EFE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3F01 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3F04 _ 39. 45, 0C
        jc      ?_229                                   ; 3F07 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3F09 _ 83. 45, F8, 01
?_228:  mov     eax, dword [ebp+8H]                     ; 3F0D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F10 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3F12 _ 39. 45, F8
        jl      ?_227                                   ; 3F15 _ 7C, E1
        jmp     ?_230                                   ; 3F17 _ EB, 01

?_229:  nop                                             ; 3F19 _ 90
?_230:  cmp     dword [ebp-8H], 0                       ; 3F1A _ 83. 7D, F8, 00
        jle     ?_232                                   ; 3F1E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3F24 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F27 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F2A _ 8B. 45, 08
        add     edx, 2                                  ; 3F2D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3F30 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3F33 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F36 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F39 _ 8B. 45, 08
        add     edx, 2                                  ; 3F3C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3F3F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3F43 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3F45 _ 39. 45, 0C
        jne     ?_232                                   ; 3F48 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3F4E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F51 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F54 _ 8B. 45, 08
        add     edx, 2                                  ; 3F57 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3F5A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3F5E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F61 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3F64 _ 8B. 45, 10
        add     ecx, eax                                ; 3F67 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3F69 _ 8B. 45, 08
        add     edx, 2                                  ; 3F6C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3F6F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3F73 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F76 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3F78 _ 39. 45, F8
        jge     ?_231                                   ; 3F7B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3F7D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3F80 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3F83 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3F86 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F89 _ 8B. 55, F8
        add     edx, 2                                  ; 3F8C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3F8F _ 8B. 04 D0
        cmp     ecx, eax                                ; 3F92 _ 39. C1
        jnz     ?_231                                   ; 3F94 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3F96 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3F99 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3F9C _ 8B. 45, 08
        add     edx, 2                                  ; 3F9F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3FA2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3FA6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FA9 _ 8B. 55, F8
        add     edx, 2                                  ; 3FAC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3FAF _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3FB3 _ 8B. 55, F8
        sub     edx, 1                                  ; 3FB6 _ 83. EA, 01
        add     ecx, eax                                ; 3FB9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3FBB _ 8B. 45, 08
        add     edx, 2                                  ; 3FBE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3FC1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3FC5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FC8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3FCA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3FCD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3FD0 _ 89. 10
?_231:  mov     eax, 0                                  ; 3FD2 _ B8, 00000000
        jmp     ?_238                                   ; 3FD7 _ E9, 0000011C

?_232:  mov     eax, dword [ebp+8H]                     ; 3FDC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FDF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3FE1 _ 39. 45, F8
        jge     ?_233                                   ; 3FE4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3FE6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3FE9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3FEC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3FEF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FF2 _ 8B. 55, F8
        add     edx, 2                                  ; 3FF5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3FF8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3FFB _ 39. C1
        jnz     ?_233                                   ; 3FFD _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3FFF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4002 _ 8B. 55, F8
        add     edx, 2                                  ; 4005 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4008 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 400B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 400E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4011 _ 8B. 55, F8
        add     edx, 2                                  ; 4014 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4017 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 401B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 401E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4021 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4024 _ 8B. 55, F8
        add     edx, 2                                  ; 4027 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 402A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 402E _ B8, 00000000
        jmp     ?_238                                   ; 4033 _ E9, 000000C0

?_233:  mov     eax, dword [ebp+8H]                     ; 4038 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 403B _ 8B. 00
        cmp     eax, 4095                               ; 403D _ 3D, 00000FFF
        jg      ?_237                                   ; 4042 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4048 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 404B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 404D _ 89. 45, F4
        jmp     ?_235                                   ; 4050 _ EB, 28

?_234:  mov     eax, dword [ebp-0CH]                    ; 4052 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4055 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4058 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 405B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 405E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4061 _ 8B. 45, 08
        add     edx, 2                                  ; 4064 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4067 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 406A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 406C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 406F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4072 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 4076 _ 83. 6D, F4, 01
?_235:  mov     eax, dword [ebp-0CH]                    ; 407A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 407D _ 3B. 45, F8
        jg      ?_234                                   ; 4080 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 4082 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4085 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4087 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 408A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 408D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 408F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4092 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4095 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4098 _ 8B. 00
        cmp     edx, eax                                ; 409A _ 39. C2
        jge     ?_236                                   ; 409C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 409E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 40A1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 40A3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 40A6 _ 89. 50, 04
?_236:  mov     eax, dword [ebp+8H]                     ; 40A9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40AC _ 8B. 55, F8
        add     edx, 2                                  ; 40AF _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 40B2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 40B5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 40B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40BB _ 8B. 55, F8
        add     edx, 2                                  ; 40BE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 40C1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 40C4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 40C8 _ B8, 00000000
        jmp     ?_238                                   ; 40CD _ EB, 29

?_237:  mov     eax, dword [ebp+8H]                     ; 40CF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 40D2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 40D5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 40D8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 40DB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 40DE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 40E1 _ 8B. 40, 08
        mov     edx, eax                                ; 40E4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 40E6 _ 8B. 45, 10
        add     eax, edx                                ; 40E9 _ 01. D0
        mov     edx, eax                                ; 40EB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 40ED _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 40F0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 40F3 _ B8, FFFFFFFF
?_238:  add     esp, 16                                 ; 40F8 _ 83. C4, 10
        pop     ebx                                     ; 40FB _ 5B
        pop     ebp                                     ; 40FC _ 5D
        ret                                             ; 40FD _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 40FE _ 55
        mov     ebp, esp                                ; 40FF _ 89. E5
        sub     esp, 24                                 ; 4101 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4104 _ 8B. 45, 0C
        add     eax, 4095                               ; 4107 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 410C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 4111 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4114 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4117 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 411B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 411E _ 89. 04 24
        call    _memman_alloc                           ; 4121 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4126 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4129 _ 8B. 45, FC
        leave                                           ; 412C _ C9
        ret                                             ; 412D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 412E _ 55
        mov     ebp, esp                                ; 412F _ 89. E5
        sub     esp, 28                                 ; 4131 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4134 _ 8B. 45, 10
        add     eax, 4095                               ; 4137 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 413C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4141 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4144 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4147 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 414B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 414E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4152 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4155 _ 89. 04 24
        call    _memman_free                            ; 4158 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 415D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4160 _ 8B. 45, FC
        leave                                           ; 4163 _ C9
        ret                                             ; 4164 _ C3
; _memman_free_4k End of function

        nop                                             ; 4165 _ 90
        nop                                             ; 4166 _ 90
        nop                                             ; 4167 _ 90


_fifo8_init:
        push    ebp                                     ; 4168 _ 55
        mov     ebp, esp                                ; 4169 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 416B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 416E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4171 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4174 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4177 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 417A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 417C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 417F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4182 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4185 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 4188 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 418F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4192 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4199 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 419C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 41A3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 41A6 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 41A9 _ 89. 50, 18
        nop                                             ; 41AC _ 90
        pop     ebp                                     ; 41AD _ 5D
        ret                                             ; 41AE _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 41AF _ 55
        mov     ebp, esp                                ; 41B0 _ 89. E5
        sub     esp, 40                                 ; 41B2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 41B5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 41B8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 41BB _ 83. 7D, 08, 00
        jnz     ?_239                                   ; 41BF _ 75, 0A
        mov     eax, 4294967295                         ; 41C1 _ B8, FFFFFFFF
        jmp     ?_243                                   ; 41C6 _ E9, 000000AB

?_239:  mov     eax, dword [ebp+8H]                     ; 41CB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41CE _ 8B. 40, 10
        test    eax, eax                                ; 41D1 _ 85. C0
        jnz     ?_240                                   ; 41D3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 41D5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 41D8 _ 8B. 40, 14
        or      eax, 01H                                ; 41DB _ 83. C8, 01
        mov     edx, eax                                ; 41DE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 41E0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 41E3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 41E6 _ B8, FFFFFFFF
        jmp     ?_243                                   ; 41EB _ E9, 00000086

?_240:  mov     eax, dword [ebp+8H]                     ; 41F0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 41F3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 41F5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 41F8 _ 8B. 40, 04
        add     edx, eax                                ; 41FB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 41FD _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 4201 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 4203 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4206 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4209 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 420C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 420F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4212 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4215 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4218 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 421B _ 8B. 40, 0C
        cmp     edx, eax                                ; 421E _ 39. C2
        jnz     ?_241                                   ; 4220 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4222 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4225 _ C7. 40, 04, 00000000
?_241:  mov     eax, dword [ebp+8H]                     ; 422C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 422F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4232 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4235 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4238 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 423B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 423E _ 8B. 40, 18
        test    eax, eax                                ; 4241 _ 85. C0
        jz      ?_242                                   ; 4243 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4245 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4248 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 424B _ 8B. 40, 04
        cmp     eax, 2                                  ; 424E _ 83. F8, 02
        jz      ?_242                                   ; 4251 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4253 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4256 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4259 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4261 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 4269 _ 89. 04 24
        call    _task_run                               ; 426C _ E8, 00000000(rel)
?_242:  mov     eax, 0                                  ; 4271 _ B8, 00000000
?_243:  leave                                           ; 4276 _ C9
        ret                                             ; 4277 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 4278 _ 55
        mov     ebp, esp                                ; 4279 _ 89. E5
        sub     esp, 16                                 ; 427B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 427E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4281 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4284 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4287 _ 8B. 40, 0C
        cmp     edx, eax                                ; 428A _ 39. C2
        jnz     ?_244                                   ; 428C _ 75, 07
        mov     eax, 4294967295                         ; 428E _ B8, FFFFFFFF
        jmp     ?_246                                   ; 4293 _ EB, 51

?_244:  mov     eax, dword [ebp+8H]                     ; 4295 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4298 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 429A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 429D _ 8B. 40, 08
        add     eax, edx                                ; 42A0 _ 01. D0
        movzx   eax, byte [eax]                         ; 42A2 _ 0F B6. 00
        movzx   eax, al                                 ; 42A5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 42A8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 42AB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 42AE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 42B1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 42B4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 42B7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 42BA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 42BD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 42C0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 42C3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 42C6 _ 39. C2
        jnz     ?_245                                   ; 42C8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 42CA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 42CD _ C7. 40, 08, 00000000
?_245:  mov     eax, dword [ebp+8H]                     ; 42D4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 42D7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 42DA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 42DD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 42E0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 42E3 _ 8B. 45, FC
?_246:  leave                                           ; 42E6 _ C9
        ret                                             ; 42E7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 42E8 _ 55
        mov     ebp, esp                                ; 42E9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 42EB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 42EE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 42F1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 42F4 _ 8B. 40, 10
        sub     edx, eax                                ; 42F7 _ 29. C2
        mov     eax, edx                                ; 42F9 _ 89. D0
        pop     ebp                                     ; 42FB _ 5D
        ret                                             ; 42FC _ C3
; _fifo8_status End of function

        nop                                             ; 42FD _ 90
        nop                                             ; 42FE _ 90
        nop                                             ; 42FF _ 90


_init_pit:
        push    ebp                                     ; 4300 _ 55
        mov     ebp, esp                                ; 4301 _ 89. E5
        sub     esp, 40                                 ; 4303 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4306 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 430E _ C7. 04 24, 00000043
        call    _io_out8                                ; 4315 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 431A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4322 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4329 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 432E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4336 _ C7. 04 24, 00000040
        call    _io_out8                                ; 433D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4342 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 434C _ C7. 45, F4, 00000000
        jmp     ?_248                                   ; 4353 _ EB, 26

?_247:  mov     eax, dword [ebp-0CH]                    ; 4355 _ 8B. 45, F4
        shl     eax, 4                                  ; 4358 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 435B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4360 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4366 _ 8B. 45, F4
        shl     eax, 4                                  ; 4369 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 436C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4371 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4377 _ 83. 45, F4, 01
?_248:  cmp     dword [ebp-0CH], 499                    ; 437B _ 81. 7D, F4, 000001F3
        jle     ?_247                                   ; 4382 _ 7E, D1
        nop                                             ; 4384 _ 90
        leave                                           ; 4385 _ C9
        ret                                             ; 4386 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4387 _ 55
        mov     ebp, esp                                ; 4388 _ 89. E5
        sub     esp, 16                                 ; 438A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 438D _ C7. 45, FC, 00000000
        jmp     ?_251                                   ; 4394 _ EB, 36

?_249:  mov     eax, dword [ebp-4H]                     ; 4396 _ 8B. 45, FC
        shl     eax, 4                                  ; 4399 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 439C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 43A1 _ 8B. 00
        test    eax, eax                                ; 43A3 _ 85. C0
        jnz     ?_250                                   ; 43A5 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 43A7 _ 8B. 45, FC
        shl     eax, 4                                  ; 43AA _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 43AD _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 43B2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 43B8 _ 8B. 45, FC
        shl     eax, 4                                  ; 43BB _ C1. E0, 04
        add     eax, _timerctl                               ; 43BE _ 05, 00000000(d)
        add     eax, 4                                  ; 43C3 _ 83. C0, 04
        jmp     ?_252                                   ; 43C6 _ EB, 12

?_250:  add     dword [ebp-4H], 1                       ; 43C8 _ 83. 45, FC, 01
?_251:  cmp     dword [ebp-4H], 499                     ; 43CC _ 81. 7D, FC, 000001F3
        jle     ?_249                                   ; 43D3 _ 7E, C1
        mov     eax, 0                                  ; 43D5 _ B8, 00000000
?_252:  leave                                           ; 43DA _ C9
        ret                                             ; 43DB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 43DC _ 55
        mov     ebp, esp                                ; 43DD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 43DF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 43E2 _ C7. 40, 04, 00000000
        nop                                             ; 43E9 _ 90
        pop     ebp                                     ; 43EA _ 5D
        ret                                             ; 43EB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 43EC _ 55
        mov     ebp, esp                                ; 43ED _ 89. E5
        sub     esp, 4                                  ; 43EF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 43F2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 43F5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 43F8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 43FB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 43FE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 4401 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4404 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4408 _ 88. 42, 0C
        nop                                             ; 440B _ 90
        leave                                           ; 440C _ C9
        ret                                             ; 440D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 440E _ 55
        mov     ebp, esp                                ; 440F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4411 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4414 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4417 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4419 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 441C _ C7. 40, 04, 00000002
        nop                                             ; 4423 _ 90
        pop     ebp                                     ; 4424 _ 5D
        ret                                             ; 4425 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4426 _ 55
        mov     ebp, esp                                ; 4427 _ 89. E5
        sub     esp, 40                                 ; 4429 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 442C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4434 _ C7. 04 24, 00000020
        call    _io_out8                                ; 443B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4440 _ A1, 00000000(d)
        add     eax, 1                                  ; 4445 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4448 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 444D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4451 _ C7. 45, F4, 00000000
        jmp     ?_256                                   ; 4458 _ E9, 000000AA

?_253:  mov     eax, dword [ebp-0CH]                    ; 445D _ 8B. 45, F4
        shl     eax, 4                                  ; 4460 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4463 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4468 _ 8B. 00
        cmp     eax, 2                                  ; 446A _ 83. F8, 02
        jne     ?_254                                   ; 446D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4473 _ 8B. 45, F4
        shl     eax, 4                                  ; 4476 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4479 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 447E _ 8B. 00
        lea     edx, [eax-1H]                           ; 4480 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4483 _ 8B. 45, F4
        shl     eax, 4                                  ; 4486 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4489 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 448E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4490 _ 8B. 45, F4
        shl     eax, 4                                  ; 4493 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4496 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 449B _ 8B. 00
        test    eax, eax                                ; 449D _ 85. C0
        jnz     ?_254                                   ; 449F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 44A1 _ 8B. 45, F4
        shl     eax, 4                                  ; 44A4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44A7 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 44AC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 44B2 _ 8B. 45, F4
        shl     eax, 4                                  ; 44B5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 44B8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 44BD _ 0F B6. 00
        movzx   eax, al                                 ; 44C0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 44C3 _ 8B. 55, F4
        shl     edx, 4                                  ; 44C6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 44C9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 44CF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 44D1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 44D5 _ 89. 14 24
        call    _fifo8_put                              ; 44D8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 44DD _ 8B. 45, F4
        shl     eax, 4                                  ; 44E0 _ C1. E0, 04
        add     eax, _timerctl                               ; 44E3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 44E8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 44EB _ A1, 00000000(d)
        cmp     edx, eax                                ; 44F0 _ 39. C2
        jnz     ?_254                                   ; 44F2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 44F4 _ C6. 45, F3, 01
?_254:  cmp     byte [ebp-0DH], 0                       ; 44F8 _ 80. 7D, F3, 00
        jz      ?_255                                   ; 44FC _ 74, 05
        call    _task_switch                            ; 44FE _ E8, 00000000(rel)
?_255:  add     dword [ebp-0CH], 1                      ; 4503 _ 83. 45, F4, 01
?_256:  cmp     dword [ebp-0CH], 499                    ; 4507 _ 81. 7D, F4, 000001F3
        jle     ?_253                                   ; 450E _ 0F 8E, FFFFFF49
        nop                                             ; 4514 _ 90
        leave                                           ; 4515 _ C9
        ret                                             ; 4516 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4517 _ B8, 00000000(d)
        ret                                             ; 451C _ C3
; _getTimerController End of function

        nop                                             ; 451D _ 90
        nop                                             ; 451E _ 90
        nop                                             ; 451F _ 90


_set_segmdesc:
        push    ebp                                     ; 4520 _ 55
        mov     ebp, esp                                ; 4521 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4523 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_257                                   ; 452A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 452C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4533 _ 8B. 45, 0C
        shr     eax, 12                                 ; 4536 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4539 _ 89. 45, 0C
?_257:  mov     eax, dword [ebp+0CH]                    ; 453C _ 8B. 45, 0C
        mov     edx, eax                                ; 453F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4541 _ 8B. 45, 08
        mov     word [eax], dx                          ; 4544 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4547 _ 8B. 45, 10
        mov     edx, eax                                ; 454A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 454C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 454F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4553 _ 8B. 45, 10
        sar     eax, 16                                 ; 4556 _ C1. F8, 10
        mov     edx, eax                                ; 4559 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 455B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 455E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4561 _ 8B. 45, 14
        mov     edx, eax                                ; 4564 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4566 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4569 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 456C _ 8B. 45, 0C
        shr     eax, 16                                 ; 456F _ C1. E8, 10
        and     eax, 0FH                                ; 4572 _ 83. E0, 0F
        mov     edx, eax                                ; 4575 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4577 _ 8B. 45, 14
        sar     eax, 8                                  ; 457A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 457D _ 83. E0, F0
        or      eax, edx                                ; 4580 _ 09. D0
        mov     edx, eax                                ; 4582 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4584 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4587 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 458A _ 8B. 45, 10
        shr     eax, 24                                 ; 458D _ C1. E8, 18
        mov     edx, eax                                ; 4590 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4592 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4595 _ 88. 50, 07
        nop                                             ; 4598 _ 90
        pop     ebp                                     ; 4599 _ 5D
        ret                                             ; 459A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 459B _ 55
        mov     ebp, esp                                ; 459C _ 89. E5
        sub     esp, 16                                 ; 459E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 45A1 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 45A7 _ 8B. 55, 08
        mov     eax, edx                                ; 45AA _ 89. D0
        shl     eax, 2                                  ; 45AC _ C1. E0, 02
        add     eax, edx                                ; 45AF _ 01. D0
        shl     eax, 2                                  ; 45B1 _ C1. E0, 02
        add     eax, ecx                                ; 45B4 _ 01. C8
        add     eax, 8                                  ; 45B6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 45B9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 45BF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 45C5 _ 8B. 55, 08
        mov     eax, edx                                ; 45C8 _ 89. D0
        shl     eax, 2                                  ; 45CA _ C1. E0, 02
        add     eax, edx                                ; 45CD _ 01. D0
        shl     eax, 2                                  ; 45CF _ C1. E0, 02
        add     eax, ecx                                ; 45D2 _ 01. C8
        add     eax, 12                                 ; 45D4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 45D7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 45DD _ C7. 45, FC, 00000000
        jmp     ?_259                                   ; 45E4 _ EB, 21

?_258:  mov     ecx, dword [_taskctl]                   ; 45E6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 45EC _ 8B. 55, FC
        mov     eax, edx                                ; 45EF _ 89. D0
        add     eax, eax                                ; 45F1 _ 01. C0
        add     eax, edx                                ; 45F3 _ 01. D0
        shl     eax, 3                                  ; 45F5 _ C1. E0, 03
        add     eax, ecx                                ; 45F8 _ 01. C8
        add     eax, 16                                 ; 45FA _ 83. C0, 10
        mov     dword [eax], 0                          ; 45FD _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 4603 _ 83. 45, FC, 01
?_259:  cmp     dword [ebp-4H], 2                       ; 4607 _ 83. 7D, FC, 02
        jle     ?_258                                   ; 460B _ 7E, D9
        nop                                             ; 460D _ 90
        leave                                           ; 460E _ C9
        ret                                             ; 460F _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4610 _ 55
        mov     ebp, esp                                ; 4611 _ 89. E5
        sub     esp, 40                                 ; 4613 _ 83. EC, 28
        call    _get_addr_gdt                           ; 4616 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 461B _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 461E _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 4626 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4629 _ 89. 04 24
        call    _memman_alloc_4k                        ; 462C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4631 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4636 _ C7. 45, F4, 00000000
        jmp     ?_261                                   ; 463D _ E9, 00000088

?_260:  mov     edx, dword [_taskctl]                   ; 4642 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4648 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 464B _ 69. C0, 00000094
        add     eax, edx                                ; 4651 _ 01. D0
        add     eax, 72                                 ; 4653 _ 83. C0, 48
        mov     dword [eax], 0                          ; 4656 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 465C _ 8B. 45, F4
        add     eax, 7                                  ; 465F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4662 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4668 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 466F _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4672 _ 69. C0, 00000094
        add     eax, ecx                                ; 4678 _ 01. C8
        add     eax, 68                                 ; 467A _ 83. C0, 44
        mov     dword [eax], edx                        ; 467D _ 89. 10
        mov     edx, dword [_taskctl]                   ; 467F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4685 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4688 _ 69. C0, 00000094
        add     eax, 96                                 ; 468E _ 83. C0, 60
        add     eax, edx                                ; 4691 _ 01. D0
        add     eax, 16                                 ; 4693 _ 83. C0, 10
        mov     ecx, eax                                ; 4696 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4698 _ 8B. 45, F4
        add     eax, 7                                  ; 469B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 469E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 46A5 _ 8B. 45, F0
        add     eax, edx                                ; 46A8 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 46AA _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 46B2 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 46B6 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 46BE _ 89. 04 24
        call    _set_segmdesc                           ; 46C1 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 46C6 _ 83. 45, F4, 01
?_261:  cmp     dword [ebp-0CH], 4                      ; 46CA _ 83. 7D, F4, 04
        jle     ?_260                                   ; 46CE _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 46D4 _ C7. 45, F4, 00000000
        jmp     ?_263                                   ; 46DB _ EB, 0F

?_262:  mov     eax, dword [ebp-0CH]                    ; 46DD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 46E0 _ 89. 04 24
        call    _init_task_level                        ; 46E3 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 46E8 _ 83. 45, F4, 01
?_263:  cmp     dword [ebp-0CH], 2                      ; 46EC _ 83. 7D, F4, 02
        jle     ?_262                                   ; 46F0 _ 7E, EB
        call    _task_alloc                             ; 46F2 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 46F7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 46FA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 46FD _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4704 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 4707 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 470E _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4711 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4718 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 471B _ 89. 04 24
        call    _task_add                               ; 471E _ E8, 0000003A
        call    _task_switchsub                         ; 4723 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 4728 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 472B _ 8B. 00
        mov     dword [esp], eax                        ; 472D _ 89. 04 24
        call    _load_tr                                ; 4730 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4735 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 473A _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 473F _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4742 _ 8B. 40, 08
        mov     edx, eax                                ; 4745 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4747 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 474C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4750 _ 89. 04 24
        call    _timer_settime                          ; 4753 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4758 _ 8B. 45, EC
        leave                                           ; 475B _ C9
        ret                                             ; 475C _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 475D _ 55
        mov     ebp, esp                                ; 475E _ 89. E5
        sub     esp, 16                                 ; 4760 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4763 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4769 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 476C _ 8B. 50, 0C
        mov     eax, edx                                ; 476F _ 89. D0
        shl     eax, 2                                  ; 4771 _ C1. E0, 02
        add     eax, edx                                ; 4774 _ 01. D0
        shl     eax, 2                                  ; 4776 _ C1. E0, 02
        add     eax, ecx                                ; 4779 _ 01. C8
        add     eax, 8                                  ; 477B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 477E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4781 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4784 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4786 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4789 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 478C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4790 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4793 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4795 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4798 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 479B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 479D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 47A0 _ C7. 40, 04, 00000002
        nop                                             ; 47A7 _ 90
        leave                                           ; 47A8 _ C9
        ret                                             ; 47A9 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 47AA _ 55
        mov     ebp, esp                                ; 47AB _ 89. E5
        sub     esp, 16                                 ; 47AD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 47B0 _ C7. 45, FC, 00000000
        jmp     ?_266                                   ; 47B7 _ E9, 000000F7

?_264:  mov     edx, dword [_taskctl]                   ; 47BC _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 47C2 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 47C5 _ 69. C0, 00000094
        add     eax, edx                                ; 47CB _ 01. D0
        add     eax, 72                                 ; 47CD _ 83. C0, 48
        mov     eax, dword [eax]                        ; 47D0 _ 8B. 00
        test    eax, eax                                ; 47D2 _ 85. C0
        jne     ?_265                                   ; 47D4 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 47DA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 47E0 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 47E3 _ 69. C0, 00000094
        add     eax, 64                                 ; 47E9 _ 83. C0, 40
        add     eax, edx                                ; 47EC _ 01. D0
        add     eax, 4                                  ; 47EE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 47F1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 47F4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 47F7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 47FE _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 4801 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4808 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 480B _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4812 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4815 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 481C _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 481F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4826 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4829 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4830 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4833 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 483A _ 8B. 45, FC
        add     eax, 1                                  ; 483D _ 83. C0, 01
        shl     eax, 9                                  ; 4840 _ C1. E0, 09
        mov     edx, eax                                ; 4843 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4845 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4848 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 484B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 484E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4855 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4858 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 485F _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4862 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4869 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 486C _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4876 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4879 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4883 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4886 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4890 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4893 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 489D _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 48A0 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 48AA _ 8B. 45, F8
        jmp     ?_267                                   ; 48AD _ EB, 13

?_265:  add     dword [ebp-4H], 1                       ; 48AF _ 83. 45, FC, 01
?_266:  cmp     dword [ebp-4H], 4                       ; 48B3 _ 83. 7D, FC, 04
        jle     ?_264                                   ; 48B7 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 48BD _ B8, 00000000
?_267:  leave                                           ; 48C2 _ C9
        ret                                             ; 48C3 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 48C4 _ 55
        mov     ebp, esp                                ; 48C5 _ 89. E5
        sub     esp, 24                                 ; 48C7 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 48CA _ 83. 7D, 0C, 00
        jns     ?_268                                   ; 48CE _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 48D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 48D3 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 48D6 _ 89. 45, 0C
?_268:  cmp     dword [ebp+10H], 0                      ; 48D9 _ 83. 7D, 10, 00
        jle     ?_269                                   ; 48DD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 48DF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 48E2 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 48E5 _ 89. 50, 08
?_269:  mov     eax, dword [ebp+8H]                     ; 48E8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 48EB _ 8B. 40, 04
        cmp     eax, 2                                  ; 48EE _ 83. F8, 02
        jnz     ?_270                                   ; 48F1 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 48F3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 48F6 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 48F9 _ 39. 45, 0C
        jz      ?_270                                   ; 48FC _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 48FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4901 _ 89. 04 24
        call    _task_remove                            ; 4904 _ E8, 0000002E
?_270:  mov     eax, dword [ebp+8H]                     ; 4909 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 490C _ 8B. 40, 04
        cmp     eax, 2                                  ; 490F _ 83. F8, 02
        jz      ?_271                                   ; 4912 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4914 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4917 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 491A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 491D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4920 _ 89. 04 24
        call    _task_add                               ; 4923 _ E8, FFFFFE35
?_271:  mov     eax, dword [_taskctl]                   ; 4928 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 492D _ C7. 40, 04, 00000001
        nop                                             ; 4934 _ 90
        leave                                           ; 4935 _ C9
        ret                                             ; 4936 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4937 _ 55
        mov     ebp, esp                                ; 4938 _ 89. E5
        sub     esp, 16                                 ; 493A _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 493D _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4943 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4946 _ 8B. 50, 0C
        mov     eax, edx                                ; 4949 _ 89. D0
        shl     eax, 2                                  ; 494B _ C1. E0, 02
        add     eax, edx                                ; 494E _ 01. D0
        shl     eax, 2                                  ; 4950 _ C1. E0, 02
        add     eax, ecx                                ; 4953 _ 01. C8
        add     eax, 8                                  ; 4955 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4958 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 495B _ C7. 45, FC, 00000000
        jmp     ?_274                                   ; 4962 _ EB, 23

?_272:  mov     eax, dword [ebp-8H]                     ; 4964 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4967 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 496A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 496E _ 39. 45, 08
        jnz     ?_273                                   ; 4971 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4973 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4976 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4979 _ C7. 44 90, 08, 00000000
        jmp     ?_275                                   ; 4981 _ EB, 0E

?_273:  add     dword [ebp-4H], 1                       ; 4983 _ 83. 45, FC, 01
?_274:  mov     eax, dword [ebp-8H]                     ; 4987 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 498A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 498C _ 39. 45, FC
        jl      ?_272                                   ; 498F _ 7C, D3
?_275:  mov     eax, dword [ebp-8H]                     ; 4991 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4994 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4996 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4999 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 499C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 499E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 49A1 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 49A4 _ 39. 45, FC
        jge     ?_276                                   ; 49A7 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 49A9 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 49AC _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 49AF _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 49B2 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 49B5 _ 89. 50, 04
?_276:  mov     eax, dword [ebp-8H]                     ; 49B8 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 49BB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 49BE _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 49C1 _ 8B. 00
        cmp     edx, eax                                ; 49C3 _ 39. C2
        jl      ?_277                                   ; 49C5 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 49C7 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 49CA _ C7. 40, 04, 00000000
?_277:  mov     eax, dword [ebp+8H]                     ; 49D1 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 49D4 _ C7. 40, 04, 00000001
        jmp     ?_279                                   ; 49DB _ EB, 1B

?_278:  mov     eax, dword [ebp-4H]                     ; 49DD _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 49E0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 49E3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 49E6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 49EA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 49ED _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 49F0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 49F4 _ 83. 45, FC, 01
?_279:  mov     eax, dword [ebp-8H]                     ; 49F8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 49FB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 49FD _ 39. 45, FC
        jl      ?_278                                   ; 4A00 _ 7C, DB
        nop                                             ; 4A02 _ 90
        leave                                           ; 4A03 _ C9
        ret                                             ; 4A04 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4A05 _ 55
        mov     ebp, esp                                ; 4A06 _ 89. E5
        sub     esp, 40                                 ; 4A08 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 4A0B _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4A11 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4A16 _ 8B. 10
        mov     eax, edx                                ; 4A18 _ 89. D0
        shl     eax, 2                                  ; 4A1A _ C1. E0, 02
        add     eax, edx                                ; 4A1D _ 01. D0
        shl     eax, 2                                  ; 4A1F _ C1. E0, 02
        add     eax, ecx                                ; 4A22 _ 01. C8
        add     eax, 8                                  ; 4A24 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4A27 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4A2A _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4A2D _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4A30 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4A33 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4A37 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 4A3A _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 4A3D _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4A40 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4A43 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4A46 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4A49 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4A4C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4A4F _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4A52 _ 8B. 00
        cmp     edx, eax                                ; 4A54 _ 39. C2
        jnz     ?_280                                   ; 4A56 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4A58 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 4A5B _ C7. 40, 04, 00000000
?_280:  mov     eax, dword [_taskctl]                   ; 4A62 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4A67 _ 8B. 40, 04
        test    eax, eax                                ; 4A6A _ 85. C0
        jz      ?_281                                   ; 4A6C _ 74, 24
        call    _task_switchsub                         ; 4A6E _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4A73 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4A79 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4A7E _ 8B. 10
        mov     eax, edx                                ; 4A80 _ 89. D0
        shl     eax, 2                                  ; 4A82 _ C1. E0, 02
        add     eax, edx                                ; 4A85 _ 01. D0
        shl     eax, 2                                  ; 4A87 _ C1. E0, 02
        add     eax, ecx                                ; 4A8A _ 01. C8
        add     eax, 8                                  ; 4A8C _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4A8F _ 89. 45, F4
?_281:  mov     eax, dword [ebp-0CH]                    ; 4A92 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4A95 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4A98 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4A9B _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4A9F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4AA2 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4AA5 _ 8B. 40, 08
        mov     edx, eax                                ; 4AA8 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4AAA _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4AAF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4AB3 _ 89. 04 24
        call    _timer_settime                          ; 4AB6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4ABB _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4ABE _ 3B. 45, F0
        jz      ?_282                                   ; 4AC1 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4AC3 _ 83. 7D, EC, 00
        jz      ?_282                                   ; 4AC7 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4AC9 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4ACC _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4ACE _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4AD2 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4AD9 _ E8, 00000000(rel)
        nop                                             ; 4ADE _ 90
?_282:  nop                                             ; 4ADF _ 90
        leave                                           ; 4AE0 _ C9
        ret                                             ; 4AE1 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4AE2 _ 55
        mov     ebp, esp                                ; 4AE3 _ 89. E5
        sub     esp, 40                                 ; 4AE5 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4AE8 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4AEF _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4AF6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4AF9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4AFC _ 83. F8, 02
        jnz     ?_283                                   ; 4AFF _ 75, 51
        call    _task_now                               ; 4B01 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4B06 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4B09 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B0C _ 89. 04 24
        call    _task_remove                            ; 4B0F _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4B14 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4B1B _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4B1E _ 3B. 45, F0
        jnz     ?_283                                   ; 4B21 _ 75, 2F
        call    _task_switchsub                         ; 4B23 _ E8, 0000002F
        call    _task_now                               ; 4B28 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4B2D _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4B30 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4B37 _ 83. 7D, F0, 00
        jz      ?_283                                   ; 4B3B _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4B3D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4B40 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4B42 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4B46 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4B4D _ E8, 00000000(rel)
?_283:  mov     eax, dword [ebp-0CH]                    ; 4B52 _ 8B. 45, F4
        leave                                           ; 4B55 _ C9
        ret                                             ; 4B56 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4B57 _ 55
        mov     ebp, esp                                ; 4B58 _ 89. E5
        sub     esp, 16                                 ; 4B5A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4B5D _ C7. 45, FC, 00000000
        jmp     ?_285                                   ; 4B64 _ EB, 22

?_284:  mov     ecx, dword [_taskctl]                   ; 4B66 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4B6C _ 8B. 55, FC
        mov     eax, edx                                ; 4B6F _ 89. D0
        shl     eax, 2                                  ; 4B71 _ C1. E0, 02
        add     eax, edx                                ; 4B74 _ 01. D0
        shl     eax, 2                                  ; 4B76 _ C1. E0, 02
        add     eax, ecx                                ; 4B79 _ 01. C8
        add     eax, 8                                  ; 4B7B _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4B7E _ 8B. 00
        test    eax, eax                                ; 4B80 _ 85. C0
        jg      ?_286                                   ; 4B82 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4B84 _ 83. 45, FC, 01
?_285:  cmp     dword [ebp-4H], 2                       ; 4B88 _ 83. 7D, FC, 02
        jle     ?_284                                   ; 4B8C _ 7E, D8
        jmp     ?_287                                   ; 4B8E _ EB, 01

?_286:  nop                                             ; 4B90 _ 90
?_287:  mov     eax, dword [_taskctl]                   ; 4B91 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4B96 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4B99 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4B9B _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4BA0 _ C7. 40, 04, 00000000
        nop                                             ; 4BA7 _ 90
        leave                                           ; 4BA8 _ C9
        ret                                             ; 4BA9 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4BAA _ 55
        mov     ebp, esp                                ; 4BAB _ 89. E5
        sub     esp, 16                                 ; 4BAD _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4BB0 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4BB6 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4BBB _ 8B. 10
        mov     eax, edx                                ; 4BBD _ 89. D0
        shl     eax, 2                                  ; 4BBF _ C1. E0, 02
        add     eax, edx                                ; 4BC2 _ 01. D0
        shl     eax, 2                                  ; 4BC4 _ C1. E0, 02
        add     eax, ecx                                ; 4BC7 _ 01. C8
        add     eax, 8                                  ; 4BC9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4BCC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4BCF _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4BD2 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4BD5 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4BD8 _ 8B. 44 90, 08
        leave                                           ; 4BDC _ C9
        ret                                             ; 4BDD _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4BDE _ 55
        mov     ebp, esp                                ; 4BDF _ 89. E5
        sub     esp, 24                                 ; 4BE1 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4BE4 _ 8B. 45, 10
        movzx   eax, al                                 ; 4BE7 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4BEA _ 8B. 55, 0C
        add     edx, 16                                 ; 4BED _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4BF0 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4BF4 _ 89. 14 24
        call    _fifo8_put                              ; 4BF7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4BFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BFF _ 89. 04 24
        call    _task_sleep                             ; 4C02 _ E8, FFFFFEDB
        nop                                             ; 4C07 _ 90
        leave                                           ; 4C08 _ C9
        ret                                             ; 4C09 _ C3
; _send_message End of function

        nop                                             ; 4C0A _ 90
        nop                                             ; 4C0B _ 90


_strcmp:
        push    ebp                                     ; 4C0C _ 55
        mov     ebp, esp                                ; 4C0D _ 89. E5
        sub     esp, 16                                 ; 4C0F _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4C12 _ 83. 7D, 08, 00
        jz      ?_288                                   ; 4C16 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4C18 _ 83. 7D, 0C, 00
        jnz     ?_289                                   ; 4C1C _ 75, 0A
?_288:  mov     eax, 0                                  ; 4C1E _ B8, 00000000
        jmp     ?_296                                   ; 4C23 _ E9, 0000009B

?_289:  mov     dword [ebp-4H], 0                       ; 4C28 _ C7. 45, FC, 00000000
        jmp     ?_292                                   ; 4C2F _ EB, 25

?_290:  mov     edx, dword [ebp-4H]                     ; 4C31 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C34 _ 8B. 45, 08
        add     eax, edx                                ; 4C37 _ 01. D0
        movzx   edx, byte [eax]                         ; 4C39 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4C3C _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4C3F _ 8B. 45, 0C
        add     eax, ecx                                ; 4C42 _ 01. C8
        movzx   eax, byte [eax]                         ; 4C44 _ 0F B6. 00
        cmp     dl, al                                  ; 4C47 _ 38. C2
        jz      ?_291                                   ; 4C49 _ 74, 07
        mov     eax, 0                                  ; 4C4B _ B8, 00000000
        jmp     ?_296                                   ; 4C50 _ EB, 71

?_291:  add     dword [ebp-4H], 1                       ; 4C52 _ 83. 45, FC, 01
?_292:  mov     edx, dword [ebp-4H]                     ; 4C56 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C59 _ 8B. 45, 08
        add     eax, edx                                ; 4C5C _ 01. D0
        movzx   eax, byte [eax]                         ; 4C5E _ 0F B6. 00
        test    al, al                                  ; 4C61 _ 84. C0
        jz      ?_293                                   ; 4C63 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4C65 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4C68 _ 8B. 45, 0C
        add     eax, edx                                ; 4C6B _ 01. D0
        movzx   eax, byte [eax]                         ; 4C6D _ 0F B6. 00
        test    al, al                                  ; 4C70 _ 84. C0
        jnz     ?_290                                   ; 4C72 _ 75, BD
?_293:  mov     edx, dword [ebp-4H]                     ; 4C74 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C77 _ 8B. 45, 08
        add     eax, edx                                ; 4C7A _ 01. D0
        movzx   eax, byte [eax]                         ; 4C7C _ 0F B6. 00
        test    al, al                                  ; 4C7F _ 84. C0
        jnz     ?_294                                   ; 4C81 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4C83 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4C86 _ 8B. 45, 0C
        add     eax, edx                                ; 4C89 _ 01. D0
        movzx   eax, byte [eax]                         ; 4C8B _ 0F B6. 00
        test    al, al                                  ; 4C8E _ 84. C0
        jz      ?_294                                   ; 4C90 _ 74, 07
        mov     eax, 0                                  ; 4C92 _ B8, 00000000
        jmp     ?_296                                   ; 4C97 _ EB, 2A

?_294:  mov     edx, dword [ebp-4H]                     ; 4C99 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4C9C _ 8B. 45, 08
        add     eax, edx                                ; 4C9F _ 01. D0
        movzx   eax, byte [eax]                         ; 4CA1 _ 0F B6. 00
        test    al, al                                  ; 4CA4 _ 84. C0
        jz      ?_295                                   ; 4CA6 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4CA8 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4CAB _ 8B. 45, 0C
        add     eax, edx                                ; 4CAE _ 01. D0
        movzx   eax, byte [eax]                         ; 4CB0 _ 0F B6. 00
        test    al, al                                  ; 4CB3 _ 84. C0
        jz      ?_295                                   ; 4CB5 _ 74, 07
        mov     eax, 0                                  ; 4CB7 _ B8, 00000000
        jmp     ?_296                                   ; 4CBC _ EB, 05

?_295:  mov     eax, 1                                  ; 4CBE _ B8, 00000001
?_296:  leave                                           ; 4CC3 _ C9
        ret                                             ; 4CC4 _ C3

        nop                                             ; 4CC5 _ 90
        nop                                             ; 4CC6 _ 90
        nop                                             ; 4CC7 _ 90



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

?_297:  db 00H                                          ; 0102 _ .

?_298:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
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



?_299:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_300:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_301:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_302:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_303:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_304:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_305:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_306:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0025 _ abc.exe.

?_307:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 002D _ mem.

?_308:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0031 _ cls.

?_309:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0035 _ hlt.

?_310:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0039 _ dir.

?_311:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003D _ page is:
        db 20H, 00H                                     ; 0045 _  .

?_312:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0047 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 004F _ L: .

?_313:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0053 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 005B _ H: .

?_314:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005F _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0067 _ w: .

?_315:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 006B _ INT 0D .

?_316:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 0073 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 007B _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 0083 _ d Except
        db 69H, 6FH, 6EH, 00H, 00H                      ; 008B _ ion..



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

?_317:  resd    1                                       ; 000C

?_318:  resd    1                                       ; 0010

?_319:  resd    1                                       ; 0014

?_320:  resb    1                                       ; 0018

?_321:  resb    3                                       ; 0019

_bootInfo:                                              ; dword
        resd    1                                       ; 001C

?_322:  resw    1                                       ; 0020

?_323:  resw    1                                       ; 0022

_keyinfo:                                               ; byte
        resb    24                                      ; 0024

?_324:  resd    1                                       ; 003C

_mouseinfo:                                             ; byte
        resb    32                                      ; 0040

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_325:  resd    1                                       ; 010C

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

?_326:  resd    1                                       ; 027C

_task_a.2331:                                           ; dword
        resd    8                                       ; 0280

_tss_a.2330:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2329:                                            ; byte
        resb    104                                     ; 0320

_str.2617:                                              ; byte
        resb    1                                       ; 0388

?_327:  resb    9                                       ; 0389

?_328:  resb    14                                      ; 0392

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


