; Disassembly of file: ckernel.o
; Sun Aug 11 19:15:26 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 116                                ; 0004 _ 83. EC, 74
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000008(d)
        call    _initBootInfo                           ; 000E _ E8, 00000F02
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000008(d)
        mov     dword [ebp-1CH], eax                    ; 0018 _ 89. 45, E4
        movzx   eax, word [?_315]                       ; 001B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000013C(d)
        movzx   eax, word [?_316]                       ; 0028 _ 0F B7. 05, 0000000E(d)
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
        mov     dword [esp], _keyinfo                   ; 0118 _ C7. 04 24, 00000010(d)
        call    _fifo8_init                             ; 011F _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0124 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012C _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0134 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013C _ C7. 04 24, 0000002C(d)
        call    _fifo8_init                             ; 0143 _ E8, 00000000(rel)
        call    _init_palette                           ; 0148 _ E8, 00000E8B
        call    _init_keyboard                          ; 014D _ E8, 000013F4
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
        call    _init_screen8                           ; 027E _ E8, 000007CA
        mov     dword [esp+4H], 99                      ; 0283 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028B _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0292 _ E8, 00000FDD
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
        call    _message_box                            ; 0333 _ E8, 00001639
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
        call    _enable_mouse                           ; 0387 _ E8, 000011F5
        call    _get_addr_code32                        ; 038C _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 0391 _ 89. 45, CC
        call    _get_addr_gdt                           ; 0394 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0399 _ 89. 45, C8
        mov     eax, dword [_memman]                    ; 039C _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A1 _ 89. 04 24
        call    _task_init                              ; 03A4 _ E8, 00000000(rel)
        mov     dword [_task_a.2314], eax               ; 03A9 _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2314]               ; 03AE _ A1, 0000027C(d)
        mov     dword [?_317], eax                      ; 03B3 _ A3, 00000028(d)
        mov     eax, dword [_task_a.2314]               ; 03B8 _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03BD _ A3, 00000278(d)
        mov     eax, dword [_task_a.2314]               ; 03C2 _ A1, 0000027C(d)
        mov     dword [esp+8H], 0                       ; 03C7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03CF _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03D7 _ 89. 04 24
        call    _task_run                               ; 03DA _ E8, 00000000(rel)
        call    _launch_console                         ; 03DF _ E8, 00001F94
        mov     dword [ebp-3CH], eax                    ; 03E4 _ 89. 45, C4
        mov     dword [ebp-40H], 0                      ; 03E7 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 0                      ; 03EE _ C7. 45, BC, 00000000
        mov     dword [ebp-48H], 0                      ; 03F5 _ C7. 45, B8, 00000000
        mov     dword [ebp-4CH], 0                      ; 03FC _ C7. 45, B4, 00000000
        mov     dword [ebp-14H], 0                      ; 0403 _ C7. 45, EC, 00000000
?_001:  call    _io_cli                                 ; 040A _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 040F _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 0416 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 041B _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 041D _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0424 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0429 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 042B _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0432 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0437 _ 01. D8
        test    eax, eax                                ; 0439 _ 85. C0
        jnz     ?_002                                   ; 043B _ 75, 0A
        call    _io_sti                                 ; 043D _ E8, 00000000(rel)
        jmp     ?_008                                   ; 0442 _ E9, 00000328

?_002:  mov     dword [esp], _keyinfo                   ; 0447 _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 044E _ E8, 00000000(rel)
        test    eax, eax                                ; 0453 _ 85. C0
        je      ?_007                                   ; 0455 _ 0F 84, 000002E3
        call    _io_sti                                 ; 045B _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0460 _ C7. 04 24, 00000010(d)
        call    _fifo8_get                              ; 0467 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 046C _ 89. 45, C0
        cmp     dword [ebp-40H], 15                     ; 046F _ 83. 7D, C0, 0F
        jne     ?_005                                   ; 0473 _ 0F 85, 00000187
        mov     dword [ebp-18H], -1                     ; 0479 _ C7. 45, E8, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 0480 _ 83. 7D, EC, 00
        jne     ?_003                                   ; 0484 _ 0F 85, 00000089
        mov     dword [ebp-14H], 1                      ; 048A _ C7. 45, EC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0491 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0497 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 049C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_298                   ; 04A4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 04AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04B0 _ 89. 04 24
        call    _make_wtitle8                           ; 04B3 _ E8, 00001869
        mov     eax, dword [_shtctl]                    ; 04B8 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BD _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_299                   ; 04C5 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-3CH]                    ; 04CD _ 8B. 55, C4
        mov     dword [esp+4H], edx                     ; 04D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04D4 _ 89. 04 24
        call    _make_wtitle8                           ; 04D7 _ E8, 00001845
        mov     edx, dword [_shtMsgBox]                 ; 04DC _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 04E2 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 04E7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 04EF _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 04F7 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 04FA _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04FE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0502 _ 89. 04 24
        call    _set_cursor                             ; 0505 _ E8, 00002C7C
        mov     dword [ebp-18H], 87                     ; 050A _ C7. 45, E8, 00000057
        jmp     ?_004                                   ; 0511 _ EB, 59

?_003:  mov     dword [ebp-14H], 0                      ; 0513 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 051A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0520 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0525 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_298                   ; 052D _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0535 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0539 _ 89. 04 24
        call    _make_wtitle8                           ; 053C _ E8, 000017E0
        mov     eax, dword [_shtctl]                    ; 0541 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0546 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_299                   ; 054E _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-3CH]                    ; 0556 _ 8B. 55, C4
        mov     dword [esp+4H], edx                     ; 0559 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 055D _ 89. 04 24
        call    _make_wtitle8                           ; 0560 _ E8, 000017BC
        mov     dword [ebp-18H], 88                     ; 0565 _ C7. 45, E8, 00000058
?_004:  mov     eax, dword [_shtMsgBox]                 ; 056C _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 0571 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 0574 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 057A _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 057F _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 0587 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 058B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0593 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 059B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 059F _ 89. 04 24
        call    _sheet_refresh                          ; 05A2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-3CH]                    ; 05A7 _ 8B. 45, C4
        mov     edx, dword [eax+4H]                     ; 05AA _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 05AD _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 05B2 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 05BA _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 05BE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05C6 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-3CH]                    ; 05CE _ 8B. 55, C4
        mov     dword [esp+4H], edx                     ; 05D1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05D5 _ 89. 04 24
        call    _sheet_refresh                          ; 05D8 _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 05DD _ 8B. 15, 00000274(d)
        mov     eax, dword [_task_a.2314]               ; 05E3 _ A1, 0000027C(d)
        mov     ecx, dword [ebp-18H]                    ; 05E8 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 05EB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 05EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F3 _ 89. 04 24
        call    _send_message                           ; 05F6 _ E8, 00000000(rel)
        jmp     ?_008                                   ; 05FB _ E9, 0000016F

?_005:  cmp     dword [ebp-14H], 0                      ; 0600 _ 83. 7D, EC, 00
        jne     ?_006                                   ; 0604 _ 0F 85, 000000EB
        mov     eax, dword [ebp-40H]                    ; 060A _ 8B. 45, C0
        mov     dword [esp], eax                        ; 060D _ 89. 04 24
        call    _transferScanCode                       ; 0610 _ E8, 000029E8
        mov     byte [ebp-4DH], al                      ; 0615 _ 88. 45, B3
        cmp     byte [ebp-4DH], 0                       ; 0618 _ 80. 7D, B3, 00
        je      ?_008                                   ; 061C _ 0F 84, 0000014D
        cmp     dword [ebp-40H], 83                     ; 0622 _ 83. 7D, C0, 53
        jg      ?_008                                   ; 0626 _ 0F 8F, 00000143
        mov     eax, dword [ebp-40H]                    ; 062C _ 8B. 45, C0
        add     eax, _keytable                          ; 062F _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0634 _ 0F B6. 00
        test    al, al                                  ; 0637 _ 84. C0
        je      ?_008                                   ; 0639 _ 0F 84, 00000130
        cmp     dword [ebp-0CH], 143                    ; 063F _ 81. 7D, F4, 0000008F
        jg      ?_008                                   ; 0646 _ 0F 8F, 00000123
        mov     edx, dword [_shtMsgBox]                 ; 064C _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0652 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0657 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 065F _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0667 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 066A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 066E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0672 _ 89. 04 24
        call    _set_cursor                             ; 0675 _ E8, 00002B0C
        movzx   eax, byte [ebp-4DH]                     ; 067A _ 0F B6. 45, B3
        mov     byte [ebp-56H], al                      ; 067E _ 88. 45, AA
        mov     byte [ebp-55H], 0                       ; 0681 _ C6. 45, AB, 00
        mov     ecx, dword [_shtMsgBox]                 ; 0685 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 068B _ 8B. 15, 00000264(d)
        lea     eax, [ebp-56H]                          ; 0691 _ 8D. 45, AA
        mov     dword [esp+14H], eax                    ; 0694 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0698 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06A0 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06A8 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06AB _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 06AF _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 06B3 _ 89. 14 24
        call    _showString                             ; 06B6 _ E8, 0000087B
        add     dword [ebp-0CH], 8                      ; 06BB _ 83. 45, F4, 08
        mov     dword [ebp-4CH], 1                      ; 06BF _ C7. 45, B4, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 06C6 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06CC _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 06D1 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 06D4 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 06D8 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06E0 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06E3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06EB _ 89. 04 24
        call    _set_cursor                             ; 06EE _ E8, 00002A93
        jmp     ?_008                                   ; 06F3 _ EB, 7A

?_006:  mov     eax, dword [ebp-40H]                    ; 06F5 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 06F8 _ 89. 04 24
        call    _isSpecialKey                           ; 06FB _ E8, 00002A3A
        test    eax, eax                                ; 0700 _ 85. C0
        jnz     ?_008                                   ; 0702 _ 75, 6B
        mov     eax, dword [ebp-40H]                    ; 0704 _ 8B. 45, C0
        movzx   eax, al                                 ; 0707 _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 070A _ 8B. 15, 00000274(d)
        add     edx, 16                                 ; 0710 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0713 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0717 _ 89. 14 24
        call    _fifo8_put                              ; 071A _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 071F _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 0726 _ E8, 00000000(rel)
        test    eax, eax                                ; 072B _ 85. C0
        jnz     ?_008                                   ; 072D _ 75, 40
        mov     eax, dword [_task_a.2314]               ; 072F _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 0734 _ 89. 04 24
        call    _task_sleep                             ; 0737 _ E8, 00000000(rel)
        jmp     ?_008                                   ; 073C _ EB, 31

?_007:  mov     dword [esp], _mouseinfo                 ; 073E _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0745 _ E8, 00000000(rel)
        test    eax, eax                                ; 074A _ 85. C0
        jz      ?_008                                   ; 074C _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 074E _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0754 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 075A _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 075F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0763 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0767 _ 89. 04 24
        call    _show_mouse_info                        ; 076A _ E8, 000006EE
?_008:  mov     dword [esp], _timerinfo                 ; 076F _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0776 _ E8, 00000000(rel)
        test    eax, eax                                ; 077B _ 85. C0
        je      ?_001                                   ; 077D _ 0F 84, FFFFFC87
        call    _io_sti                                 ; 0783 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0788 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 078F _ E8, 00000000(rel)
        mov     dword [ebp-54H], eax                    ; 0794 _ 89. 45, AC
        cmp     dword [ebp-54H], 0                      ; 0797 _ 83. 7D, AC, 00
        jz      ?_009                                   ; 079B _ 74, 24
        mov     dword [esp+8H], 0                       ; 079D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 07A5 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07AD _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07B0 _ 89. 04 24
        call    _timer_init                             ; 07B3 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 07B8 _ C7. 45, F0, 00000000
        jmp     ?_010                                   ; 07BF _ EB, 22

?_009:  mov     dword [esp+8H], 1                       ; 07C1 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 07C9 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07D1 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07D4 _ 89. 04 24
        call    _timer_init                             ; 07D7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 07DC _ C7. 45, F0, 00000007
?_010:  mov     dword [esp+4H], 50                      ; 07E3 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 07EB _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07EE _ 89. 04 24
        call    _timer_settime                          ; 07F1 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 07F6 _ 83. 7D, EC, 00
        jnz     ?_011                                   ; 07FA _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 07FC _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0802 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0807 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 080A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 080E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0816 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0819 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 081D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0821 _ 89. 04 24
        call    _set_cursor                             ; 0824 _ E8, 0000295D
        jmp     ?_001                                   ; 0829 _ E9, FFFFFBDC

?_011:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 082E _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0834 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0839 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0841 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0849 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 084C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0850 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0854 _ 89. 04 24
        call    _set_cursor                             ; 0857 _ E8, 0000292A
        jmp     ?_001                                   ; 085C _ E9, FFFFFBA9

_task_b_main:; Function begin
        push    ebp                                     ; 0861 _ 55
        mov     ebp, esp                                ; 0862 _ 89. E5
        sub     esp, 104                                ; 0864 _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 0867 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 086D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_300                  ; 0872 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 087A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 0882 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 088A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0892 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0896 _ 89. 04 24
        call    _showString                             ; 0899 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 089E _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 08A5 _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 08AC _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 08B4 _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 08B7 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 08BB _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 08C3 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 08C6 _ 89. 04 24
        call    _fifo8_init                             ; 08C9 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 08CE _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 08D3 _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 08D6 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 08DE _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 08E1 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 08E5 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 08E8 _ 89. 04 24
        call    _timer_init                             ; 08EB _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 08F0 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 08F8 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 08FB _ 89. 04 24
        call    _timer_settime                          ; 08FE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0903 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 090A _ C7. 45, F0, 00000000
?_012:  add     dword [ebp-0CH], 1                      ; 0911 _ 83. 45, F4, 01
        call    _io_cli                                 ; 0915 _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 091A _ 8D. 45, C8
        mov     dword [esp], eax                        ; 091D _ 89. 04 24
        call    _fifo8_status                           ; 0920 _ E8, 00000000(rel)
        test    eax, eax                                ; 0925 _ 85. C0
        jnz     ?_013                                   ; 0927 _ 75, 07
        call    _io_sti                                 ; 0929 _ E8, 00000000(rel)
        jmp     ?_012                                   ; 092E _ EB, E1
; _task_b_main End of function

?_013:  ; Local function
        lea     eax, [ebp-38H]                          ; 0930 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0933 _ 89. 04 24
        call    _fifo8_get                              ; 0936 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 093B _ 89. 45, E8
        call    _io_sti                                 ; 093E _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0943 _ 83. 7D, E8, 7B
        jnz     ?_012                                   ; 0947 _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0949 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 094F _ A1, 00000264(d)
        mov     dword [esp+14H], ?_301                  ; 0954 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 095C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0964 _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 096C _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 096F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0973 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0977 _ 89. 04 24
        call    _showString                             ; 097A _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 097F _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0987 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 098A _ 89. 04 24
        call    _timer_settime                          ; 098D _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0992 _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0996 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0999 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 099B _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 09A3 _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 09AB _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 09B3 _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 09BB _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 09C3 _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 09CB _ 89. 04 24
        call    _boxfill8                               ; 09CE _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 09D3 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 09D8 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 09E0 _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 09E8 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 09F0 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 09F8 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 09FB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09FF _ 89. 04 24
        call    _sheet_refresh                          ; 0A02 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0A07 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0A0A _ 89. 04 24
        call    _intToHexStr                            ; 0A0D _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0A12 _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0A15 _ A1, 00000264(d)
        mov     edx, dword [ebp-1CH]                    ; 0A1A _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0A1D _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0A21 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0A29 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0A31 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0A39 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0A3C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A40 _ 89. 04 24
        call    _showString                             ; 0A43 _ E8, 000004EE
        jmp     ?_012                                   ; 0A48 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0A4D _ 55
        mov     ebp, esp                                ; 0A4E _ 89. E5
        push    ebx                                     ; 0A50 _ 53
        sub     esp, 36                                 ; 0A51 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0A54 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0A57 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0A5A _ 8B. 45, 0C
        sub     eax, 1                                  ; 0A5D _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0A60 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0A64 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0A68 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0A70 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0A78 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0A80 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A83 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A87 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A8A _ 89. 04 24
        call    _boxfill8                               ; 0A8D _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0A92 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0A95 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0A98 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A9B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A9E _ 8B. 45, 10
        sub     eax, 28                                 ; 0AA1 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0AA4 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0AA8 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AAC _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0AB0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0AB8 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0AC0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ACA _ 89. 04 24
        call    _boxfill8                               ; 0ACD _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0AD2 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0AD5 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0AD8 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0ADB _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0ADE _ 8B. 45, 10
        sub     eax, 27                                 ; 0AE1 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0AE4 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0AE8 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AEC _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0AF0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0AF8 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B00 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B03 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B07 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B0A _ 89. 04 24
        call    _boxfill8                               ; 0B0D _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0B12 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0B15 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0B18 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B1B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B1E _ 8B. 45, 10
        sub     eax, 26                                 ; 0B21 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0B24 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B28 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B2C _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B30 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0B38 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0B40 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B4A _ 89. 04 24
        call    _boxfill8                               ; 0B4D _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0B52 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0B55 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0B58 _ 8B. 45, 10
        sub     eax, 24                                 ; 0B5B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0B5E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0B62 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0B6A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0B6E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0B76 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B7E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B81 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B85 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B88 _ 89. 04 24
        call    _boxfill8                               ; 0B8B _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0B90 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B93 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B96 _ 8B. 45, 10
        sub     eax, 24                                 ; 0B99 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0B9C _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0BA0 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0BA8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0BAC _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0BB4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0BBC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BBF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BC3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BC6 _ 89. 04 24
        call    _boxfill8                               ; 0BC9 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0BCE _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0BD1 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0BD4 _ 8B. 45, 10
        sub     eax, 4                                  ; 0BD7 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0BDA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0BDE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0BE6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0BEA _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0BF2 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0BFA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BFD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C01 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C04 _ 89. 04 24
        call    _boxfill8                               ; 0C07 _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0C0C _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0C0F _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0C12 _ 8B. 45, 10
        sub     eax, 23                                 ; 0C15 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0C18 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C1C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C24 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0C28 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0C30 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C38 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C42 _ 89. 04 24
        call    _boxfill8                               ; 0C45 _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0C4A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C4D _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C50 _ 8B. 45, 10
        sub     eax, 3                                  ; 0C53 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0C56 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C5A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C62 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0C66 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0C6E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C76 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C79 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C7D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C80 _ 89. 04 24
        call    _boxfill8                               ; 0C83 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0C88 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C8B _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C8E _ 8B. 45, 10
        sub     eax, 24                                 ; 0C91 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0C94 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0C98 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0CA0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0CA4 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0CAC _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0CB4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CB7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CBB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CBE _ 89. 04 24
        call    _boxfill8                               ; 0CC1 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0CC6 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0CC9 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0CCC _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CCF _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CD2 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0CD5 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0CD8 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0CDB _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0CDE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0CE2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0CE6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0CEA _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0CEE _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0CF6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CF9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CFD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D00 _ 89. 04 24
        call    _boxfill8                               ; 0D03 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0D08 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0D0B _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0D0E _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D11 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D14 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0D17 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0D1A _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D1D _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D20 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D24 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D28 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D2C _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0D30 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D38 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D42 _ 89. 04 24
        call    _boxfill8                               ; 0D45 _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0D4A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D4D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D50 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D53 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D56 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D59 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0D5C _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D5F _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D62 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D66 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D6A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D6E _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D72 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D7A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D7D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D81 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D84 _ 89. 04 24
        call    _boxfill8                               ; 0D87 _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0D8C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D8F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D92 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D95 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0D98 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D9B _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0D9E _ 8B. 45, 0C
        sub     eax, 3                                  ; 0DA1 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0DA4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0DA8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0DAC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0DB0 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0DB4 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DBC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DBF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DC3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DC6 _ 89. 04 24
        call    _boxfill8                               ; 0DC9 _ E8, 000002D5
        nop                                             ; 0DCE _ 90
        add     esp, 36                                 ; 0DCF _ 83. C4, 24
        pop     ebx                                     ; 0DD2 _ 5B
        pop     ebp                                     ; 0DD3 _ 5D
        ret                                             ; 0DD4 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0DD5 _ 55
        mov     ebp, esp                                ; 0DD6 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0DD8 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0DDB _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0DDE _ A1, 00000134(d)
        add     eax, edx                                ; 0DE3 _ 01. D0
        mov     dword [_mx], eax                        ; 0DE5 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 0DEA _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0DED _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0DF0 _ A1, 00000138(d)
        add     eax, edx                                ; 0DF5 _ 01. D0
        mov     dword [_my], eax                        ; 0DF7 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 0DFC _ A1, 00000134(d)
        test    eax, eax                                ; 0E01 _ 85. C0
        jns     ?_014                                   ; 0E03 _ 79, 0A
        mov     dword [_mx], 0                          ; 0E05 _ C7. 05, 00000134(d), 00000000
?_014:  mov     eax, dword [_my]                        ; 0E0F _ A1, 00000138(d)
        test    eax, eax                                ; 0E14 _ 85. C0
        jns     ?_015                                   ; 0E16 _ 79, 0A
        mov     dword [_my], 0                          ; 0E18 _ C7. 05, 00000138(d), 00000000
?_015:  mov     edx, dword [_xsize]                     ; 0E22 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0E28 _ A1, 00000134(d)
        cmp     edx, eax                                ; 0E2D _ 39. C2
        jg      ?_016                                   ; 0E2F _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0E31 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 0E36 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0E39 _ A3, 00000134(d)
?_016:  mov     edx, dword [_ysize]                     ; 0E3E _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 0E44 _ A1, 00000138(d)
        cmp     edx, eax                                ; 0E49 _ 39. C2
        jg      ?_017                                   ; 0E4B _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0E4D _ A1, 00000140(d)
        sub     eax, 1                                  ; 0E52 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0E55 _ A3, 00000138(d)
?_017:  nop                                             ; 0E5A _ 90
        pop     ebp                                     ; 0E5B _ 5D
        ret                                             ; 0E5C _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0E5D _ 55
        mov     ebp, esp                                ; 0E5E _ 89. E5
        sub     esp, 40                                 ; 0E60 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0E63 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 0E68 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0E6B _ C6. 45, F3, 00
        call    _io_sti                                 ; 0E6F _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0E74 _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 0E7B _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0E80 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0E83 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0E87 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0E8B _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 0E92 _ E8, 00000780
        test    eax, eax                                ; 0E97 _ 85. C0
        jz      ?_018                                   ; 0E99 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0E9B _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 0EA3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EA6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EAA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EAD _ 89. 04 24
        call    _computeMousePosition                   ; 0EB0 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0EB5 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 0EBB _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 0EC0 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0EC4 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0EC8 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0ECB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0ECF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ED2 _ 89. 04 24
        call    _sheet_slide                            ; 0ED5 _ E8, 00000000(rel)
        mov     eax, dword [?_318]                      ; 0EDA _ A1, 0000010C(d)
        and     eax, 01H                                ; 0EDF _ 83. E0, 01
        test    eax, eax                                ; 0EE2 _ 85. C0
        jz      ?_018                                   ; 0EE4 _ 74, 2C
        mov     eax, dword [_my]                        ; 0EE6 _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 0EEB _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0EEE _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 0EF3 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0EF6 _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 0EFB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0EFF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0F03 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F07 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F0A _ 89. 04 24
        call    _sheet_slide                            ; 0F0D _ E8, 00000000(rel)
?_018:  nop                                             ; 0F12 _ 90
        leave                                           ; 0F13 _ C9
        ret                                             ; 0F14 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0F15 _ 55
        mov     ebp, esp                                ; 0F16 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0F1B _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0F21 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0F24 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0F2A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0F2D _ 66: C7. 40, 06, 01E0
        nop                                             ; 0F33 _ 90
        pop     ebp                                     ; 0F34 _ 5D
        ret                                             ; 0F35 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0F36 _ 55
        mov     ebp, esp                                ; 0F37 _ 89. E5
        push    ebx                                     ; 0F39 _ 53
        sub     esp, 68                                 ; 0F3A _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0F3D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0F40 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0F43 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0F46 _ 89. 45, F4
        jmp     ?_020                                   ; 0F49 _ EB, 4B

?_019:  mov     eax, dword [ebp+1CH]                    ; 0F4B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F4E _ 0F B6. 00
        movzx   eax, al                                 ; 0F51 _ 0F B6. C0
        shl     eax, 4                                  ; 0F54 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0F57 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0F5D _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0F61 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0F64 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0F67 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0F6A _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0F6C _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0F70 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F74 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F77 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0F7B _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0F7E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0F82 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0F86 _ 89. 14 24
        call    _showFont8                              ; 0F89 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0F8E _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0F92 _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 0F96 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F99 _ 0F B6. 00
        test    al, al                                  ; 0F9C _ 84. C0
        jnz     ?_019                                   ; 0F9E _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0FA0 _ 8B. 45, 14
        add     eax, 16                                 ; 0FA3 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0FA6 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0FAA _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0FAD _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0FB1 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0FB4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0FB8 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0FBB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0FBF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FC2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FC6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FC9 _ 89. 04 24
        call    _sheet_refresh                          ; 0FCC _ E8, 00000000(rel)
        nop                                             ; 0FD1 _ 90
        add     esp, 68                                 ; 0FD2 _ 83. C4, 44
        pop     ebx                                     ; 0FD5 _ 5B
        pop     ebp                                     ; 0FD6 _ 5D
        ret                                             ; 0FD7 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0FD8 _ 55
        mov     ebp, esp                                ; 0FD9 _ 89. E5
        sub     esp, 24                                 ; 0FDB _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2380         ; 0FDE _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 0FE6 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0FEE _ C7. 04 24, 00000000
        call    _set_palette                            ; 0FF5 _ E8, 00000003
        nop                                             ; 0FFA _ 90
        leave                                           ; 0FFB _ C9
        ret                                             ; 0FFC _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0FFD _ 55
        mov     ebp, esp                                ; 0FFE _ 89. E5
        sub     esp, 40                                 ; 1000 _ 83. EC, 28
        call    _io_load_eflags                         ; 1003 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1008 _ 89. 45, F0
        call    _io_cli                                 ; 100B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1010 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 1013 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 1017 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 101E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1023 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 1026 _ 89. 45, F4
        jmp     ?_022                                   ; 1029 _ EB, 62

?_021:  mov     eax, dword [ebp+10H]                    ; 102B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 102E _ 0F B6. 00
        shr     al, 2                                   ; 1031 _ C0. E8, 02
        movzx   eax, al                                 ; 1034 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1037 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 103B _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1042 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1047 _ 8B. 45, 10
        add     eax, 1                                  ; 104A _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 104D _ 0F B6. 00
        shr     al, 2                                   ; 1050 _ C0. E8, 02
        movzx   eax, al                                 ; 1053 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1056 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 105A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1061 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1066 _ 8B. 45, 10
        add     eax, 2                                  ; 1069 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 106C _ 0F B6. 00
        shr     al, 2                                   ; 106F _ C0. E8, 02
        movzx   eax, al                                 ; 1072 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1075 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1079 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1080 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 1085 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 1089 _ 83. 45, F4, 01
?_022:  mov     eax, dword [ebp-0CH]                    ; 108D _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1090 _ 3B. 45, 0C
        jle     ?_021                                   ; 1093 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 1095 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1098 _ 89. 04 24
        call    _io_store_eflags                        ; 109B _ E8, 00000000(rel)
        nop                                             ; 10A0 _ 90
        leave                                           ; 10A1 _ C9
        ret                                             ; 10A2 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 10A3 _ 55
        mov     ebp, esp                                ; 10A4 _ 89. E5
        sub     esp, 20                                 ; 10A6 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 10A9 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 10AC _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 10AF _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 10B2 _ 89. 45, F8
        jmp     ?_026                                   ; 10B5 _ EB, 31

?_023:  mov     eax, dword [ebp+14H]                    ; 10B7 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 10BA _ 89. 45, FC
        jmp     ?_025                                   ; 10BD _ EB, 1D

?_024:  mov     eax, dword [ebp-8H]                     ; 10BF _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 10C2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 10C6 _ 8B. 55, FC
        add     eax, edx                                ; 10C9 _ 01. D0
        mov     edx, eax                                ; 10CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10CD _ 8B. 45, 08
        add     edx, eax                                ; 10D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10D6 _ 88. 02
        add     dword [ebp-4H], 1                       ; 10D8 _ 83. 45, FC, 01
?_025:  mov     eax, dword [ebp-4H]                     ; 10DC _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 10DF _ 3B. 45, 1C
        jle     ?_024                                   ; 10E2 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 10E4 _ 83. 45, F8, 01
?_026:  mov     eax, dword [ebp-8H]                     ; 10E8 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 10EB _ 3B. 45, 20
        jle     ?_023                                   ; 10EE _ 7E, C7
        nop                                             ; 10F0 _ 90
        leave                                           ; 10F1 _ C9
        ret                                             ; 10F2 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 10F3 _ 55
        mov     ebp, esp                                ; 10F4 _ 89. E5
        sub     esp, 20                                 ; 10F6 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 10F9 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 10FC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 10FF _ C7. 45, FC, 00000000
        jmp     ?_036                                   ; 1106 _ E9, 0000015C

?_027:  mov     edx, dword [ebp-4H]                     ; 110B _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 110E _ 8B. 45, 1C
        add     eax, edx                                ; 1111 _ 01. D0
        movzx   eax, byte [eax]                         ; 1113 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1116 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1119 _ 80. 7D, FB, 00
        jns     ?_028                                   ; 111D _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 111F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1122 _ 8B. 45, FC
        add     eax, edx                                ; 1125 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1127 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 112B _ 8B. 55, 10
        add     eax, edx                                ; 112E _ 01. D0
        mov     edx, eax                                ; 1130 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1132 _ 8B. 45, 08
        add     edx, eax                                ; 1135 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1137 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 113B _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 113D _ 0F BE. 45, FB
        and     eax, 40H                                ; 1141 _ 83. E0, 40
        test    eax, eax                                ; 1144 _ 85. C0
        jz      ?_029                                   ; 1146 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1148 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 114B _ 8B. 45, FC
        add     eax, edx                                ; 114E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1150 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1154 _ 8B. 55, 10
        add     eax, edx                                ; 1157 _ 01. D0
        lea     edx, [eax+1H]                           ; 1159 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 115C _ 8B. 45, 08
        add     edx, eax                                ; 115F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1161 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1165 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1167 _ 0F BE. 45, FB
        and     eax, 20H                                ; 116B _ 83. E0, 20
        test    eax, eax                                ; 116E _ 85. C0
        jz      ?_030                                   ; 1170 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1172 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1175 _ 8B. 45, FC
        add     eax, edx                                ; 1178 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 117A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 117E _ 8B. 55, 10
        add     eax, edx                                ; 1181 _ 01. D0
        lea     edx, [eax+2H]                           ; 1183 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1186 _ 8B. 45, 08
        add     edx, eax                                ; 1189 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 118B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 118F _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1191 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1195 _ 83. E0, 10
        test    eax, eax                                ; 1198 _ 85. C0
        jz      ?_031                                   ; 119A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 119C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 119F _ 8B. 45, FC
        add     eax, edx                                ; 11A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11A4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11A8 _ 8B. 55, 10
        add     eax, edx                                ; 11AB _ 01. D0
        lea     edx, [eax+3H]                           ; 11AD _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        add     edx, eax                                ; 11B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B9 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 11BB _ 0F BE. 45, FB
        and     eax, 08H                                ; 11BF _ 83. E0, 08
        test    eax, eax                                ; 11C2 _ 85. C0
        jz      ?_032                                   ; 11C4 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11C9 _ 8B. 45, FC
        add     eax, edx                                ; 11CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11CE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11D2 _ 8B. 55, 10
        add     eax, edx                                ; 11D5 _ 01. D0
        lea     edx, [eax+4H]                           ; 11D7 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11DA _ 8B. 45, 08
        add     edx, eax                                ; 11DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11E3 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 11E5 _ 0F BE. 45, FB
        and     eax, 04H                                ; 11E9 _ 83. E0, 04
        test    eax, eax                                ; 11EC _ 85. C0
        jz      ?_033                                   ; 11EE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11F0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11F3 _ 8B. 45, FC
        add     eax, edx                                ; 11F6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11F8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11FC _ 8B. 55, 10
        add     eax, edx                                ; 11FF _ 01. D0
        lea     edx, [eax+5H]                           ; 1201 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1204 _ 8B. 45, 08
        add     edx, eax                                ; 1207 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1209 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 120D _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 120F _ 0F BE. 45, FB
        and     eax, 02H                                ; 1213 _ 83. E0, 02
        test    eax, eax                                ; 1216 _ 85. C0
        jz      ?_034                                   ; 1218 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 121A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 121D _ 8B. 45, FC
        add     eax, edx                                ; 1220 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1222 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1226 _ 8B. 55, 10
        add     eax, edx                                ; 1229 _ 01. D0
        lea     edx, [eax+6H]                           ; 122B _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 122E _ 8B. 45, 08
        add     edx, eax                                ; 1231 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1233 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1237 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1239 _ 0F BE. 45, FB
        and     eax, 01H                                ; 123D _ 83. E0, 01
        test    eax, eax                                ; 1240 _ 85. C0
        jz      ?_035                                   ; 1242 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1244 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1247 _ 8B. 45, FC
        add     eax, edx                                ; 124A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 124C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1250 _ 8B. 55, 10
        add     eax, edx                                ; 1253 _ 01. D0
        lea     edx, [eax+7H]                           ; 1255 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1258 _ 8B. 45, 08
        add     edx, eax                                ; 125B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 125D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1261 _ 88. 02
?_035:  add     dword [ebp-4H], 1                       ; 1263 _ 83. 45, FC, 01
?_036:  cmp     dword [ebp-4H], 15                      ; 1267 _ 83. 7D, FC, 0F
        jle     ?_027                                   ; 126B _ 0F 8E, FFFFFE9A
        nop                                             ; 1271 _ 90
        leave                                           ; 1272 _ C9
        ret                                             ; 1273 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 1274 _ 55
        mov     ebp, esp                                ; 1275 _ 89. E5
        sub     esp, 20                                 ; 1277 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 127A _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 127D _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 1280 _ C7. 45, F8, 00000000
        jmp     ?_043                                   ; 1287 _ E9, 000000B1

?_037:  mov     dword [ebp-4H], 0                       ; 128C _ C7. 45, FC, 00000000
        jmp     ?_042                                   ; 1293 _ E9, 00000097

?_038:  mov     eax, dword [ebp-8H]                     ; 1298 _ 8B. 45, F8
        shl     eax, 4                                  ; 129B _ C1. E0, 04
        mov     edx, eax                                ; 129E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12A0 _ 8B. 45, FC
        add     eax, edx                                ; 12A3 _ 01. D0
        add     eax, _cursor.2427                       ; 12A5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 12AA _ 0F B6. 00
        cmp     al, 42                                  ; 12AD _ 3C, 2A
        jnz     ?_039                                   ; 12AF _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 12B1 _ 8B. 45, F8
        shl     eax, 4                                  ; 12B4 _ C1. E0, 04
        mov     edx, eax                                ; 12B7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12B9 _ 8B. 45, FC
        add     eax, edx                                ; 12BC _ 01. D0
        mov     edx, eax                                ; 12BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12C0 _ 8B. 45, 08
        add     eax, edx                                ; 12C3 _ 01. D0
        mov     byte [eax], 0                           ; 12C5 _ C6. 00, 00
?_039:  mov     eax, dword [ebp-8H]                     ; 12C8 _ 8B. 45, F8
        shl     eax, 4                                  ; 12CB _ C1. E0, 04
        mov     edx, eax                                ; 12CE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12D0 _ 8B. 45, FC
        add     eax, edx                                ; 12D3 _ 01. D0
        add     eax, _cursor.2427                       ; 12D5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 12DA _ 0F B6. 00
        cmp     al, 79                                  ; 12DD _ 3C, 4F
        jnz     ?_040                                   ; 12DF _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 12E1 _ 8B. 45, F8
        shl     eax, 4                                  ; 12E4 _ C1. E0, 04
        mov     edx, eax                                ; 12E7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12E9 _ 8B. 45, FC
        add     eax, edx                                ; 12EC _ 01. D0
        mov     edx, eax                                ; 12EE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12F0 _ 8B. 45, 08
        add     eax, edx                                ; 12F3 _ 01. D0
        mov     byte [eax], 7                           ; 12F5 _ C6. 00, 07
?_040:  mov     eax, dword [ebp-8H]                     ; 12F8 _ 8B. 45, F8
        shl     eax, 4                                  ; 12FB _ C1. E0, 04
        mov     edx, eax                                ; 12FE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1300 _ 8B. 45, FC
        add     eax, edx                                ; 1303 _ 01. D0
        add     eax, _cursor.2427                       ; 1305 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 130A _ 0F B6. 00
        cmp     al, 46                                  ; 130D _ 3C, 2E
        jnz     ?_041                                   ; 130F _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1311 _ 8B. 45, F8
        shl     eax, 4                                  ; 1314 _ C1. E0, 04
        mov     edx, eax                                ; 1317 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1319 _ 8B. 45, FC
        add     eax, edx                                ; 131C _ 01. D0
        mov     edx, eax                                ; 131E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1320 _ 8B. 45, 08
        add     edx, eax                                ; 1323 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1325 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1329 _ 88. 02
?_041:  add     dword [ebp-4H], 1                       ; 132B _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 15                      ; 132F _ 83. 7D, FC, 0F
        jle     ?_038                                   ; 1333 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1339 _ 83. 45, F8, 01
?_043:  cmp     dword [ebp-8H], 15                      ; 133D _ 83. 7D, F8, 0F
        jle     ?_037                                   ; 1341 _ 0F 8E, FFFFFF45
        nop                                             ; 1347 _ 90
        leave                                           ; 1348 _ C9
        ret                                             ; 1349 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 134A _ 55
        mov     ebp, esp                                ; 134B _ 89. E5
        push    ebx                                     ; 134D _ 53
        sub     esp, 16                                 ; 134E _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1351 _ C7. 45, F4, 00000000
        jmp     ?_047                                   ; 1358 _ EB, 4E

?_044:  mov     dword [ebp-8H], 0                       ; 135A _ C7. 45, F8, 00000000
        jmp     ?_046                                   ; 1361 _ EB, 39

?_045:  mov     eax, dword [ebp-0CH]                    ; 1363 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 1366 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 136A _ 8B. 55, F8
        add     eax, edx                                ; 136D _ 01. D0
        mov     edx, eax                                ; 136F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1371 _ 8B. 45, 20
        add     eax, edx                                ; 1374 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1376 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1379 _ 8B. 55, F4
        add     edx, ecx                                ; 137C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 137E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1382 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 1385 _ 8B. 4D, F8
        add     ecx, ebx                                ; 1388 _ 01. D9
        add     edx, ecx                                ; 138A _ 01. CA
        mov     ecx, edx                                ; 138C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 138E _ 8B. 55, 08
        add     edx, ecx                                ; 1391 _ 01. CA
        movzx   eax, byte [eax]                         ; 1393 _ 0F B6. 00
        mov     byte [edx], al                          ; 1396 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1398 _ 83. 45, F8, 01
?_046:  mov     eax, dword [ebp-8H]                     ; 139C _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 139F _ 3B. 45, 10
        jl      ?_045                                   ; 13A2 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 13A4 _ 83. 45, F4, 01
?_047:  mov     eax, dword [ebp-0CH]                    ; 13A8 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 13AB _ 3B. 45, 14
        jl      ?_044                                   ; 13AE _ 7C, AA
        nop                                             ; 13B0 _ 90
        add     esp, 16                                 ; 13B1 _ 83. C4, 10
        pop     ebx                                     ; 13B4 _ 5B
        pop     ebp                                     ; 13B5 _ 5D
        ret                                             ; 13B6 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 13B7 _ 55
        mov     ebp, esp                                ; 13B8 _ 89. E5
        sub     esp, 40                                 ; 13BA _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 13BD _ A1, 00000008(d)
        mov     dword [ebp-0CH], eax                    ; 13C2 _ 89. 45, F4
        movzx   eax, word [?_315]                       ; 13C5 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 13CC _ 98
        mov     dword [ebp-10H], eax                    ; 13CD _ 89. 45, F0
        movzx   eax, word [?_316]                       ; 13D0 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 13D7 _ 98
        mov     dword [ebp-14H], eax                    ; 13D8 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 13DB _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 13E3 _ C7. 04 24, 00000020
        call    _io_out8                                ; 13EA _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 13EF _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 13F3 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 13FA _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 13FF _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1402 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1406 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 140A _ C7. 04 24, 00000010(d)
        call    _fifo8_put                              ; 1411 _ E8, 00000000(rel)
        nop                                             ; 1416 _ 90
        leave                                           ; 1417 _ C9
        ret                                             ; 1418 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1419 _ 55
        mov     ebp, esp                                ; 141A _ 89. E5
        sub     esp, 4                                  ; 141C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 141F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1422 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1425 _ 80. 7D, FC, 09
        jle     ?_048                                   ; 1429 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 142B _ 0F B6. 45, FC
        add     eax, 55                                 ; 142F _ 83. C0, 37
        jmp     ?_049                                   ; 1432 _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 1434 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1438 _ 83. C0, 30
?_049:  leave                                           ; 143B _ C9
        ret                                             ; 143C _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 143D _ 55
        mov     ebp, esp                                ; 143E _ 89. E5
        sub     esp, 24                                 ; 1440 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 1443 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 1446 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1449 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1450 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 1454 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 1457 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 145A _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 145E _ 89. 04 24
        call    _charToHexVal                           ; 1461 _ E8, FFFFFFB3
        mov     byte [?_296], al                        ; 1466 _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 146B _ 0F B6. 45, EC
        shr     al, 4                                   ; 146F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1472 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 1475 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1479 _ 0F BE. C0
        mov     dword [esp], eax                        ; 147C _ 89. 04 24
        call    _charToHexVal                           ; 147F _ E8, FFFFFF95
        mov     byte [?_295], al                        ; 1484 _ A2, 00000102(d)
        mov     eax, _keyval                            ; 1489 _ B8, 00000100(d)
        leave                                           ; 148E _ C9
        ret                                             ; 148F _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 16                                 ; 1493 _ 83. EC, 10
        mov     byte [_str.2475], 48                    ; 1496 _ C6. 05, 00000368(d), 30
        mov     byte [?_319], 88                        ; 149D _ C6. 05, 00000369(d), 58
        mov     byte [?_320], 0                         ; 14A4 _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 14AB _ C7. 45, FC, 00000002
        jmp     ?_051                                   ; 14B2 _ EB, 0F

?_050:  mov     eax, dword [ebp-4H]                     ; 14B4 _ 8B. 45, FC
        add     eax, _str.2475                          ; 14B7 _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 14BC _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 14BF _ 83. 45, FC, 01
?_051:  cmp     dword [ebp-4H], 9                       ; 14C3 _ 83. 7D, FC, 09
        jle     ?_050                                   ; 14C7 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 14C9 _ C7. 45, F8, 00000009
        jmp     ?_055                                   ; 14D0 _ EB, 42

?_052:  mov     eax, dword [ebp+8H]                     ; 14D2 _ 8B. 45, 08
        and     eax, 0FH                                ; 14D5 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 14D8 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 14DB _ 8B. 45, 08
        shr     eax, 4                                  ; 14DE _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 14E1 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 14E4 _ 83. 7D, F4, 09
        jle     ?_053                                   ; 14E8 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 14EA _ 8B. 45, F4
        add     eax, 55                                 ; 14ED _ 83. C0, 37
        mov     edx, eax                                ; 14F0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14F2 _ 8B. 45, F8
        add     eax, _str.2475                          ; 14F5 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 14FA _ 88. 10
        jmp     ?_054                                   ; 14FC _ EB, 12

?_053:  mov     eax, dword [ebp-0CH]                    ; 14FE _ 8B. 45, F4
        add     eax, 48                                 ; 1501 _ 83. C0, 30
        mov     edx, eax                                ; 1504 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1506 _ 8B. 45, F8
        add     eax, _str.2475                          ; 1509 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 150E _ 88. 10
?_054:  sub     dword [ebp-8H], 1                       ; 1510 _ 83. 6D, F8, 01
?_055:  cmp     dword [ebp-8H], 1                       ; 1514 _ 83. 7D, F8, 01
        jle     ?_056                                   ; 1518 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 151A _ 83. 7D, 08, 00
        jnz     ?_052                                   ; 151E _ 75, B2
?_056:  mov     eax, _str.2475                          ; 1520 _ B8, 00000368(d)
        leave                                           ; 1525 _ C9
        ret                                             ; 1526 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1527 _ 55
        mov     ebp, esp                                ; 1528 _ 89. E5
        sub     esp, 24                                 ; 152A _ 83. EC, 18
?_057:  mov     dword [esp], 100                        ; 152D _ C7. 04 24, 00000064
        call    _io_in8                                 ; 1534 _ E8, 00000000(rel)
        and     eax, 02H                                ; 1539 _ 83. E0, 02
        test    eax, eax                                ; 153C _ 85. C0
        jz      ?_058                                   ; 153E _ 74, 02
        jmp     ?_057                                   ; 1540 _ EB, EB
; _wait_KBC_sendready End of function

?_058:  ; Local function
        nop                                             ; 1542 _ 90
        nop                                             ; 1543 _ 90
        leave                                           ; 1544 _ C9
        ret                                             ; 1545 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 1546 _ 55
        mov     ebp, esp                                ; 1547 _ 89. E5
        sub     esp, 24                                 ; 1549 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 154C _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1551 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1559 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1560 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1565 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 156A _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 1572 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1579 _ E8, 00000000(rel)
        nop                                             ; 157E _ 90
        leave                                           ; 157F _ C9
        ret                                             ; 1580 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1581 _ 55
        mov     ebp, esp                                ; 1582 _ 89. E5
        sub     esp, 24                                 ; 1584 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1587 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 158C _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 1594 _ C7. 04 24, 00000064
        call    _io_out8                                ; 159B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 15A0 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 15A5 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 15AD _ C7. 04 24, 00000060
        call    _io_out8                                ; 15B4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 15B9 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 15BC _ C6. 40, 03, 00
        nop                                             ; 15C0 _ 90
        leave                                           ; 15C1 _ C9
        ret                                             ; 15C2 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 15C3 _ 55
        mov     ebp, esp                                ; 15C4 _ 89. E5
        sub     esp, 40                                 ; 15C6 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 15C9 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 15D1 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 15D8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 15DD _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 15E5 _ C7. 04 24, 00000020
        call    _io_out8                                ; 15EC _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 15F1 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 15F8 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 15FD _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1600 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1604 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1608 _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 160F _ E8, 00000000(rel)
        nop                                             ; 1614 _ 90
        leave                                           ; 1615 _ C9
        ret                                             ; 1616 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1617 _ 55
        mov     ebp, esp                                ; 1618 _ 89. E5
        sub     esp, 4                                  ; 161A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 161D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1620 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1623 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1626 _ 0F B6. 40, 03
        test    al, al                                  ; 162A _ 84. C0
        jnz     ?_060                                   ; 162C _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 162E _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 1632 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1634 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1637 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 163B _ B8, 00000000
        jmp     ?_067                                   ; 1640 _ E9, 0000010F

?_060:  mov     eax, dword [ebp+8H]                     ; 1645 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1648 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 164C _ 3C, 01
        jnz     ?_062                                   ; 164E _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1650 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1654 _ 25, 000000C8
        cmp     eax, 8                                  ; 1659 _ 83. F8, 08
        jnz     ?_061                                   ; 165C _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 165E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1661 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1665 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1667 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 166A _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 166E _ B8, 00000000
        jmp     ?_067                                   ; 1673 _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1678 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 167B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 167F _ 3C, 02
        jnz     ?_063                                   ; 1681 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1683 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1686 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 168A _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 168D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1690 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1694 _ B8, 00000000
        jmp     ?_067                                   ; 1699 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 169E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16A1 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 16A5 _ 3C, 03
        jne     ?_066                                   ; 16A7 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 16AD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 16B0 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 16B4 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 16B7 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 16BA _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 16BE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 16C1 _ 0F B6. 00
        movzx   eax, al                                 ; 16C4 _ 0F B6. C0
        and     eax, 07H                                ; 16C7 _ 83. E0, 07
        mov     edx, eax                                ; 16CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16CC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 16CF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 16D2 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 16D5 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 16D9 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 16DC _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 16DF _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 16E2 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 16E5 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 16E9 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 16EC _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 16EF _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 16F2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 16F5 _ 0F B6. 00
        movzx   eax, al                                 ; 16F8 _ 0F B6. C0
        and     eax, 10H                                ; 16FB _ 83. E0, 10
        test    eax, eax                                ; 16FE _ 85. C0
        jz      ?_064                                   ; 1700 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1702 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1705 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1708 _ 0D, FFFFFF00
        mov     edx, eax                                ; 170D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 170F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1712 _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1715 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1718 _ 0F B6. 00
        movzx   eax, al                                 ; 171B _ 0F B6. C0
        and     eax, 20H                                ; 171E _ 83. E0, 20
        test    eax, eax                                ; 1721 _ 85. C0
        jz      ?_065                                   ; 1723 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1725 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1728 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 172B _ 0D, FFFFFF00
        mov     edx, eax                                ; 1730 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1732 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1735 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1738 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 173B _ 8B. 40, 08
        neg     eax                                     ; 173E _ F7. D8
        mov     edx, eax                                ; 1740 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1742 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1745 _ 89. 50, 08
        mov     eax, 1                                  ; 1748 _ B8, 00000001
        jmp     ?_067                                   ; 174D _ EB, 05

?_066:  mov     eax, 4294967295                         ; 174F _ B8, FFFFFFFF
?_067:  leave                                           ; 1754 _ C9
        ret                                             ; 1755 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1756 _ 55
        mov     ebp, esp                                ; 1757 _ 89. E5
        sub     esp, 72                                 ; 1759 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 175C _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 1763 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 176A _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1771 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1778 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 177E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1781 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 1783 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1787 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 178A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 178E _ 89. 04 24
        call    _init_screen8                           ; 1791 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 1796 _ 8B. 45, 20
        movsx   eax, al                                 ; 1799 _ 0F BE. C0
        mov     dword [esp+14H], ?_302                  ; 179C _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], eax                    ; 17A4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17A8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17AB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 17AF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 17B2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17B6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17C0 _ 89. 04 24
        call    _showString                             ; 17C3 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 17C8 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 17CB _ 89. 04 24
        call    _intToHexStr                            ; 17CE _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 17D3 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 17D6 _ 8B. 45, 20
        movsx   eax, al                                 ; 17D9 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 17DC _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 17DF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 17E3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17E7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17EA _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 17EE _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 17F1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17FF _ 89. 04 24
        call    _showString                             ; 1802 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1807 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 180B _ 8B. 45, 20
        movsx   eax, al                                 ; 180E _ 0F BE. C0
        mov     dword [esp+14H], ?_303                  ; 1811 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], eax                    ; 1819 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 181D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1820 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1824 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1827 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 182B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 182E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1832 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1835 _ 89. 04 24
        call    _showString                             ; 1838 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 183D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1840 _ 8B. 00
        mov     dword [esp], eax                        ; 1842 _ 89. 04 24
        call    _intToHexStr                            ; 1845 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 184A _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 184D _ 8B. 45, 20
        movsx   eax, al                                 ; 1850 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1853 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1856 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 185A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 185E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1861 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1865 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1868 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 186C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 186F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1873 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1876 _ 89. 04 24
        call    _showString                             ; 1879 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 187E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1882 _ 8B. 45, 20
        movsx   eax, al                                 ; 1885 _ 0F BE. C0
        mov     dword [esp+14H], ?_304                  ; 1888 _ C7. 44 24, 14, 0000003C(d)
        mov     dword [esp+10H], eax                    ; 1890 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1894 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1897 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 189B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 189E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18A2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18A5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18A9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18AC _ 89. 04 24
        call    _showString                             ; 18AF _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 18B4 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 18B7 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 18BA _ 89. 04 24
        call    _intToHexStr                            ; 18BD _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 18C2 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 18C5 _ 8B. 45, 20
        movsx   eax, al                                 ; 18C8 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 18CB _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 18CE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 18D2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18D6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18D9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 18DD _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 18E0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18E4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18EE _ 89. 04 24
        call    _showString                             ; 18F1 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 18F6 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 18FA _ 8B. 45, 20
        movsx   eax, al                                 ; 18FD _ 0F BE. C0
        mov     dword [esp+14H], ?_305                  ; 1900 _ C7. 44 24, 14, 00000048(d)
        mov     dword [esp+10H], eax                    ; 1908 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 190C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 190F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1913 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1916 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 191A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 191D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1921 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1924 _ 89. 04 24
        call    _showString                             ; 1927 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 192C _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 192F _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1932 _ 89. 04 24
        call    _intToHexStr                            ; 1935 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 193A _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 193D _ 8B. 45, 20
        movsx   eax, al                                 ; 1940 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1943 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1946 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 194A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 194E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1951 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1955 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1958 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 195C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 195F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1963 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1966 _ 89. 04 24
        call    _showString                             ; 1969 _ E8, FFFFF5C8
        nop                                             ; 196E _ 90
        leave                                           ; 196F _ C9
        ret                                             ; 1970 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1971 _ 55
        mov     ebp, esp                                ; 1972 _ 89. E5
        sub     esp, 56                                 ; 1974 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1977 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 197A _ 89. 04 24
        call    _sheet_alloc                            ; 197D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1982 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1985 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 198A _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1992 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1995 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 199A _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 199D _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 19A5 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 19AD _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 19B5 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 19B8 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 19BC _ 8B. 45, F4
        mov     dword [esp], eax                        ; 19BF _ 89. 04 24
        call    _sheet_setbuf                           ; 19C2 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 19C7 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 19CF _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 19D2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 19D6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 19D9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19DD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19E0 _ 89. 04 24
        call    _make_window8                           ; 19E3 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 19E8 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 19F0 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 19F8 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1A00 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1A08 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1A10 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A13 _ 89. 04 24
        call    _make_textbox8                          ; 1A16 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 1A1B _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1A23 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1A2B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A35 _ 89. 04 24
        call    _sheet_slide                            ; 1A38 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1A3D _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1A45 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A4F _ 89. 04 24
        call    _sheet_updown                           ; 1A52 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1A57 _ 8B. 45, F4
        leave                                           ; 1A5A _ C9
        ret                                             ; 1A5B _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1A5C _ 55
        mov     ebp, esp                                ; 1A5D _ 89. E5
        push    ebx                                     ; 1A5F _ 53
        sub     esp, 68                                 ; 1A60 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1A63 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1A66 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1A69 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A6C _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1A6F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1A72 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1A75 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 1A78 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 1A7B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1A7E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A81 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A84 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1A86 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1A8E _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1A92 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1A9A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AA2 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1AAA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1AAD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AB1 _ 89. 04 24
        call    _boxfill8                               ; 1AB4 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 1AB9 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1ABC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1ABF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AC2 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1AC4 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1ACC _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1AD0 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1AD8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1AE0 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1AE8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1AEB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AEF _ 89. 04 24
        call    _boxfill8                               ; 1AF2 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 1AF7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1AFA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B00 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B02 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1B06 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1B0E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B16 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B1E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1B26 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1B29 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B2D _ 89. 04 24
        call    _boxfill8                               ; 1B30 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 1B35 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1B38 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B3B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B3E _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B40 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1B44 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1B4C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B54 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B5C _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1B64 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1B67 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B6B _ 89. 04 24
        call    _boxfill8                               ; 1B6E _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 1B73 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1B76 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1B79 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1B7C _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1B7F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1B82 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B85 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B88 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1B8A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1B8E _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1B92 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1B9A _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1B9E _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1BA6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1BA9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BAD _ 89. 04 24
        call    _boxfill8                               ; 1BB0 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 1BB5 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1BB8 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1BBB _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1BBE _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1BC1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BC4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BC7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BCA _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1BCC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1BD0 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1BD4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1BDC _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1BE0 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1BE8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1BEB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BEF _ 89. 04 24
        call    _boxfill8                               ; 1BF2 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 1BF7 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 1BFA _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 1BFD _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 1C00 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C03 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C06 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1C08 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1C0C _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1C10 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1C18 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1C20 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C28 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C2B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C2F _ 89. 04 24
        call    _boxfill8                               ; 1C32 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 1C37 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 1C3A _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1C3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C40 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1C42 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1C4A _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1C4E _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1C56 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1C5E _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 1C66 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C6D _ 89. 04 24
        call    _boxfill8                               ; 1C70 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 1C75 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1C78 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1C7B _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1C7E _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1C81 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1C84 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C87 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C8A _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C8C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C90 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1C94 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1C98 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1CA0 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1CA8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CAB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CAF _ 89. 04 24
        call    _boxfill8                               ; 1CB2 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 1CB7 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1CBA _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1CBD _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1CC0 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1CC3 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1CC6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CC9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CCC _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CCE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CD2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CD6 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1CDA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1CE2 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1CEA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CF1 _ 89. 04 24
        call    _boxfill8                               ; 1CF4 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 1CF9 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1CFD _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1D01 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1D04 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1D08 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D12 _ 89. 04 24
        call    _make_wtitle8                           ; 1D15 _ E8, 00000007
        nop                                             ; 1D1A _ 90
        add     esp, 68                                 ; 1D1B _ 83. C4, 44
        pop     ebx                                     ; 1D1E _ 5B
        pop     ebp                                     ; 1D1F _ 5D
        ret                                             ; 1D20 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 1D21 _ 55
        mov     ebp, esp                                ; 1D22 _ 89. E5
        push    ebx                                     ; 1D24 _ 53
        sub     esp, 68                                 ; 1D25 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1D28 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1D2B _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1D2E _ 80. 7D, E4, 00
        jz      ?_068                                   ; 1D32 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1D34 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 1D38 _ C6. 45, ED, 0C
        jmp     ?_069                                   ; 1D3C _ EB, 08

?_068:  mov     byte [ebp-12H], 8                       ; 1D3E _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 1D42 _ C6. 45, ED, 0F
?_069:  mov     eax, dword [ebp+0CH]                    ; 1D46 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D49 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1D4C _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 1D4F _ 0F B6. 45, ED
        movzx   eax, al                                 ; 1D53 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 1D56 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1D59 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D5C _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1D5F _ 8B. 12
        mov     dword [esp+18H], 20                     ; 1D61 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1D69 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1D6D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1D75 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 1D7D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1D81 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1D85 _ 89. 14 24
        call    _boxfill8                               ; 1D88 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 1D8D _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 1D91 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1D94 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1D98 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1D9C _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1DA4 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1DAC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DAF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DB3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DB6 _ 89. 04 24
        call    _showString                             ; 1DB9 _ E8, FFFFF178
        mov     dword [ebp-10H], 0                      ; 1DBE _ C7. 45, F0, 00000000
        jmp     ?_077                                   ; 1DC5 _ E9, 00000084

?_070:  mov     dword [ebp-0CH], 0                      ; 1DCA _ C7. 45, F4, 00000000
        jmp     ?_076                                   ; 1DD1 _ EB, 71

?_071:  mov     eax, dword [ebp-10H]                    ; 1DD3 _ 8B. 45, F0
        shl     eax, 4                                  ; 1DD6 _ C1. E0, 04
        mov     edx, eax                                ; 1DD9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1DDB _ 8B. 45, F4
        add     eax, edx                                ; 1DDE _ 01. D0
        add     eax, _closebtn.2547                     ; 1DE0 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 1DE5 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1DE8 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1DEB _ 80. 7D, EF, 40
        jnz     ?_072                                   ; 1DEF _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1DF1 _ C6. 45, EF, 00
        jmp     ?_075                                   ; 1DF5 _ EB, 1C

?_072:  cmp     byte [ebp-11H], 36                      ; 1DF7 _ 80. 7D, EF, 24
        jnz     ?_073                                   ; 1DFB _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1DFD _ C6. 45, EF, 0F
        jmp     ?_075                                   ; 1E01 _ EB, 10

?_073:  cmp     byte [ebp-11H], 81                      ; 1E03 _ 80. 7D, EF, 51
        jnz     ?_074                                   ; 1E07 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1E09 _ C6. 45, EF, 08
        jmp     ?_075                                   ; 1E0D _ EB, 04

?_074:  mov     byte [ebp-11H], 7                       ; 1E0F _ C6. 45, EF, 07
?_075:  mov     eax, dword [ebp+0CH]                    ; 1E13 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1E16 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1E18 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1E1B _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1E1E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E21 _ 8B. 40, 04
        imul    eax, edx                                ; 1E24 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1E27 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1E2A _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1E2D _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1E30 _ 8B. 55, F4
        add     edx, ebx                                ; 1E33 _ 01. DA
        add     eax, edx                                ; 1E35 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1E37 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1E3A _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1E3E _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1E40 _ 83. 45, F4, 01
?_076:  cmp     dword [ebp-0CH], 15                     ; 1E44 _ 83. 7D, F4, 0F
        jle     ?_071                                   ; 1E48 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1E4A _ 83. 45, F0, 01
?_077:  cmp     dword [ebp-10H], 13                     ; 1E4E _ 83. 7D, F0, 0D
        jle     ?_070                                   ; 1E52 _ 0F 8E, FFFFFF72
        nop                                             ; 1E58 _ 90
        add     esp, 68                                 ; 1E59 _ 83. C4, 44
        pop     ebx                                     ; 1E5C _ 5B
        pop     ebp                                     ; 1E5D _ 5D
        ret                                             ; 1E5E _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1E5F _ 55
        mov     ebp, esp                                ; 1E60 _ 89. E5
        push    edi                                     ; 1E62 _ 57
        push    esi                                     ; 1E63 _ 56
        push    ebx                                     ; 1E64 _ 53
        sub     esp, 44                                 ; 1E65 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1E68 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1E6B _ 8B. 45, 14
        add     eax, edx                                ; 1E6E _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1E70 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1E73 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1E76 _ 8B. 45, 18
        add     eax, edx                                ; 1E79 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1E7B _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1E7E _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1E81 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1E84 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1E87 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1E8A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E8D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E90 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1E93 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1E96 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E99 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E9C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E9F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1EA1 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EA5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EA9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EAD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1EB1 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1EB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EBD _ 89. 04 24
        call    _boxfill8                               ; 1EC0 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 1EC5 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1EC8 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1ECB _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1ECE _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1ED1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1ED4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1ED7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1EDA _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1EDD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1EE0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EE3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EE6 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1EE8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EEC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EF0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EF4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1EF8 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1F00 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F04 _ 89. 04 24
        call    _boxfill8                               ; 1F07 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 1F0C _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1F0F _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1F12 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1F15 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1F18 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1F1B _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1F1E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1F21 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1F24 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F27 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F2A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F2D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F2F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F33 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F37 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F3B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F3F _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F47 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F4B _ 89. 04 24
        call    _boxfill8                               ; 1F4E _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 1F53 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1F56 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1F59 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1F5C _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1F5F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F62 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1F65 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1F68 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1F6B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F6E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F71 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F74 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F76 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F7A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F7E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F82 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F86 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F92 _ 89. 04 24
        call    _boxfill8                               ; 1F95 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 1F9A _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1F9D _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1FA0 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1FA3 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1FA6 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1FA9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1FAC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FAF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FB2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FB5 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1FB7 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1FBB _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1FBE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FC2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FC6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1FCA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1FD2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FD6 _ 89. 04 24
        call    _boxfill8                               ; 1FD9 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 1FDE _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1FE1 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1FE4 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1FE7 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1FEA _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FED _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FF0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FF3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FF6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FF9 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 1FFB _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1FFE _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2002 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2006 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 200A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 200E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2016 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 201A _ 89. 04 24
        call    _boxfill8                               ; 201D _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 2022 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 2025 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2028 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 202B _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 202E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2031 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2034 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2037 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 203A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 203D _ 8B. 00
        mov     dword [esp+18H], esi                    ; 203F _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2043 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2046 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 204A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 204E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2052 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 205A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 205E _ 89. 04 24
        call    _boxfill8                               ; 2061 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 2066 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2069 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 206C _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 206F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2072 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2075 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2078 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 207B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2081 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2084 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2087 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2089 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 208D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2091 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2095 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2099 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 20A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20A5 _ 89. 04 24
        call    _boxfill8                               ; 20A8 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 20AD _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 20B0 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 20B3 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 20B6 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 20B9 _ 8B. 45, 1C
        movzx   eax, al                                 ; 20BC _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 20BF _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 20C2 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 20C5 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 20C8 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 20CA _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 20CD _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 20D1 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 20D4 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 20D8 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 20DC _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 20E0 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 20E4 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 20E8 _ 89. 14 24
        call    _boxfill8                               ; 20EB _ E8, FFFFEFB3
        nop                                             ; 20F0 _ 90
        add     esp, 44                                 ; 20F1 _ 83. C4, 2C
        pop     ebx                                     ; 20F4 _ 5B
        pop     esi                                     ; 20F5 _ 5E
        pop     edi                                     ; 20F6 _ 5F
        pop     ebp                                     ; 20F7 _ 5D
        ret                                             ; 20F8 _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 20F9 _ 55
        mov     ebp, esp                                ; 20FA _ 89. E5
        sub     esp, 88                                 ; 20FC _ 83. EC, 58
        call    _get_addr_code32                        ; 20FF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2104 _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 2107 _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 210B _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 210F _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 2113 _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 2117 _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 211B _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 211F _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 2126 _ C7. 45, F4, 00000000
        jmp     ?_079                                   ; 212D _ E9, 000001B9

?_078:  mov     eax, dword [_shtctl]                    ; 2132 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2137 _ 89. 04 24
        call    _sheet_alloc                            ; 213A _ E8, 00000000(rel)
        mov     edx, eax                                ; 213F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2141 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 2144 _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 2148 _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 214D _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 2155 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2158 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 215D _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 2160 _ 8B. 45, F4
        add     eax, 98                                 ; 2163 _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 2166 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2169 _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 216D _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 2170 _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 2173 _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 2177 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 217F _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 2187 _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 218F _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2192 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2196 _ 89. 04 24
        call    _sheet_setbuf                           ; 2199 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 219E _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 21A1 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 21A5 _ 8B. 15, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 21AB _ C7. 44 24, 0C, 00000001
        lea     eax, [ebp-2AH]                          ; 21B3 _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 21B6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 21BA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 21BE _ 89. 14 24
        call    _make_window8                           ; 21C1 _ E8, FFFFF896
        call    _task_alloc                             ; 21C6 _ E8, 00000000(rel)
        mov     edx, eax                                ; 21CB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 21CD _ 8B. 45, F4
        mov     dword [_task_b.2573+eax*4], edx         ; 21D0 _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 21D7 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 21DA _ 8B. 04 85, 00000374(d)
        mov     dword [eax+8CH], 0                      ; 21E1 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 21EB _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 21EE _ 8B. 04 85, 00000374(d)
        mov     dword [eax+90H], 1073741824             ; 21F5 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-10H]                    ; 21FF _ 8B. 45, F0
        neg     eax                                     ; 2202 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 2204 _ 8D. 90, 00000861(d)
        mov     eax, dword [ebp-0CH]                    ; 220A _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 220D _ 8B. 04 85, 00000374(d)
        mov     dword [eax+4CH], edx                    ; 2214 _ 89. 50, 4C
        mov     eax, dword [ebp-0CH]                    ; 2217 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 221A _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 0                      ; 2221 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2228 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 222B _ 8B. 04 85, 00000374(d)
        mov     dword [eax+78H], 8                      ; 2232 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2239 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 223C _ 8B. 04 85, 00000374(d)
        mov     dword [eax+7CH], 32                     ; 2243 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-0CH]                    ; 224A _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 224D _ 8B. 04 85, 00000374(d)
        mov     dword [eax+80H], 24                     ; 2254 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-0CH]                    ; 225E _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 2261 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+84H], 0                      ; 2268 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2272 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 2275 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+88H], 16                     ; 227C _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-0CH]                    ; 2286 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 2289 _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+64H]                    ; 2290 _ 8B. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 2293 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 2296 _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 229D _ 83. EA, 08
        mov     dword [eax+64H], edx                    ; 22A0 _ 89. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 22A3 _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 22A6 _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 22AA _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 22AD _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+64H]                    ; 22B4 _ 8B. 40, 64
        add     eax, 4                                  ; 22B7 _ 83. C0, 04
        mov     dword [eax], edx                        ; 22BA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 22BC _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 22BF _ 8D. 50, 01
        mov     eax, edx                                ; 22C2 _ 89. D0
        shl     eax, 2                                  ; 22C4 _ C1. E0, 02
        add     edx, eax                                ; 22C7 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 22C9 _ 8B. 45, F4
        mov     eax, dword [_task_b.2573+eax*4]         ; 22CC _ 8B. 04 85, 00000374(d)
        mov     dword [esp+8H], edx                     ; 22D3 _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 22D7 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 22DF _ 89. 04 24
        call    _task_run                               ; 22E2 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 22E7 _ 83. 45, F4, 01
?_079:  cmp     dword [ebp-0CH], 1                      ; 22EB _ 83. 7D, F4, 01
        jle     ?_078                                   ; 22EF _ 0F 8E, FFFFFE3D
        mov     edx, dword [ebp-24H]                    ; 22F5 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 22F8 _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 22FD _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 2305 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 230D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2311 _ 89. 04 24
        call    _sheet_slide                            ; 2314 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 2319 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 231C _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 2321 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2329 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 232D _ 89. 04 24
        call    _sheet_updown                           ; 2330 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2335 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 2338 _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 233D _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 2345 _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 234D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2351 _ 89. 04 24
        call    _sheet_slide                            ; 2354 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2359 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 235C _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 2361 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2369 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 236D _ 89. 04 24
        call    _sheet_updown                           ; 2370 _ E8, 00000000(rel)
        nop                                             ; 2375 _ 90
        leave                                           ; 2376 _ C9
        ret                                             ; 2377 _ C3
; _multi_windows End of function

_launch_console:; Function begin
        push    ebp                                     ; 2378 _ 55
        mov     ebp, esp                                ; 2379 _ 89. E5
        sub     esp, 56                                 ; 237B _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 237E _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2383 _ 89. 04 24
        call    _sheet_alloc                            ; 2386 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 238B _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 238E _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 2393 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 239B _ 89. 04 24
        call    _memman_alloc_4k                        ; 239E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 23A3 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 23A6 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 23AE _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 23B6 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 23BE _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 23C1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 23C5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 23C8 _ 89. 04 24
        call    _sheet_setbuf                           ; 23CB _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 23D0 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 23D5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_299                   ; 23DD _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 23E5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 23E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23EC _ 89. 04 24
        call    _make_window8                           ; 23EF _ E8, FFFFF668
        mov     dword [esp+14H], 0                      ; 23F4 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 23FC _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 2404 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 240C _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2414 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 241C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 241F _ 89. 04 24
        call    _make_textbox8                          ; 2422 _ E8, FFFFFA38
        call    _task_alloc                             ; 2427 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 242C _ 89. 45, EC
        call    _get_addr_code32                        ; 242F _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 2434 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 2437 _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 243A _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 2444 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 2447 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 2451 _ 8B. 45, E8
        neg     eax                                     ; 2454 _ F7. D8
        add     eax, _console_task                      ; 2456 _ 05, 00002549(d)
        mov     edx, eax                                ; 245B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 245D _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 2460 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 2463 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 2466 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 246D _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 2470 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 2477 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 247A _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 2481 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 2484 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 248E _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 2491 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 249B _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 249E _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 24A8 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 24AB _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 24AE _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 24B1 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 24B4 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 24B7 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 24BA _ 8B. 40, 64
        add     eax, 4                                  ; 24BD _ 83. C0, 04
        mov     edx, eax                                ; 24C0 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 24C2 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 24C5 _ 89. 02
        mov     eax, dword [_memman]                    ; 24C7 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 24CC _ 89. 04 24
        call    _memman_total                           ; 24CF _ E8, 00000000(rel)
        mov     edx, eax                                ; 24D4 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 24D6 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 24D9 _ 8B. 40, 64
        add     eax, 8                                  ; 24DC _ 83. C0, 08
        mov     dword [eax], edx                        ; 24DF _ 89. 10
        mov     dword [esp+8H], 5                       ; 24E1 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 24E9 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 24F1 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 24F4 _ 89. 04 24
        call    _task_run                               ; 24F7 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 24FC _ A1, 00000264(d)
        mov     dword [esp+0CH], 4                      ; 2501 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 2509 _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 2511 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2514 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2518 _ 89. 04 24
        call    _sheet_slide                            ; 251B _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2520 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 2525 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 252D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2530 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2534 _ 89. 04 24
        call    _sheet_updown                           ; 2537 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 253C _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 253F _ A3, 00000274(d)
        mov     eax, dword [ebp-0CH]                    ; 2544 _ 8B. 45, F4
        leave                                           ; 2547 _ C9
        ret                                             ; 2548 _ C3
; _launch_console End of function

_console_task:; Function begin
        push    ebp                                     ; 2549 _ 55
        mov     ebp, esp                                ; 254A _ 89. E5
        sub     esp, 728                                ; 254C _ 81. EC, 000002D8
        call    _task_now                               ; 2552 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 2557 _ 89. 45, C4
        mov     dword [ebp-0CH], 16                     ; 255A _ C7. 45, F4, 00000010
        mov     dword [ebp-10H], 0                      ; 2561 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 28                     ; 2568 _ C7. 45, EC, 0000001C
        mov     dword [ebp-18H], 0                      ; 256F _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 2576 _ C7. 45, E4, 00000000
        mov     eax, dword [ebp-3CH]                    ; 257D _ 8B. 45, C4
        lea     edx, [eax+10H]                          ; 2580 _ 8D. 50, 10
        mov     eax, dword [ebp-3CH]                    ; 2583 _ 8B. 45, C4
        mov     dword [esp+0CH], eax                    ; 2586 _ 89. 44 24, 0C
        lea     eax, [ebp-264H]                         ; 258A _ 8D. 85, FFFFFD9C
        mov     dword [esp+8H], eax                     ; 2590 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 2594 _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 259C _ 89. 14 24
        call    _fifo8_init                             ; 259F _ E8, 00000000(rel)
        call    _timer_alloc                            ; 25A4 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 25A9 _ 89. 45, C0
        mov     eax, dword [ebp-3CH]                    ; 25AC _ 8B. 45, C4
        add     eax, 16                                 ; 25AF _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 25B2 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 25BA _ 89. 44 24, 04
        mov     eax, dword [ebp-40H]                    ; 25BE _ 8B. 45, C0
        mov     dword [esp], eax                        ; 25C1 _ 89. 04 24
        call    _timer_init                             ; 25C4 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 25C9 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-40H]                    ; 25D1 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 25D4 _ 89. 04 24
        call    _timer_settime                          ; 25D7 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 25DC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_306                  ; 25E1 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 25E9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 25F1 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 25F9 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 2601 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2604 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2608 _ 89. 04 24
        call    _showString                             ; 260B _ E8, FFFFE926
        mov     dword [ebp-44H], 0                      ; 2610 _ C7. 45, BC, 00000000
        mov     dword [ebp-20H], 78848                  ; 2617 _ C7. 45, E0, 00013400
?_080:  call    _io_cli                                 ; 261E _ E8, 00000000(rel)
        mov     eax, dword [ebp-3CH]                    ; 2623 _ 8B. 45, C4
        add     eax, 16                                 ; 2626 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2629 _ 89. 04 24
        call    _fifo8_status                           ; 262C _ E8, 00000000(rel)
        test    eax, eax                                ; 2631 _ 85. C0
        jnz     ?_081                                   ; 2633 _ 75, 07
        call    _io_sti                                 ; 2635 _ E8, 00000000(rel)
        jmp     ?_080                                   ; 263A _ EB, E2
; _console_task End of function

?_081:  ; Local function
        call    _io_sti                                 ; 263C _ E8, 00000000(rel)
        mov     eax, dword [ebp-3CH]                    ; 2641 _ 8B. 45, C4
        add     eax, 16                                 ; 2644 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2647 _ 89. 04 24
        call    _fifo8_get                              ; 264A _ E8, 00000000(rel)
        mov     dword [ebp-48H], eax                    ; 264F _ 89. 45, B8
        cmp     dword [ebp-48H], 1                      ; 2652 _ 83. 7D, B8, 01
        jg      ?_084                                   ; 2656 _ 7F, 6E
        cmp     dword [ebp-10H], 0                      ; 2658 _ 83. 7D, F0, 00
        js      ?_084                                   ; 265C _ 78, 68
        cmp     dword [ebp-48H], 0                      ; 265E _ 83. 7D, B8, 00
        jz      ?_082                                   ; 2662 _ 74, 26
        mov     eax, dword [ebp-3CH]                    ; 2664 _ 8B. 45, C4
        add     eax, 16                                 ; 2667 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 266A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2672 _ 89. 44 24, 04
        mov     eax, dword [ebp-40H]                    ; 2676 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 2679 _ 89. 04 24
        call    _timer_init                             ; 267C _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 2681 _ C7. 45, F0, 00000007
        jmp     ?_083                                   ; 2688 _ EB, 24

?_082:  mov     eax, dword [ebp-3CH]                    ; 268A _ 8B. 45, C4
        add     eax, 16                                 ; 268D _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 2690 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 2698 _ 89. 44 24, 04
        mov     eax, dword [ebp-40H]                    ; 269C _ 8B. 45, C0
        mov     dword [esp], eax                        ; 269F _ 89. 04 24
        call    _timer_init                             ; 26A2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 26A7 _ C7. 45, F0, 00000000
?_083:  mov     dword [esp+4H], 50                      ; 26AE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-40H]                    ; 26B6 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 26B9 _ 89. 04 24
        call    _timer_settime                          ; 26BC _ E8, 00000000(rel)
        jmp     ?_126                                   ; 26C1 _ E9, 000008FF

?_084:  cmp     dword [ebp-48H], 87                     ; 26C6 _ 83. 7D, B8, 57
        jnz     ?_085                                   ; 26CA _ 75, 3C
        mov     dword [ebp-10H], 7                      ; 26CC _ C7. 45, F0, 00000007
        mov     eax, dword [ebp-3CH]                    ; 26D3 _ 8B. 45, C4
        add     eax, 16                                 ; 26D6 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 26D9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 26E1 _ 89. 44 24, 04
        mov     eax, dword [ebp-40H]                    ; 26E5 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 26E8 _ 89. 04 24
        call    _timer_init                             ; 26EB _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 26F0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-40H]                    ; 26F8 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 26FB _ 89. 04 24
        call    _timer_settime                          ; 26FE _ E8, 00000000(rel)
        jmp     ?_126                                   ; 2703 _ E9, 000008BD

?_085:  cmp     dword [ebp-48H], 88                     ; 2708 _ 83. 7D, B8, 58
        jnz     ?_086                                   ; 270C _ 75, 53
        mov     eax, dword [_shtctl]                    ; 270E _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2713 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-14H]                    ; 271B _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 271E _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2722 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2725 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2729 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 272C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2730 _ 89. 04 24
        call    _set_cursor                             ; 2733 _ E8, 00000A4E
        mov     dword [ebp-10H], -1                     ; 2738 _ C7. 45, F0, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 273F _ A1, 00000278(d)
        mov     dword [esp+8H], 0                       ; 2744 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 274C _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 2754 _ 89. 04 24
        call    _task_run                               ; 2757 _ E8, 00000000(rel)
        jmp     ?_126                                   ; 275C _ E9, 00000864

?_086:  cmp     dword [ebp-48H], 28                     ; 2761 _ 83. 7D, B8, 1C
        jne     ?_124                                   ; 2765 _ 0F 85, 0000073C
        mov     eax, dword [_shtctl]                    ; 276B _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2770 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-14H]                    ; 2778 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 277B _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 277F _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2782 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2786 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2789 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 278D _ 89. 04 24
        call    _set_cursor                             ; 2790 _ E8, 000009F1
        mov     eax, dword [ebp-0CH]                    ; 2795 _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 2798 _ 8D. 50, 07
        test    eax, eax                                ; 279B _ 85. C0
        cmovs   eax, edx                                ; 279D _ 0F 48. C2
        sar     eax, 3                                  ; 27A0 _ C1. F8, 03
        sub     eax, 2                                  ; 27A3 _ 83. E8, 02
        mov     byte [ebp+eax-282H], 0                  ; 27A6 _ C6. 84 05, FFFFFD7E, 00
        mov     eax, dword [ebp+8H]                     ; 27AE _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 27B1 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 27B5 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 27B8 _ 89. 04 24
        call    _cons_newline                           ; 27BB _ E8, 00000A4D
        mov     dword [ebp-14H], eax                    ; 27C0 _ 89. 45, EC
        mov     dword [esp+4H], ?_307                   ; 27C3 _ C7. 44 24, 04, 00000056(d)
        lea     eax, [ebp-282H]                         ; 27CB _ 8D. 85, FFFFFD7E
        mov     dword [esp], eax                        ; 27D1 _ 89. 04 24
        call    _strcmp                                 ; 27D4 _ E8, 00000000(rel)
        test    eax, eax                                ; 27D9 _ 85. C0
        je      ?_087                                   ; 27DB _ 0F 84, 000000D5
        mov     eax, dword [ebp+0CH]                    ; 27E1 _ 8B. 45, 0C
        lea     edx, [eax+3FFH]                         ; 27E4 _ 8D. 90, 000003FF
        test    eax, eax                                ; 27EA _ 85. C0
        cmovs   eax, edx                                ; 27EC _ 0F 48. C2
        sar     eax, 10                                 ; 27EF _ C1. F8, 0A
        mov     dword [esp], eax                        ; 27F2 _ 89. 04 24
        call    _intToHexStr                            ; 27F5 _ E8, FFFFEC96
        mov     dword [ebp-4CH], eax                    ; 27FA _ 89. 45, B4
        mov     eax, dword [_shtctl]                    ; 27FD _ A1, 00000264(d)
        mov     dword [esp+14H], ?_308                  ; 2802 _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], 7                      ; 280A _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-14H]                    ; 2812 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2815 _ 89. 54 24, 0C
        mov     dword [esp+8H], 16                      ; 2819 _ C7. 44 24, 08, 00000010
        mov     edx, dword [ebp+8H]                     ; 2821 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2824 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2828 _ 89. 04 24
        call    _showString                             ; 282B _ E8, FFFFE706
        mov     eax, dword [_shtctl]                    ; 2830 _ A1, 00000264(d)
        mov     edx, dword [ebp-4CH]                    ; 2835 _ 8B. 55, B4
        mov     dword [esp+14H], edx                    ; 2838 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 283C _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-14H]                    ; 2844 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2847 _ 89. 54 24, 0C
        mov     dword [esp+8H], 52                      ; 284B _ C7. 44 24, 08, 00000034
        mov     edx, dword [ebp+8H]                     ; 2853 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2856 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 285A _ 89. 04 24
        call    _showString                             ; 285D _ E8, FFFFE6D4
        mov     eax, dword [_shtctl]                    ; 2862 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_309                  ; 2867 _ C7. 44 24, 14, 00000060(d)
        mov     dword [esp+10H], 7                      ; 286F _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-14H]                    ; 2877 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 287A _ 89. 54 24, 0C
        mov     dword [esp+8H], 126                     ; 287E _ C7. 44 24, 08, 0000007E
        mov     edx, dword [ebp+8H]                     ; 2886 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2889 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 288D _ 89. 04 24
        call    _showString                             ; 2890 _ E8, FFFFE6A1
        mov     eax, dword [ebp+8H]                     ; 2895 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2898 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 289C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 289F _ 89. 04 24
        call    _cons_newline                           ; 28A2 _ E8, 00000966
        mov     dword [ebp-14H], eax                    ; 28A7 _ 89. 45, EC
        mov     dword [ebp-0CH], 16                     ; 28AA _ C7. 45, F4, 00000010
        jmp     ?_126                                   ; 28B1 _ E9, 0000070F

?_087:  mov     dword [esp+4H], ?_310                   ; 28B6 _ C7. 44 24, 04, 00000064(d)
        lea     eax, [ebp-282H]                         ; 28BE _ 8D. 85, FFFFFD7E
        mov     dword [esp], eax                        ; 28C4 _ 89. 04 24
        call    _strcmp                                 ; 28C7 _ E8, 00000000(rel)
        test    eax, eax                                ; 28CC _ 85. C0
        je      ?_092                                   ; 28CE _ 0F 84, 000000C0
        mov     dword [ebp-1CH], 28                     ; 28D4 _ C7. 45, E4, 0000001C
        jmp     ?_091                                   ; 28DB _ EB, 33

?_088:  mov     dword [ebp-18H], 8                      ; 28DD _ C7. 45, E8, 00000008
        jmp     ?_090                                   ; 28E4 _ EB, 1D

?_089:  mov     eax, dword [ebp+8H]                     ; 28E6 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 28E9 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 28EB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 28EE _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 28F1 _ 0F AF. 45, E4
        mov     ecx, dword [ebp-18H]                    ; 28F5 _ 8B. 4D, E8
        add     eax, ecx                                ; 28F8 _ 01. C8
        add     eax, edx                                ; 28FA _ 01. D0
        mov     byte [eax], 0                           ; 28FC _ C6. 00, 00
        add     dword [ebp-18H], 1                      ; 28FF _ 83. 45, E8, 01
?_090:  cmp     dword [ebp-18H], 247                    ; 2903 _ 81. 7D, E8, 000000F7
        jle     ?_089                                   ; 290A _ 7E, DA
        add     dword [ebp-1CH], 1                      ; 290C _ 83. 45, E4, 01
?_091:  cmp     dword [ebp-1CH], 155                    ; 2910 _ 81. 7D, E4, 0000009B
        jle     ?_088                                   ; 2917 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2919 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 291E _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2926 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 292E _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2936 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 293E _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2941 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2945 _ 89. 04 24
        call    _sheet_refresh                          ; 2948 _ E8, 00000000(rel)
        mov     dword [ebp-14H], 28                     ; 294D _ C7. 45, EC, 0000001C
        mov     eax, dword [_shtctl]                    ; 2954 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_306                  ; 2959 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 2961 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 2969 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2971 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 2979 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 297C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2980 _ 89. 04 24
        call    _showString                             ; 2983 _ E8, FFFFE5AE
        mov     dword [ebp-0CH], 16                     ; 2988 _ C7. 45, F4, 00000010
        jmp     ?_126                                   ; 298F _ E9, 00000631

?_092:  mov     dword [esp+4H], ?_311                   ; 2994 _ C7. 44 24, 04, 00000068(d)
        lea     eax, [ebp-282H]                         ; 299C _ 8D. 85, FFFFFD7E
        mov     dword [esp], eax                        ; 29A2 _ 89. 04 24
        call    _strcmp                                 ; 29A5 _ E8, 00000000(rel)
        test    eax, eax                                ; 29AA _ 85. C0
        je      ?_102                                   ; 29AC _ 0F 84, 0000015E
        jmp     ?_101                                   ; 29B2 _ E9, 0000013F

?_093:  mov     byte [ebp-283H], 0                      ; 29B7 _ C6. 85, FFFFFD7D, 00
        mov     dword [ebp-24H], 0                      ; 29BE _ C7. 45, DC, 00000000
        jmp     ?_095                                   ; 29C5 _ EB, 2D

?_094:  mov     edx, dword [ebp-20H]                    ; 29C7 _ 8B. 55, E0
        mov     eax, dword [ebp-24H]                    ; 29CA _ 8B. 45, DC
        add     eax, edx                                ; 29CD _ 01. D0
        movzx   eax, byte [eax]                         ; 29CF _ 0F B6. 00
        test    al, al                                  ; 29D2 _ 84. C0
        jz      ?_096                                   ; 29D4 _ 74, 26
        mov     edx, dword [ebp-20H]                    ; 29D6 _ 8B. 55, E0
        mov     eax, dword [ebp-24H]                    ; 29D9 _ 8B. 45, DC
        add     eax, edx                                ; 29DC _ 01. D0
        movzx   eax, byte [eax]                         ; 29DE _ 0F B6. 00
        mov     ecx, eax                                ; 29E1 _ 89. C1
        lea     eax, [ebp-28FH]                         ; 29E3 _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 29E9 _ 8B. 55, DC
        add     eax, edx                                ; 29EC _ 01. D0
        mov     byte [eax], cl                          ; 29EE _ 88. 08
        add     dword [ebp-24H], 1                      ; 29F0 _ 83. 45, DC, 01
?_095:  cmp     dword [ebp-24H], 7                      ; 29F4 _ 83. 7D, DC, 07
        jle     ?_094                                   ; 29F8 _ 7E, CD
        jmp     ?_097                                   ; 29FA _ EB, 01

?_096:  nop                                             ; 29FC _ 90
?_097:  mov     dword [ebp-28H], 0                      ; 29FD _ C7. 45, D8, 00000000
        lea     eax, [ebp-28FH]                         ; 2A04 _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 2A0A _ 8B. 55, DC
        add     eax, edx                                ; 2A0D _ 01. D0
        mov     byte [eax], 46                          ; 2A0F _ C6. 00, 2E
        add     dword [ebp-24H], 1                      ; 2A12 _ 83. 45, DC, 01
        mov     dword [ebp-28H], 0                      ; 2A16 _ C7. 45, D8, 00000000
        jmp     ?_099                                   ; 2A1D _ EB, 25

?_098:  mov     edx, dword [ebp-20H]                    ; 2A1F _ 8B. 55, E0
        mov     eax, dword [ebp-28H]                    ; 2A22 _ 8B. 45, D8
        add     eax, edx                                ; 2A25 _ 01. D0
        add     eax, 8                                  ; 2A27 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 2A2A _ 0F B6. 00
        mov     ecx, eax                                ; 2A2D _ 89. C1
        lea     eax, [ebp-28FH]                         ; 2A2F _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 2A35 _ 8B. 55, DC
        add     eax, edx                                ; 2A38 _ 01. D0
        mov     byte [eax], cl                          ; 2A3A _ 88. 08
        add     dword [ebp-24H], 1                      ; 2A3C _ 83. 45, DC, 01
        add     dword [ebp-28H], 1                      ; 2A40 _ 83. 45, D8, 01
?_099:  cmp     dword [ebp-28H], 2                      ; 2A44 _ 83. 7D, D8, 02
        jle     ?_098                                   ; 2A48 _ 7E, D5
        cmp     dword [ebp-24H], 11                     ; 2A4A _ 83. 7D, DC, 0B
        jg      ?_100                                   ; 2A4E _ 7F, 0E
        lea     eax, [ebp-28FH]                         ; 2A50 _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 2A56 _ 8B. 55, DC
        add     eax, edx                                ; 2A59 _ 01. D0
        mov     byte [eax], 0                           ; 2A5B _ C6. 00, 00
?_100:  mov     edx, dword [_shtctl]                    ; 2A5E _ 8B. 15, 00000264(d)
        lea     eax, [ebp-28FH]                         ; 2A64 _ 8D. 85, FFFFFD71
        mov     dword [esp+14H], eax                    ; 2A6A _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2A6E _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-14H]                    ; 2A76 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 2A79 _ 89. 44 24, 0C
        mov     dword [esp+8H], 16                      ; 2A7D _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp+8H]                     ; 2A85 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2A88 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2A8C _ 89. 14 24
        call    _showString                             ; 2A8F _ E8, FFFFE4A2
        mov     dword [ebp-50H], 136                    ; 2A94 _ C7. 45, B0, 00000088
        mov     eax, dword [ebp-20H]                    ; 2A9B _ 8B. 45, E0
        mov     eax, dword [eax+1CH]                    ; 2A9E _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 2AA1 _ 89. 04 24
        call    _intToHexStr                            ; 2AA4 _ E8, FFFFE9E7
        mov     dword [ebp-54H], eax                    ; 2AA9 _ 89. 45, AC
        mov     eax, dword [_shtctl]                    ; 2AAC _ A1, 00000264(d)
        mov     edx, dword [ebp-54H]                    ; 2AB1 _ 8B. 55, AC
        mov     dword [esp+14H], edx                    ; 2AB4 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 2AB8 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-14H]                    ; 2AC0 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2AC3 _ 89. 54 24, 0C
        mov     edx, dword [ebp-50H]                    ; 2AC7 _ 8B. 55, B0
        mov     dword [esp+8H], edx                     ; 2ACA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2ACE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2AD1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AD5 _ 89. 04 24
        call    _showString                             ; 2AD8 _ E8, FFFFE459
        mov     eax, dword [ebp+8H]                     ; 2ADD _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2AE0 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2AE4 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2AE7 _ 89. 04 24
        call    _cons_newline                           ; 2AEA _ E8, 0000071E
        mov     dword [ebp-14H], eax                    ; 2AEF _ 89. 45, EC
        add     dword [ebp-20H], 32                     ; 2AF2 _ 83. 45, E0, 20
?_101:  mov     eax, dword [ebp-20H]                    ; 2AF6 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 2AF9 _ 0F B6. 00
        test    al, al                                  ; 2AFC _ 84. C0
        jne     ?_093                                   ; 2AFE _ 0F 85, FFFFFEB3
        mov     dword [ebp-0CH], 16                     ; 2B04 _ C7. 45, F4, 00000010
        jmp     ?_126                                   ; 2B0B _ E9, 000004B5

?_102:  mov     dword [esp+4H], ?_312                   ; 2B10 _ C7. 44 24, 04, 0000006C(d)
        lea     eax, [ebp-282H]                         ; 2B18 _ 8D. 85, FFFFFD7E
        mov     dword [esp], eax                        ; 2B1E _ 89. 04 24
        call    _strcmp                                 ; 2B21 _ E8, 00000000(rel)
        test    eax, eax                                ; 2B26 _ 85. C0
        je      ?_103                                   ; 2B28 _ 0F 84, 00000088
        lea     eax, [ebp-298H]                         ; 2B2E _ 8D. 85, FFFFFD68
        mov     dword [esp+4H], eax                     ; 2B34 _ 89. 44 24, 04
        mov     dword [esp], ?_313                      ; 2B38 _ C7. 04 24, 00000070(d)
        call    _file_loadfile                          ; 2B3F _ E8, 000007F9
        call    _get_addr_gdt                           ; 2B44 _ E8, 00000000(rel)
        mov     dword [ebp-58H], eax                    ; 2B49 _ 89. 45, A8
        mov     eax, dword [ebp-298H]                   ; 2B4C _ 8B. 85, FFFFFD68
        mov     edx, eax                                ; 2B52 _ 89. C2
        mov     eax, dword [ebp-58H]                    ; 2B54 _ 8B. 45, A8
        add     eax, 152                                ; 2B57 _ 05, 00000098
        mov     dword [esp+0CH], 16538                  ; 2B5C _ C7. 44 24, 0C, 0000409A
        mov     dword [esp+8H], edx                     ; 2B64 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 2B68 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 2B70 _ 89. 04 24
        call    _set_segmdesc                           ; 2B73 _ E8, 00000000(rel)
        mov     dword [esp+4H], 152                     ; 2B78 _ C7. 44 24, 04, 00000098
        mov     dword [esp], 0                          ; 2B80 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 2B87 _ E8, 00000000(rel)
        mov     eax, dword [ebp-294H]                   ; 2B8C _ 8B. 85, FFFFFD6C
        mov     ecx, eax                                ; 2B92 _ 89. C1
        mov     eax, dword [ebp-298H]                   ; 2B94 _ 8B. 85, FFFFFD68
        mov     edx, eax                                ; 2B9A _ 89. C2
        mov     eax, dword [_memman]                    ; 2B9C _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 2BA1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2BA5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BA9 _ 89. 04 24
        call    _memman_free_4k                         ; 2BAC _ E8, 00000000(rel)
        jmp     ?_126                                   ; 2BB1 _ E9, 0000040F

?_103:  movzx   eax, byte [ebp-282H]                    ; 2BB6 _ 0F B6. 85, FFFFFD7E
        cmp     al, 116                                 ; 2BBD _ 3C, 74
        jne     ?_126                                   ; 2BBF _ 0F 85, 00000400
        movzx   eax, byte [ebp-281H]                    ; 2BC5 _ 0F B6. 85, FFFFFD7F
        cmp     al, 121                                 ; 2BCC _ 3C, 79
        jne     ?_126                                   ; 2BCE _ 0F 85, 000003F1
        movzx   eax, byte [ebp-280H]                    ; 2BD4 _ 0F B6. 85, FFFFFD80
        cmp     al, 112                                 ; 2BDB _ 3C, 70
        jne     ?_126                                   ; 2BDD _ 0F 85, 000003E2
        movzx   eax, byte [ebp-27FH]                    ; 2BE3 _ 0F B6. 85, FFFFFD81
        cmp     al, 101                                 ; 2BEA _ 3C, 65
        jne     ?_126                                   ; 2BEC _ 0F 85, 000003D3
        mov     byte [ebp-299H], 0                      ; 2BF2 _ C6. 85, FFFFFD67, 00
        mov     dword [ebp-2CH], 0                      ; 2BF9 _ C7. 45, D4, 00000000
        mov     dword [ebp-18H], 5                      ; 2C00 _ C7. 45, E8, 00000005
        jmp     ?_105                                   ; 2C07 _ EB, 35

?_104:  lea     eax, [ebp-282H]                         ; 2C09 _ 8D. 85, FFFFFD7E
        mov     edx, dword [ebp-18H]                    ; 2C0F _ 8B. 55, E8
        add     eax, edx                                ; 2C12 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C14 _ 0F B6. 00
        test    al, al                                  ; 2C17 _ 84. C0
        jz      ?_106                                   ; 2C19 _ 74, 2B
        lea     eax, [ebp-282H]                         ; 2C1B _ 8D. 85, FFFFFD7E
        mov     edx, dword [ebp-18H]                    ; 2C21 _ 8B. 55, E8
        add     eax, edx                                ; 2C24 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C26 _ 0F B6. 00
        lea     edx, [ebp-2A5H]                         ; 2C29 _ 8D. 95, FFFFFD5B
        mov     ecx, dword [ebp-2CH]                    ; 2C2F _ 8B. 4D, D4
        add     edx, ecx                                ; 2C32 _ 01. CA
        mov     byte [edx], al                          ; 2C34 _ 88. 02
        add     dword [ebp-2CH], 1                      ; 2C36 _ 83. 45, D4, 01
        add     dword [ebp-18H], 1                      ; 2C3A _ 83. 45, E8, 01
?_105:  cmp     dword [ebp-18H], 16                     ; 2C3E _ 83. 7D, E8, 10
        jle     ?_104                                   ; 2C42 _ 7E, C5
        jmp     ?_107                                   ; 2C44 _ EB, 01

?_106:  nop                                             ; 2C46 _ 90
?_107:  lea     eax, [ebp-2A5H]                         ; 2C47 _ 8D. 85, FFFFFD5B
        mov     edx, dword [ebp-2CH]                    ; 2C4D _ 8B. 55, D4
        add     eax, edx                                ; 2C50 _ 01. D0
        mov     byte [eax], 0                           ; 2C52 _ C6. 00, 00
        mov     dword [ebp-20H], 78848                  ; 2C55 _ C7. 45, E0, 00013400
        jmp     ?_122                                   ; 2C5C _ E9, 00000217

?_108:  mov     byte [ebp-2A6H], 0                      ; 2C61 _ C6. 85, FFFFFD5A, 00
        mov     dword [ebp-30H], 0                      ; 2C68 _ C7. 45, D0, 00000000
        jmp     ?_110                                   ; 2C6F _ EB, 2D

?_109:  mov     edx, dword [ebp-20H]                    ; 2C71 _ 8B. 55, E0
        mov     eax, dword [ebp-30H]                    ; 2C74 _ 8B. 45, D0
        add     eax, edx                                ; 2C77 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C79 _ 0F B6. 00
        test    al, al                                  ; 2C7C _ 84. C0
        jz      ?_111                                   ; 2C7E _ 74, 26
        mov     edx, dword [ebp-20H]                    ; 2C80 _ 8B. 55, E0
        mov     eax, dword [ebp-30H]                    ; 2C83 _ 8B. 45, D0
        add     eax, edx                                ; 2C86 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C88 _ 0F B6. 00
        mov     ecx, eax                                ; 2C8B _ 89. C1
        lea     eax, [ebp-2B2H]                         ; 2C8D _ 8D. 85, FFFFFD4E
        mov     edx, dword [ebp-30H]                    ; 2C93 _ 8B. 55, D0
        add     eax, edx                                ; 2C96 _ 01. D0
        mov     byte [eax], cl                          ; 2C98 _ 88. 08
        add     dword [ebp-30H], 1                      ; 2C9A _ 83. 45, D0, 01
?_110:  cmp     dword [ebp-30H], 7                      ; 2C9E _ 83. 7D, D0, 07
        jle     ?_109                                   ; 2CA2 _ 7E, CD
        jmp     ?_112                                   ; 2CA4 _ EB, 01

?_111:  nop                                             ; 2CA6 _ 90
?_112:  mov     dword [ebp-34H], 0                      ; 2CA7 _ C7. 45, CC, 00000000
        lea     eax, [ebp-2B2H]                         ; 2CAE _ 8D. 85, FFFFFD4E
        mov     edx, dword [ebp-30H]                    ; 2CB4 _ 8B. 55, D0
        add     eax, edx                                ; 2CB7 _ 01. D0
        mov     byte [eax], 46                          ; 2CB9 _ C6. 00, 2E
        add     dword [ebp-30H], 1                      ; 2CBC _ 83. 45, D0, 01
        mov     dword [ebp-34H], 0                      ; 2CC0 _ C7. 45, CC, 00000000
        jmp     ?_114                                   ; 2CC7 _ EB, 25

?_113:  mov     edx, dword [ebp-20H]                    ; 2CC9 _ 8B. 55, E0
        mov     eax, dword [ebp-34H]                    ; 2CCC _ 8B. 45, CC
        add     eax, edx                                ; 2CCF _ 01. D0
        add     eax, 8                                  ; 2CD1 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 2CD4 _ 0F B6. 00
        mov     ecx, eax                                ; 2CD7 _ 89. C1
        lea     eax, [ebp-2B2H]                         ; 2CD9 _ 8D. 85, FFFFFD4E
        mov     edx, dword [ebp-30H]                    ; 2CDF _ 8B. 55, D0
        add     eax, edx                                ; 2CE2 _ 01. D0
        mov     byte [eax], cl                          ; 2CE4 _ 88. 08
        add     dword [ebp-30H], 1                      ; 2CE6 _ 83. 45, D0, 01
        add     dword [ebp-34H], 1                      ; 2CEA _ 83. 45, CC, 01
?_114:  cmp     dword [ebp-34H], 2                      ; 2CEE _ 83. 7D, CC, 02
        jle     ?_113                                   ; 2CF2 _ 7E, D5
        lea     eax, [ebp-2B2H]                         ; 2CF4 _ 8D. 85, FFFFFD4E
        mov     dword [esp+4H], eax                     ; 2CFA _ 89. 44 24, 04
        lea     eax, [ebp-2A5H]                         ; 2CFE _ 8D. 85, FFFFFD5B
        mov     dword [esp], eax                        ; 2D04 _ 89. 04 24
        call    _strcmp                                 ; 2D07 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 2D0C _ 83. F8, 01
        jne     ?_121                                   ; 2D0F _ 0F 85, 0000015F
        mov     dword [ebp-5CH], 88064                  ; 2D15 _ C7. 45, A4, 00015800
        mov     eax, dword [ebp-20H]                    ; 2D1C _ 8B. 45, E0
        movzx   eax, word [eax+1AH]                     ; 2D1F _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 2D23 _ 0F B7. C0
        shl     eax, 9                                  ; 2D26 _ C1. E0, 09
        add     dword [ebp-5CH], eax                    ; 2D29 _ 01. 45, A4
        mov     eax, dword [ebp-20H]                    ; 2D2C _ 8B. 45, E0
        mov     eax, dword [eax+1CH]                    ; 2D2F _ 8B. 40, 1C
        mov     dword [ebp-60H], eax                    ; 2D32 _ 89. 45, A0
        mov     dword [ebp-38H], 0                      ; 2D35 _ C7. 45, C8, 00000000
        mov     dword [ebp-0CH], 16                     ; 2D3C _ C7. 45, F4, 00000010
        mov     dword [ebp-38H], 0                      ; 2D43 _ C7. 45, C8, 00000000
        jmp     ?_120                                   ; 2D4A _ E9, 00000116

?_115:  mov     edx, dword [ebp-38H]                    ; 2D4F _ 8B. 55, C8
        mov     eax, dword [ebp-5CH]                    ; 2D52 _ 8B. 45, A4
        add     eax, edx                                ; 2D55 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D57 _ 0F B6. 00
        mov     byte [ebp-2B4H], al                     ; 2D5A _ 88. 85, FFFFFD4C
        mov     byte [ebp-2B3H], 0                      ; 2D60 _ C6. 85, FFFFFD4D, 00
        movzx   eax, byte [ebp-2B4H]                    ; 2D67 _ 0F B6. 85, FFFFFD4C
        cmp     al, 9                                   ; 2D6E _ 3C, 09
        jnz     ?_117                                   ; 2D70 _ 75, 5D
?_116:  mov     eax, dword [_shtctl]                    ; 2D72 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_314                  ; 2D77 _ C7. 44 24, 14, 00000078(d)
        mov     dword [esp+10H], 7                      ; 2D7F _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-14H]                    ; 2D87 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2D8A _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2D8E _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2D91 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2D95 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2D98 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D9C _ 89. 04 24
        call    _showString                             ; 2D9F _ E8, FFFFE192
        add     dword [ebp-0CH], 8                      ; 2DA4 _ 83. 45, F4, 08
        cmp     dword [ebp-0CH], 248                    ; 2DA8 _ 81. 7D, F4, 000000F8
        jnz     ?_116                                   ; 2DAF _ 75, C1
        mov     dword [ebp-0CH], 8                      ; 2DB1 _ C7. 45, F4, 00000008
        mov     eax, dword [ebp+8H]                     ; 2DB8 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2DBB _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2DBF _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2DC2 _ 89. 04 24
        call    _cons_newline                           ; 2DC5 _ E8, 00000443
        mov     dword [ebp-14H], eax                    ; 2DCA _ 89. 45, EC
        jmp     ?_116                                   ; 2DCD _ EB, A3

?_117:  movzx   eax, byte [ebp-2B4H]                    ; 2DCF _ 0F B6. 85, FFFFFD4C
        cmp     al, 10                                  ; 2DD6 _ 3C, 0A
        jnz     ?_118                                   ; 2DD8 _ 75, 1E
        mov     dword [ebp-0CH], 8                      ; 2DDA _ C7. 45, F4, 00000008
        mov     eax, dword [ebp+8H]                     ; 2DE1 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2DE4 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2DE8 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2DEB _ 89. 04 24
        call    _cons_newline                           ; 2DEE _ E8, 0000041A
        mov     dword [ebp-14H], eax                    ; 2DF3 _ 89. 45, EC
        jmp     ?_119                                   ; 2DF6 _ EB, 69

?_118:  movzx   eax, byte [ebp-2B4H]                    ; 2DF8 _ 0F B6. 85, FFFFFD4C
        cmp     al, 13                                  ; 2DFF _ 3C, 0D
        jz      ?_119                                   ; 2E01 _ 74, 5E
        mov     edx, dword [_shtctl]                    ; 2E03 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-2B4H]                         ; 2E09 _ 8D. 85, FFFFFD4C
        mov     dword [esp+14H], eax                    ; 2E0F _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2E13 _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-14H]                    ; 2E1B _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 2E1E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2E22 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2E25 _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 2E29 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2E2C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2E30 _ 89. 14 24
        call    _showString                             ; 2E33 _ E8, FFFFE0FE
        add     dword [ebp-0CH], 8                      ; 2E38 _ 83. 45, F4, 08
        cmp     dword [ebp-0CH], 248                    ; 2E3C _ 81. 7D, F4, 000000F8
        jnz     ?_119                                   ; 2E43 _ 75, 1C
        mov     dword [ebp-0CH], 16                     ; 2E45 _ C7. 45, F4, 00000010
        mov     eax, dword [ebp+8H]                     ; 2E4C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2E4F _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2E53 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2E56 _ 89. 04 24
        call    _cons_newline                           ; 2E59 _ E8, 000003AF
        mov     dword [ebp-14H], eax                    ; 2E5E _ 89. 45, EC
?_119:  add     dword [ebp-38H], 1                      ; 2E61 _ 83. 45, C8, 01
?_120:  mov     eax, dword [ebp-38H]                    ; 2E65 _ 8B. 45, C8
        cmp     eax, dword [ebp-60H]                    ; 2E68 _ 3B. 45, A0
        jl      ?_115                                   ; 2E6B _ 0F 8C, FFFFFEDE
        nop                                             ; 2E71 _ 90
        jmp     ?_123                                   ; 2E72 _ EB, 12

?_121:  add     dword [ebp-20H], 32                     ; 2E74 _ 83. 45, E0, 20
?_122:  mov     eax, dword [ebp-20H]                    ; 2E78 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 2E7B _ 0F B6. 00
        test    al, al                                  ; 2E7E _ 84. C0
        jne     ?_108                                   ; 2E80 _ 0F 85, FFFFFDDB
?_123:  mov     eax, dword [ebp+8H]                     ; 2E86 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2E89 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2E8D _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2E90 _ 89. 04 24
        call    _cons_newline                           ; 2E93 _ E8, 00000375
        mov     dword [ebp-14H], eax                    ; 2E98 _ 89. 45, EC
        mov     dword [ebp-0CH], 16                     ; 2E9B _ C7. 45, F4, 00000010
        jmp     ?_126                                   ; 2EA2 _ E9, 0000011E

?_124:  cmp     dword [ebp-48H], 14                     ; 2EA7 _ 83. 7D, B8, 0E
        jnz     ?_125                                   ; 2EAB _ 75, 63
        cmp     dword [ebp-0CH], 8                      ; 2EAD _ 83. 7D, F4, 08
        jle     ?_125                                   ; 2EB1 _ 7E, 5D
        mov     eax, dword [_shtctl]                    ; 2EB3 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2EB8 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-14H]                    ; 2EC0 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2EC3 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2EC7 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2ECA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2ECE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2ED1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2ED5 _ 89. 04 24
        call    _set_cursor                             ; 2ED8 _ E8, 000002A9
        sub     dword [ebp-0CH], 8                      ; 2EDD _ 83. 6D, F4, 08
        mov     eax, dword [_shtctl]                    ; 2EE1 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2EE6 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-14H]                    ; 2EEE _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2EF1 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2EF5 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2EF8 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2EFC _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2EFF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F03 _ 89. 04 24
        call    _set_cursor                             ; 2F06 _ E8, 0000027B
        jmp     ?_126                                   ; 2F0B _ E9, 000000B5

?_125:  mov     eax, dword [ebp-48H]                    ; 2F10 _ 8B. 45, B8
        mov     dword [esp], eax                        ; 2F13 _ 89. 04 24
        call    _transferScanCode                       ; 2F16 _ E8, 000000E2
        mov     byte [ebp-61H], al                      ; 2F1B _ 88. 45, 9F
        cmp     dword [ebp-0CH], 239                    ; 2F1E _ 81. 7D, F4, 000000EF
        jg      ?_126                                   ; 2F25 _ 0F 8F, 0000009A
        cmp     byte [ebp-61H], 0                       ; 2F2B _ 80. 7D, 9F, 00
        je      ?_126                                   ; 2F2F _ 0F 84, 00000090
        mov     eax, dword [_shtctl]                    ; 2F35 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2F3A _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-14H]                    ; 2F42 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2F45 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2F49 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2F4C _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2F50 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2F53 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F57 _ 89. 04 24
        call    _set_cursor                             ; 2F5A _ E8, 00000227
        movzx   eax, byte [ebp-61H]                     ; 2F5F _ 0F B6. 45, 9F
        mov     byte [ebp-2B6H], al                     ; 2F63 _ 88. 85, FFFFFD4A
        mov     byte [ebp-2B5H], 0                      ; 2F69 _ C6. 85, FFFFFD4B, 00
        mov     eax, dword [ebp-0CH]                    ; 2F70 _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 2F73 _ 8D. 50, 07
        test    eax, eax                                ; 2F76 _ 85. C0
        cmovs   eax, edx                                ; 2F78 _ 0F 48. C2
        sar     eax, 3                                  ; 2F7B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 2F7E _ 8D. 50, FE
        movzx   eax, byte [ebp-61H]                     ; 2F81 _ 0F B6. 45, 9F
        mov     byte [ebp+edx-282H], al                 ; 2F85 _ 88. 84 15, FFFFFD7E
        mov     edx, dword [_shtctl]                    ; 2F8C _ 8B. 15, 00000264(d)
        lea     eax, [ebp-2B6H]                         ; 2F92 _ 8D. 85, FFFFFD4A
        mov     dword [esp+14H], eax                    ; 2F98 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2F9C _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-14H]                    ; 2FA4 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 2FA7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2FAB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2FAE _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 2FB2 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2FB5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2FB9 _ 89. 14 24
        call    _showString                             ; 2FBC _ E8, FFFFDF75
        add     dword [ebp-0CH], 8                      ; 2FC1 _ 83. 45, F4, 08
?_126:  cmp     dword [ebp-10H], 0                      ; 2FC5 _ 83. 7D, F0, 00
        js      ?_080                                   ; 2FC9 _ 0F 88, FFFFF64F
        mov     eax, dword [_shtctl]                    ; 2FCF _ A1, 00000264(d)
        mov     edx, dword [ebp-10H]                    ; 2FD4 _ 8B. 55, F0
        mov     dword [esp+10H], edx                    ; 2FD7 _ 89. 54 24, 10
        mov     edx, dword [ebp-14H]                    ; 2FDB _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 2FDE _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2FE2 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2FE5 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2FE9 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2FEC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FF0 _ 89. 04 24
        call    _set_cursor                             ; 2FF3 _ E8, 0000018E
        jmp     ?_080                                   ; 2FF8 _ E9, FFFFF621

_transferScanCode:; Function begin
        push    ebp                                     ; 2FFD _ 55
        mov     ebp, esp                                ; 2FFE _ 89. E5
        sub     esp, 16                                 ; 3000 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 3003 _ 83. 7D, 08, 2A
        jnz     ?_127                                   ; 3007 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 3009 _ A1, 00000000(d)
        or      eax, 01H                                ; 300E _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 3011 _ A3, 00000000(d)
?_127:  cmp     dword [ebp+8H], 54                      ; 3016 _ 83. 7D, 08, 36
        jnz     ?_128                                   ; 301A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 301C _ A1, 00000000(d)
        or      eax, 02H                                ; 3021 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 3024 _ A3, 00000000(d)
?_128:  cmp     dword [ebp+8H], 170                     ; 3029 _ 81. 7D, 08, 000000AA
        jnz     ?_129                                   ; 3030 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 3032 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 3037 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 303A _ A3, 00000000(d)
?_129:  cmp     dword [ebp+8H], 182                     ; 303F _ 81. 7D, 08, 000000B6
        jnz     ?_130                                   ; 3046 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 3048 _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 304D _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 3050 _ A3, 00000000(d)
?_130:  cmp     dword [ebp+8H], 58                      ; 3055 _ 83. 7D, 08, 3A
        jnz     ?_132                                   ; 3059 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 305B _ A1, 00000004(d)
        test    eax, eax                                ; 3060 _ 85. C0
        jnz     ?_131                                   ; 3062 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 3064 _ C7. 05, 00000004(d), 00000001
        jmp     ?_132                                   ; 306E _ EB, 0A

?_131:  mov     dword [_caps_lock], 0                   ; 3070 _ C7. 05, 00000004(d), 00000000
?_132:  cmp     dword [ebp+8H], 42                      ; 307A _ 83. 7D, 08, 2A
        jz      ?_133                                   ; 307E _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 3080 _ 83. 7D, 08, 36
        jz      ?_133                                   ; 3084 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 3086 _ 81. 7D, 08, 000000AA
        jz      ?_133                                   ; 308D _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 308F _ 81. 7D, 08, 000000B6
        jz      ?_133                                   ; 3096 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 3098 _ 83. 7D, 08, 53
        jg      ?_133                                   ; 309C _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 309E _ 83. 7D, 08, 3A
        jnz     ?_134                                   ; 30A2 _ 75, 0A
?_133:  mov     eax, 0                                  ; 30A4 _ B8, 00000000
        jmp     ?_139                                   ; 30A9 _ E9, 0000008A

?_134:  mov     byte [ebp-1H], 0                        ; 30AE _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 30B2 _ A1, 00000000(d)
        test    eax, eax                                ; 30B7 _ 85. C0
        jnz     ?_135                                   ; 30B9 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 30BB _ 83. 7D, 08, 53
        jg      ?_135                                   ; 30BF _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 30C1 _ 8B. 45, 08
        add     eax, _keytable                          ; 30C4 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 30C9 _ 0F B6. 00
        test    al, al                                  ; 30CC _ 84. C0
        jz      ?_135                                   ; 30CE _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 30D0 _ 8B. 45, 08
        add     eax, _keytable                          ; 30D3 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 30D8 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 30DB _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 30DE _ 80. 7D, FF, 40
        jle     ?_137                                   ; 30E2 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 30E4 _ 80. 7D, FF, 5A
        jg      ?_137                                   ; 30E8 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 30EA _ A1, 00000004(d)
        test    eax, eax                                ; 30EF _ 85. C0
        jnz     ?_137                                   ; 30F1 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 30F3 _ 0F B6. 45, FF
        add     eax, 32                                 ; 30F7 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 30FA _ 88. 45, FF
        jmp     ?_137                                   ; 30FD _ EB, 34

?_135:  mov     eax, dword [_key_shift]                 ; 30FF _ A1, 00000000(d)
        test    eax, eax                                ; 3104 _ 85. C0
        jz      ?_136                                   ; 3106 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 3108 _ 83. 7D, 08, 7F
        jg      ?_136                                   ; 310C _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 310E _ 8B. 45, 08
        add     eax, _keytable1                         ; 3111 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 3116 _ 0F B6. 00
        test    al, al                                  ; 3119 _ 84. C0
        jz      ?_136                                   ; 311B _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 311D _ 8B. 45, 08
        add     eax, _keytable1                         ; 3120 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 3125 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 3128 _ 88. 45, FF
        jmp     ?_138                                   ; 312B _ EB, 07

?_136:  mov     byte [ebp-1H], 0                        ; 312D _ C6. 45, FF, 00
        jmp     ?_138                                   ; 3131 _ EB, 01

?_137:  nop                                             ; 3133 _ 90
?_138:  movzx   eax, byte [ebp-1H]                      ; 3134 _ 0F B6. 45, FF
?_139:  leave                                           ; 3138 _ C9
        ret                                             ; 3139 _ C3
; _transferScanCode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 313A _ 55
        mov     ebp, esp                                ; 313B _ 89. E5
        sub     esp, 4                                  ; 313D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 3140 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3143 _ 89. 04 24
        call    _transferScanCode                       ; 3146 _ E8, FFFFFEB2
        cmp     dword [ebp+8H], 58                      ; 314B _ 83. 7D, 08, 3A
        jz      ?_140                                   ; 314F _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 3151 _ 81. 7D, 08, 000000BA
        jz      ?_140                                   ; 3158 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 315A _ 83. 7D, 08, 2A
        jz      ?_140                                   ; 315E _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 3160 _ 83. 7D, 08, 36
        jz      ?_140                                   ; 3164 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 3166 _ 81. 7D, 08, 000000AA
        jz      ?_140                                   ; 316D _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 316F _ 81. 7D, 08, 000000B6
        jnz     ?_141                                   ; 3176 _ 75, 07
?_140:  mov     eax, 1                                  ; 3178 _ B8, 00000001
        jmp     ?_142                                   ; 317D _ EB, 05

?_141:  mov     eax, 0                                  ; 317F _ B8, 00000000
?_142:  leave                                           ; 3184 _ C9
        ret                                             ; 3185 _ C3
; _isSpecialKey End of function

_set_cursor:; Function begin
        push    ebp                                     ; 3186 _ 55
        mov     ebp, esp                                ; 3187 _ 89. E5
        push    esi                                     ; 3189 _ 56
        push    ebx                                     ; 318A _ 53
        sub     esp, 32                                 ; 318B _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 318E _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 3191 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 3194 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 3197 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 319A _ 8B. 45, 18
        movzx   eax, al                                 ; 319D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 31A0 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 31A3 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 31A6 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 31A9 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 31AB _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 31AF _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 31B3 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 31B6 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 31BA _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 31BD _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 31C1 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 31C5 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 31C9 _ 89. 14 24
        call    _boxfill8                               ; 31CC _ E8, FFFFDED2
        mov     eax, dword [ebp+14H]                    ; 31D1 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 31D4 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 31D7 _ 8B. 45, 10
        add     eax, 8                                  ; 31DA _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 31DD _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 31E1 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 31E5 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 31E8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 31EC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 31EF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 31F3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 31F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31FD _ 89. 04 24
        call    _sheet_refresh                          ; 3200 _ E8, 00000000(rel)
        nop                                             ; 3205 _ 90
        add     esp, 32                                 ; 3206 _ 83. C4, 20
        pop     ebx                                     ; 3209 _ 5B
        pop     esi                                     ; 320A _ 5E
        pop     ebp                                     ; 320B _ 5D
        ret                                             ; 320C _ C3
; _set_cursor End of function

_cons_newline:; Function begin
        push    ebp                                     ; 320D _ 55
        mov     ebp, esp                                ; 320E _ 89. E5
        push    ebx                                     ; 3210 _ 53
        sub     esp, 52                                 ; 3211 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 3214 _ 81. 7D, 08, 0000008B
        jg      ?_143                                   ; 321B _ 7F, 09
        add     dword [ebp+8H], 16                      ; 321D _ 83. 45, 08, 10
        jmp     ?_152                                   ; 3221 _ E9, 000000DB

?_143:  mov     dword [ebp-10H], 28                     ; 3226 _ C7. 45, F0, 0000001C
        jmp     ?_147                                   ; 322D _ EB, 50

?_144:  mov     dword [ebp-0CH], 8                      ; 322F _ C7. 45, F4, 00000008
        jmp     ?_146                                   ; 3236 _ EB, 3A

?_145:  mov     eax, dword [ebp+0CH]                    ; 3238 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 323B _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 323D _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 3240 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 3243 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3246 _ 8B. 40, 04
        imul    eax, ecx                                ; 3249 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 324C _ 8B. 4D, F4
        add     eax, ecx                                ; 324F _ 01. C8
        add     eax, edx                                ; 3251 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 3253 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 3256 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 3258 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 325B _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 325E _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 3262 _ 8B. 5D, F4
        add     edx, ebx                                ; 3265 _ 01. DA
        add     edx, ecx                                ; 3267 _ 01. CA
        movzx   eax, byte [eax]                         ; 3269 _ 0F B6. 00
        mov     byte [edx], al                          ; 326C _ 88. 02
        add     dword [ebp-0CH], 1                      ; 326E _ 83. 45, F4, 01
?_146:  cmp     dword [ebp-0CH], 247                    ; 3272 _ 81. 7D, F4, 000000F7
        jle     ?_145                                   ; 3279 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 327B _ 83. 45, F0, 01
?_147:  cmp     dword [ebp-10H], 139                    ; 327F _ 81. 7D, F0, 0000008B
        jle     ?_144                                   ; 3286 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 3288 _ C7. 45, F0, 0000008C
        jmp     ?_151                                   ; 328F _ EB, 33

?_148:  mov     dword [ebp-0CH], 8                      ; 3291 _ C7. 45, F4, 00000008
        jmp     ?_150                                   ; 3298 _ EB, 1D

?_149:  mov     eax, dword [ebp+0CH]                    ; 329A _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 329D _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 329F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32A2 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 32A5 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 32A9 _ 8B. 4D, F4
        add     eax, ecx                                ; 32AC _ 01. C8
        add     eax, edx                                ; 32AE _ 01. D0
        mov     byte [eax], 0                           ; 32B0 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 32B3 _ 83. 45, F4, 01
?_150:  cmp     dword [ebp-0CH], 247                    ; 32B7 _ 81. 7D, F4, 000000F7
        jle     ?_149                                   ; 32BE _ 7E, DA
        add     dword [ebp-10H], 1                      ; 32C0 _ 83. 45, F0, 01
?_151:  cmp     dword [ebp-10H], 155                    ; 32C4 _ 81. 7D, F0, 0000009B
        jle     ?_148                                   ; 32CB _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 32CD _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 32D2 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 32DA _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 32E2 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 32EA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 32F2 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 32F5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 32F9 _ 89. 04 24
        call    _sheet_refresh                          ; 32FC _ E8, 00000000(rel)
?_152:  mov     eax, dword [_shtctl]                    ; 3301 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_306                  ; 3306 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 330E _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 3316 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 3319 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 331D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 3325 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 3328 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 332C _ 89. 04 24
        call    _showString                             ; 332F _ E8, FFFFDC02
        mov     eax, dword [ebp+8H]                     ; 3334 _ 8B. 45, 08
        add     esp, 52                                 ; 3337 _ 83. C4, 34
        pop     ebx                                     ; 333A _ 5B
        pop     ebp                                     ; 333B _ 5D
        ret                                             ; 333C _ C3
; _cons_newline End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 333D _ 55
        mov     ebp, esp                                ; 333E _ 89. E5
        sub     esp, 56                                 ; 3340 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 3343 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 334A _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 334F _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 3357 _ 89. 04 24
        call    _memman_alloc                           ; 335A _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 335F _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 3362 _ 8B. 45, E4
        add     eax, 12                                 ; 3365 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 3368 _ C6. 00, 00
        jmp     ?_163                                   ; 336B _ E9, 00000125

?_153:  mov     dword [ebp-10H], 0                      ; 3370 _ C7. 45, F0, 00000000
        jmp     ?_155                                   ; 3377 _ EB, 2A

?_154:  mov     edx, dword [ebp-0CH]                    ; 3379 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 337C _ 8B. 45, F0
        add     eax, edx                                ; 337F _ 01. D0
        movzx   eax, byte [eax]                         ; 3381 _ 0F B6. 00
        test    al, al                                  ; 3384 _ 84. C0
        jz      ?_156                                   ; 3386 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 3388 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 338B _ 8B. 45, F0
        add     eax, edx                                ; 338E _ 01. D0
        movzx   ecx, byte [eax]                         ; 3390 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3393 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3396 _ 8B. 45, E4
        add     eax, edx                                ; 3399 _ 01. D0
        mov     edx, ecx                                ; 339B _ 89. CA
        mov     byte [eax], dl                          ; 339D _ 88. 10
        add     dword [ebp-10H], 1                      ; 339F _ 83. 45, F0, 01
?_155:  cmp     dword [ebp-10H], 7                      ; 33A3 _ 83. 7D, F0, 07
        jle     ?_154                                   ; 33A7 _ 7E, D0
        jmp     ?_157                                   ; 33A9 _ EB, 01

?_156:  nop                                             ; 33AB _ 90
?_157:  mov     dword [ebp-14H], 0                      ; 33AC _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 33B3 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 33B6 _ 8B. 45, E4
        add     eax, edx                                ; 33B9 _ 01. D0
        mov     byte [eax], 46                          ; 33BB _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 33BE _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 33C2 _ C7. 45, EC, 00000000
        jmp     ?_159                                   ; 33C9 _ EB, 22

?_158:  mov     edx, dword [ebp-0CH]                    ; 33CB _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 33CE _ 8B. 45, EC
        add     eax, edx                                ; 33D1 _ 01. D0
        add     eax, 8                                  ; 33D3 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 33D6 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 33D9 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 33DC _ 8B. 45, E4
        add     eax, edx                                ; 33DF _ 01. D0
        mov     edx, ecx                                ; 33E1 _ 89. CA
        mov     byte [eax], dl                          ; 33E3 _ 88. 10
        add     dword [ebp-10H], 1                      ; 33E5 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 33E9 _ 83. 45, EC, 01
?_159:  cmp     dword [ebp-14H], 2                      ; 33ED _ 83. 7D, EC, 02
        jle     ?_158                                   ; 33F1 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 33F3 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 33F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33FD _ 89. 04 24
        call    _strcmp                                 ; 3400 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3405 _ 83. F8, 01
        jne     ?_162                                   ; 3408 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 340E _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3411 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3414 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3419 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 341D _ 89. 04 24
        call    _memman_alloc_4k                        ; 3420 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3425 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3427 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 342A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 342C _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 342F _ 8B. 40, 1C
        mov     edx, eax                                ; 3432 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3434 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 3437 _ 89. 50, 04
        mov     dword [ebp-20H], 88064                  ; 343A _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3441 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3444 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 3448 _ 0F B7. C0
        shl     eax, 9                                  ; 344B _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 344E _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3451 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3454 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 3457 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 345A _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3461 _ C7. 45, E8, 00000000
        jmp     ?_161                                   ; 3468 _ EB, 1D

?_160:  mov     edx, dword [ebp-18H]                    ; 346A _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 346D _ 8B. 45, E0
        add     eax, edx                                ; 3470 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3472 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 3475 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 3478 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 347A _ 8B. 45, E8
        add     eax, edx                                ; 347D _ 01. D0
        mov     edx, ecx                                ; 347F _ 89. CA
        mov     byte [eax], dl                          ; 3481 _ 88. 10
        add     dword [ebp-18H], 1                      ; 3483 _ 83. 45, E8, 01
?_161:  mov     eax, dword [ebp-18H]                    ; 3487 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 348A _ 3B. 45, DC
        jl      ?_160                                   ; 348D _ 7C, DB
        jmp     ?_164                                   ; 348F _ EB, 12

?_162:  add     dword [ebp-0CH], 32                     ; 3491 _ 83. 45, F4, 20
?_163:  mov     eax, dword [ebp-0CH]                    ; 3495 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 3498 _ 0F B6. 00
        test    al, al                                  ; 349B _ 84. C0
        jne     ?_153                                   ; 349D _ 0F 85, FFFFFECD
?_164:  mov     edx, dword [ebp-1CH]                    ; 34A3 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 34A6 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 34AB _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 34B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 34B7 _ 89. 04 24
        call    _memman_free                            ; 34BA _ E8, 00000000(rel)
        nop                                             ; 34BF _ 90
        leave                                           ; 34C0 _ C9
        ret                                             ; 34C1 _ C3
; _file_loadfile End of function

        nop                                             ; 34C2 _ 90
        nop                                             ; 34C3 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 34C4 _ 55
        mov     ebp, esp                                ; 34C5 _ 89. E5
        sub     esp, 40                                 ; 34C7 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 34CA _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 34D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34D5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 34D8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 34DD _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 34E0 _ 83. 7D, F0, 00
        jnz     ?_165                                   ; 34E4 _ 75, 0A
        mov     eax, 0                                  ; 34E6 _ B8, 00000000
        jmp     ?_169                                   ; 34EB _ E9, 0000009D

?_165:  mov     eax, dword [ebp+10H]                    ; 34F0 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 34F3 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 34F7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34FB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34FE _ 89. 04 24
        call    _memman_alloc_4k                        ; 3501 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3506 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3508 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 350B _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 350E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3511 _ 8B. 40, 04
        test    eax, eax                                ; 3514 _ 85. C0
        jnz     ?_166                                   ; 3516 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3518 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 351B _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3523 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3527 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 352A _ 89. 04 24
        call    _memman_free_4k                         ; 352D _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3532 _ B8, 00000000
        jmp     ?_169                                   ; 3537 _ EB, 54

?_166:  mov     eax, dword [ebp-10H]                    ; 3539 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 353C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 353F _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3541 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3544 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3547 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 354A _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 354D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3550 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3553 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3556 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 355D _ C7. 45, F4, 00000000
        jmp     ?_168                                   ; 3564 _ EB, 1B

?_167:  mov     edx, dword [ebp-10H]                    ; 3566 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 3569 _ 8B. 45, F4
        add     eax, 33                                 ; 356C _ 83. C0, 21
        shl     eax, 5                                  ; 356F _ C1. E0, 05
        add     eax, edx                                ; 3572 _ 01. D0
        add     eax, 16                                 ; 3574 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3577 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 357D _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 255                    ; 3581 _ 81. 7D, F4, 000000FF
        jle     ?_167                                   ; 3588 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 358A _ 8B. 45, F0
?_169:  leave                                           ; 358D _ C9
        ret                                             ; 358E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 358F _ 55
        mov     ebp, esp                                ; 3590 _ 89. E5
        sub     esp, 16                                 ; 3592 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3595 _ C7. 45, FC, 00000000
        jmp     ?_172                                   ; 359C _ EB, 5B

?_170:  mov     edx, dword [ebp+8H]                     ; 359E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 35A1 _ 8B. 45, FC
        add     eax, 33                                 ; 35A4 _ 83. C0, 21
        shl     eax, 5                                  ; 35A7 _ C1. E0, 05
        add     eax, edx                                ; 35AA _ 01. D0
        add     eax, 16                                 ; 35AC _ 83. C0, 10
        mov     eax, dword [eax]                        ; 35AF _ 8B. 00
        test    eax, eax                                ; 35B1 _ 85. C0
        jnz     ?_171                                   ; 35B3 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 35B5 _ 8B. 45, FC
        shl     eax, 5                                  ; 35B8 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 35BB _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 35C1 _ 8B. 45, 08
        add     eax, edx                                ; 35C4 _ 01. D0
        add     eax, 4                                  ; 35C6 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 35C9 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 35CC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35CF _ 8B. 55, FC
        add     edx, 4                                  ; 35D2 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 35D5 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 35D8 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 35DC _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 35DF _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 35E6 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 35E9 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 35F0 _ 8B. 45, F8
        jmp     ?_173                                   ; 35F3 _ EB, 12

?_171:  add     dword [ebp-4H], 1                       ; 35F5 _ 83. 45, FC, 01
?_172:  cmp     dword [ebp-4H], 255                     ; 35F9 _ 81. 7D, FC, 000000FF
        jle     ?_170                                   ; 3600 _ 7E, 9C
        mov     eax, 0                                  ; 3602 _ B8, 00000000
?_173:  leave                                           ; 3607 _ C9
        ret                                             ; 3608 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3609 _ 55
        mov     ebp, esp                                ; 360A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 360C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 360F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3612 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3614 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3617 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 361A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 361D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3620 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3623 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3626 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3629 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 362C _ 89. 50, 14
        nop                                             ; 362F _ 90
        pop     ebp                                     ; 3630 _ 5D
        ret                                             ; 3631 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3632 _ 55
        mov     ebp, esp                                ; 3633 _ 89. E5
        push    edi                                     ; 3635 _ 57
        push    esi                                     ; 3636 _ 56
        push    ebx                                     ; 3637 _ 53
        sub     esp, 60                                 ; 3638 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 363B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 363E _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3641 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3644 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3647 _ 8B. 40, 10
        add     eax, 1                                  ; 364A _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 364D _ 39. 45, 10
        jle     ?_174                                   ; 3650 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3652 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3655 _ 8B. 40, 10
        add     eax, 1                                  ; 3658 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 365B _ 89. 45, 10
?_174:  cmp     dword [ebp+10H], -1                     ; 365E _ 83. 7D, 10, FF
        jge     ?_175                                   ; 3662 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3664 _ C7. 45, 10, FFFFFFFF
?_175:  mov     eax, dword [ebp+0CH]                    ; 366B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 366E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3671 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3674 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3677 _ 3B. 45, 10
        jle     ?_182                                   ; 367A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3680 _ 83. 7D, 10, 00
        js      ?_178                                   ; 3684 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 368A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 368D _ 89. 45, E4
        jmp     ?_177                                   ; 3690 _ EB, 34

?_176:  mov     eax, dword [ebp-1CH]                    ; 3692 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3695 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3698 _ 8B. 45, 08
        add     edx, 4                                  ; 369B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 369E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36A2 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36A5 _ 8B. 55, E4
        add     edx, 4                                  ; 36A8 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 36AB _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36AF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36B2 _ 8B. 55, E4
        add     edx, 4                                  ; 36B5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 36B8 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 36BC _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 36BF _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 36C2 _ 83. 6D, E4, 01
?_177:  mov     eax, dword [ebp-1CH]                    ; 36C6 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 36C9 _ 3B. 45, 10
        jg      ?_176                                   ; 36CC _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 36CE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 36D1 _ 8B. 55, 10
        add     edx, 4                                  ; 36D4 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 36D7 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 36DA _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 36DE _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 36E1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 36E4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36E7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36EA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 36ED _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 36F0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 36F3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 36F6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 36F9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 36FC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 36FF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3702 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3705 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3708 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 370B _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 370E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3712 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3716 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 371A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 371E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3722 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3725 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3728 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 372D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3730 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3733 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3736 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3739 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 373C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 373F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3742 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3745 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3748 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 374B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 374E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3751 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3754 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3757 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 375A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 375D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3760 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3764 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3768 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 376C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3770 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3774 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3778 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 377B _ 89. 04 24
        call    _sheet_refreshsub                       ; 377E _ E8, 00000465
        jmp     ?_189                                   ; 3783 _ E9, 0000027D

?_178:  mov     eax, dword [ebp+8H]                     ; 3788 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 378B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 378E _ 39. 45, E0
        jge     ?_181                                   ; 3791 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3793 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3796 _ 89. 45, E4
        jmp     ?_180                                   ; 3799 _ EB, 34

?_179:  mov     eax, dword [ebp-1CH]                    ; 379B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 379E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37A1 _ 8B. 45, 08
        add     edx, 4                                  ; 37A4 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 37A7 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37AB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 37AE _ 8B. 55, E4
        add     edx, 4                                  ; 37B1 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 37B4 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37B8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 37BB _ 8B. 55, E4
        add     edx, 4                                  ; 37BE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 37C1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 37C5 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 37C8 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 37CB _ 83. 45, E4, 01
?_180:  mov     eax, dword [ebp+8H]                     ; 37CF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37D2 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 37D5 _ 39. 45, E4
        jl      ?_179                                   ; 37D8 _ 7C, C1
?_181:  mov     eax, dword [ebp+8H]                     ; 37DA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37DD _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 37E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37E3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37E6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37E9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37EC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37EF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 37F2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 37F5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 37F8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 37FB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 37FE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3801 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3804 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3807 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 380A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 380D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3810 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3813 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 381B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 381F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3823 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3827 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 382B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 382E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3831 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 3836 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3839 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 383C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 383F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3842 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3845 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3848 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 384B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 384E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3851 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3854 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3857 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 385A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 385D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3860 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3863 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 3866 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 386A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3872 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3876 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 387A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 387E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3882 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3885 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3888 _ E8, 0000035B
        jmp     ?_189                                   ; 388D _ E9, 00000173

?_182:  mov     eax, dword [ebp-20H]                    ; 3892 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3895 _ 3B. 45, 10
        jge     ?_189                                   ; 3898 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 389E _ 83. 7D, E0, 00
        js      ?_185                                   ; 38A2 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 38A4 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 38A7 _ 89. 45, E4
        jmp     ?_184                                   ; 38AA _ EB, 34

?_183:  mov     eax, dword [ebp-1CH]                    ; 38AC _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 38AF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38B2 _ 8B. 45, 08
        add     edx, 4                                  ; 38B5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 38B8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38BC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38BF _ 8B. 55, E4
        add     edx, 4                                  ; 38C2 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 38C5 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38C9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38CC _ 8B. 55, E4
        add     edx, 4                                  ; 38CF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 38D2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 38D6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 38D9 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 38DC _ 83. 45, E4, 01
?_184:  mov     eax, dword [ebp-1CH]                    ; 38E0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 38E3 _ 3B. 45, 10
        jl      ?_183                                   ; 38E6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 38E8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 38EB _ 8B. 55, 10
        add     edx, 4                                  ; 38EE _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 38F1 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 38F4 _ 89. 4C 90, 04
        jmp     ?_188                                   ; 38F8 _ EB, 6C

?_185:  mov     eax, dword [ebp+8H]                     ; 38FA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 38FD _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3900 _ 89. 45, E4
        jmp     ?_187                                   ; 3903 _ EB, 3A

?_186:  mov     eax, dword [ebp-1CH]                    ; 3905 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 3908 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 390B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 390E _ 8B. 55, E4
        add     edx, 4                                  ; 3911 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3914 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3918 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 391B _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 391E _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3922 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3925 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3928 _ 8B. 45, 08
        add     edx, 4                                  ; 392B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 392E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3932 _ 8B. 55, E4
        add     edx, 1                                  ; 3935 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3938 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 393B _ 83. 6D, E4, 01
?_187:  mov     eax, dword [ebp-1CH]                    ; 393F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3942 _ 3B. 45, 10
        jge     ?_186                                   ; 3945 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 3947 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 394A _ 8B. 55, 10
        add     edx, 4                                  ; 394D _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3950 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3953 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3957 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 395A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 395D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3960 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3963 _ 89. 50, 10
?_188:  mov     eax, dword [ebp+0CH]                    ; 3966 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3969 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 396C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 396F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3972 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3975 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3978 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 397B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 397E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3981 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3984 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3987 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 398A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 398D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3990 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3993 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3997 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 399B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 399F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 39A3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39A7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39AA _ 89. 04 24
        call    _sheet_refreshmap                       ; 39AD _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 39B2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 39B5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39B8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 39BB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 39BE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 39C1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 39C4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 39C7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 39CA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 39CD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 39D0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 39D3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39D6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 39D9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 39DC _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 39DF _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 39E3 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 39E6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 39EA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 39EE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 39F2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 39F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39FD _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A00 _ E8, 000001E3
?_189:  nop                                             ; 3A05 _ 90
        add     esp, 60                                 ; 3A06 _ 83. C4, 3C
        pop     ebx                                     ; 3A09 _ 5B
        pop     esi                                     ; 3A0A _ 5E
        pop     edi                                     ; 3A0B _ 5F
        pop     ebp                                     ; 3A0C _ 5D
        ret                                             ; 3A0D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3A0E _ 55
        mov     ebp, esp                                ; 3A0F _ 89. E5
        push    edi                                     ; 3A11 _ 57
        push    esi                                     ; 3A12 _ 56
        push    ebx                                     ; 3A13 _ 53
        sub     esp, 60                                 ; 3A14 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3A17 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3A1A _ 8B. 40, 18
        test    eax, eax                                ; 3A1D _ 85. C0
        js      ?_190                                   ; 3A1F _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3A21 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3A24 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 3A27 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 3A2A _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3A2D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A30 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3A33 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 3A36 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3A39 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3A3C _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3A3F _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3A42 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3A45 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A48 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3A4B _ 8B. 45, 14
        add     edx, eax                                ; 3A4E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3A50 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3A53 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 3A56 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3A59 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3A5C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3A5F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3A63 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3A67 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A6B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3A6F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3A73 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A77 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A7A _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A7D _ E8, 00000166
?_190:  mov     eax, 0                                  ; 3A82 _ B8, 00000000
        add     esp, 60                                 ; 3A87 _ 83. C4, 3C
        pop     ebx                                     ; 3A8A _ 5B
        pop     esi                                     ; 3A8B _ 5E
        pop     edi                                     ; 3A8C _ 5F
        pop     ebp                                     ; 3A8D _ 5D
        ret                                             ; 3A8E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3A8F _ 55
        mov     ebp, esp                                ; 3A90 _ 89. E5
        push    esi                                     ; 3A92 _ 56
        push    ebx                                     ; 3A93 _ 53
        sub     esp, 48                                 ; 3A94 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 3A97 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3A9A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3A9D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3AA0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3AA3 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3AA6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3AA9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3AAC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3AAF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3AB2 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3AB5 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3AB8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3ABB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3ABE _ 8B. 40, 18
        test    eax, eax                                ; 3AC1 _ 85. C0
        js      ?_191                                   ; 3AC3 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 3AC9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3ACC _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3ACF _ 8B. 45, F0
        add     edx, eax                                ; 3AD2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3AD4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3AD7 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 3ADA _ 8B. 45, F4
        add     eax, ecx                                ; 3ADD _ 01. C8
        mov     dword [esp+14H], 0                      ; 3ADF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3AE7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3AEB _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3AEF _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3AF2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3AF6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3AF9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3AFD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B00 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3B03 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 3B08 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3B0B _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3B0E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3B11 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3B14 _ 8B. 45, 14
        add     edx, eax                                ; 3B17 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3B19 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3B1C _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 3B1F _ 8B. 45, 10
        add     eax, ebx                                ; 3B22 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 3B24 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3B28 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3B2C _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3B30 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3B33 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3B37 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3B3A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B3E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B41 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3B44 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3B49 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3B4C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3B4F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3B52 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3B55 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3B58 _ 8B. 45, F0
        add     edx, eax                                ; 3B5B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3B5D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3B60 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3B63 _ 8B. 45, F4
        add     eax, ebx                                ; 3B66 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3B68 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3B6C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3B74 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3B78 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3B7C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3B7F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3B83 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3B86 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B8A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B8D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3B90 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3B95 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3B98 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3B9B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3B9E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3BA1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3BA4 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3BA7 _ 8B. 45, 14
        add     edx, eax                                ; 3BAA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3BAC _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3BAF _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3BB2 _ 8B. 45, 10
        add     eax, esi                                ; 3BB5 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 3BB7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3BBB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3BBF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3BC3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3BC7 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3BCA _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3BCE _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3BD1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BD5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BD8 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3BDB _ E8, 00000008
?_191:  nop                                             ; 3BE0 _ 90
        add     esp, 48                                 ; 3BE1 _ 83. C4, 30
        pop     ebx                                     ; 3BE4 _ 5B
        pop     esi                                     ; 3BE5 _ 5E
        pop     ebp                                     ; 3BE6 _ 5D
        ret                                             ; 3BE7 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3BE8 _ 55
        mov     ebp, esp                                ; 3BE9 _ 89. E5
        sub     esp, 48                                 ; 3BEB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3BEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3BF1 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3BF3 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3BF6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BF9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3BFC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3BFF _ 83. 7D, 0C, 00
        jns     ?_192                                   ; 3C03 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3C05 _ C7. 45, 0C, 00000000
?_192:  cmp     dword [ebp+10H], 8                      ; 3C0C _ 83. 7D, 10, 08
        jg      ?_193                                   ; 3C10 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3C12 _ C7. 45, 10, 00000000
?_193:  mov     eax, dword [ebp+8H]                     ; 3C19 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C1C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3C1F _ 39. 45, 14
        jle     ?_194                                   ; 3C22 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C24 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C27 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3C2A _ 89. 45, 14
?_194:  mov     eax, dword [ebp+8H]                     ; 3C2D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C30 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3C33 _ 39. 45, 18
        jle     ?_195                                   ; 3C36 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C38 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C3B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3C3E _ 89. 45, 18
?_195:  mov     eax, dword [ebp+1CH]                    ; 3C41 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3C44 _ 89. 45, FC
        jmp     ?_202                                   ; 3C47 _ E9, 0000010F

?_196:  mov     eax, dword [ebp+8H]                     ; 3C4C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3C4F _ 8B. 55, FC
        add     edx, 4                                  ; 3C52 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3C55 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3C59 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3C5C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3C5F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3C61 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3C64 _ 8B. 45, 08
        add     eax, 1044                               ; 3C67 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3C6C _ 8B. 55, E8
        sub     edx, eax                                ; 3C6F _ 29. C2
        mov     eax, edx                                ; 3C71 _ 89. D0
        sar     eax, 5                                  ; 3C73 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3C76 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3C79 _ C7. 45, F4, 00000000
        jmp     ?_201                                   ; 3C80 _ E9, 000000C3

?_197:  mov     eax, dword [ebp-18H]                    ; 3C85 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3C88 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3C8B _ 8B. 45, F4
        add     eax, edx                                ; 3C8E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3C90 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3C93 _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 3C9A _ E9, 00000096

?_198:  mov     eax, dword [ebp-18H]                    ; 3C9F _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3CA2 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3CA5 _ 8B. 45, F8
        add     eax, edx                                ; 3CA8 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3CAA _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3CAD _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3CB0 _ 3B. 45, D8
        jg      ?_199                                   ; 3CB3 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3CB5 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3CB8 _ 3B. 45, 14
        jge     ?_199                                   ; 3CBB _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3CBD _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3CC0 _ 3B. 45, DC
        jg      ?_199                                   ; 3CC3 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3CC5 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3CC8 _ 3B. 45, 18
        jge     ?_199                                   ; 3CCB _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3CCD _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3CD0 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3CD3 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3CD7 _ 8B. 55, F8
        add     eax, edx                                ; 3CDA _ 01. D0
        mov     edx, eax                                ; 3CDC _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3CDE _ 8B. 45, E4
        add     eax, edx                                ; 3CE1 _ 01. D0
        movzx   eax, byte [eax]                         ; 3CE3 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3CE6 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3CE9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3CEC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3CEF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3CF3 _ 8B. 55, D8
        add     eax, edx                                ; 3CF6 _ 01. D0
        mov     edx, eax                                ; 3CF8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3CFA _ 8B. 45, EC
        add     eax, edx                                ; 3CFD _ 01. D0
        movzx   eax, byte [eax]                         ; 3CFF _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3D02 _ 38. 45, E3
        jnz     ?_199                                   ; 3D05 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3D07 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3D0B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3D0E _ 8B. 52, 14
        cmp     eax, edx                                ; 3D11 _ 39. D0
        jz      ?_199                                   ; 3D13 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3D15 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D18 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3D1B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3D1F _ 8B. 55, D8
        add     eax, edx                                ; 3D22 _ 01. D0
        mov     edx, eax                                ; 3D24 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3D26 _ 8B. 45, F0
        add     edx, eax                                ; 3D29 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3D2B _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3D2F _ 88. 02
?_199:  add     dword [ebp-8H], 1                       ; 3D31 _ 83. 45, F8, 01
?_200:  mov     eax, dword [ebp-18H]                    ; 3D35 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3D38 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3D3B _ 39. 45, F8
        jl      ?_198                                   ; 3D3E _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3D44 _ 83. 45, F4, 01
?_201:  mov     eax, dword [ebp-18H]                    ; 3D48 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3D4B _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3D4E _ 39. 45, F4
        jl      ?_197                                   ; 3D51 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3D57 _ 83. 45, FC, 01
?_202:  mov     eax, dword [ebp-4H]                     ; 3D5B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3D5E _ 3B. 45, 20
        jle     ?_196                                   ; 3D61 _ 0F 8E, FFFFFEE5
        nop                                             ; 3D67 _ 90
        leave                                           ; 3D68 _ C9
        ret                                             ; 3D69 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3D6A _ 55
        mov     ebp, esp                                ; 3D6B _ 89. E5
        sub     esp, 64                                 ; 3D6D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3D70 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3D73 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3D76 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3D79 _ 83. 7D, 0C, 00
        jns     ?_203                                   ; 3D7D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3D7F _ C7. 45, 0C, 00000000
?_203:  cmp     dword [ebp+10H], 0                      ; 3D86 _ 83. 7D, 10, 00
        jns     ?_204                                   ; 3D8A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3D8C _ C7. 45, 10, 00000000
?_204:  mov     eax, dword [ebp+8H]                     ; 3D93 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D96 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3D99 _ 39. 45, 14
        jle     ?_205                                   ; 3D9C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3D9E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3DA1 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3DA4 _ 89. 45, 14
?_205:  mov     eax, dword [ebp+8H]                     ; 3DA7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DAA _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3DAD _ 39. 45, 18
        jle     ?_206                                   ; 3DB0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3DB2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DB5 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3DB8 _ 89. 45, 18
?_206:  mov     eax, dword [ebp+1CH]                    ; 3DBB _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3DBE _ 89. 45, FC
        jmp     ?_217                                   ; 3DC1 _ E9, 00000139

?_207:  mov     eax, dword [ebp+8H]                     ; 3DC6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3DC9 _ 8B. 55, FC
        add     edx, 4                                  ; 3DCC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3DCF _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3DD3 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3DD6 _ 8B. 45, 08
        add     eax, 1044                               ; 3DD9 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3DDE _ 8B. 55, DC
        sub     edx, eax                                ; 3DE1 _ 29. C2
        mov     eax, edx                                ; 3DE3 _ 89. D0
        sar     eax, 5                                  ; 3DE5 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3DE8 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3DEB _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3DEE _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3DF0 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3DF3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3DF6 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3DF9 _ 8B. 55, 0C
        sub     edx, eax                                ; 3DFC _ 29. C2
        mov     eax, edx                                ; 3DFE _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3E00 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3E03 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3E06 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3E09 _ 8B. 55, 10
        sub     edx, eax                                ; 3E0C _ 29. C2
        mov     eax, edx                                ; 3E0E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3E10 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3E13 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3E16 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3E19 _ 8B. 55, 14
        sub     edx, eax                                ; 3E1C _ 29. C2
        mov     eax, edx                                ; 3E1E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3E20 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3E23 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3E26 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3E29 _ 8B. 55, 18
        sub     edx, eax                                ; 3E2C _ 29. C2
        mov     eax, edx                                ; 3E2E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3E30 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3E33 _ 83. 7D, F0, 00
        jns     ?_208                                   ; 3E37 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3E39 _ C7. 45, F0, 00000000
?_208:  cmp     dword [ebp-14H], 0                      ; 3E40 _ 83. 7D, EC, 00
        jns     ?_209                                   ; 3E44 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3E46 _ C7. 45, EC, 00000000
?_209:  mov     eax, dword [ebp-24H]                    ; 3E4D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3E50 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3E53 _ 39. 45, E8
        jle     ?_210                                   ; 3E56 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3E58 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3E5B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3E5E _ 89. 45, E8
?_210:  mov     eax, dword [ebp-24H]                    ; 3E61 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3E64 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3E67 _ 39. 45, E4
        jle     ?_211                                   ; 3E6A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3E6C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3E6F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3E72 _ 89. 45, E4
?_211:  mov     eax, dword [ebp-14H]                    ; 3E75 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3E78 _ 89. 45, F4
        jmp     ?_216                                   ; 3E7B _ EB, 76

?_212:  mov     eax, dword [ebp-24H]                    ; 3E7D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3E80 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3E83 _ 8B. 45, F4
        add     eax, edx                                ; 3E86 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3E88 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3E8B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3E8E _ 89. 45, F8
        jmp     ?_215                                   ; 3E91 _ EB, 54

?_213:  mov     eax, dword [ebp-24H]                    ; 3E93 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3E96 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3E99 _ 8B. 45, F8
        add     eax, edx                                ; 3E9C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3E9E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3EA1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3EA4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3EA7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3EAB _ 8B. 55, F8
        add     eax, edx                                ; 3EAE _ 01. D0
        mov     edx, eax                                ; 3EB0 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3EB2 _ 8B. 45, D4
        add     eax, edx                                ; 3EB5 _ 01. D0
        movzx   eax, byte [eax]                         ; 3EB7 _ 0F B6. 00
        movzx   eax, al                                 ; 3EBA _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3EBD _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3EC0 _ 8B. 52, 14
        cmp     eax, edx                                ; 3EC3 _ 39. D0
        jz      ?_214                                   ; 3EC5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3EC7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3ECA _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3ECD _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3ED1 _ 8B. 55, CC
        add     eax, edx                                ; 3ED4 _ 01. D0
        mov     edx, eax                                ; 3ED6 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3ED8 _ 8B. 45, E0
        add     edx, eax                                ; 3EDB _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3EDD _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3EE1 _ 88. 02
?_214:  add     dword [ebp-8H], 1                       ; 3EE3 _ 83. 45, F8, 01
?_215:  mov     eax, dword [ebp-8H]                     ; 3EE7 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3EEA _ 3B. 45, E8
        jl      ?_213                                   ; 3EED _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3EEF _ 83. 45, F4, 01
?_216:  mov     eax, dword [ebp-0CH]                    ; 3EF3 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3EF6 _ 3B. 45, E4
        jl      ?_212                                   ; 3EF9 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3EFB _ 83. 45, FC, 01
?_217:  mov     eax, dword [ebp+8H]                     ; 3EFF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3F02 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3F05 _ 39. 45, FC
        jle     ?_207                                   ; 3F08 _ 0F 8E, FFFFFEB8
        nop                                             ; 3F0E _ 90
        leave                                           ; 3F0F _ C9
        ret                                             ; 3F10 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3F11 _ 90
        nop                                             ; 3F12 _ 90
        nop                                             ; 3F13 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 3F14 _ 55
        mov     ebp, esp                                ; 3F15 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3F17 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3F1A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F20 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3F23 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F2A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3F2D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F34 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3F37 _ C7. 40, 0C, 00000000
        nop                                             ; 3F3E _ 90
        pop     ebp                                     ; 3F3F _ 5D
        ret                                             ; 3F40 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3F41 _ 55
        mov     ebp, esp                                ; 3F42 _ 89. E5
        sub     esp, 16                                 ; 3F44 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3F47 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3F4E _ C7. 45, FC, 00000000
        jmp     ?_219                                   ; 3F55 _ EB, 14

?_218:  mov     eax, dword [ebp+8H]                     ; 3F57 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3F5A _ 8B. 55, FC
        add     edx, 2                                  ; 3F5D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3F60 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3F64 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3F67 _ 83. 45, FC, 01
?_219:  mov     eax, dword [ebp+8H]                     ; 3F6B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F6E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3F70 _ 39. 45, FC
        jc      ?_218                                   ; 3F73 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3F75 _ 8B. 45, F8
        leave                                           ; 3F78 _ C9
        ret                                             ; 3F79 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3F7A _ 55
        mov     ebp, esp                                ; 3F7B _ 89. E5
        sub     esp, 16                                 ; 3F7D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F80 _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 3F87 _ E9, 00000083

?_220:  mov     eax, dword [ebp+8H]                     ; 3F8C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3F8F _ 8B. 55, FC
        add     edx, 2                                  ; 3F92 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3F95 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3F99 _ 39. 45, 0C
        ja      ?_222                                   ; 3F9C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3F9E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FA1 _ 8B. 55, FC
        add     edx, 2                                  ; 3FA4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3FA7 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3FAA _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3FAD _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FB0 _ 8B. 55, FC
        add     edx, 2                                  ; 3FB3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3FB6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3FB9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3FBC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3FBF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FC2 _ 8B. 55, FC
        add     edx, 2                                  ; 3FC5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3FC8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3FCB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FCE _ 8B. 55, FC
        add     edx, 2                                  ; 3FD1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3FD4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3FD8 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3FDB _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3FDE _ 8B. 4D, FC
        add     ecx, 2                                  ; 3FE1 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3FE4 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3FE8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FEB _ 8B. 55, FC
        add     edx, 2                                  ; 3FEE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3FF1 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3FF5 _ 85. C0
        jnz     ?_221                                   ; 3FF7 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3FF9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FFC _ 8B. 00
        lea     edx, [eax-1H]                           ; 3FFE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4001 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4004 _ 89. 10
?_221:  mov     eax, dword [ebp-8H]                     ; 4006 _ 8B. 45, F8
        jmp     ?_224                                   ; 4009 _ EB, 17

?_222:  add     dword [ebp-4H], 1                       ; 400B _ 83. 45, FC, 01
?_223:  mov     eax, dword [ebp+8H]                     ; 400F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4012 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4014 _ 39. 45, FC
        jc      ?_220                                   ; 4017 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 401D _ B8, 00000000
?_224:  leave                                           ; 4022 _ C9
        ret                                             ; 4023 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 4024 _ 55
        mov     ebp, esp                                ; 4025 _ 89. E5
        push    ebx                                     ; 4027 _ 53
        sub     esp, 16                                 ; 4028 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 402B _ C7. 45, F8, 00000000
        jmp     ?_226                                   ; 4032 _ EB, 15

?_225:  mov     eax, dword [ebp+8H]                     ; 4034 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4037 _ 8B. 55, F8
        add     edx, 2                                  ; 403A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 403D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4040 _ 39. 45, 0C
        jc      ?_227                                   ; 4043 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4045 _ 83. 45, F8, 01
?_226:  mov     eax, dword [ebp+8H]                     ; 4049 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 404C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 404E _ 39. 45, F8
        jl      ?_225                                   ; 4051 _ 7C, E1
        jmp     ?_228                                   ; 4053 _ EB, 01

?_227:  nop                                             ; 4055 _ 90
?_228:  cmp     dword [ebp-8H], 0                       ; 4056 _ 83. 7D, F8, 00
        jle     ?_230                                   ; 405A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4060 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4063 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4066 _ 8B. 45, 08
        add     edx, 2                                  ; 4069 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 406C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 406F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4072 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4075 _ 8B. 45, 08
        add     edx, 2                                  ; 4078 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 407B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 407F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4081 _ 39. 45, 0C
        jne     ?_230                                   ; 4084 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 408A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 408D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4090 _ 8B. 45, 08
        add     edx, 2                                  ; 4093 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4096 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 409A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 409D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 40A0 _ 8B. 45, 10
        add     ecx, eax                                ; 40A3 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 40A5 _ 8B. 45, 08
        add     edx, 2                                  ; 40A8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 40AB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 40AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 40B2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 40B4 _ 39. 45, F8
        jge     ?_229                                   ; 40B7 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 40B9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 40BC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 40BF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 40C2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40C5 _ 8B. 55, F8
        add     edx, 2                                  ; 40C8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 40CB _ 8B. 04 D0
        cmp     ecx, eax                                ; 40CE _ 39. C1
        jnz     ?_229                                   ; 40D0 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 40D2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 40D5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 40D8 _ 8B. 45, 08
        add     edx, 2                                  ; 40DB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 40DE _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 40E2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40E5 _ 8B. 55, F8
        add     edx, 2                                  ; 40E8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 40EB _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 40EF _ 8B. 55, F8
        sub     edx, 1                                  ; 40F2 _ 83. EA, 01
        add     ecx, eax                                ; 40F5 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 40F7 _ 8B. 45, 08
        add     edx, 2                                  ; 40FA _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 40FD _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4101 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4104 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4106 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4109 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 410C _ 89. 10
?_229:  mov     eax, 0                                  ; 410E _ B8, 00000000
        jmp     ?_236                                   ; 4113 _ E9, 0000011C

?_230:  mov     eax, dword [ebp+8H]                     ; 4118 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 411B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 411D _ 39. 45, F8
        jge     ?_231                                   ; 4120 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4122 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4125 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4128 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 412B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 412E _ 8B. 55, F8
        add     edx, 2                                  ; 4131 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4134 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4137 _ 39. C1
        jnz     ?_231                                   ; 4139 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 413B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 413E _ 8B. 55, F8
        add     edx, 2                                  ; 4141 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4144 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4147 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 414A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 414D _ 8B. 55, F8
        add     edx, 2                                  ; 4150 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4153 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4157 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 415A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 415D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4160 _ 8B. 55, F8
        add     edx, 2                                  ; 4163 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4166 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 416A _ B8, 00000000
        jmp     ?_236                                   ; 416F _ E9, 000000C0

?_231:  mov     eax, dword [ebp+8H]                     ; 4174 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4177 _ 8B. 00
        cmp     eax, 4095                               ; 4179 _ 3D, 00000FFF
        jg      ?_235                                   ; 417E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4184 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4187 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4189 _ 89. 45, F4
        jmp     ?_233                                   ; 418C _ EB, 28

?_232:  mov     eax, dword [ebp-0CH]                    ; 418E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4191 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4194 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 4197 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 419A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 419D _ 8B. 45, 08
        add     edx, 2                                  ; 41A0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 41A3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 41A6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 41A8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 41AB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 41AE _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 41B2 _ 83. 6D, F4, 01
?_233:  mov     eax, dword [ebp-0CH]                    ; 41B6 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 41B9 _ 3B. 45, F8
        jg      ?_232                                   ; 41BC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 41BE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 41C1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 41C3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41C6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 41C9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 41CB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 41CE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 41D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 41D4 _ 8B. 00
        cmp     edx, eax                                ; 41D6 _ 39. C2
        jge     ?_234                                   ; 41D8 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 41DA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 41DD _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 41DF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 41E2 _ 89. 50, 04
?_234:  mov     eax, dword [ebp+8H]                     ; 41E5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 41E8 _ 8B. 55, F8
        add     edx, 2                                  ; 41EB _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 41EE _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 41F1 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 41F4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 41F7 _ 8B. 55, F8
        add     edx, 2                                  ; 41FA _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 41FD _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4200 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4204 _ B8, 00000000
        jmp     ?_236                                   ; 4209 _ EB, 29

?_235:  mov     eax, dword [ebp+8H]                     ; 420B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 420E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4211 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4214 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4217 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 421A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 421D _ 8B. 40, 08
        mov     edx, eax                                ; 4220 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4222 _ 8B. 45, 10
        add     eax, edx                                ; 4225 _ 01. D0
        mov     edx, eax                                ; 4227 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4229 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 422C _ 89. 50, 08
        mov     eax, 4294967295                         ; 422F _ B8, FFFFFFFF
?_236:  add     esp, 16                                 ; 4234 _ 83. C4, 10
        pop     ebx                                     ; 4237 _ 5B
        pop     ebp                                     ; 4238 _ 5D
        ret                                             ; 4239 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 423A _ 55
        mov     ebp, esp                                ; 423B _ 89. E5
        sub     esp, 24                                 ; 423D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4240 _ 8B. 45, 0C
        add     eax, 4095                               ; 4243 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4248 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 424D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4250 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4253 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4257 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 425A _ 89. 04 24
        call    _memman_alloc                           ; 425D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4262 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4265 _ 8B. 45, FC
        leave                                           ; 4268 _ C9
        ret                                             ; 4269 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 426A _ 55
        mov     ebp, esp                                ; 426B _ 89. E5
        sub     esp, 28                                 ; 426D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4270 _ 8B. 45, 10
        add     eax, 4095                               ; 4273 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4278 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 427D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4280 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4283 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4287 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 428A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 428E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4291 _ 89. 04 24
        call    _memman_free                            ; 4294 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4299 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 429C _ 8B. 45, FC
        leave                                           ; 429F _ C9
        ret                                             ; 42A0 _ C3
; _memman_free_4k End of function

        nop                                             ; 42A1 _ 90
        nop                                             ; 42A2 _ 90
        nop                                             ; 42A3 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 42A4 _ 55
        mov     ebp, esp                                ; 42A5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 42A7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42AA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 42AD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 42B0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 42B3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 42B6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 42B8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42BB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 42BE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 42C1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 42C4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 42CB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 42CE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 42D5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 42D8 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 42DF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 42E2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 42E5 _ 89. 50, 18
        nop                                             ; 42E8 _ 90
        pop     ebp                                     ; 42E9 _ 5D
        ret                                             ; 42EA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 42EB _ 55
        mov     ebp, esp                                ; 42EC _ 89. E5
        sub     esp, 40                                 ; 42EE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 42F1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 42F4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 42F7 _ 83. 7D, 08, 00
        jnz     ?_237                                   ; 42FB _ 75, 0A
        mov     eax, 4294967295                         ; 42FD _ B8, FFFFFFFF
        jmp     ?_241                                   ; 4302 _ E9, 000000AB

?_237:  mov     eax, dword [ebp+8H]                     ; 4307 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 430A _ 8B. 40, 10
        test    eax, eax                                ; 430D _ 85. C0
        jnz     ?_238                                   ; 430F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4311 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4314 _ 8B. 40, 14
        or      eax, 01H                                ; 4317 _ 83. C8, 01
        mov     edx, eax                                ; 431A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 431C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 431F _ 89. 50, 14
        mov     eax, 4294967295                         ; 4322 _ B8, FFFFFFFF
        jmp     ?_241                                   ; 4327 _ E9, 00000086

?_238:  mov     eax, dword [ebp+8H]                     ; 432C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 432F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4331 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4334 _ 8B. 40, 04
        add     edx, eax                                ; 4337 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4339 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 433D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 433F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4342 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4345 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4348 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 434B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 434E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4351 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4354 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4357 _ 8B. 40, 0C
        cmp     edx, eax                                ; 435A _ 39. C2
        jnz     ?_239                                   ; 435C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 435E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4361 _ C7. 40, 04, 00000000
?_239:  mov     eax, dword [ebp+8H]                     ; 4368 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 436B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 436E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4371 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4374 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4377 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 437A _ 8B. 40, 18
        test    eax, eax                                ; 437D _ 85. C0
        jz      ?_240                                   ; 437F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4381 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4384 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 4387 _ 8B. 40, 04
        cmp     eax, 2                                  ; 438A _ 83. F8, 02
        jz      ?_240                                   ; 438D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 438F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4392 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4395 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 439D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 43A5 _ 89. 04 24
        call    _task_run                               ; 43A8 _ E8, 00000000(rel)
?_240:  mov     eax, 0                                  ; 43AD _ B8, 00000000
?_241:  leave                                           ; 43B2 _ C9
        ret                                             ; 43B3 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 43B4 _ 55
        mov     ebp, esp                                ; 43B5 _ 89. E5
        sub     esp, 16                                 ; 43B7 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 43BA _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 43BD _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 43C0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43C3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 43C6 _ 39. C2
        jnz     ?_242                                   ; 43C8 _ 75, 07
        mov     eax, 4294967295                         ; 43CA _ B8, FFFFFFFF
        jmp     ?_244                                   ; 43CF _ EB, 51

?_242:  mov     eax, dword [ebp+8H]                     ; 43D1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 43D4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 43D6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43D9 _ 8B. 40, 08
        add     eax, edx                                ; 43DC _ 01. D0
        movzx   eax, byte [eax]                         ; 43DE _ 0F B6. 00
        movzx   eax, al                                 ; 43E1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 43E4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 43E7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43EA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 43ED _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 43F0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 43F3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 43F6 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 43F9 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 43FC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43FF _ 8B. 40, 0C
        cmp     edx, eax                                ; 4402 _ 39. C2
        jnz     ?_243                                   ; 4404 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4406 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4409 _ C7. 40, 08, 00000000
?_243:  mov     eax, dword [ebp+8H]                     ; 4410 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4413 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4416 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4419 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 441C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 441F _ 8B. 45, FC
?_244:  leave                                           ; 4422 _ C9
        ret                                             ; 4423 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4424 _ 55
        mov     ebp, esp                                ; 4425 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4427 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 442A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 442D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4430 _ 8B. 40, 10
        sub     edx, eax                                ; 4433 _ 29. C2
        mov     eax, edx                                ; 4435 _ 89. D0
        pop     ebp                                     ; 4437 _ 5D
        ret                                             ; 4438 _ C3
; _fifo8_status End of function

        nop                                             ; 4439 _ 90
        nop                                             ; 443A _ 90
        nop                                             ; 443B _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 443C _ 55
        mov     ebp, esp                                ; 443D _ 89. E5
        sub     esp, 40                                 ; 443F _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4442 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 444A _ C7. 04 24, 00000043
        call    _io_out8                                ; 4451 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 4456 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 445E _ C7. 04 24, 00000040
        call    _io_out8                                ; 4465 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 446A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4472 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4479 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 447E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4488 _ C7. 45, F4, 00000000
        jmp     ?_246                                   ; 448F _ EB, 26

?_245:  mov     eax, dword [ebp-0CH]                    ; 4491 _ 8B. 45, F4
        shl     eax, 4                                  ; 4494 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4497 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 449C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 44A2 _ 8B. 45, F4
        shl     eax, 4                                  ; 44A5 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 44A8 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 44AD _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 44B3 _ 83. 45, F4, 01
?_246:  cmp     dword [ebp-0CH], 499                    ; 44B7 _ 81. 7D, F4, 000001F3
        jle     ?_245                                   ; 44BE _ 7E, D1
        nop                                             ; 44C0 _ 90
        leave                                           ; 44C1 _ C9
        ret                                             ; 44C2 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 44C3 _ 55
        mov     ebp, esp                                ; 44C4 _ 89. E5
        sub     esp, 16                                 ; 44C6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 44C9 _ C7. 45, FC, 00000000
        jmp     ?_249                                   ; 44D0 _ EB, 36

?_247:  mov     eax, dword [ebp-4H]                     ; 44D2 _ 8B. 45, FC
        shl     eax, 4                                  ; 44D5 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44D8 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 44DD _ 8B. 00
        test    eax, eax                                ; 44DF _ 85. C0
        jnz     ?_248                                   ; 44E1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 44E3 _ 8B. 45, FC
        shl     eax, 4                                  ; 44E6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44E9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 44EE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 44F4 _ 8B. 45, FC
        shl     eax, 4                                  ; 44F7 _ C1. E0, 04
        add     eax, _timerctl                               ; 44FA _ 05, 00000000(d)
        add     eax, 4                                  ; 44FF _ 83. C0, 04
        jmp     ?_250                                   ; 4502 _ EB, 12

?_248:  add     dword [ebp-4H], 1                       ; 4504 _ 83. 45, FC, 01
?_249:  cmp     dword [ebp-4H], 499                     ; 4508 _ 81. 7D, FC, 000001F3
        jle     ?_247                                   ; 450F _ 7E, C1
        mov     eax, 0                                  ; 4511 _ B8, 00000000
?_250:  leave                                           ; 4516 _ C9
        ret                                             ; 4517 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4518 _ 55
        mov     ebp, esp                                ; 4519 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 451B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 451E _ C7. 40, 04, 00000000
        nop                                             ; 4525 _ 90
        pop     ebp                                     ; 4526 _ 5D
        ret                                             ; 4527 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4528 _ 55
        mov     ebp, esp                                ; 4529 _ 89. E5
        sub     esp, 4                                  ; 452B _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 452E _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4531 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4534 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4537 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 453A _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 453D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4540 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4544 _ 88. 42, 0C
        nop                                             ; 4547 _ 90
        leave                                           ; 4548 _ C9
        ret                                             ; 4549 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 454A _ 55
        mov     ebp, esp                                ; 454B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 454D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4550 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4553 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4555 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4558 _ C7. 40, 04, 00000002
        nop                                             ; 455F _ 90
        pop     ebp                                     ; 4560 _ 5D
        ret                                             ; 4561 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4562 _ 55
        mov     ebp, esp                                ; 4563 _ 89. E5
        sub     esp, 40                                 ; 4565 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4568 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4570 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4577 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 457C _ A1, 00000000(d)
        add     eax, 1                                  ; 4581 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4584 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4589 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 458D _ C7. 45, F4, 00000000
        jmp     ?_254                                   ; 4594 _ E9, 000000AA

?_251:  mov     eax, dword [ebp-0CH]                    ; 4599 _ 8B. 45, F4
        shl     eax, 4                                  ; 459C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 459F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 45A4 _ 8B. 00
        cmp     eax, 2                                  ; 45A6 _ 83. F8, 02
        jne     ?_252                                   ; 45A9 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 45AF _ 8B. 45, F4
        shl     eax, 4                                  ; 45B2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45B5 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 45BA _ 8B. 00
        lea     edx, [eax-1H]                           ; 45BC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 45BF _ 8B. 45, F4
        shl     eax, 4                                  ; 45C2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45C5 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 45CA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 45CC _ 8B. 45, F4
        shl     eax, 4                                  ; 45CF _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45D2 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 45D7 _ 8B. 00
        test    eax, eax                                ; 45D9 _ 85. C0
        jnz     ?_252                                   ; 45DB _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 45DD _ 8B. 45, F4
        shl     eax, 4                                  ; 45E0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 45E3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 45E8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 45EE _ 8B. 45, F4
        shl     eax, 4                                  ; 45F1 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 45F4 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 45F9 _ 0F B6. 00
        movzx   eax, al                                 ; 45FC _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 45FF _ 8B. 55, F4
        shl     edx, 4                                  ; 4602 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4605 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 460B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 460D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4611 _ 89. 14 24
        call    _fifo8_put                              ; 4614 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4619 _ 8B. 45, F4
        shl     eax, 4                                  ; 461C _ C1. E0, 04
        add     eax, _timerctl                               ; 461F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4624 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4627 _ A1, 00000000(d)
        cmp     edx, eax                                ; 462C _ 39. C2
        jnz     ?_252                                   ; 462E _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4630 _ C6. 45, F3, 01
?_252:  cmp     byte [ebp-0DH], 0                       ; 4634 _ 80. 7D, F3, 00
        jz      ?_253                                   ; 4638 _ 74, 05
        call    _task_switch                            ; 463A _ E8, 00000000(rel)
?_253:  add     dword [ebp-0CH], 1                      ; 463F _ 83. 45, F4, 01
?_254:  cmp     dword [ebp-0CH], 499                    ; 4643 _ 81. 7D, F4, 000001F3
        jle     ?_251                                   ; 464A _ 0F 8E, FFFFFF49
        nop                                             ; 4650 _ 90
        leave                                           ; 4651 _ C9
        ret                                             ; 4652 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4653 _ B8, 00000000(d)
        ret                                             ; 4658 _ C3
; _getTimerController End of function

        nop                                             ; 4659 _ 90
        nop                                             ; 465A _ 90
        nop                                             ; 465B _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 465C _ 55
        mov     ebp, esp                                ; 465D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 465F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_255                                   ; 4666 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4668 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 466F _ 8B. 45, 0C
        shr     eax, 12                                 ; 4672 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4675 _ 89. 45, 0C
?_255:  mov     eax, dword [ebp+0CH]                    ; 4678 _ 8B. 45, 0C
        mov     edx, eax                                ; 467B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 467D _ 8B. 45, 08
        mov     word [eax], dx                          ; 4680 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4683 _ 8B. 45, 10
        mov     edx, eax                                ; 4686 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4688 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 468B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 468F _ 8B. 45, 10
        sar     eax, 16                                 ; 4692 _ C1. F8, 10
        mov     edx, eax                                ; 4695 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4697 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 469A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 469D _ 8B. 45, 14
        mov     edx, eax                                ; 46A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46A2 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 46A5 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 46A8 _ 8B. 45, 0C
        shr     eax, 16                                 ; 46AB _ C1. E8, 10
        and     eax, 0FH                                ; 46AE _ 83. E0, 0F
        mov     edx, eax                                ; 46B1 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 46B3 _ 8B. 45, 14
        sar     eax, 8                                  ; 46B6 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 46B9 _ 83. E0, F0
        or      eax, edx                                ; 46BC _ 09. D0
        mov     edx, eax                                ; 46BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46C0 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 46C3 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 46C6 _ 8B. 45, 10
        shr     eax, 24                                 ; 46C9 _ C1. E8, 18
        mov     edx, eax                                ; 46CC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46CE _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 46D1 _ 88. 50, 07
        nop                                             ; 46D4 _ 90
        pop     ebp                                     ; 46D5 _ 5D
        ret                                             ; 46D6 _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 46D7 _ 55
        mov     ebp, esp                                ; 46D8 _ 89. E5
        sub     esp, 16                                 ; 46DA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 46DD _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 46E3 _ 8B. 55, 08
        mov     eax, edx                                ; 46E6 _ 89. D0
        shl     eax, 2                                  ; 46E8 _ C1. E0, 02
        add     eax, edx                                ; 46EB _ 01. D0
        shl     eax, 2                                  ; 46ED _ C1. E0, 02
        add     eax, ecx                                ; 46F0 _ 01. C8
        add     eax, 8                                  ; 46F2 _ 83. C0, 08
        mov     dword [eax], 0                          ; 46F5 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 46FB _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4701 _ 8B. 55, 08
        mov     eax, edx                                ; 4704 _ 89. D0
        shl     eax, 2                                  ; 4706 _ C1. E0, 02
        add     eax, edx                                ; 4709 _ 01. D0
        shl     eax, 2                                  ; 470B _ C1. E0, 02
        add     eax, ecx                                ; 470E _ 01. C8
        add     eax, 12                                 ; 4710 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4713 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4719 _ C7. 45, FC, 00000000
        jmp     ?_257                                   ; 4720 _ EB, 21

?_256:  mov     ecx, dword [_taskctl]                   ; 4722 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4728 _ 8B. 55, FC
        mov     eax, edx                                ; 472B _ 89. D0
        add     eax, eax                                ; 472D _ 01. C0
        add     eax, edx                                ; 472F _ 01. D0
        shl     eax, 3                                  ; 4731 _ C1. E0, 03
        add     eax, ecx                                ; 4734 _ 01. C8
        add     eax, 16                                 ; 4736 _ 83. C0, 10
        mov     dword [eax], 0                          ; 4739 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 473F _ 83. 45, FC, 01
?_257:  cmp     dword [ebp-4H], 2                       ; 4743 _ 83. 7D, FC, 02
        jle     ?_256                                   ; 4747 _ 7E, D9
        nop                                             ; 4749 _ 90
        leave                                           ; 474A _ C9
        ret                                             ; 474B _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 474C _ 55
        mov     ebp, esp                                ; 474D _ 89. E5
        sub     esp, 40                                 ; 474F _ 83. EC, 28
        call    _get_addr_gdt                           ; 4752 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4757 _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 475A _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 4762 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4765 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4768 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 476D _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4772 _ C7. 45, F4, 00000000
        jmp     ?_259                                   ; 4779 _ E9, 00000088

?_258:  mov     edx, dword [_taskctl]                   ; 477E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4784 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4787 _ 69. C0, 00000094
        add     eax, edx                                ; 478D _ 01. D0
        add     eax, 72                                 ; 478F _ 83. C0, 48
        mov     dword [eax], 0                          ; 4792 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4798 _ 8B. 45, F4
        add     eax, 7                                  ; 479B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 479E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 47A4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 47AB _ 8B. 45, F4
        imul    eax, eax, 148                           ; 47AE _ 69. C0, 00000094
        add     eax, ecx                                ; 47B4 _ 01. C8
        add     eax, 68                                 ; 47B6 _ 83. C0, 44
        mov     dword [eax], edx                        ; 47B9 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 47BB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 47C1 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 47C4 _ 69. C0, 00000094
        add     eax, 96                                 ; 47CA _ 83. C0, 60
        add     eax, edx                                ; 47CD _ 01. D0
        add     eax, 16                                 ; 47CF _ 83. C0, 10
        mov     ecx, eax                                ; 47D2 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 47D4 _ 8B. 45, F4
        add     eax, 7                                  ; 47D7 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 47DA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 47E1 _ 8B. 45, F0
        add     eax, edx                                ; 47E4 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 47E6 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 47EE _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 47F2 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 47FA _ 89. 04 24
        call    _set_segmdesc                           ; 47FD _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 4802 _ 83. 45, F4, 01
?_259:  cmp     dword [ebp-0CH], 4                      ; 4806 _ 83. 7D, F4, 04
        jle     ?_258                                   ; 480A _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 4810 _ C7. 45, F4, 00000000
        jmp     ?_261                                   ; 4817 _ EB, 0F

?_260:  mov     eax, dword [ebp-0CH]                    ; 4819 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 481C _ 89. 04 24
        call    _init_task_level                        ; 481F _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 4824 _ 83. 45, F4, 01
?_261:  cmp     dword [ebp-0CH], 2                      ; 4828 _ 83. 7D, F4, 02
        jle     ?_260                                   ; 482C _ 7E, EB
        call    _task_alloc                             ; 482E _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 4833 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4836 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 4839 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4840 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 4843 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 484A _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 484D _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4854 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 4857 _ 89. 04 24
        call    _task_add                               ; 485A _ E8, 0000003A
        call    _task_switchsub                         ; 485F _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 4864 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4867 _ 8B. 00
        mov     dword [esp], eax                        ; 4869 _ 89. 04 24
        call    _load_tr                                ; 486C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4871 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 4876 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 487B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 487E _ 8B. 40, 08
        mov     edx, eax                                ; 4881 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4883 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4888 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 488C _ 89. 04 24
        call    _timer_settime                          ; 488F _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4894 _ 8B. 45, EC
        leave                                           ; 4897 _ C9
        ret                                             ; 4898 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 4899 _ 55
        mov     ebp, esp                                ; 489A _ 89. E5
        sub     esp, 16                                 ; 489C _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 489F _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 48A5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 48A8 _ 8B. 50, 0C
        mov     eax, edx                                ; 48AB _ 89. D0
        shl     eax, 2                                  ; 48AD _ C1. E0, 02
        add     eax, edx                                ; 48B0 _ 01. D0
        shl     eax, 2                                  ; 48B2 _ C1. E0, 02
        add     eax, ecx                                ; 48B5 _ 01. C8
        add     eax, 8                                  ; 48B7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 48BA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 48BD _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 48C0 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 48C2 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 48C5 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 48C8 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 48CC _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 48CF _ 8B. 00
        lea     edx, [eax+1H]                           ; 48D1 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 48D4 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 48D7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 48D9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 48DC _ C7. 40, 04, 00000002
        nop                                             ; 48E3 _ 90
        leave                                           ; 48E4 _ C9
        ret                                             ; 48E5 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 48E6 _ 55
        mov     ebp, esp                                ; 48E7 _ 89. E5
        sub     esp, 16                                 ; 48E9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 48EC _ C7. 45, FC, 00000000
        jmp     ?_264                                   ; 48F3 _ E9, 000000F7

?_262:  mov     edx, dword [_taskctl]                   ; 48F8 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 48FE _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4901 _ 69. C0, 00000094
        add     eax, edx                                ; 4907 _ 01. D0
        add     eax, 72                                 ; 4909 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 490C _ 8B. 00
        test    eax, eax                                ; 490E _ 85. C0
        jne     ?_263                                   ; 4910 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 4916 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 491C _ 8B. 45, FC
        imul    eax, eax, 148                           ; 491F _ 69. C0, 00000094
        add     eax, 64                                 ; 4925 _ 83. C0, 40
        add     eax, edx                                ; 4928 _ 01. D0
        add     eax, 4                                  ; 492A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 492D _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 4930 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 4933 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 493A _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 493D _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4944 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 4947 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 494E _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4951 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 4958 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 495B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4962 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4965 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 496C _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 496F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 4976 _ 8B. 45, FC
        add     eax, 1                                  ; 4979 _ 83. C0, 01
        shl     eax, 9                                  ; 497C _ C1. E0, 09
        mov     edx, eax                                ; 497F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4981 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4984 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 4987 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 498A _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4991 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4994 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 499B _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 499E _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 49A5 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 49A8 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 49B2 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 49B5 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 49BF _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 49C2 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 49CC _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 49CF _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 49D9 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 49DC _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 49E6 _ 8B. 45, F8
        jmp     ?_265                                   ; 49E9 _ EB, 13

?_263:  add     dword [ebp-4H], 1                       ; 49EB _ 83. 45, FC, 01
?_264:  cmp     dword [ebp-4H], 4                       ; 49EF _ 83. 7D, FC, 04
        jle     ?_262                                   ; 49F3 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 49F9 _ B8, 00000000
?_265:  leave                                           ; 49FE _ C9
        ret                                             ; 49FF _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4A00 _ 55
        mov     ebp, esp                                ; 4A01 _ 89. E5
        sub     esp, 24                                 ; 4A03 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 4A06 _ 83. 7D, 0C, 00
        jns     ?_266                                   ; 4A0A _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4A0C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4A0F _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4A12 _ 89. 45, 0C
?_266:  cmp     dword [ebp+10H], 0                      ; 4A15 _ 83. 7D, 10, 00
        jle     ?_267                                   ; 4A19 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4A1B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4A1E _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4A21 _ 89. 50, 08
?_267:  mov     eax, dword [ebp+8H]                     ; 4A24 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4A27 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4A2A _ 83. F8, 02
        jnz     ?_268                                   ; 4A2D _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4A2F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4A32 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4A35 _ 39. 45, 0C
        jz      ?_268                                   ; 4A38 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4A3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A3D _ 89. 04 24
        call    _task_remove                            ; 4A40 _ E8, 0000002E
?_268:  mov     eax, dword [ebp+8H]                     ; 4A45 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4A48 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4A4B _ 83. F8, 02
        jz      ?_269                                   ; 4A4E _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4A50 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4A53 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4A56 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4A59 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A5C _ 89. 04 24
        call    _task_add                               ; 4A5F _ E8, FFFFFE35
?_269:  mov     eax, dword [_taskctl]                   ; 4A64 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 4A69 _ C7. 40, 04, 00000001
        nop                                             ; 4A70 _ 90
        leave                                           ; 4A71 _ C9
        ret                                             ; 4A72 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4A73 _ 55
        mov     ebp, esp                                ; 4A74 _ 89. E5
        sub     esp, 16                                 ; 4A76 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4A79 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4A7F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4A82 _ 8B. 50, 0C
        mov     eax, edx                                ; 4A85 _ 89. D0
        shl     eax, 2                                  ; 4A87 _ C1. E0, 02
        add     eax, edx                                ; 4A8A _ 01. D0
        shl     eax, 2                                  ; 4A8C _ C1. E0, 02
        add     eax, ecx                                ; 4A8F _ 01. C8
        add     eax, 8                                  ; 4A91 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4A94 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 4A97 _ C7. 45, FC, 00000000
        jmp     ?_272                                   ; 4A9E _ EB, 23

?_270:  mov     eax, dword [ebp-8H]                     ; 4AA0 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4AA3 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4AA6 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 4AAA _ 39. 45, 08
        jnz     ?_271                                   ; 4AAD _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4AAF _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4AB2 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4AB5 _ C7. 44 90, 08, 00000000
        jmp     ?_273                                   ; 4ABD _ EB, 0E

?_271:  add     dword [ebp-4H], 1                       ; 4ABF _ 83. 45, FC, 01
?_272:  mov     eax, dword [ebp-8H]                     ; 4AC3 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4AC6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4AC8 _ 39. 45, FC
        jl      ?_270                                   ; 4ACB _ 7C, D3
?_273:  mov     eax, dword [ebp-8H]                     ; 4ACD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4AD0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4AD2 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4AD5 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 4AD8 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 4ADA _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4ADD _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4AE0 _ 39. 45, FC
        jge     ?_274                                   ; 4AE3 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4AE5 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4AE8 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 4AEB _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4AEE _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4AF1 _ 89. 50, 04
?_274:  mov     eax, dword [ebp-8H]                     ; 4AF4 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 4AF7 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 4AFA _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4AFD _ 8B. 00
        cmp     edx, eax                                ; 4AFF _ 39. C2
        jl      ?_275                                   ; 4B01 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4B03 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 4B06 _ C7. 40, 04, 00000000
?_275:  mov     eax, dword [ebp+8H]                     ; 4B0D _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4B10 _ C7. 40, 04, 00000001
        jmp     ?_277                                   ; 4B17 _ EB, 1B

?_276:  mov     eax, dword [ebp-4H]                     ; 4B19 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 4B1C _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 4B1F _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 4B22 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 4B26 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4B29 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 4B2C _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 4B30 _ 83. 45, FC, 01
?_277:  mov     eax, dword [ebp-8H]                     ; 4B34 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4B37 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4B39 _ 39. 45, FC
        jl      ?_276                                   ; 4B3C _ 7C, DB
        nop                                             ; 4B3E _ 90
        leave                                           ; 4B3F _ C9
        ret                                             ; 4B40 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4B41 _ 55
        mov     ebp, esp                                ; 4B42 _ 89. E5
        sub     esp, 40                                 ; 4B44 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 4B47 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4B4D _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4B52 _ 8B. 10
        mov     eax, edx                                ; 4B54 _ 89. D0
        shl     eax, 2                                  ; 4B56 _ C1. E0, 02
        add     eax, edx                                ; 4B59 _ 01. D0
        shl     eax, 2                                  ; 4B5B _ C1. E0, 02
        add     eax, ecx                                ; 4B5E _ 01. C8
        add     eax, 8                                  ; 4B60 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4B63 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4B66 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4B69 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4B6C _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4B6F _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4B73 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 4B76 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 4B79 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4B7C _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4B7F _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4B82 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4B85 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4B88 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4B8B _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4B8E _ 8B. 00
        cmp     edx, eax                                ; 4B90 _ 39. C2
        jnz     ?_278                                   ; 4B92 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4B94 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 4B97 _ C7. 40, 04, 00000000
?_278:  mov     eax, dword [_taskctl]                   ; 4B9E _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4BA3 _ 8B. 40, 04
        test    eax, eax                                ; 4BA6 _ 85. C0
        jz      ?_279                                   ; 4BA8 _ 74, 24
        call    _task_switchsub                         ; 4BAA _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4BAF _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4BB5 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4BBA _ 8B. 10
        mov     eax, edx                                ; 4BBC _ 89. D0
        shl     eax, 2                                  ; 4BBE _ C1. E0, 02
        add     eax, edx                                ; 4BC1 _ 01. D0
        shl     eax, 2                                  ; 4BC3 _ C1. E0, 02
        add     eax, ecx                                ; 4BC6 _ 01. C8
        add     eax, 8                                  ; 4BC8 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4BCB _ 89. 45, F4
?_279:  mov     eax, dword [ebp-0CH]                    ; 4BCE _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4BD1 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4BD4 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4BD7 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4BDB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4BDE _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4BE1 _ 8B. 40, 08
        mov     edx, eax                                ; 4BE4 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4BE6 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4BEB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4BEF _ 89. 04 24
        call    _timer_settime                          ; 4BF2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4BF7 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4BFA _ 3B. 45, F0
        jz      ?_280                                   ; 4BFD _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4BFF _ 83. 7D, EC, 00
        jz      ?_280                                   ; 4C03 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4C05 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4C08 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4C0A _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4C0E _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4C15 _ E8, 00000000(rel)
        nop                                             ; 4C1A _ 90
?_280:  nop                                             ; 4C1B _ 90
        leave                                           ; 4C1C _ C9
        ret                                             ; 4C1D _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4C1E _ 55
        mov     ebp, esp                                ; 4C1F _ 89. E5
        sub     esp, 40                                 ; 4C21 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4C24 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4C2B _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C32 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4C35 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4C38 _ 83. F8, 02
        jnz     ?_281                                   ; 4C3B _ 75, 51
        call    _task_now                               ; 4C3D _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4C42 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4C45 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C48 _ 89. 04 24
        call    _task_remove                            ; 4C4B _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4C50 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4C57 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4C5A _ 3B. 45, F0
        jnz     ?_281                                   ; 4C5D _ 75, 2F
        call    _task_switchsub                         ; 4C5F _ E8, 0000002F
        call    _task_now                               ; 4C64 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4C69 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4C6C _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4C73 _ 83. 7D, F0, 00
        jz      ?_281                                   ; 4C77 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4C79 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4C7C _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4C7E _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4C82 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4C89 _ E8, 00000000(rel)
?_281:  mov     eax, dword [ebp-0CH]                    ; 4C8E _ 8B. 45, F4
        leave                                           ; 4C91 _ C9
        ret                                             ; 4C92 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4C93 _ 55
        mov     ebp, esp                                ; 4C94 _ 89. E5
        sub     esp, 16                                 ; 4C96 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4C99 _ C7. 45, FC, 00000000
        jmp     ?_283                                   ; 4CA0 _ EB, 22

?_282:  mov     ecx, dword [_taskctl]                   ; 4CA2 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4CA8 _ 8B. 55, FC
        mov     eax, edx                                ; 4CAB _ 89. D0
        shl     eax, 2                                  ; 4CAD _ C1. E0, 02
        add     eax, edx                                ; 4CB0 _ 01. D0
        shl     eax, 2                                  ; 4CB2 _ C1. E0, 02
        add     eax, ecx                                ; 4CB5 _ 01. C8
        add     eax, 8                                  ; 4CB7 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4CBA _ 8B. 00
        test    eax, eax                                ; 4CBC _ 85. C0
        jg      ?_284                                   ; 4CBE _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4CC0 _ 83. 45, FC, 01
?_283:  cmp     dword [ebp-4H], 2                       ; 4CC4 _ 83. 7D, FC, 02
        jle     ?_282                                   ; 4CC8 _ 7E, D8
        jmp     ?_285                                   ; 4CCA _ EB, 01

?_284:  nop                                             ; 4CCC _ 90
?_285:  mov     eax, dword [_taskctl]                   ; 4CCD _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4CD2 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4CD5 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4CD7 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4CDC _ C7. 40, 04, 00000000
        nop                                             ; 4CE3 _ 90
        leave                                           ; 4CE4 _ C9
        ret                                             ; 4CE5 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4CE6 _ 55
        mov     ebp, esp                                ; 4CE7 _ 89. E5
        sub     esp, 16                                 ; 4CE9 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4CEC _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4CF2 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4CF7 _ 8B. 10
        mov     eax, edx                                ; 4CF9 _ 89. D0
        shl     eax, 2                                  ; 4CFB _ C1. E0, 02
        add     eax, edx                                ; 4CFE _ 01. D0
        shl     eax, 2                                  ; 4D00 _ C1. E0, 02
        add     eax, ecx                                ; 4D03 _ 01. C8
        add     eax, 8                                  ; 4D05 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4D08 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4D0B _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4D0E _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4D11 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4D14 _ 8B. 44 90, 08
        leave                                           ; 4D18 _ C9
        ret                                             ; 4D19 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4D1A _ 55
        mov     ebp, esp                                ; 4D1B _ 89. E5
        sub     esp, 24                                 ; 4D1D _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4D20 _ 8B. 45, 10
        movzx   eax, al                                 ; 4D23 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4D26 _ 8B. 55, 0C
        add     edx, 16                                 ; 4D29 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4D2C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4D30 _ 89. 14 24
        call    _fifo8_put                              ; 4D33 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4D38 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D3B _ 89. 04 24
        call    _task_sleep                             ; 4D3E _ E8, FFFFFEDB
        nop                                             ; 4D43 _ 90
        leave                                           ; 4D44 _ C9
        ret                                             ; 4D45 _ C3
; _send_message End of function

        nop                                             ; 4D46 _ 90
        nop                                             ; 4D47 _ 90

.text:  ; Local function

_strcmp:
        push    ebp                                     ; 4D48 _ 55
        mov     ebp, esp                                ; 4D49 _ 89. E5
        sub     esp, 16                                 ; 4D4B _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4D4E _ 83. 7D, 08, 00
        jz      ?_286                                   ; 4D52 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4D54 _ 83. 7D, 0C, 00
        jnz     ?_287                                   ; 4D58 _ 75, 0A
?_286:  mov     eax, 0                                  ; 4D5A _ B8, 00000000
        jmp     ?_294                                   ; 4D5F _ E9, 0000009B

?_287:  mov     dword [ebp-4H], 0                       ; 4D64 _ C7. 45, FC, 00000000
        jmp     ?_290                                   ; 4D6B _ EB, 25

?_288:  mov     edx, dword [ebp-4H]                     ; 4D6D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4D70 _ 8B. 45, 08
        add     eax, edx                                ; 4D73 _ 01. D0
        movzx   edx, byte [eax]                         ; 4D75 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4D78 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4D7B _ 8B. 45, 0C
        add     eax, ecx                                ; 4D7E _ 01. C8
        movzx   eax, byte [eax]                         ; 4D80 _ 0F B6. 00
        cmp     dl, al                                  ; 4D83 _ 38. C2
        jz      ?_289                                   ; 4D85 _ 74, 07
        mov     eax, 0                                  ; 4D87 _ B8, 00000000
        jmp     ?_294                                   ; 4D8C _ EB, 71

?_289:  add     dword [ebp-4H], 1                       ; 4D8E _ 83. 45, FC, 01
?_290:  mov     edx, dword [ebp-4H]                     ; 4D92 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4D95 _ 8B. 45, 08
        add     eax, edx                                ; 4D98 _ 01. D0
        movzx   eax, byte [eax]                         ; 4D9A _ 0F B6. 00
        test    al, al                                  ; 4D9D _ 84. C0
        jz      ?_291                                   ; 4D9F _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4DA1 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DA4 _ 8B. 45, 0C
        add     eax, edx                                ; 4DA7 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DA9 _ 0F B6. 00
        test    al, al                                  ; 4DAC _ 84. C0
        jnz     ?_288                                   ; 4DAE _ 75, BD
?_291:  mov     edx, dword [ebp-4H]                     ; 4DB0 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4DB3 _ 8B. 45, 08
        add     eax, edx                                ; 4DB6 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DB8 _ 0F B6. 00
        test    al, al                                  ; 4DBB _ 84. C0
        jnz     ?_292                                   ; 4DBD _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4DBF _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DC2 _ 8B. 45, 0C
        add     eax, edx                                ; 4DC5 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DC7 _ 0F B6. 00
        test    al, al                                  ; 4DCA _ 84. C0
        jz      ?_292                                   ; 4DCC _ 74, 07
        mov     eax, 0                                  ; 4DCE _ B8, 00000000
        jmp     ?_294                                   ; 4DD3 _ EB, 2A

?_292:  mov     edx, dword [ebp-4H]                     ; 4DD5 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4DD8 _ 8B. 45, 08
        add     eax, edx                                ; 4DDB _ 01. D0
        movzx   eax, byte [eax]                         ; 4DDD _ 0F B6. 00
        test    al, al                                  ; 4DE0 _ 84. C0
        jz      ?_293                                   ; 4DE2 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4DE4 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DE7 _ 8B. 45, 0C
        add     eax, edx                                ; 4DEA _ 01. D0
        movzx   eax, byte [eax]                         ; 4DEC _ 0F B6. 00
        test    al, al                                  ; 4DEF _ 84. C0
        jz      ?_293                                   ; 4DF1 _ 74, 07
        mov     eax, 0                                  ; 4DF3 _ B8, 00000000
        jmp     ?_294                                   ; 4DF8 _ EB, 05

?_293:  mov     eax, 1                                  ; 4DFA _ B8, 00000001
?_294:  leave                                           ; 4DFF _ C9
        ret                                             ; 4E00 _ C3

        nop                                             ; 4E01 _ 90
        nop                                             ; 4E02 _ 90
        nop                                             ; 4E03 _ 90



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

_table_rgb.2380:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2427:                                           ; byte
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

_closebtn.2547:                                         ; byte
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
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0017 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 001F _ sk b.

?_301:                                                  ; byte
        db 42H, 00H                                     ; 0024 _ B.

?_302:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0026 _ page is:
        db 20H, 00H                                     ; 002E _  .

?_303:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0030 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0038 _ L: .

?_304:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0044 _ H: .

?_305:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0048 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0050 _ w: .

?_306:                                                  ; byte
        db 3EH, 00H                                     ; 0054 _ >.

?_307:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0056 _ mem.

?_308:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 005A _ free .

?_309:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 0060 _  KB.

?_310:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0064 _ cls.

?_311:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0068 _ dir.

?_312:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 006C _ hlt.

?_313:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0070 _ abc.exe.

?_314:                                                  ; byte
        db 20H, 00H, 00H, 00H                           ; 0078 _  ...



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

_bootInfo:                                              ; dword
        resd    1                                       ; 0008

?_315:  resw    1                                       ; 000C

?_316:  resw    1                                       ; 000E

_keyinfo:                                               ; byte
        resb    24                                      ; 0010

?_317:  resd    1                                       ; 0028

_mouseinfo:                                             ; byte
        resb    52                                      ; 002C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_318:  resd    1                                       ; 010C

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

_task_b:                                                ; byte
        resb    4                                       ; 0270

_task_cons:                                             ; dword
        resd    1                                       ; 0274

_task_main:                                             ; dword
        resd    1                                       ; 0278

_task_a.2314:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2313:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2312:                                            ; byte
        resb    104                                     ; 0300

_str.2475:                                              ; byte
        resb    1                                       ; 0368

?_319:  resb    9                                       ; 0369

?_320:  resb    2                                       ; 0372

_task_b.2573:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


