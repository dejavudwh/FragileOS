; Disassembly of file: ckernel.o
; Sun Aug 11 13:52:10 2019
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
        movzx   eax, word [?_278]                       ; 001B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000013C(d)
        movzx   eax, word [?_279]                       ; 0028 _ 0F B7. 05, 0000000E(d)
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
        mov     dword [esp+4H], ?_263                   ; 0328 _ C7. 44 24, 04, 00000000(d)
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
        mov     dword [_task_a.2308], eax               ; 03A9 _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2308]               ; 03AE _ A1, 0000027C(d)
        mov     dword [?_280], eax                      ; 03B3 _ A3, 00000028(d)
        mov     eax, dword [_task_a.2308]               ; 03B8 _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03BD _ A3, 00000278(d)
        mov     eax, dword [_task_a.2308]               ; 03C2 _ A1, 0000027C(d)
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
        mov     dword [esp+8H], ?_264                   ; 04A4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 04AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04B0 _ 89. 04 24
        call    _make_wtitle8                           ; 04B3 _ E8, 00001869
        mov     eax, dword [_shtctl]                    ; 04B8 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BD _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_265                   ; 04C5 _ C7. 44 24, 08, 0000000F(d)
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
        call    _set_cursor                             ; 0505 _ E8, 000028B6
        mov     dword [ebp-18H], 87                     ; 050A _ C7. 45, E8, 00000057
        jmp     ?_004                                   ; 0511 _ EB, 59

?_003:  mov     dword [ebp-14H], 0                      ; 0513 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 051A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0520 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0525 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_264                   ; 052D _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0535 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0539 _ 89. 04 24
        call    _make_wtitle8                           ; 053C _ E8, 000017E0
        mov     eax, dword [_shtctl]                    ; 0541 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0546 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_265                   ; 054E _ C7. 44 24, 08, 0000000F(d)
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
        mov     eax, dword [_task_a.2308]               ; 05E3 _ A1, 0000027C(d)
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
        call    _transferScanCode                       ; 0610 _ E8, 00002622
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
        call    _set_cursor                             ; 0675 _ E8, 00002746
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
        call    _set_cursor                             ; 06EE _ E8, 000026CD
        jmp     ?_008                                   ; 06F3 _ EB, 7A

?_006:  mov     eax, dword [ebp-40H]                    ; 06F5 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 06F8 _ 89. 04 24
        call    _isSpecialKey                           ; 06FB _ E8, 00002674
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
        mov     eax, dword [_task_a.2308]               ; 072F _ A1, 0000027C(d)
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
        call    _set_cursor                             ; 0824 _ E8, 00002597
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
        call    _set_cursor                             ; 0857 _ E8, 00002564
        jmp     ?_001                                   ; 085C _ E9, FFFFFBA9

_task_b_main:; Function begin
        push    ebp                                     ; 0861 _ 55
        mov     ebp, esp                                ; 0862 _ 89. E5
        sub     esp, 104                                ; 0864 _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 0867 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 086D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_266                  ; 0872 _ C7. 44 24, 14, 00000017(d)
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
        mov     dword [esp+14H], ?_267                  ; 0954 _ C7. 44 24, 14, 00000024(d)
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
        mov     eax, dword [?_281]                      ; 0EDA _ A1, 0000010C(d)
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
        mov     dword [esp+8H], _table_rgb.2374         ; 0FDE _ C7. 44 24, 08, 00000120(d)
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
        add     eax, _cursor.2421                       ; 12A5 _ 05, 00000160(d)
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
        add     eax, _cursor.2421                       ; 12D5 _ 05, 00000160(d)
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
        add     eax, _cursor.2421                       ; 1305 _ 05, 00000160(d)
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
        movzx   eax, word [?_278]                       ; 13C5 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 13CC _ 98
        mov     dword [ebp-10H], eax                    ; 13CD _ 89. 45, F0
        movzx   eax, word [?_279]                       ; 13D0 _ 0F B7. 05, 0000000E(d)
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
        mov     byte [?_262], al                        ; 1466 _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 146B _ 0F B6. 45, EC
        shr     al, 4                                   ; 146F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1472 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 1475 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1479 _ 0F BE. C0
        mov     dword [esp], eax                        ; 147C _ 89. 04 24
        call    _charToHexVal                           ; 147F _ E8, FFFFFF95
        mov     byte [?_261], al                        ; 1484 _ A2, 00000102(d)
        mov     eax, _keyval                            ; 1489 _ B8, 00000100(d)
        leave                                           ; 148E _ C9
        ret                                             ; 148F _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 16                                 ; 1493 _ 83. EC, 10
        mov     byte [_str.2469], 48                    ; 1496 _ C6. 05, 00000368(d), 30
        mov     byte [?_282], 88                        ; 149D _ C6. 05, 00000369(d), 58
        mov     byte [?_283], 0                         ; 14A4 _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 14AB _ C7. 45, FC, 00000002
        jmp     ?_051                                   ; 14B2 _ EB, 0F

?_050:  mov     eax, dword [ebp-4H]                     ; 14B4 _ 8B. 45, FC
        add     eax, _str.2469                          ; 14B7 _ 05, 00000368(d)
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
        add     eax, _str.2469                          ; 14F5 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 14FA _ 88. 10
        jmp     ?_054                                   ; 14FC _ EB, 12

?_053:  mov     eax, dword [ebp-0CH]                    ; 14FE _ 8B. 45, F4
        add     eax, 48                                 ; 1501 _ 83. C0, 30
        mov     edx, eax                                ; 1504 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1506 _ 8B. 45, F8
        add     eax, _str.2469                          ; 1509 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 150E _ 88. 10
?_054:  sub     dword [ebp-8H], 1                       ; 1510 _ 83. 6D, F8, 01
?_055:  cmp     dword [ebp-8H], 1                       ; 1514 _ 83. 7D, F8, 01
        jle     ?_056                                   ; 1518 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 151A _ 83. 7D, 08, 00
        jnz     ?_052                                   ; 151E _ 75, B2
?_056:  mov     eax, _str.2469                          ; 1520 _ B8, 00000368(d)
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
        mov     dword [esp+14H], ?_268                  ; 179C _ C7. 44 24, 14, 00000026(d)
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
        mov     dword [esp+14H], ?_269                  ; 1811 _ C7. 44 24, 14, 00000030(d)
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
        mov     dword [esp+14H], ?_270                  ; 1888 _ C7. 44 24, 14, 0000003C(d)
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
        mov     dword [esp+14H], ?_271                  ; 1900 _ C7. 44 24, 14, 00000048(d)
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
        add     eax, _closebtn.2541                     ; 1DE0 _ 05, 00000260(d)
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
        mov     dword [_task_b.2567+eax*4], edx         ; 21D0 _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 21D7 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 21DA _ 8B. 04 85, 00000374(d)
        mov     dword [eax+8CH], 0                      ; 21E1 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 21EB _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 21EE _ 8B. 04 85, 00000374(d)
        mov     dword [eax+90H], 1073741824             ; 21F5 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-10H]                    ; 21FF _ 8B. 45, F0
        neg     eax                                     ; 2202 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 2204 _ 8D. 90, 00000861(d)
        mov     eax, dword [ebp-0CH]                    ; 220A _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 220D _ 8B. 04 85, 00000374(d)
        mov     dword [eax+4CH], edx                    ; 2214 _ 89. 50, 4C
        mov     eax, dword [ebp-0CH]                    ; 2217 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 221A _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 0                      ; 2221 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2228 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 222B _ 8B. 04 85, 00000374(d)
        mov     dword [eax+78H], 8                      ; 2232 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2239 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 223C _ 8B. 04 85, 00000374(d)
        mov     dword [eax+7CH], 32                     ; 2243 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-0CH]                    ; 224A _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 224D _ 8B. 04 85, 00000374(d)
        mov     dword [eax+80H], 24                     ; 2254 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-0CH]                    ; 225E _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 2261 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+84H], 0                      ; 2268 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2272 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 2275 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+88H], 16                     ; 227C _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-0CH]                    ; 2286 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 2289 _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+64H]                    ; 2290 _ 8B. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 2293 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 2296 _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 229D _ 83. EA, 08
        mov     dword [eax+64H], edx                    ; 22A0 _ 89. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 22A3 _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 22A6 _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 22AA _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 22AD _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+64H]                    ; 22B4 _ 8B. 40, 64
        add     eax, 4                                  ; 22B7 _ 83. C0, 04
        mov     dword [eax], edx                        ; 22BA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 22BC _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 22BF _ 8D. 50, 01
        mov     eax, edx                                ; 22C2 _ 89. D0
        shl     eax, 2                                  ; 22C4 _ C1. E0, 02
        add     edx, eax                                ; 22C7 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 22C9 _ 8B. 45, F4
        mov     eax, dword [_task_b.2567+eax*4]         ; 22CC _ 8B. 04 85, 00000374(d)
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
        mov     dword [esp+8H], ?_265                   ; 23DD _ C7. 44 24, 08, 0000000F(d)
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
        sub     esp, 664                                ; 254C _ 81. EC, 00000298
        call    _task_now                               ; 2552 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 2557 _ 89. 45, D4
        mov     dword [ebp-0CH], 16                     ; 255A _ C7. 45, F4, 00000010
        mov     dword [ebp-10H], 28                     ; 2561 _ C7. 45, F0, 0000001C
        mov     dword [ebp-14H], 0                      ; 2568 _ C7. 45, EC, 00000000
        mov     eax, dword [ebp-2CH]                    ; 256F _ 8B. 45, D4
        lea     edx, [eax+10H]                          ; 2572 _ 8D. 50, 10
        mov     eax, dword [ebp-2CH]                    ; 2575 _ 8B. 45, D4
        mov     dword [esp+0CH], eax                    ; 2578 _ 89. 44 24, 0C
        lea     eax, [ebp-248H]                         ; 257C _ 8D. 85, FFFFFDB8
        mov     dword [esp+8H], eax                     ; 2582 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 2586 _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 258E _ 89. 14 24
        call    _fifo8_init                             ; 2591 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 2596 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 259B _ 89. 45, D0
        mov     eax, dword [ebp-2CH]                    ; 259E _ 8B. 45, D4
        add     eax, 16                                 ; 25A1 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 25A4 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 25AC _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 25B0 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 25B3 _ 89. 04 24
        call    _timer_init                             ; 25B6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 25BB _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 25C3 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 25C6 _ 89. 04 24
        call    _timer_settime                          ; 25C9 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 25CE _ A1, 00000264(d)
        mov     dword [esp+14H], ?_272                  ; 25D3 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 25DB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 25E3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 25EB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 25F3 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 25F6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25FA _ 89. 04 24
        call    _showString                             ; 25FD _ E8, FFFFE934
        mov     dword [ebp-34H], 0                      ; 2602 _ C7. 45, CC, 00000000
        mov     dword [ebp-18H], 69120                  ; 2609 _ C7. 45, E8, 00010E00
?_080:  call    _io_cli                                 ; 2610 _ E8, 00000000(rel)
        mov     eax, dword [ebp-2CH]                    ; 2615 _ 8B. 45, D4
        add     eax, 16                                 ; 2618 _ 83. C0, 10
        mov     dword [esp], eax                        ; 261B _ 89. 04 24
        call    _fifo8_status                           ; 261E _ E8, 00000000(rel)
        test    eax, eax                                ; 2623 _ 85. C0
        jnz     ?_081                                   ; 2625 _ 75, 07
        call    _io_sti                                 ; 2627 _ E8, 00000000(rel)
        jmp     ?_080                                   ; 262C _ EB, E2
; _console_task End of function

?_081:  ; Local function
        mov     eax, dword [ebp-2CH]                    ; 262E _ 8B. 45, D4
        add     eax, 16                                 ; 2631 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2634 _ 89. 04 24
        call    _fifo8_get                              ; 2637 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 263C _ 89. 45, C8
        call    _io_sti                                 ; 263F _ E8, 00000000(rel)
        cmp     dword [ebp-38H], 1                      ; 2644 _ 83. 7D, C8, 01
        jg      ?_084                                   ; 2648 _ 7F, 6E
        cmp     dword [ebp-14H], 0                      ; 264A _ 83. 7D, EC, 00
        js      ?_084                                   ; 264E _ 78, 68
        cmp     dword [ebp-38H], 0                      ; 2650 _ 83. 7D, C8, 00
        jz      ?_082                                   ; 2654 _ 74, 26
        mov     eax, dword [ebp-2CH]                    ; 2656 _ 8B. 45, D4
        add     eax, 16                                 ; 2659 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 265C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2664 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 2668 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 266B _ 89. 04 24
        call    _timer_init                             ; 266E _ E8, 00000000(rel)
        mov     dword [ebp-14H], 7                      ; 2673 _ C7. 45, EC, 00000007
        jmp     ?_083                                   ; 267A _ EB, 24

?_082:  mov     eax, dword [ebp-2CH]                    ; 267C _ 8B. 45, D4
        add     eax, 16                                 ; 267F _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 2682 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 268A _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 268E _ 8B. 45, D0
        mov     dword [esp], eax                        ; 2691 _ 89. 04 24
        call    _timer_init                             ; 2694 _ E8, 00000000(rel)
        mov     dword [ebp-14H], 0                      ; 2699 _ C7. 45, EC, 00000000
?_083:  mov     dword [esp+4H], 50                      ; 26A0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 26A8 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 26AB _ 89. 04 24
        call    _timer_settime                          ; 26AE _ E8, 00000000(rel)
        jmp     ?_104                                   ; 26B3 _ E9, 00000547

?_084:  cmp     dword [ebp-38H], 87                     ; 26B8 _ 83. 7D, C8, 57
        jnz     ?_085                                   ; 26BC _ 75, 3C
        mov     dword [ebp-14H], 7                      ; 26BE _ C7. 45, EC, 00000007
        mov     eax, dword [ebp-2CH]                    ; 26C5 _ 8B. 45, D4
        add     eax, 16                                 ; 26C8 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 26CB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 26D3 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 26D7 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 26DA _ 89. 04 24
        call    _timer_init                             ; 26DD _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 26E2 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 26EA _ 8B. 45, D0
        mov     dword [esp], eax                        ; 26ED _ 89. 04 24
        call    _timer_settime                          ; 26F0 _ E8, 00000000(rel)
        jmp     ?_104                                   ; 26F5 _ E9, 00000505

?_085:  cmp     dword [ebp-38H], 88                     ; 26FA _ 83. 7D, C8, 58
        jnz     ?_086                                   ; 26FE _ 75, 53
        mov     eax, dword [_shtctl]                    ; 2700 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2705 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 270D _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2710 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2714 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2717 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 271B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 271E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2722 _ 89. 04 24
        call    _set_cursor                             ; 2725 _ E8, 00000696
        mov     dword [ebp-14H], -1                     ; 272A _ C7. 45, EC, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 2731 _ A1, 00000278(d)
        mov     dword [esp+8H], 0                       ; 2736 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 273E _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 2746 _ 89. 04 24
        call    _task_run                               ; 2749 _ E8, 00000000(rel)
        jmp     ?_104                                   ; 274E _ E9, 000004AC

?_086:  cmp     dword [ebp-38H], 28                     ; 2753 _ 83. 7D, C8, 1C
        jne     ?_102                                   ; 2757 _ 0F 85, 00000384
        mov     eax, dword [_shtctl]                    ; 275D _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2762 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 276A _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 276D _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2771 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2774 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2778 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 277B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 277F _ 89. 04 24
        call    _set_cursor                             ; 2782 _ E8, 00000639
        mov     eax, dword [ebp-0CH]                    ; 2787 _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 278A _ 8D. 50, 07
        test    eax, eax                                ; 278D _ 85. C0
        cmovs   eax, edx                                ; 278F _ 0F 48. C2
        sar     eax, 3                                  ; 2792 _ C1. F8, 03
        sub     eax, 2                                  ; 2795 _ 83. E8, 02
        mov     byte [ebp+eax-266H], 0                  ; 2798 _ C6. 84 05, FFFFFD9A, 00
        mov     eax, dword [ebp+8H]                     ; 27A0 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 27A3 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 27A7 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 27AA _ 89. 04 24
        call    _cons_newline                           ; 27AD _ E8, 00000695
        mov     dword [ebp-10H], eax                    ; 27B2 _ 89. 45, F0
        mov     dword [esp+4H], ?_273                   ; 27B5 _ C7. 44 24, 04, 00000056(d)
        lea     eax, [ebp-266H]                         ; 27BD _ 8D. 85, FFFFFD9A
        mov     dword [esp], eax                        ; 27C3 _ 89. 04 24
        call    _strcmp                                 ; 27C6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 27CB _ 83. F8, 01
        jne     ?_087                                   ; 27CE _ 0F 85, 000000CE
        mov     eax, dword [ebp+0CH]                    ; 27D4 _ 8B. 45, 0C
        lea     edx, [eax+3FFH]                         ; 27D7 _ 8D. 90, 000003FF
        test    eax, eax                                ; 27DD _ 85. C0
        cmovs   eax, edx                                ; 27DF _ 0F 48. C2
        sar     eax, 10                                 ; 27E2 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 27E5 _ 89. 04 24
        call    _intToHexStr                            ; 27E8 _ E8, FFFFECA3
        mov     dword [ebp-3CH], eax                    ; 27ED _ 89. 45, C4
        mov     eax, dword [_shtctl]                    ; 27F0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_274                  ; 27F5 _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], 7                      ; 27FD _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2805 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2808 _ 89. 54 24, 0C
        mov     dword [esp+8H], 16                      ; 280C _ C7. 44 24, 08, 00000010
        mov     edx, dword [ebp+8H]                     ; 2814 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2817 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 281B _ 89. 04 24
        call    _showString                             ; 281E _ E8, FFFFE713
        mov     eax, dword [_shtctl]                    ; 2823 _ A1, 00000264(d)
        mov     edx, dword [ebp-3CH]                    ; 2828 _ 8B. 55, C4
        mov     dword [esp+14H], edx                    ; 282B _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 282F _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2837 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 283A _ 89. 54 24, 0C
        mov     dword [esp+8H], 52                      ; 283E _ C7. 44 24, 08, 00000034
        mov     edx, dword [ebp+8H]                     ; 2846 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2849 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 284D _ 89. 04 24
        call    _showString                             ; 2850 _ E8, FFFFE6E1
        mov     eax, dword [_shtctl]                    ; 2855 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_275                  ; 285A _ C7. 44 24, 14, 00000060(d)
        mov     dword [esp+10H], 7                      ; 2862 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 286A _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 286D _ 89. 54 24, 0C
        mov     dword [esp+8H], 126                     ; 2871 _ C7. 44 24, 08, 0000007E
        mov     edx, dword [ebp+8H]                     ; 2879 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 287C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2880 _ 89. 04 24
        call    _showString                             ; 2883 _ E8, FFFFE6AE
        mov     eax, dword [ebp+8H]                     ; 2888 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 288B _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 288F _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2892 _ 89. 04 24
        call    _cons_newline                           ; 2895 _ E8, 000005AD
        mov     dword [ebp-10H], eax                    ; 289A _ 89. 45, F0
        jmp     ?_101                                   ; 289D _ E9, 00000233

?_087:  mov     dword [esp+4H], ?_276                   ; 28A2 _ C7. 44 24, 04, 00000064(d)
        lea     eax, [ebp-266H]                         ; 28AA _ 8D. 85, FFFFFD9A
        mov     dword [esp], eax                        ; 28B0 _ 89. 04 24
        call    _strcmp                                 ; 28B3 _ E8, 00000000(rel)
        test    eax, eax                                ; 28B8 _ 85. C0
        je      ?_092                                   ; 28BA _ 0F 84, 000000B9
        mov     dword [ebp-1CH], 28                     ; 28C0 _ C7. 45, E4, 0000001C
        jmp     ?_091                                   ; 28C7 _ EB, 33

?_088:  mov     dword [ebp-20H], 8                      ; 28C9 _ C7. 45, E0, 00000008
        jmp     ?_090                                   ; 28D0 _ EB, 1D

?_089:  mov     eax, dword [ebp+8H]                     ; 28D2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 28D5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 28D7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 28DA _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 28DD _ 0F AF. 45, E4
        mov     ecx, dword [ebp-20H]                    ; 28E1 _ 8B. 4D, E0
        add     eax, ecx                                ; 28E4 _ 01. C8
        add     eax, edx                                ; 28E6 _ 01. D0
        mov     byte [eax], 0                           ; 28E8 _ C6. 00, 00
        add     dword [ebp-20H], 1                      ; 28EB _ 83. 45, E0, 01
?_090:  cmp     dword [ebp-20H], 247                    ; 28EF _ 81. 7D, E0, 000000F7
        jle     ?_089                                   ; 28F6 _ 7E, DA
        add     dword [ebp-1CH], 1                      ; 28F8 _ 83. 45, E4, 01
?_091:  cmp     dword [ebp-1CH], 155                    ; 28FC _ 81. 7D, E4, 0000009B
        jle     ?_088                                   ; 2903 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2905 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 290A _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2912 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 291A _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2922 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 292A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 292D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2931 _ 89. 04 24
        call    _sheet_refresh                          ; 2934 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 28                     ; 2939 _ C7. 45, F0, 0000001C
        mov     eax, dword [_shtctl]                    ; 2940 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_272                  ; 2945 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 294D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 2955 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 295D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 2965 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2968 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 296C _ 89. 04 24
        call    _showString                             ; 296F _ E8, FFFFE5C2
        jmp     ?_101                                   ; 2974 _ E9, 0000015C

?_092:  mov     dword [esp+4H], ?_277                   ; 2979 _ C7. 44 24, 04, 00000068(d)
        lea     eax, [ebp-266H]                         ; 2981 _ 8D. 85, FFFFFD9A
        mov     dword [esp], eax                        ; 2987 _ 89. 04 24
        call    _strcmp                                 ; 298A _ E8, 00000000(rel)
        test    eax, eax                                ; 298F _ 85. C0
        je      ?_101                                   ; 2991 _ 0F 84, 0000013E
        jmp     ?_100                                   ; 2997 _ E9, 0000012B

?_093:  mov     byte [ebp-267H], 0                      ; 299C _ C6. 85, FFFFFD99, 00
        mov     dword [ebp-24H], 0                      ; 29A3 _ C7. 45, DC, 00000000
        jmp     ?_095                                   ; 29AA _ EB, 2D

?_094:  mov     edx, dword [ebp-18H]                    ; 29AC _ 8B. 55, E8
        mov     eax, dword [ebp-24H]                    ; 29AF _ 8B. 45, DC
        add     eax, edx                                ; 29B2 _ 01. D0
        movzx   eax, byte [eax]                         ; 29B4 _ 0F B6. 00
        test    al, al                                  ; 29B7 _ 84. C0
        jz      ?_096                                   ; 29B9 _ 74, 26
        mov     edx, dword [ebp-18H]                    ; 29BB _ 8B. 55, E8
        mov     eax, dword [ebp-24H]                    ; 29BE _ 8B. 45, DC
        add     eax, edx                                ; 29C1 _ 01. D0
        movzx   eax, byte [eax]                         ; 29C3 _ 0F B6. 00
        mov     ecx, eax                                ; 29C6 _ 89. C1
        lea     eax, [ebp-273H]                         ; 29C8 _ 8D. 85, FFFFFD8D
        mov     edx, dword [ebp-24H]                    ; 29CE _ 8B. 55, DC
        add     eax, edx                                ; 29D1 _ 01. D0
        mov     byte [eax], cl                          ; 29D3 _ 88. 08
        add     dword [ebp-24H], 1                      ; 29D5 _ 83. 45, DC, 01
?_095:  cmp     dword [ebp-24H], 7                      ; 29D9 _ 83. 7D, DC, 07
        jle     ?_094                                   ; 29DD _ 7E, CD
        jmp     ?_097                                   ; 29DF _ EB, 01

?_096:  nop                                             ; 29E1 _ 90
?_097:  mov     dword [ebp-28H], 0                      ; 29E2 _ C7. 45, D8, 00000000
        lea     eax, [ebp-273H]                         ; 29E9 _ 8D. 85, FFFFFD8D
        mov     edx, dword [ebp-24H]                    ; 29EF _ 8B. 55, DC
        add     eax, edx                                ; 29F2 _ 01. D0
        mov     byte [eax], 46                          ; 29F4 _ C6. 00, 2E
        add     dword [ebp-24H], 1                      ; 29F7 _ 83. 45, DC, 01
        mov     dword [ebp-28H], 0                      ; 29FB _ C7. 45, D8, 00000000
        jmp     ?_099                                   ; 2A02 _ EB, 25

?_098:  mov     edx, dword [ebp-18H]                    ; 2A04 _ 8B. 55, E8
        mov     eax, dword [ebp-28H]                    ; 2A07 _ 8B. 45, D8
        add     eax, edx                                ; 2A0A _ 01. D0
        add     eax, 8                                  ; 2A0C _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 2A0F _ 0F B6. 00
        mov     ecx, eax                                ; 2A12 _ 89. C1
        lea     eax, [ebp-273H]                         ; 2A14 _ 8D. 85, FFFFFD8D
        mov     edx, dword [ebp-24H]                    ; 2A1A _ 8B. 55, DC
        add     eax, edx                                ; 2A1D _ 01. D0
        mov     byte [eax], cl                          ; 2A1F _ 88. 08
        add     dword [ebp-24H], 1                      ; 2A21 _ 83. 45, DC, 01
        add     dword [ebp-28H], 1                      ; 2A25 _ 83. 45, D8, 01
?_099:  cmp     dword [ebp-28H], 2                      ; 2A29 _ 83. 7D, D8, 02
        jle     ?_098                                   ; 2A2D _ 7E, D5
        mov     edx, dword [_shtctl]                    ; 2A2F _ 8B. 15, 00000264(d)
        lea     eax, [ebp-273H]                         ; 2A35 _ 8D. 85, FFFFFD8D
        mov     dword [esp+14H], eax                    ; 2A3B _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2A3F _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-10H]                    ; 2A47 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2A4A _ 89. 44 24, 0C
        mov     dword [esp+8H], 16                      ; 2A4E _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp+8H]                     ; 2A56 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2A59 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2A5D _ 89. 14 24
        call    _showString                             ; 2A60 _ E8, FFFFE4D1
        mov     dword [ebp-40H], 136                    ; 2A65 _ C7. 45, C0, 00000088
        mov     eax, dword [ebp-18H]                    ; 2A6C _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 2A6F _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 2A72 _ 89. 04 24
        call    _intToHexStr                            ; 2A75 _ E8, FFFFEA16
        mov     dword [ebp-44H], eax                    ; 2A7A _ 89. 45, BC
        mov     eax, dword [_shtctl]                    ; 2A7D _ A1, 00000264(d)
        mov     edx, dword [ebp-44H]                    ; 2A82 _ 8B. 55, BC
        mov     dword [esp+14H], edx                    ; 2A85 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 2A89 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2A91 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2A94 _ 89. 54 24, 0C
        mov     edx, dword [ebp-40H]                    ; 2A98 _ 8B. 55, C0
        mov     dword [esp+8H], edx                     ; 2A9B _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2A9F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2AA2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AA6 _ 89. 04 24
        call    _showString                             ; 2AA9 _ E8, FFFFE488
        mov     eax, dword [ebp+8H]                     ; 2AAE _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2AB1 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2AB5 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2AB8 _ 89. 04 24
        call    _cons_newline                           ; 2ABB _ E8, 00000387
        mov     dword [ebp-10H], eax                    ; 2AC0 _ 89. 45, F0
        add     dword [ebp-18H], 32                     ; 2AC3 _ 83. 45, E8, 20
?_100:  mov     eax, dword [ebp-18H]                    ; 2AC7 _ 8B. 45, E8
        movzx   eax, byte [eax]                         ; 2ACA _ 0F B6. 00
        test    al, al                                  ; 2ACD _ 84. C0
        jne     ?_093                                   ; 2ACF _ 0F 85, FFFFFEC7
?_101:  mov     dword [ebp-0CH], 16                     ; 2AD5 _ C7. 45, F4, 00000010
        jmp     ?_104                                   ; 2ADC _ E9, 0000011E

?_102:  cmp     dword [ebp-38H], 14                     ; 2AE1 _ 83. 7D, C8, 0E
        jnz     ?_103                                   ; 2AE5 _ 75, 63
        cmp     dword [ebp-0CH], 8                      ; 2AE7 _ 83. 7D, F4, 08
        jle     ?_103                                   ; 2AEB _ 7E, 5D
        mov     eax, dword [_shtctl]                    ; 2AED _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2AF2 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2AFA _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2AFD _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2B01 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2B04 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2B08 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2B0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B0F _ 89. 04 24
        call    _set_cursor                             ; 2B12 _ E8, 000002A9
        sub     dword [ebp-0CH], 8                      ; 2B17 _ 83. 6D, F4, 08
        mov     eax, dword [_shtctl]                    ; 2B1B _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2B20 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2B28 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2B2B _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2B2F _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2B32 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2B36 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2B39 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B3D _ 89. 04 24
        call    _set_cursor                             ; 2B40 _ E8, 0000027B
        jmp     ?_104                                   ; 2B45 _ E9, 000000B5

?_103:  mov     eax, dword [ebp-38H]                    ; 2B4A _ 8B. 45, C8
        mov     dword [esp], eax                        ; 2B4D _ 89. 04 24
        call    _transferScanCode                       ; 2B50 _ E8, 000000E2
        mov     byte [ebp-45H], al                      ; 2B55 _ 88. 45, BB
        cmp     dword [ebp-0CH], 239                    ; 2B58 _ 81. 7D, F4, 000000EF
        jg      ?_104                                   ; 2B5F _ 0F 8F, 0000009A
        cmp     byte [ebp-45H], 0                       ; 2B65 _ 80. 7D, BB, 00
        je      ?_104                                   ; 2B69 _ 0F 84, 00000090
        mov     eax, dword [_shtctl]                    ; 2B6F _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2B74 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2B7C _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2B7F _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2B83 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2B86 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2B8A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2B8D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B91 _ 89. 04 24
        call    _set_cursor                             ; 2B94 _ E8, 00000227
        movzx   eax, byte [ebp-45H]                     ; 2B99 _ 0F B6. 45, BB
        mov     byte [ebp-275H], al                     ; 2B9D _ 88. 85, FFFFFD8B
        mov     byte [ebp-274H], 0                      ; 2BA3 _ C6. 85, FFFFFD8C, 00
        mov     eax, dword [ebp-0CH]                    ; 2BAA _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 2BAD _ 8D. 50, 07
        test    eax, eax                                ; 2BB0 _ 85. C0
        cmovs   eax, edx                                ; 2BB2 _ 0F 48. C2
        sar     eax, 3                                  ; 2BB5 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 2BB8 _ 8D. 50, FE
        movzx   eax, byte [ebp-45H]                     ; 2BBB _ 0F B6. 45, BB
        mov     byte [ebp+edx-266H], al                 ; 2BBF _ 88. 84 15, FFFFFD9A
        mov     edx, dword [_shtctl]                    ; 2BC6 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-275H]                         ; 2BCC _ 8D. 85, FFFFFD8B
        mov     dword [esp+14H], eax                    ; 2BD2 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2BD6 _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-10H]                    ; 2BDE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2BE1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2BE5 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2BE8 _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 2BEC _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2BEF _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2BF3 _ 89. 14 24
        call    _showString                             ; 2BF6 _ E8, FFFFE33B
        add     dword [ebp-0CH], 8                      ; 2BFB _ 83. 45, F4, 08
?_104:  cmp     dword [ebp-14H], 0                      ; 2BFF _ 83. 7D, EC, 00
        js      ?_080                                   ; 2C03 _ 0F 88, FFFFFA07
        mov     eax, dword [_shtctl]                    ; 2C09 _ A1, 00000264(d)
        mov     edx, dword [ebp-14H]                    ; 2C0E _ 8B. 55, EC
        mov     dword [esp+10H], edx                    ; 2C11 _ 89. 54 24, 10
        mov     edx, dword [ebp-10H]                    ; 2C15 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2C18 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2C1C _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2C1F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2C23 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2C26 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C2A _ 89. 04 24
        call    _set_cursor                             ; 2C2D _ E8, 0000018E
        jmp     ?_080                                   ; 2C32 _ E9, FFFFF9D9

_transferScanCode:; Function begin
        push    ebp                                     ; 2C37 _ 55
        mov     ebp, esp                                ; 2C38 _ 89. E5
        sub     esp, 16                                 ; 2C3A _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 2C3D _ 83. 7D, 08, 2A
        jnz     ?_105                                   ; 2C41 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2C43 _ A1, 00000000(d)
        or      eax, 01H                                ; 2C48 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 2C4B _ A3, 00000000(d)
?_105:  cmp     dword [ebp+8H], 54                      ; 2C50 _ 83. 7D, 08, 36
        jnz     ?_106                                   ; 2C54 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2C56 _ A1, 00000000(d)
        or      eax, 02H                                ; 2C5B _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 2C5E _ A3, 00000000(d)
?_106:  cmp     dword [ebp+8H], 170                     ; 2C63 _ 81. 7D, 08, 000000AA
        jnz     ?_107                                   ; 2C6A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2C6C _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 2C71 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 2C74 _ A3, 00000000(d)
?_107:  cmp     dword [ebp+8H], 182                     ; 2C79 _ 81. 7D, 08, 000000B6
        jnz     ?_108                                   ; 2C80 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2C82 _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 2C87 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 2C8A _ A3, 00000000(d)
?_108:  cmp     dword [ebp+8H], 58                      ; 2C8F _ 83. 7D, 08, 3A
        jnz     ?_110                                   ; 2C93 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 2C95 _ A1, 00000004(d)
        test    eax, eax                                ; 2C9A _ 85. C0
        jnz     ?_109                                   ; 2C9C _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 2C9E _ C7. 05, 00000004(d), 00000001
        jmp     ?_110                                   ; 2CA8 _ EB, 0A

?_109:  mov     dword [_caps_lock], 0                   ; 2CAA _ C7. 05, 00000004(d), 00000000
?_110:  cmp     dword [ebp+8H], 42                      ; 2CB4 _ 83. 7D, 08, 2A
        jz      ?_111                                   ; 2CB8 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 2CBA _ 83. 7D, 08, 36
        jz      ?_111                                   ; 2CBE _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 2CC0 _ 81. 7D, 08, 000000AA
        jz      ?_111                                   ; 2CC7 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 2CC9 _ 81. 7D, 08, 000000B6
        jz      ?_111                                   ; 2CD0 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 2CD2 _ 83. 7D, 08, 53
        jg      ?_111                                   ; 2CD6 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 2CD8 _ 83. 7D, 08, 3A
        jnz     ?_112                                   ; 2CDC _ 75, 0A
?_111:  mov     eax, 0                                  ; 2CDE _ B8, 00000000
        jmp     ?_117                                   ; 2CE3 _ E9, 0000008A

?_112:  mov     byte [ebp-1H], 0                        ; 2CE8 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 2CEC _ A1, 00000000(d)
        test    eax, eax                                ; 2CF1 _ 85. C0
        jnz     ?_113                                   ; 2CF3 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 2CF5 _ 83. 7D, 08, 53
        jg      ?_113                                   ; 2CF9 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 2CFB _ 8B. 45, 08
        add     eax, _keytable                          ; 2CFE _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 2D03 _ 0F B6. 00
        test    al, al                                  ; 2D06 _ 84. C0
        jz      ?_113                                   ; 2D08 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 2D0A _ 8B. 45, 08
        add     eax, _keytable                          ; 2D0D _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 2D12 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 2D15 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 2D18 _ 80. 7D, FF, 40
        jle     ?_115                                   ; 2D1C _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 2D1E _ 80. 7D, FF, 5A
        jg      ?_115                                   ; 2D22 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 2D24 _ A1, 00000004(d)
        test    eax, eax                                ; 2D29 _ 85. C0
        jnz     ?_115                                   ; 2D2B _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 2D2D _ 0F B6. 45, FF
        add     eax, 32                                 ; 2D31 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 2D34 _ 88. 45, FF
        jmp     ?_115                                   ; 2D37 _ EB, 34

?_113:  mov     eax, dword [_key_shift]                 ; 2D39 _ A1, 00000000(d)
        test    eax, eax                                ; 2D3E _ 85. C0
        jz      ?_114                                   ; 2D40 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 2D42 _ 83. 7D, 08, 7F
        jg      ?_114                                   ; 2D46 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 2D48 _ 8B. 45, 08
        add     eax, _keytable1                         ; 2D4B _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 2D50 _ 0F B6. 00
        test    al, al                                  ; 2D53 _ 84. C0
        jz      ?_114                                   ; 2D55 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 2D57 _ 8B. 45, 08
        add     eax, _keytable1                         ; 2D5A _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 2D5F _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 2D62 _ 88. 45, FF
        jmp     ?_116                                   ; 2D65 _ EB, 07

?_114:  mov     byte [ebp-1H], 0                        ; 2D67 _ C6. 45, FF, 00
        jmp     ?_116                                   ; 2D6B _ EB, 01

?_115:  nop                                             ; 2D6D _ 90
?_116:  movzx   eax, byte [ebp-1H]                      ; 2D6E _ 0F B6. 45, FF
?_117:  leave                                           ; 2D72 _ C9
        ret                                             ; 2D73 _ C3
; _transferScanCode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 2D74 _ 55
        mov     ebp, esp                                ; 2D75 _ 89. E5
        sub     esp, 4                                  ; 2D77 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2D7A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D7D _ 89. 04 24
        call    _transferScanCode                       ; 2D80 _ E8, FFFFFEB2
        cmp     dword [ebp+8H], 58                      ; 2D85 _ 83. 7D, 08, 3A
        jz      ?_118                                   ; 2D89 _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 2D8B _ 81. 7D, 08, 000000BA
        jz      ?_118                                   ; 2D92 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 2D94 _ 83. 7D, 08, 2A
        jz      ?_118                                   ; 2D98 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 2D9A _ 83. 7D, 08, 36
        jz      ?_118                                   ; 2D9E _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 2DA0 _ 81. 7D, 08, 000000AA
        jz      ?_118                                   ; 2DA7 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 2DA9 _ 81. 7D, 08, 000000B6
        jnz     ?_119                                   ; 2DB0 _ 75, 07
?_118:  mov     eax, 1                                  ; 2DB2 _ B8, 00000001
        jmp     ?_120                                   ; 2DB7 _ EB, 05

?_119:  mov     eax, 0                                  ; 2DB9 _ B8, 00000000
?_120:  leave                                           ; 2DBE _ C9
        ret                                             ; 2DBF _ C3
; _isSpecialKey End of function

_set_cursor:; Function begin
        push    ebp                                     ; 2DC0 _ 55
        mov     ebp, esp                                ; 2DC1 _ 89. E5
        push    esi                                     ; 2DC3 _ 56
        push    ebx                                     ; 2DC4 _ 53
        sub     esp, 32                                 ; 2DC5 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2DC8 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 2DCB _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 2DCE _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 2DD1 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 2DD4 _ 8B. 45, 18
        movzx   eax, al                                 ; 2DD7 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2DDA _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2DDD _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DE0 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2DE3 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 2DE5 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 2DE9 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 2DED _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 2DF0 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 2DF4 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 2DF7 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2DFB _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2DFF _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2E03 _ 89. 14 24
        call    _boxfill8                               ; 2E06 _ E8, FFFFE298
        mov     eax, dword [ebp+14H]                    ; 2E0B _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 2E0E _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 2E11 _ 8B. 45, 10
        add     eax, 8                                  ; 2E14 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 2E17 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E1B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2E1F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2E22 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2E26 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2E29 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2E2D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E30 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E34 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E37 _ 89. 04 24
        call    _sheet_refresh                          ; 2E3A _ E8, 00000000(rel)
        nop                                             ; 2E3F _ 90
        add     esp, 32                                 ; 2E40 _ 83. C4, 20
        pop     ebx                                     ; 2E43 _ 5B
        pop     esi                                     ; 2E44 _ 5E
        pop     ebp                                     ; 2E45 _ 5D
        ret                                             ; 2E46 _ C3
; _set_cursor End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2E47 _ 55
        mov     ebp, esp                                ; 2E48 _ 89. E5
        push    ebx                                     ; 2E4A _ 53
        sub     esp, 52                                 ; 2E4B _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 2E4E _ 81. 7D, 08, 0000008B
        jg      ?_121                                   ; 2E55 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 2E57 _ 83. 45, 08, 10
        jmp     ?_130                                   ; 2E5B _ E9, 000000DB

?_121:  mov     dword [ebp-10H], 28                     ; 2E60 _ C7. 45, F0, 0000001C
        jmp     ?_125                                   ; 2E67 _ EB, 50

?_122:  mov     dword [ebp-0CH], 8                      ; 2E69 _ C7. 45, F4, 00000008
        jmp     ?_124                                   ; 2E70 _ EB, 3A

?_123:  mov     eax, dword [ebp+0CH]                    ; 2E72 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2E75 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2E77 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2E7A _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2E7D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E80 _ 8B. 40, 04
        imul    eax, ecx                                ; 2E83 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2E86 _ 8B. 4D, F4
        add     eax, ecx                                ; 2E89 _ 01. C8
        add     eax, edx                                ; 2E8B _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2E8D _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2E90 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2E92 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2E95 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2E98 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2E9C _ 8B. 5D, F4
        add     edx, ebx                                ; 2E9F _ 01. DA
        add     edx, ecx                                ; 2EA1 _ 01. CA
        movzx   eax, byte [eax]                         ; 2EA3 _ 0F B6. 00
        mov     byte [edx], al                          ; 2EA6 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2EA8 _ 83. 45, F4, 01
?_124:  cmp     dword [ebp-0CH], 247                    ; 2EAC _ 81. 7D, F4, 000000F7
        jle     ?_123                                   ; 2EB3 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2EB5 _ 83. 45, F0, 01
?_125:  cmp     dword [ebp-10H], 139                    ; 2EB9 _ 81. 7D, F0, 0000008B
        jle     ?_122                                   ; 2EC0 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 2EC2 _ C7. 45, F0, 0000008C
        jmp     ?_129                                   ; 2EC9 _ EB, 33

?_126:  mov     dword [ebp-0CH], 8                      ; 2ECB _ C7. 45, F4, 00000008
        jmp     ?_128                                   ; 2ED2 _ EB, 1D

?_127:  mov     eax, dword [ebp+0CH]                    ; 2ED4 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2ED7 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2ED9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2EDC _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2EDF _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2EE3 _ 8B. 4D, F4
        add     eax, ecx                                ; 2EE6 _ 01. C8
        add     eax, edx                                ; 2EE8 _ 01. D0
        mov     byte [eax], 0                           ; 2EEA _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2EED _ 83. 45, F4, 01
?_128:  cmp     dword [ebp-0CH], 247                    ; 2EF1 _ 81. 7D, F4, 000000F7
        jle     ?_127                                   ; 2EF8 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2EFA _ 83. 45, F0, 01
?_129:  cmp     dword [ebp-10H], 155                    ; 2EFE _ 81. 7D, F0, 0000009B
        jle     ?_126                                   ; 2F05 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2F07 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2F0C _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2F14 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2F1C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2F24 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2F2C _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2F2F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F33 _ 89. 04 24
        call    _sheet_refresh                          ; 2F36 _ E8, 00000000(rel)
?_130:  mov     eax, dword [_shtctl]                    ; 2F3B _ A1, 00000264(d)
        mov     dword [esp+14H], ?_272                  ; 2F40 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 2F48 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2F50 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2F53 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2F57 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2F5F _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2F62 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F66 _ 89. 04 24
        call    _showString                             ; 2F69 _ E8, FFFFDFC8
        mov     eax, dword [ebp+8H]                     ; 2F6E _ 8B. 45, 08
        add     esp, 52                                 ; 2F71 _ 83. C4, 34
        pop     ebx                                     ; 2F74 _ 5B
        pop     ebp                                     ; 2F75 _ 5D
        ret                                             ; 2F76 _ C3
; _cons_newline End of function

        nop                                             ; 2F77 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2F78 _ 55
        mov     ebp, esp                                ; 2F79 _ 89. E5
        sub     esp, 40                                 ; 2F7B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2F7E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2F86 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F89 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2F8C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2F91 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2F94 _ 83. 7D, F0, 00
        jnz     ?_131                                   ; 2F98 _ 75, 0A
        mov     eax, 0                                  ; 2F9A _ B8, 00000000
        jmp     ?_135                                   ; 2F9F _ E9, 0000009D

?_131:  mov     eax, dword [ebp+10H]                    ; 2FA4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2FA7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2FAB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FB2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2FB5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2FBA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2FBC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2FBF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 2FC2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2FC5 _ 8B. 40, 04
        test    eax, eax                                ; 2FC8 _ 85. C0
        jnz     ?_132                                   ; 2FCA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2FCC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2FCF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2FD7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FDB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FDE _ 89. 04 24
        call    _memman_free_4k                         ; 2FE1 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2FE6 _ B8, 00000000
        jmp     ?_135                                   ; 2FEB _ EB, 54

?_132:  mov     eax, dword [ebp-10H]                    ; 2FED _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2FF0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2FF3 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2FF5 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2FF8 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2FFB _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2FFE _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3001 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3004 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3007 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 300A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3011 _ C7. 45, F4, 00000000
        jmp     ?_134                                   ; 3018 _ EB, 1B

?_133:  mov     edx, dword [ebp-10H]                    ; 301A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 301D _ 8B. 45, F4
        add     eax, 33                                 ; 3020 _ 83. C0, 21
        shl     eax, 5                                  ; 3023 _ C1. E0, 05
        add     eax, edx                                ; 3026 _ 01. D0
        add     eax, 16                                 ; 3028 _ 83. C0, 10
        mov     dword [eax], 0                          ; 302B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3031 _ 83. 45, F4, 01
?_134:  cmp     dword [ebp-0CH], 255                    ; 3035 _ 81. 7D, F4, 000000FF
        jle     ?_133                                   ; 303C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 303E _ 8B. 45, F0
?_135:  leave                                           ; 3041 _ C9
        ret                                             ; 3042 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3043 _ 55
        mov     ebp, esp                                ; 3044 _ 89. E5
        sub     esp, 16                                 ; 3046 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3049 _ C7. 45, FC, 00000000
        jmp     ?_138                                   ; 3050 _ EB, 5B

?_136:  mov     edx, dword [ebp+8H]                     ; 3052 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3055 _ 8B. 45, FC
        add     eax, 33                                 ; 3058 _ 83. C0, 21
        shl     eax, 5                                  ; 305B _ C1. E0, 05
        add     eax, edx                                ; 305E _ 01. D0
        add     eax, 16                                 ; 3060 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3063 _ 8B. 00
        test    eax, eax                                ; 3065 _ 85. C0
        jnz     ?_137                                   ; 3067 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 3069 _ 8B. 45, FC
        shl     eax, 5                                  ; 306C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 306F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3075 _ 8B. 45, 08
        add     eax, edx                                ; 3078 _ 01. D0
        add     eax, 4                                  ; 307A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 307D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3080 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3083 _ 8B. 55, FC
        add     edx, 4                                  ; 3086 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 3089 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 308C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 3090 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 3093 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 309A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 309D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 30A4 _ 8B. 45, F8
        jmp     ?_139                                   ; 30A7 _ EB, 12

?_137:  add     dword [ebp-4H], 1                       ; 30A9 _ 83. 45, FC, 01
?_138:  cmp     dword [ebp-4H], 255                     ; 30AD _ 81. 7D, FC, 000000FF
        jle     ?_136                                   ; 30B4 _ 7E, 9C
        mov     eax, 0                                  ; 30B6 _ B8, 00000000
?_139:  leave                                           ; 30BB _ C9
        ret                                             ; 30BC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 30BD _ 55
        mov     ebp, esp                                ; 30BE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30C3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30C8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 30CB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 30CE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30D1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 30D4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 30D7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 30DA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 30DD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 30E0 _ 89. 50, 14
        nop                                             ; 30E3 _ 90
        pop     ebp                                     ; 30E4 _ 5D
        ret                                             ; 30E5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 30E6 _ 55
        mov     ebp, esp                                ; 30E7 _ 89. E5
        push    edi                                     ; 30E9 _ 57
        push    esi                                     ; 30EA _ 56
        push    ebx                                     ; 30EB _ 53
        sub     esp, 60                                 ; 30EC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 30EF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30F2 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 30F5 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 30F8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30FB _ 8B. 40, 10
        add     eax, 1                                  ; 30FE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3101 _ 39. 45, 10
        jle     ?_140                                   ; 3104 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3106 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3109 _ 8B. 40, 10
        add     eax, 1                                  ; 310C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 310F _ 89. 45, 10
?_140:  cmp     dword [ebp+10H], -1                     ; 3112 _ 83. 7D, 10, FF
        jge     ?_141                                   ; 3116 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3118 _ C7. 45, 10, FFFFFFFF
?_141:  mov     eax, dword [ebp+0CH]                    ; 311F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3122 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3125 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3128 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 312B _ 3B. 45, 10
        jle     ?_148                                   ; 312E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3134 _ 83. 7D, 10, 00
        js      ?_144                                   ; 3138 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 313E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3141 _ 89. 45, E4
        jmp     ?_143                                   ; 3144 _ EB, 34

?_142:  mov     eax, dword [ebp-1CH]                    ; 3146 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3149 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 314C _ 8B. 45, 08
        add     edx, 4                                  ; 314F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3152 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3156 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3159 _ 8B. 55, E4
        add     edx, 4                                  ; 315C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 315F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3163 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3166 _ 8B. 55, E4
        add     edx, 4                                  ; 3169 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 316C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3170 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3173 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3176 _ 83. 6D, E4, 01
?_143:  mov     eax, dword [ebp-1CH]                    ; 317A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 317D _ 3B. 45, 10
        jg      ?_142                                   ; 3180 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3182 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3185 _ 8B. 55, 10
        add     edx, 4                                  ; 3188 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 318B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 318E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 3192 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3195 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3198 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 319B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 319E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 31A1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 31A4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 31A7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 31AA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 31AD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 31B0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 31B3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 31B6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 31B9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 31BC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 31BF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 31C2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 31C6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 31CA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 31CE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 31D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31D9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 31DC _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 31E1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 31E4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 31E7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 31EA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 31ED _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 31F0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 31F3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 31F6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 31F9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 31FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 31FF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3202 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3205 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3208 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 320B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 320E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3211 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3214 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3218 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 321C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3220 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3224 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3228 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 322C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 322F _ 89. 04 24
        call    _sheet_refreshsub                       ; 3232 _ E8, 00000465
        jmp     ?_155                                   ; 3237 _ E9, 0000027D

?_144:  mov     eax, dword [ebp+8H]                     ; 323C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 323F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3242 _ 39. 45, E0
        jge     ?_147                                   ; 3245 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3247 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 324A _ 89. 45, E4
        jmp     ?_146                                   ; 324D _ EB, 34

?_145:  mov     eax, dword [ebp-1CH]                    ; 324F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3252 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3255 _ 8B. 45, 08
        add     edx, 4                                  ; 3258 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 325B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 325F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3262 _ 8B. 55, E4
        add     edx, 4                                  ; 3265 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3268 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 326C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 326F _ 8B. 55, E4
        add     edx, 4                                  ; 3272 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3275 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3279 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 327C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 327F _ 83. 45, E4, 01
?_146:  mov     eax, dword [ebp+8H]                     ; 3283 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3286 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3289 _ 39. 45, E4
        jl      ?_145                                   ; 328C _ 7C, C1
?_147:  mov     eax, dword [ebp+8H]                     ; 328E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3291 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3294 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3297 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 329A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 329D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32A0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32A3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32A6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32A9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32AC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32AF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32B2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32B5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 32B8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 32BB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32BE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32C1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32C4 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 32C7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 32CF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 32D3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 32D7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 32DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32E2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 32E5 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 32EA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 32ED _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 32F0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32F3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32F6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32F9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32FC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32FF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3302 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3305 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3308 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 330B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 330E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3311 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3314 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3317 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 331A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 331E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3326 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 332A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 332E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3332 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3336 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3339 _ 89. 04 24
        call    _sheet_refreshsub                       ; 333C _ E8, 0000035B
        jmp     ?_155                                   ; 3341 _ E9, 00000173

?_148:  mov     eax, dword [ebp-20H]                    ; 3346 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3349 _ 3B. 45, 10
        jge     ?_155                                   ; 334C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3352 _ 83. 7D, E0, 00
        js      ?_151                                   ; 3356 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3358 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 335B _ 89. 45, E4
        jmp     ?_150                                   ; 335E _ EB, 34

?_149:  mov     eax, dword [ebp-1CH]                    ; 3360 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3363 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3366 _ 8B. 45, 08
        add     edx, 4                                  ; 3369 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 336C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3370 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3373 _ 8B. 55, E4
        add     edx, 4                                  ; 3376 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3379 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 337D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3380 _ 8B. 55, E4
        add     edx, 4                                  ; 3383 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3386 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 338A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 338D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3390 _ 83. 45, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 3394 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3397 _ 3B. 45, 10
        jl      ?_149                                   ; 339A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 339C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 339F _ 8B. 55, 10
        add     edx, 4                                  ; 33A2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 33A5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 33A8 _ 89. 4C 90, 04
        jmp     ?_154                                   ; 33AC _ EB, 6C

?_151:  mov     eax, dword [ebp+8H]                     ; 33AE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33B1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 33B4 _ 89. 45, E4
        jmp     ?_153                                   ; 33B7 _ EB, 3A

?_152:  mov     eax, dword [ebp-1CH]                    ; 33B9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 33BC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 33BF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 33C2 _ 8B. 55, E4
        add     edx, 4                                  ; 33C5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 33C8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 33CC _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 33CF _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 33D2 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 33D6 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 33D9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 33DC _ 8B. 45, 08
        add     edx, 4                                  ; 33DF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 33E2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 33E6 _ 8B. 55, E4
        add     edx, 1                                  ; 33E9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 33EC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 33EF _ 83. 6D, E4, 01
?_153:  mov     eax, dword [ebp-1CH]                    ; 33F3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 33F6 _ 3B. 45, 10
        jge     ?_152                                   ; 33F9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 33FB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 33FE _ 8B. 55, 10
        add     edx, 4                                  ; 3401 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3404 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3407 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 340B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 340E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3411 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3414 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3417 _ 89. 50, 10
?_154:  mov     eax, dword [ebp+0CH]                    ; 341A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 341D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3420 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3423 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3426 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3429 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 342C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 342F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3432 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3435 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3438 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 343B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 343E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3441 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3444 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3447 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 344B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 344F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3453 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3457 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 345B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 345E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3461 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3466 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3469 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 346C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 346F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3472 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3475 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3478 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 347B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 347E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3481 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3484 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3487 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 348A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 348D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3490 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3493 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3497 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 349A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 349E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 34A2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 34A6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 34AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34B1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 34B4 _ E8, 000001E3
?_155:  nop                                             ; 34B9 _ 90
        add     esp, 60                                 ; 34BA _ 83. C4, 3C
        pop     ebx                                     ; 34BD _ 5B
        pop     esi                                     ; 34BE _ 5E
        pop     edi                                     ; 34BF _ 5F
        pop     ebp                                     ; 34C0 _ 5D
        ret                                             ; 34C1 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 34C2 _ 55
        mov     ebp, esp                                ; 34C3 _ 89. E5
        push    edi                                     ; 34C5 _ 57
        push    esi                                     ; 34C6 _ 56
        push    ebx                                     ; 34C7 _ 53
        sub     esp, 60                                 ; 34C8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 34CB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 34CE _ 8B. 40, 18
        test    eax, eax                                ; 34D1 _ 85. C0
        js      ?_156                                   ; 34D3 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 34D5 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 34D8 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 34DB _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 34DE _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 34E1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34E4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 34E7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 34EA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34ED _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34F0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 34F3 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 34F6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 34F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34FC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 34FF _ 8B. 45, 14
        add     edx, eax                                ; 3502 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3504 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3507 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 350A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 350D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3510 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3513 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3517 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 351B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 351F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3523 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3527 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 352B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 352E _ 89. 04 24
        call    _sheet_refreshsub                       ; 3531 _ E8, 00000166
?_156:  mov     eax, 0                                  ; 3536 _ B8, 00000000
        add     esp, 60                                 ; 353B _ 83. C4, 3C
        pop     ebx                                     ; 353E _ 5B
        pop     esi                                     ; 353F _ 5E
        pop     edi                                     ; 3540 _ 5F
        pop     ebp                                     ; 3541 _ 5D
        ret                                             ; 3542 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3543 _ 55
        mov     ebp, esp                                ; 3544 _ 89. E5
        push    esi                                     ; 3546 _ 56
        push    ebx                                     ; 3547 _ 53
        sub     esp, 48                                 ; 3548 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 354B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 354E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3551 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3554 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3557 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 355A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 355D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3560 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3563 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3566 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3569 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 356C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 356F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3572 _ 8B. 40, 18
        test    eax, eax                                ; 3575 _ 85. C0
        js      ?_157                                   ; 3577 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 357D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3580 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3583 _ 8B. 45, F0
        add     edx, eax                                ; 3586 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3588 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 358B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 358E _ 8B. 45, F4
        add     eax, ecx                                ; 3591 _ 01. C8
        mov     dword [esp+14H], 0                      ; 3593 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 359B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 359F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 35A3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 35A6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 35AA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 35AD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35B1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35B4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 35B7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 35BC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 35BF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 35C2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 35C5 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 35C8 _ 8B. 45, 14
        add     edx, eax                                ; 35CB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 35CD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 35D0 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 35D3 _ 8B. 45, 10
        add     eax, ebx                                ; 35D6 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 35D8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 35DC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 35E0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 35E4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 35E7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 35EB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 35EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35F5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 35F8 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 35FD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3600 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3603 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3606 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3609 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 360C _ 8B. 45, F0
        add     edx, eax                                ; 360F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3611 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3614 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3617 _ 8B. 45, F4
        add     eax, ebx                                ; 361A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 361C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3620 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3628 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 362C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3630 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3633 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3637 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 363A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 363E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3641 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3644 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3649 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 364C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 364F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3652 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3655 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3658 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 365B _ 8B. 45, 14
        add     edx, eax                                ; 365E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3660 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3663 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3666 _ 8B. 45, 10
        add     eax, esi                                ; 3669 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 366B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 366F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3673 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3677 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 367B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 367E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3682 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3685 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3689 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 368C _ 89. 04 24
        call    _sheet_refreshsub                       ; 368F _ E8, 00000008
?_157:  nop                                             ; 3694 _ 90
        add     esp, 48                                 ; 3695 _ 83. C4, 30
        pop     ebx                                     ; 3698 _ 5B
        pop     esi                                     ; 3699 _ 5E
        pop     ebp                                     ; 369A _ 5D
        ret                                             ; 369B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 369C _ 55
        mov     ebp, esp                                ; 369D _ 89. E5
        sub     esp, 48                                 ; 369F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 36A2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36A5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 36A7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 36AA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36AD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 36B0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 36B3 _ 83. 7D, 0C, 00
        jns     ?_158                                   ; 36B7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 36B9 _ C7. 45, 0C, 00000000
?_158:  cmp     dword [ebp+10H], 8                      ; 36C0 _ 83. 7D, 10, 08
        jg      ?_159                                   ; 36C4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 36C6 _ C7. 45, 10, 00000000
?_159:  mov     eax, dword [ebp+8H]                     ; 36CD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36D0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 36D3 _ 39. 45, 14
        jle     ?_160                                   ; 36D6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 36D8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36DB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 36DE _ 89. 45, 14
?_160:  mov     eax, dword [ebp+8H]                     ; 36E1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36E4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 36E7 _ 39. 45, 18
        jle     ?_161                                   ; 36EA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 36EC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36EF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 36F2 _ 89. 45, 18
?_161:  mov     eax, dword [ebp+1CH]                    ; 36F5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 36F8 _ 89. 45, FC
        jmp     ?_168                                   ; 36FB _ E9, 0000010F

?_162:  mov     eax, dword [ebp+8H]                     ; 3700 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3703 _ 8B. 55, FC
        add     edx, 4                                  ; 3706 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3709 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 370D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3710 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3713 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3715 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3718 _ 8B. 45, 08
        add     eax, 1044                               ; 371B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3720 _ 8B. 55, E8
        sub     edx, eax                                ; 3723 _ 29. C2
        mov     eax, edx                                ; 3725 _ 89. D0
        sar     eax, 5                                  ; 3727 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 372A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 372D _ C7. 45, F4, 00000000
        jmp     ?_167                                   ; 3734 _ E9, 000000C3

?_163:  mov     eax, dword [ebp-18H]                    ; 3739 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 373C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 373F _ 8B. 45, F4
        add     eax, edx                                ; 3742 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3744 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3747 _ C7. 45, F8, 00000000
        jmp     ?_166                                   ; 374E _ E9, 00000096

?_164:  mov     eax, dword [ebp-18H]                    ; 3753 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3756 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3759 _ 8B. 45, F8
        add     eax, edx                                ; 375C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 375E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3761 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3764 _ 3B. 45, D8
        jg      ?_165                                   ; 3767 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3769 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 376C _ 3B. 45, 14
        jge     ?_165                                   ; 376F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3771 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3774 _ 3B. 45, DC
        jg      ?_165                                   ; 3777 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3779 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 377C _ 3B. 45, 18
        jge     ?_165                                   ; 377F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3781 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3784 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3787 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 378B _ 8B. 55, F8
        add     eax, edx                                ; 378E _ 01. D0
        mov     edx, eax                                ; 3790 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3792 _ 8B. 45, E4
        add     eax, edx                                ; 3795 _ 01. D0
        movzx   eax, byte [eax]                         ; 3797 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 379A _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 379D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 37A0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 37A3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 37A7 _ 8B. 55, D8
        add     eax, edx                                ; 37AA _ 01. D0
        mov     edx, eax                                ; 37AC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 37AE _ 8B. 45, EC
        add     eax, edx                                ; 37B1 _ 01. D0
        movzx   eax, byte [eax]                         ; 37B3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 37B6 _ 38. 45, E3
        jnz     ?_165                                   ; 37B9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 37BB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 37BF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 37C2 _ 8B. 52, 14
        cmp     eax, edx                                ; 37C5 _ 39. D0
        jz      ?_165                                   ; 37C7 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 37C9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 37CC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 37CF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 37D3 _ 8B. 55, D8
        add     eax, edx                                ; 37D6 _ 01. D0
        mov     edx, eax                                ; 37D8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 37DA _ 8B. 45, F0
        add     edx, eax                                ; 37DD _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 37DF _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 37E3 _ 88. 02
?_165:  add     dword [ebp-8H], 1                       ; 37E5 _ 83. 45, F8, 01
?_166:  mov     eax, dword [ebp-18H]                    ; 37E9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 37EC _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 37EF _ 39. 45, F8
        jl      ?_164                                   ; 37F2 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 37F8 _ 83. 45, F4, 01
?_167:  mov     eax, dword [ebp-18H]                    ; 37FC _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 37FF _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3802 _ 39. 45, F4
        jl      ?_163                                   ; 3805 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 380B _ 83. 45, FC, 01
?_168:  mov     eax, dword [ebp-4H]                     ; 380F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3812 _ 3B. 45, 20
        jle     ?_162                                   ; 3815 _ 0F 8E, FFFFFEE5
        nop                                             ; 381B _ 90
        leave                                           ; 381C _ C9
        ret                                             ; 381D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 381E _ 55
        mov     ebp, esp                                ; 381F _ 89. E5
        sub     esp, 64                                 ; 3821 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3824 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3827 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 382A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 382D _ 83. 7D, 0C, 00
        jns     ?_169                                   ; 3831 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3833 _ C7. 45, 0C, 00000000
?_169:  cmp     dword [ebp+10H], 0                      ; 383A _ 83. 7D, 10, 00
        jns     ?_170                                   ; 383E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3840 _ C7. 45, 10, 00000000
?_170:  mov     eax, dword [ebp+8H]                     ; 3847 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 384A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 384D _ 39. 45, 14
        jle     ?_171                                   ; 3850 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3852 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3855 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3858 _ 89. 45, 14
?_171:  mov     eax, dword [ebp+8H]                     ; 385B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 385E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3861 _ 39. 45, 18
        jle     ?_172                                   ; 3864 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3866 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3869 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 386C _ 89. 45, 18
?_172:  mov     eax, dword [ebp+1CH]                    ; 386F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3872 _ 89. 45, FC
        jmp     ?_183                                   ; 3875 _ E9, 00000139

?_173:  mov     eax, dword [ebp+8H]                     ; 387A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 387D _ 8B. 55, FC
        add     edx, 4                                  ; 3880 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3883 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3887 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 388A _ 8B. 45, 08
        add     eax, 1044                               ; 388D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3892 _ 8B. 55, DC
        sub     edx, eax                                ; 3895 _ 29. C2
        mov     eax, edx                                ; 3897 _ 89. D0
        sar     eax, 5                                  ; 3899 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 389C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 389F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 38A2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 38A4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 38A7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 38AA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 38AD _ 8B. 55, 0C
        sub     edx, eax                                ; 38B0 _ 29. C2
        mov     eax, edx                                ; 38B2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 38B4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 38B7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 38BA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 38BD _ 8B. 55, 10
        sub     edx, eax                                ; 38C0 _ 29. C2
        mov     eax, edx                                ; 38C2 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 38C4 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 38C7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 38CA _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 38CD _ 8B. 55, 14
        sub     edx, eax                                ; 38D0 _ 29. C2
        mov     eax, edx                                ; 38D2 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 38D4 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 38D7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 38DA _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 38DD _ 8B. 55, 18
        sub     edx, eax                                ; 38E0 _ 29. C2
        mov     eax, edx                                ; 38E2 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 38E4 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 38E7 _ 83. 7D, F0, 00
        jns     ?_174                                   ; 38EB _ 79, 07
        mov     dword [ebp-10H], 0                      ; 38ED _ C7. 45, F0, 00000000
?_174:  cmp     dword [ebp-14H], 0                      ; 38F4 _ 83. 7D, EC, 00
        jns     ?_175                                   ; 38F8 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 38FA _ C7. 45, EC, 00000000
?_175:  mov     eax, dword [ebp-24H]                    ; 3901 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3904 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3907 _ 39. 45, E8
        jle     ?_176                                   ; 390A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 390C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 390F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3912 _ 89. 45, E8
?_176:  mov     eax, dword [ebp-24H]                    ; 3915 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3918 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 391B _ 39. 45, E4
        jle     ?_177                                   ; 391E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3920 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3923 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3926 _ 89. 45, E4
?_177:  mov     eax, dword [ebp-14H]                    ; 3929 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 392C _ 89. 45, F4
        jmp     ?_182                                   ; 392F _ EB, 76

?_178:  mov     eax, dword [ebp-24H]                    ; 3931 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3934 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3937 _ 8B. 45, F4
        add     eax, edx                                ; 393A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 393C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 393F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3942 _ 89. 45, F8
        jmp     ?_181                                   ; 3945 _ EB, 54

?_179:  mov     eax, dword [ebp-24H]                    ; 3947 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 394A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 394D _ 8B. 45, F8
        add     eax, edx                                ; 3950 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3952 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3955 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3958 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 395B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 395F _ 8B. 55, F8
        add     eax, edx                                ; 3962 _ 01. D0
        mov     edx, eax                                ; 3964 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3966 _ 8B. 45, D4
        add     eax, edx                                ; 3969 _ 01. D0
        movzx   eax, byte [eax]                         ; 396B _ 0F B6. 00
        movzx   eax, al                                 ; 396E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3971 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3974 _ 8B. 52, 14
        cmp     eax, edx                                ; 3977 _ 39. D0
        jz      ?_180                                   ; 3979 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 397B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 397E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3981 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3985 _ 8B. 55, CC
        add     eax, edx                                ; 3988 _ 01. D0
        mov     edx, eax                                ; 398A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 398C _ 8B. 45, E0
        add     edx, eax                                ; 398F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3991 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3995 _ 88. 02
?_180:  add     dword [ebp-8H], 1                       ; 3997 _ 83. 45, F8, 01
?_181:  mov     eax, dword [ebp-8H]                     ; 399B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 399E _ 3B. 45, E8
        jl      ?_179                                   ; 39A1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 39A3 _ 83. 45, F4, 01
?_182:  mov     eax, dword [ebp-0CH]                    ; 39A7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 39AA _ 3B. 45, E4
        jl      ?_178                                   ; 39AD _ 7C, 82
        add     dword [ebp-4H], 1                       ; 39AF _ 83. 45, FC, 01
?_183:  mov     eax, dword [ebp+8H]                     ; 39B3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 39B6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 39B9 _ 39. 45, FC
        jle     ?_173                                   ; 39BC _ 0F 8E, FFFFFEB8
        nop                                             ; 39C2 _ 90
        leave                                           ; 39C3 _ C9
        ret                                             ; 39C4 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 39C5 _ 90
        nop                                             ; 39C6 _ 90
        nop                                             ; 39C7 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 39C8 _ 55
        mov     ebp, esp                                ; 39C9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 39CB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 39CE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 39D4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 39D7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 39DE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 39E1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 39E8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 39EB _ C7. 40, 0C, 00000000
        nop                                             ; 39F2 _ 90
        pop     ebp                                     ; 39F3 _ 5D
        ret                                             ; 39F4 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 39F5 _ 55
        mov     ebp, esp                                ; 39F6 _ 89. E5
        sub     esp, 16                                 ; 39F8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 39FB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3A02 _ C7. 45, FC, 00000000
        jmp     ?_185                                   ; 3A09 _ EB, 14

?_184:  mov     eax, dword [ebp+8H]                     ; 3A0B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A0E _ 8B. 55, FC
        add     edx, 2                                  ; 3A11 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3A14 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3A18 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3A1B _ 83. 45, FC, 01
?_185:  mov     eax, dword [ebp+8H]                     ; 3A1F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3A22 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3A24 _ 39. 45, FC
        jc      ?_184                                   ; 3A27 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3A29 _ 8B. 45, F8
        leave                                           ; 3A2C _ C9
        ret                                             ; 3A2D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3A2E _ 55
        mov     ebp, esp                                ; 3A2F _ 89. E5
        sub     esp, 16                                 ; 3A31 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3A34 _ C7. 45, FC, 00000000
        jmp     ?_189                                   ; 3A3B _ E9, 00000083

?_186:  mov     eax, dword [ebp+8H]                     ; 3A40 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A43 _ 8B. 55, FC
        add     edx, 2                                  ; 3A46 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3A49 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3A4D _ 39. 45, 0C
        ja      ?_188                                   ; 3A50 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3A52 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A55 _ 8B. 55, FC
        add     edx, 2                                  ; 3A58 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3A5B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3A5E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3A61 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A64 _ 8B. 55, FC
        add     edx, 2                                  ; 3A67 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3A6A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3A6D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3A70 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3A73 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A76 _ 8B. 55, FC
        add     edx, 2                                  ; 3A79 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3A7C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3A7F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A82 _ 8B. 55, FC
        add     edx, 2                                  ; 3A85 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3A88 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3A8C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3A8F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3A92 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3A95 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3A98 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3A9C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A9F _ 8B. 55, FC
        add     edx, 2                                  ; 3AA2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3AA5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3AA9 _ 85. C0
        jnz     ?_187                                   ; 3AAB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3AAD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3AB0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3AB2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3AB5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3AB8 _ 89. 10
?_187:  mov     eax, dword [ebp-8H]                     ; 3ABA _ 8B. 45, F8
        jmp     ?_190                                   ; 3ABD _ EB, 17

?_188:  add     dword [ebp-4H], 1                       ; 3ABF _ 83. 45, FC, 01
?_189:  mov     eax, dword [ebp+8H]                     ; 3AC3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3AC6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3AC8 _ 39. 45, FC
        jc      ?_186                                   ; 3ACB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3AD1 _ B8, 00000000
?_190:  leave                                           ; 3AD6 _ C9
        ret                                             ; 3AD7 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3AD8 _ 55
        mov     ebp, esp                                ; 3AD9 _ 89. E5
        push    ebx                                     ; 3ADB _ 53
        sub     esp, 16                                 ; 3ADC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3ADF _ C7. 45, F8, 00000000
        jmp     ?_192                                   ; 3AE6 _ EB, 15

?_191:  mov     eax, dword [ebp+8H]                     ; 3AE8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3AEB _ 8B. 55, F8
        add     edx, 2                                  ; 3AEE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3AF1 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3AF4 _ 39. 45, 0C
        jc      ?_193                                   ; 3AF7 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3AF9 _ 83. 45, F8, 01
?_192:  mov     eax, dword [ebp+8H]                     ; 3AFD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3B00 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3B02 _ 39. 45, F8
        jl      ?_191                                   ; 3B05 _ 7C, E1
        jmp     ?_194                                   ; 3B07 _ EB, 01

?_193:  nop                                             ; 3B09 _ 90
?_194:  cmp     dword [ebp-8H], 0                       ; 3B0A _ 83. 7D, F8, 00
        jle     ?_196                                   ; 3B0E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3B14 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3B17 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3B1A _ 8B. 45, 08
        add     edx, 2                                  ; 3B1D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3B20 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3B23 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3B26 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3B29 _ 8B. 45, 08
        add     edx, 2                                  ; 3B2C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3B2F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3B33 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3B35 _ 39. 45, 0C
        jne     ?_196                                   ; 3B38 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3B3E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3B41 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3B44 _ 8B. 45, 08
        add     edx, 2                                  ; 3B47 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3B4A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3B4E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3B51 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3B54 _ 8B. 45, 10
        add     ecx, eax                                ; 3B57 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3B59 _ 8B. 45, 08
        add     edx, 2                                  ; 3B5C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3B5F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3B63 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3B66 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3B68 _ 39. 45, F8
        jge     ?_195                                   ; 3B6B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3B6D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3B70 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3B73 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3B76 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3B79 _ 8B. 55, F8
        add     edx, 2                                  ; 3B7C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3B7F _ 8B. 04 D0
        cmp     ecx, eax                                ; 3B82 _ 39. C1
        jnz     ?_195                                   ; 3B84 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3B86 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3B89 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3B8C _ 8B. 45, 08
        add     edx, 2                                  ; 3B8F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3B92 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3B96 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3B99 _ 8B. 55, F8
        add     edx, 2                                  ; 3B9C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3B9F _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3BA3 _ 8B. 55, F8
        sub     edx, 1                                  ; 3BA6 _ 83. EA, 01
        add     ecx, eax                                ; 3BA9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3BAB _ 8B. 45, 08
        add     edx, 2                                  ; 3BAE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3BB1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3BB5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3BB8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3BBA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3BBD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3BC0 _ 89. 10
?_195:  mov     eax, 0                                  ; 3BC2 _ B8, 00000000
        jmp     ?_202                                   ; 3BC7 _ E9, 0000011C

?_196:  mov     eax, dword [ebp+8H]                     ; 3BCC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3BCF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3BD1 _ 39. 45, F8
        jge     ?_197                                   ; 3BD4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3BD6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3BD9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3BDC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3BDF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3BE2 _ 8B. 55, F8
        add     edx, 2                                  ; 3BE5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3BE8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3BEB _ 39. C1
        jnz     ?_197                                   ; 3BED _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3BEF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3BF2 _ 8B. 55, F8
        add     edx, 2                                  ; 3BF5 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3BF8 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3BFB _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3BFE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3C01 _ 8B. 55, F8
        add     edx, 2                                  ; 3C04 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3C07 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 3C0B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3C0E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3C11 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3C14 _ 8B. 55, F8
        add     edx, 2                                  ; 3C17 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3C1A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3C1E _ B8, 00000000
        jmp     ?_202                                   ; 3C23 _ E9, 000000C0

?_197:  mov     eax, dword [ebp+8H]                     ; 3C28 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C2B _ 8B. 00
        cmp     eax, 4095                               ; 3C2D _ 3D, 00000FFF
        jg      ?_201                                   ; 3C32 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3C38 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C3B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3C3D _ 89. 45, F4
        jmp     ?_199                                   ; 3C40 _ EB, 28

?_198:  mov     eax, dword [ebp-0CH]                    ; 3C42 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3C45 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3C48 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 3C4B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 3C4E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3C51 _ 8B. 45, 08
        add     edx, 2                                  ; 3C54 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 3C57 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 3C5A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 3C5C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 3C5F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 3C62 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 3C66 _ 83. 6D, F4, 01
?_199:  mov     eax, dword [ebp-0CH]                    ; 3C6A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 3C6D _ 3B. 45, F8
        jg      ?_198                                   ; 3C70 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 3C72 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C75 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3C77 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3C7A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3C7D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C7F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3C82 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3C85 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C88 _ 8B. 00
        cmp     edx, eax                                ; 3C8A _ 39. C2
        jge     ?_200                                   ; 3C8C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3C8E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3C91 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3C93 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3C96 _ 89. 50, 04
?_200:  mov     eax, dword [ebp+8H]                     ; 3C99 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3C9C _ 8B. 55, F8
        add     edx, 2                                  ; 3C9F _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3CA2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3CA5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3CA8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3CAB _ 8B. 55, F8
        add     edx, 2                                  ; 3CAE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3CB1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3CB4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3CB8 _ B8, 00000000
        jmp     ?_202                                   ; 3CBD _ EB, 29

?_201:  mov     eax, dword [ebp+8H]                     ; 3CBF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CC2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3CC5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3CC8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3CCB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3CCE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3CD1 _ 8B. 40, 08
        mov     edx, eax                                ; 3CD4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3CD6 _ 8B. 45, 10
        add     eax, edx                                ; 3CD9 _ 01. D0
        mov     edx, eax                                ; 3CDB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CDD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3CE0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3CE3 _ B8, FFFFFFFF
?_202:  add     esp, 16                                 ; 3CE8 _ 83. C4, 10
        pop     ebx                                     ; 3CEB _ 5B
        pop     ebp                                     ; 3CEC _ 5D
        ret                                             ; 3CED _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 3CEE _ 55
        mov     ebp, esp                                ; 3CEF _ 89. E5
        sub     esp, 24                                 ; 3CF1 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3CF4 _ 8B. 45, 0C
        add     eax, 4095                               ; 3CF7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3CFC _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 3D01 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3D04 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D07 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D0B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D0E _ 89. 04 24
        call    _memman_alloc                           ; 3D11 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 3D16 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3D19 _ 8B. 45, FC
        leave                                           ; 3D1C _ C9
        ret                                             ; 3D1D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 3D1E _ 55
        mov     ebp, esp                                ; 3D1F _ 89. E5
        sub     esp, 28                                 ; 3D21 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3D24 _ 8B. 45, 10
        add     eax, 4095                               ; 3D27 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3D2C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 3D31 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3D34 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3D37 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3D3B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D3E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D42 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D45 _ 89. 04 24
        call    _memman_free                            ; 3D48 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 3D4D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3D50 _ 8B. 45, FC
        leave                                           ; 3D53 _ C9
        ret                                             ; 3D54 _ C3
; _memman_free_4k End of function

        nop                                             ; 3D55 _ 90
        nop                                             ; 3D56 _ 90
        nop                                             ; 3D57 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3D58 _ 55
        mov     ebp, esp                                ; 3D59 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3D5B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3D5E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3D61 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3D64 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3D67 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3D6A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3D6C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3D6F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3D72 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3D75 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3D78 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D7F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3D82 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D89 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3D8C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D93 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3D96 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3D99 _ 89. 50, 18
        nop                                             ; 3D9C _ 90
        pop     ebp                                     ; 3D9D _ 5D
        ret                                             ; 3D9E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 3D9F _ 55
        mov     ebp, esp                                ; 3DA0 _ 89. E5
        sub     esp, 40                                 ; 3DA2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 3DA5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3DA8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3DAB _ 83. 7D, 08, 00
        jnz     ?_203                                   ; 3DAF _ 75, 0A
        mov     eax, 4294967295                         ; 3DB1 _ B8, FFFFFFFF
        jmp     ?_207                                   ; 3DB6 _ E9, 000000AB

?_203:  mov     eax, dword [ebp+8H]                     ; 3DBB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3DBE _ 8B. 40, 10
        test    eax, eax                                ; 3DC1 _ 85. C0
        jnz     ?_204                                   ; 3DC3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 3DC5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3DC8 _ 8B. 40, 14
        or      eax, 01H                                ; 3DCB _ 83. C8, 01
        mov     edx, eax                                ; 3DCE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DD0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3DD3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3DD6 _ B8, FFFFFFFF
        jmp     ?_207                                   ; 3DDB _ E9, 00000086

?_204:  mov     eax, dword [ebp+8H]                     ; 3DE0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3DE3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3DE5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3DE8 _ 8B. 40, 04
        add     edx, eax                                ; 3DEB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3DED _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3DF1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3DF3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3DF6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3DF9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3DFC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3DFF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E02 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E05 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E08 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E0B _ 8B. 40, 0C
        cmp     edx, eax                                ; 3E0E _ 39. C2
        jnz     ?_205                                   ; 3E10 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3E12 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3E15 _ C7. 40, 04, 00000000
?_205:  mov     eax, dword [ebp+8H]                     ; 3E1C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3E1F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3E22 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E25 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3E28 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3E2B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E2E _ 8B. 40, 18
        test    eax, eax                                ; 3E31 _ 85. C0
        jz      ?_206                                   ; 3E33 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 3E35 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E38 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3E3B _ 8B. 40, 04
        cmp     eax, 2                                  ; 3E3E _ 83. F8, 02
        jz      ?_206                                   ; 3E41 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3E43 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E46 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 3E49 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 3E51 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 3E59 _ 89. 04 24
        call    _task_run                               ; 3E5C _ E8, 00000000(rel)
?_206:  mov     eax, 0                                  ; 3E61 _ B8, 00000000
?_207:  leave                                           ; 3E66 _ C9
        ret                                             ; 3E67 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3E68 _ 55
        mov     ebp, esp                                ; 3E69 _ 89. E5
        sub     esp, 16                                 ; 3E6B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3E6E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3E71 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3E74 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E77 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3E7A _ 39. C2
        jnz     ?_208                                   ; 3E7C _ 75, 07
        mov     eax, 4294967295                         ; 3E7E _ B8, FFFFFFFF
        jmp     ?_210                                   ; 3E83 _ EB, 51

?_208:  mov     eax, dword [ebp+8H]                     ; 3E85 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3E88 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3E8A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E8D _ 8B. 40, 08
        add     eax, edx                                ; 3E90 _ 01. D0
        movzx   eax, byte [eax]                         ; 3E92 _ 0F B6. 00
        movzx   eax, al                                 ; 3E95 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3E98 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3E9B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E9E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3EA1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3EA4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3EA7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3EAA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3EAD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3EB0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3EB3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3EB6 _ 39. C2
        jnz     ?_209                                   ; 3EB8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3EBA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3EBD _ C7. 40, 08, 00000000
?_209:  mov     eax, dword [ebp+8H]                     ; 3EC4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3EC7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3ECA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3ECD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3ED0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3ED3 _ 8B. 45, FC
?_210:  leave                                           ; 3ED6 _ C9
        ret                                             ; 3ED7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 3ED8 _ 55
        mov     ebp, esp                                ; 3ED9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3EDB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3EDE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3EE1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3EE4 _ 8B. 40, 10
        sub     edx, eax                                ; 3EE7 _ 29. C2
        mov     eax, edx                                ; 3EE9 _ 89. D0
        pop     ebp                                     ; 3EEB _ 5D
        ret                                             ; 3EEC _ C3
; _fifo8_status End of function

        nop                                             ; 3EED _ 90
        nop                                             ; 3EEE _ 90
        nop                                             ; 3EEF _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3EF0 _ 55
        mov     ebp, esp                                ; 3EF1 _ 89. E5
        sub     esp, 40                                 ; 3EF3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3EF6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3EFE _ C7. 04 24, 00000043
        call    _io_out8                                ; 3F05 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 3F0A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3F12 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3F19 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 3F1E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3F26 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3F2D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3F32 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3F3C _ C7. 45, F4, 00000000
        jmp     ?_212                                   ; 3F43 _ EB, 26

?_211:  mov     eax, dword [ebp-0CH]                    ; 3F45 _ 8B. 45, F4
        shl     eax, 4                                  ; 3F48 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3F4B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3F50 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3F56 _ 8B. 45, F4
        shl     eax, 4                                  ; 3F59 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 3F5C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3F61 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3F67 _ 83. 45, F4, 01
?_212:  cmp     dword [ebp-0CH], 499                    ; 3F6B _ 81. 7D, F4, 000001F3
        jle     ?_211                                   ; 3F72 _ 7E, D1
        nop                                             ; 3F74 _ 90
        leave                                           ; 3F75 _ C9
        ret                                             ; 3F76 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3F77 _ 55
        mov     ebp, esp                                ; 3F78 _ 89. E5
        sub     esp, 16                                 ; 3F7A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F7D _ C7. 45, FC, 00000000
        jmp     ?_215                                   ; 3F84 _ EB, 36

?_213:  mov     eax, dword [ebp-4H]                     ; 3F86 _ 8B. 45, FC
        shl     eax, 4                                  ; 3F89 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3F8C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3F91 _ 8B. 00
        test    eax, eax                                ; 3F93 _ 85. C0
        jnz     ?_214                                   ; 3F95 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3F97 _ 8B. 45, FC
        shl     eax, 4                                  ; 3F9A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3F9D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3FA2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3FA8 _ 8B. 45, FC
        shl     eax, 4                                  ; 3FAB _ C1. E0, 04
        add     eax, _timerctl                               ; 3FAE _ 05, 00000000(d)
        add     eax, 4                                  ; 3FB3 _ 83. C0, 04
        jmp     ?_216                                   ; 3FB6 _ EB, 12

?_214:  add     dword [ebp-4H], 1                       ; 3FB8 _ 83. 45, FC, 01
?_215:  cmp     dword [ebp-4H], 499                     ; 3FBC _ 81. 7D, FC, 000001F3
        jle     ?_213                                   ; 3FC3 _ 7E, C1
        mov     eax, 0                                  ; 3FC5 _ B8, 00000000
?_216:  leave                                           ; 3FCA _ C9
        ret                                             ; 3FCB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 3FCC _ 55
        mov     ebp, esp                                ; 3FCD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3FCF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3FD2 _ C7. 40, 04, 00000000
        nop                                             ; 3FD9 _ 90
        pop     ebp                                     ; 3FDA _ 5D
        ret                                             ; 3FDB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 3FDC _ 55
        mov     ebp, esp                                ; 3FDD _ 89. E5
        sub     esp, 4                                  ; 3FDF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3FE2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3FE5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3FE8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3FEB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3FEE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3FF1 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3FF4 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3FF8 _ 88. 42, 0C
        nop                                             ; 3FFB _ 90
        leave                                           ; 3FFC _ C9
        ret                                             ; 3FFD _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3FFE _ 55
        mov     ebp, esp                                ; 3FFF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4001 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4004 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4007 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4009 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 400C _ C7. 40, 04, 00000002
        nop                                             ; 4013 _ 90
        pop     ebp                                     ; 4014 _ 5D
        ret                                             ; 4015 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4016 _ 55
        mov     ebp, esp                                ; 4017 _ 89. E5
        sub     esp, 40                                 ; 4019 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 401C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4024 _ C7. 04 24, 00000020
        call    _io_out8                                ; 402B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4030 _ A1, 00000000(d)
        add     eax, 1                                  ; 4035 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4038 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 403D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4041 _ C7. 45, F4, 00000000
        jmp     ?_220                                   ; 4048 _ E9, 000000AA

?_217:  mov     eax, dword [ebp-0CH]                    ; 404D _ 8B. 45, F4
        shl     eax, 4                                  ; 4050 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4053 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4058 _ 8B. 00
        cmp     eax, 2                                  ; 405A _ 83. F8, 02
        jne     ?_218                                   ; 405D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4063 _ 8B. 45, F4
        shl     eax, 4                                  ; 4066 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4069 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 406E _ 8B. 00
        lea     edx, [eax-1H]                           ; 4070 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4073 _ 8B. 45, F4
        shl     eax, 4                                  ; 4076 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4079 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 407E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4080 _ 8B. 45, F4
        shl     eax, 4                                  ; 4083 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4086 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 408B _ 8B. 00
        test    eax, eax                                ; 408D _ 85. C0
        jnz     ?_218                                   ; 408F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 4091 _ 8B. 45, F4
        shl     eax, 4                                  ; 4094 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4097 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 409C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 40A2 _ 8B. 45, F4
        shl     eax, 4                                  ; 40A5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 40A8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 40AD _ 0F B6. 00
        movzx   eax, al                                 ; 40B0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 40B3 _ 8B. 55, F4
        shl     edx, 4                                  ; 40B6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 40B9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 40BF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 40C1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 40C5 _ 89. 14 24
        call    _fifo8_put                              ; 40C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 40CD _ 8B. 45, F4
        shl     eax, 4                                  ; 40D0 _ C1. E0, 04
        add     eax, _timerctl                               ; 40D3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 40D8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 40DB _ A1, 00000000(d)
        cmp     edx, eax                                ; 40E0 _ 39. C2
        jnz     ?_218                                   ; 40E2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 40E4 _ C6. 45, F3, 01
?_218:  cmp     byte [ebp-0DH], 0                       ; 40E8 _ 80. 7D, F3, 00
        jz      ?_219                                   ; 40EC _ 74, 05
        call    _task_switch                            ; 40EE _ E8, 00000000(rel)
?_219:  add     dword [ebp-0CH], 1                      ; 40F3 _ 83. 45, F4, 01
?_220:  cmp     dword [ebp-0CH], 499                    ; 40F7 _ 81. 7D, F4, 000001F3
        jle     ?_217                                   ; 40FE _ 0F 8E, FFFFFF49
        nop                                             ; 4104 _ 90
        leave                                           ; 4105 _ C9
        ret                                             ; 4106 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4107 _ B8, 00000000(d)
        ret                                             ; 410C _ C3
; _getTimerController End of function

        nop                                             ; 410D _ 90
        nop                                             ; 410E _ 90
        nop                                             ; 410F _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 4110 _ 55
        mov     ebp, esp                                ; 4111 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4113 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_221                                   ; 411A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 411C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4123 _ 8B. 45, 0C
        shr     eax, 12                                 ; 4126 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4129 _ 89. 45, 0C
?_221:  mov     eax, dword [ebp+0CH]                    ; 412C _ 8B. 45, 0C
        mov     edx, eax                                ; 412F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4131 _ 8B. 45, 08
        mov     word [eax], dx                          ; 4134 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4137 _ 8B. 45, 10
        mov     edx, eax                                ; 413A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 413C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 413F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4143 _ 8B. 45, 10
        sar     eax, 16                                 ; 4146 _ C1. F8, 10
        mov     edx, eax                                ; 4149 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 414B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 414E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4151 _ 8B. 45, 14
        mov     edx, eax                                ; 4154 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4156 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4159 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 415C _ 8B. 45, 0C
        shr     eax, 16                                 ; 415F _ C1. E8, 10
        and     eax, 0FH                                ; 4162 _ 83. E0, 0F
        mov     edx, eax                                ; 4165 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4167 _ 8B. 45, 14
        sar     eax, 8                                  ; 416A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 416D _ 83. E0, F0
        or      eax, edx                                ; 4170 _ 09. D0
        mov     edx, eax                                ; 4172 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4174 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4177 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 417A _ 8B. 45, 10
        shr     eax, 24                                 ; 417D _ C1. E8, 18
        mov     edx, eax                                ; 4180 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4182 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4185 _ 88. 50, 07
        nop                                             ; 4188 _ 90
        pop     ebp                                     ; 4189 _ 5D
        ret                                             ; 418A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 418B _ 55
        mov     ebp, esp                                ; 418C _ 89. E5
        sub     esp, 16                                 ; 418E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4191 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4197 _ 8B. 55, 08
        mov     eax, edx                                ; 419A _ 89. D0
        shl     eax, 2                                  ; 419C _ C1. E0, 02
        add     eax, edx                                ; 419F _ 01. D0
        shl     eax, 2                                  ; 41A1 _ C1. E0, 02
        add     eax, ecx                                ; 41A4 _ 01. C8
        add     eax, 8                                  ; 41A6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 41A9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 41AF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 41B5 _ 8B. 55, 08
        mov     eax, edx                                ; 41B8 _ 89. D0
        shl     eax, 2                                  ; 41BA _ C1. E0, 02
        add     eax, edx                                ; 41BD _ 01. D0
        shl     eax, 2                                  ; 41BF _ C1. E0, 02
        add     eax, ecx                                ; 41C2 _ 01. C8
        add     eax, 12                                 ; 41C4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 41C7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 41CD _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 41D4 _ EB, 21

?_222:  mov     ecx, dword [_taskctl]                   ; 41D6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 41DC _ 8B. 55, FC
        mov     eax, edx                                ; 41DF _ 89. D0
        add     eax, eax                                ; 41E1 _ 01. C0
        add     eax, edx                                ; 41E3 _ 01. D0
        shl     eax, 3                                  ; 41E5 _ C1. E0, 03
        add     eax, ecx                                ; 41E8 _ 01. C8
        add     eax, 16                                 ; 41EA _ 83. C0, 10
        mov     dword [eax], 0                          ; 41ED _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 41F3 _ 83. 45, FC, 01
?_223:  cmp     dword [ebp-4H], 2                       ; 41F7 _ 83. 7D, FC, 02
        jle     ?_222                                   ; 41FB _ 7E, D9
        nop                                             ; 41FD _ 90
        leave                                           ; 41FE _ C9
        ret                                             ; 41FF _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4200 _ 55
        mov     ebp, esp                                ; 4201 _ 89. E5
        sub     esp, 40                                 ; 4203 _ 83. EC, 28
        call    _get_addr_gdt                           ; 4206 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 420B _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 420E _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 4216 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4219 _ 89. 04 24
        call    _memman_alloc_4k                        ; 421C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4221 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4226 _ C7. 45, F4, 00000000
        jmp     ?_225                                   ; 422D _ E9, 00000088

?_224:  mov     edx, dword [_taskctl]                   ; 4232 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4238 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 423B _ 69. C0, 00000094
        add     eax, edx                                ; 4241 _ 01. D0
        add     eax, 72                                 ; 4243 _ 83. C0, 48
        mov     dword [eax], 0                          ; 4246 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 424C _ 8B. 45, F4
        add     eax, 7                                  ; 424F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4252 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4258 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 425F _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4262 _ 69. C0, 00000094
        add     eax, ecx                                ; 4268 _ 01. C8
        add     eax, 68                                 ; 426A _ 83. C0, 44
        mov     dword [eax], edx                        ; 426D _ 89. 10
        mov     edx, dword [_taskctl]                   ; 426F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4275 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4278 _ 69. C0, 00000094
        add     eax, 96                                 ; 427E _ 83. C0, 60
        add     eax, edx                                ; 4281 _ 01. D0
        add     eax, 16                                 ; 4283 _ 83. C0, 10
        mov     ecx, eax                                ; 4286 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4288 _ 8B. 45, F4
        add     eax, 7                                  ; 428B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 428E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 4295 _ 8B. 45, F0
        add     eax, edx                                ; 4298 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 429A _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 42A2 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 42A6 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 42AE _ 89. 04 24
        call    _set_segmdesc                           ; 42B1 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 42B6 _ 83. 45, F4, 01
?_225:  cmp     dword [ebp-0CH], 4                      ; 42BA _ 83. 7D, F4, 04
        jle     ?_224                                   ; 42BE _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 42C4 _ C7. 45, F4, 00000000
        jmp     ?_227                                   ; 42CB _ EB, 0F

?_226:  mov     eax, dword [ebp-0CH]                    ; 42CD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 42D0 _ 89. 04 24
        call    _init_task_level                        ; 42D3 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 42D8 _ 83. 45, F4, 01
?_227:  cmp     dword [ebp-0CH], 2                      ; 42DC _ 83. 7D, F4, 02
        jle     ?_226                                   ; 42E0 _ 7E, EB
        call    _task_alloc                             ; 42E2 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 42E7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 42EA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 42ED _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 42F4 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 42F7 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 42FE _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4301 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4308 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 430B _ 89. 04 24
        call    _task_add                               ; 430E _ E8, 0000003A
        call    _task_switchsub                         ; 4313 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 4318 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 431B _ 8B. 00
        mov     dword [esp], eax                        ; 431D _ 89. 04 24
        call    _load_tr                                ; 4320 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4325 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 432A _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 432F _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4332 _ 8B. 40, 08
        mov     edx, eax                                ; 4335 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4337 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 433C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4340 _ 89. 04 24
        call    _timer_settime                          ; 4343 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4348 _ 8B. 45, EC
        leave                                           ; 434B _ C9
        ret                                             ; 434C _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 434D _ 55
        mov     ebp, esp                                ; 434E _ 89. E5
        sub     esp, 16                                 ; 4350 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4353 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4359 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 435C _ 8B. 50, 0C
        mov     eax, edx                                ; 435F _ 89. D0
        shl     eax, 2                                  ; 4361 _ C1. E0, 02
        add     eax, edx                                ; 4364 _ 01. D0
        shl     eax, 2                                  ; 4366 _ C1. E0, 02
        add     eax, ecx                                ; 4369 _ 01. C8
        add     eax, 8                                  ; 436B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 436E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4371 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4374 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4376 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4379 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 437C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4380 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4383 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4385 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4388 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 438B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 438D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4390 _ C7. 40, 04, 00000002
        nop                                             ; 4397 _ 90
        leave                                           ; 4398 _ C9
        ret                                             ; 4399 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 439A _ 55
        mov     ebp, esp                                ; 439B _ 89. E5
        sub     esp, 16                                 ; 439D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 43A0 _ C7. 45, FC, 00000000
        jmp     ?_230                                   ; 43A7 _ E9, 000000F7

?_228:  mov     edx, dword [_taskctl]                   ; 43AC _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 43B2 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 43B5 _ 69. C0, 00000094
        add     eax, edx                                ; 43BB _ 01. D0
        add     eax, 72                                 ; 43BD _ 83. C0, 48
        mov     eax, dword [eax]                        ; 43C0 _ 8B. 00
        test    eax, eax                                ; 43C2 _ 85. C0
        jne     ?_229                                   ; 43C4 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 43CA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 43D0 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 43D3 _ 69. C0, 00000094
        add     eax, 64                                 ; 43D9 _ 83. C0, 40
        add     eax, edx                                ; 43DC _ 01. D0
        add     eax, 4                                  ; 43DE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 43E1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 43E4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 43E7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 43EE _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 43F1 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 43F8 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 43FB _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4402 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4405 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 440C _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 440F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4416 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4419 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4420 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4423 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 442A _ 8B. 45, FC
        add     eax, 1                                  ; 442D _ 83. C0, 01
        shl     eax, 9                                  ; 4430 _ C1. E0, 09
        mov     edx, eax                                ; 4433 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4435 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4438 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 443B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 443E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4445 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4448 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 444F _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4452 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4459 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 445C _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4466 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4469 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4473 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4476 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4480 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4483 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 448D _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4490 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 449A _ 8B. 45, F8
        jmp     ?_231                                   ; 449D _ EB, 13

?_229:  add     dword [ebp-4H], 1                       ; 449F _ 83. 45, FC, 01
?_230:  cmp     dword [ebp-4H], 4                       ; 44A3 _ 83. 7D, FC, 04
        jle     ?_228                                   ; 44A7 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 44AD _ B8, 00000000
?_231:  leave                                           ; 44B2 _ C9
        ret                                             ; 44B3 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 44B4 _ 55
        mov     ebp, esp                                ; 44B5 _ 89. E5
        sub     esp, 24                                 ; 44B7 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 44BA _ 83. 7D, 0C, 00
        jns     ?_232                                   ; 44BE _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 44C0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 44C3 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 44C6 _ 89. 45, 0C
?_232:  cmp     dword [ebp+10H], 0                      ; 44C9 _ 83. 7D, 10, 00
        jle     ?_233                                   ; 44CD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 44CF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 44D2 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 44D5 _ 89. 50, 08
?_233:  mov     eax, dword [ebp+8H]                     ; 44D8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 44DB _ 8B. 40, 04
        cmp     eax, 2                                  ; 44DE _ 83. F8, 02
        jnz     ?_234                                   ; 44E1 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 44E3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 44E6 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 44E9 _ 39. 45, 0C
        jz      ?_234                                   ; 44EC _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 44EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44F1 _ 89. 04 24
        call    _task_remove                            ; 44F4 _ E8, 0000002E
?_234:  mov     eax, dword [ebp+8H]                     ; 44F9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 44FC _ 8B. 40, 04
        cmp     eax, 2                                  ; 44FF _ 83. F8, 02
        jz      ?_235                                   ; 4502 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4504 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4507 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 450A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 450D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4510 _ 89. 04 24
        call    _task_add                               ; 4513 _ E8, FFFFFE35
?_235:  mov     eax, dword [_taskctl]                   ; 4518 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 451D _ C7. 40, 04, 00000001
        nop                                             ; 4524 _ 90
        leave                                           ; 4525 _ C9
        ret                                             ; 4526 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4527 _ 55
        mov     ebp, esp                                ; 4528 _ 89. E5
        sub     esp, 16                                 ; 452A _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 452D _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4533 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4536 _ 8B. 50, 0C
        mov     eax, edx                                ; 4539 _ 89. D0
        shl     eax, 2                                  ; 453B _ C1. E0, 02
        add     eax, edx                                ; 453E _ 01. D0
        shl     eax, 2                                  ; 4540 _ C1. E0, 02
        add     eax, ecx                                ; 4543 _ 01. C8
        add     eax, 8                                  ; 4545 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4548 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 454B _ C7. 45, FC, 00000000
        jmp     ?_238                                   ; 4552 _ EB, 23

?_236:  mov     eax, dword [ebp-8H]                     ; 4554 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4557 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 455A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 455E _ 39. 45, 08
        jnz     ?_237                                   ; 4561 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4563 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4566 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4569 _ C7. 44 90, 08, 00000000
        jmp     ?_239                                   ; 4571 _ EB, 0E

?_237:  add     dword [ebp-4H], 1                       ; 4573 _ 83. 45, FC, 01
?_238:  mov     eax, dword [ebp-8H]                     ; 4577 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 457A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 457C _ 39. 45, FC
        jl      ?_236                                   ; 457F _ 7C, D3
?_239:  mov     eax, dword [ebp-8H]                     ; 4581 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4584 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4586 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4589 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 458C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 458E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4591 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4594 _ 39. 45, FC
        jge     ?_240                                   ; 4597 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4599 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 459C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 459F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 45A2 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 45A5 _ 89. 50, 04
?_240:  mov     eax, dword [ebp-8H]                     ; 45A8 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 45AB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 45AE _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 45B1 _ 8B. 00
        cmp     edx, eax                                ; 45B3 _ 39. C2
        jl      ?_241                                   ; 45B5 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 45B7 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 45BA _ C7. 40, 04, 00000000
?_241:  mov     eax, dword [ebp+8H]                     ; 45C1 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 45C4 _ C7. 40, 04, 00000001
        jmp     ?_243                                   ; 45CB _ EB, 1B

?_242:  mov     eax, dword [ebp-4H]                     ; 45CD _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 45D0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 45D3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 45D6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 45DA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 45DD _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 45E0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 45E4 _ 83. 45, FC, 01
?_243:  mov     eax, dword [ebp-8H]                     ; 45E8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 45EB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 45ED _ 39. 45, FC
        jl      ?_242                                   ; 45F0 _ 7C, DB
        nop                                             ; 45F2 _ 90
        leave                                           ; 45F3 _ C9
        ret                                             ; 45F4 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 45F5 _ 55
        mov     ebp, esp                                ; 45F6 _ 89. E5
        sub     esp, 40                                 ; 45F8 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 45FB _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4601 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4606 _ 8B. 10
        mov     eax, edx                                ; 4608 _ 89. D0
        shl     eax, 2                                  ; 460A _ C1. E0, 02
        add     eax, edx                                ; 460D _ 01. D0
        shl     eax, 2                                  ; 460F _ C1. E0, 02
        add     eax, ecx                                ; 4612 _ 01. C8
        add     eax, 8                                  ; 4614 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4617 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 461A _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 461D _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4620 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4623 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4627 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 462A _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 462D _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4630 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4633 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4636 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4639 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 463C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 463F _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4642 _ 8B. 00
        cmp     edx, eax                                ; 4644 _ 39. C2
        jnz     ?_244                                   ; 4646 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4648 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 464B _ C7. 40, 04, 00000000
?_244:  mov     eax, dword [_taskctl]                   ; 4652 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4657 _ 8B. 40, 04
        test    eax, eax                                ; 465A _ 85. C0
        jz      ?_245                                   ; 465C _ 74, 24
        call    _task_switchsub                         ; 465E _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4663 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4669 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 466E _ 8B. 10
        mov     eax, edx                                ; 4670 _ 89. D0
        shl     eax, 2                                  ; 4672 _ C1. E0, 02
        add     eax, edx                                ; 4675 _ 01. D0
        shl     eax, 2                                  ; 4677 _ C1. E0, 02
        add     eax, ecx                                ; 467A _ 01. C8
        add     eax, 8                                  ; 467C _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 467F _ 89. 45, F4
?_245:  mov     eax, dword [ebp-0CH]                    ; 4682 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4685 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4688 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 468B _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 468F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4692 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4695 _ 8B. 40, 08
        mov     edx, eax                                ; 4698 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 469A _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 469F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 46A3 _ 89. 04 24
        call    _timer_settime                          ; 46A6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 46AB _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 46AE _ 3B. 45, F0
        jz      ?_246                                   ; 46B1 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 46B3 _ 83. 7D, EC, 00
        jz      ?_246                                   ; 46B7 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 46B9 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 46BC _ 8B. 00
        mov     dword [esp+4H], eax                     ; 46BE _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 46C2 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 46C9 _ E8, 00000000(rel)
        nop                                             ; 46CE _ 90
?_246:  nop                                             ; 46CF _ 90
        leave                                           ; 46D0 _ C9
        ret                                             ; 46D1 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 46D2 _ 55
        mov     ebp, esp                                ; 46D3 _ 89. E5
        sub     esp, 40                                 ; 46D5 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 46D8 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 46DF _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 46E6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 46E9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 46EC _ 83. F8, 02
        jnz     ?_247                                   ; 46EF _ 75, 51
        call    _task_now                               ; 46F1 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 46F6 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 46F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 46FC _ 89. 04 24
        call    _task_remove                            ; 46FF _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4704 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 470B _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 470E _ 3B. 45, F0
        jnz     ?_247                                   ; 4711 _ 75, 2F
        call    _task_switchsub                         ; 4713 _ E8, 0000002F
        call    _task_now                               ; 4718 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 471D _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4720 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4727 _ 83. 7D, F0, 00
        jz      ?_247                                   ; 472B _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 472D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4730 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4732 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4736 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 473D _ E8, 00000000(rel)
?_247:  mov     eax, dword [ebp-0CH]                    ; 4742 _ 8B. 45, F4
        leave                                           ; 4745 _ C9
        ret                                             ; 4746 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4747 _ 55
        mov     ebp, esp                                ; 4748 _ 89. E5
        sub     esp, 16                                 ; 474A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 474D _ C7. 45, FC, 00000000
        jmp     ?_249                                   ; 4754 _ EB, 22

?_248:  mov     ecx, dword [_taskctl]                   ; 4756 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 475C _ 8B. 55, FC
        mov     eax, edx                                ; 475F _ 89. D0
        shl     eax, 2                                  ; 4761 _ C1. E0, 02
        add     eax, edx                                ; 4764 _ 01. D0
        shl     eax, 2                                  ; 4766 _ C1. E0, 02
        add     eax, ecx                                ; 4769 _ 01. C8
        add     eax, 8                                  ; 476B _ 83. C0, 08
        mov     eax, dword [eax]                        ; 476E _ 8B. 00
        test    eax, eax                                ; 4770 _ 85. C0
        jg      ?_250                                   ; 4772 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4774 _ 83. 45, FC, 01
?_249:  cmp     dword [ebp-4H], 2                       ; 4778 _ 83. 7D, FC, 02
        jle     ?_248                                   ; 477C _ 7E, D8
        jmp     ?_251                                   ; 477E _ EB, 01

?_250:  nop                                             ; 4780 _ 90
?_251:  mov     eax, dword [_taskctl]                   ; 4781 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4786 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4789 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 478B _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4790 _ C7. 40, 04, 00000000
        nop                                             ; 4797 _ 90
        leave                                           ; 4798 _ C9
        ret                                             ; 4799 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 479A _ 55
        mov     ebp, esp                                ; 479B _ 89. E5
        sub     esp, 16                                 ; 479D _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 47A0 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 47A6 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 47AB _ 8B. 10
        mov     eax, edx                                ; 47AD _ 89. D0
        shl     eax, 2                                  ; 47AF _ C1. E0, 02
        add     eax, edx                                ; 47B2 _ 01. D0
        shl     eax, 2                                  ; 47B4 _ C1. E0, 02
        add     eax, ecx                                ; 47B7 _ 01. C8
        add     eax, 8                                  ; 47B9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 47BC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 47BF _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 47C2 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 47C5 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 47C8 _ 8B. 44 90, 08
        leave                                           ; 47CC _ C9
        ret                                             ; 47CD _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 47CE _ 55
        mov     ebp, esp                                ; 47CF _ 89. E5
        sub     esp, 24                                 ; 47D1 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 47D4 _ 8B. 45, 10
        movzx   eax, al                                 ; 47D7 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 47DA _ 8B. 55, 0C
        add     edx, 16                                 ; 47DD _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 47E0 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 47E4 _ 89. 14 24
        call    _fifo8_put                              ; 47E7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 47EC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 47EF _ 89. 04 24
        call    _task_sleep                             ; 47F2 _ E8, FFFFFEDB
        nop                                             ; 47F7 _ 90
        leave                                           ; 47F8 _ C9
        ret                                             ; 47F9 _ C3
; _send_message End of function

        nop                                             ; 47FA _ 90
        nop                                             ; 47FB _ 90

.text:  ; Local function

_strcmp:
        push    ebp                                     ; 47FC _ 55
        mov     ebp, esp                                ; 47FD _ 89. E5
        sub     esp, 16                                 ; 47FF _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4802 _ 83. 7D, 08, 00
        jz      ?_252                                   ; 4806 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4808 _ 83. 7D, 0C, 00
        jnz     ?_253                                   ; 480C _ 75, 0A
?_252:  mov     eax, 0                                  ; 480E _ B8, 00000000
        jmp     ?_260                                   ; 4813 _ E9, 0000009B

?_253:  mov     dword [ebp-4H], 0                       ; 4818 _ C7. 45, FC, 00000000
        jmp     ?_256                                   ; 481F _ EB, 25

?_254:  mov     edx, dword [ebp-4H]                     ; 4821 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4824 _ 8B. 45, 08
        add     eax, edx                                ; 4827 _ 01. D0
        movzx   edx, byte [eax]                         ; 4829 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 482C _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 482F _ 8B. 45, 0C
        add     eax, ecx                                ; 4832 _ 01. C8
        movzx   eax, byte [eax]                         ; 4834 _ 0F B6. 00
        cmp     dl, al                                  ; 4837 _ 38. C2
        jz      ?_255                                   ; 4839 _ 74, 07
        mov     eax, 0                                  ; 483B _ B8, 00000000
        jmp     ?_260                                   ; 4840 _ EB, 71

?_255:  add     dword [ebp-4H], 1                       ; 4842 _ 83. 45, FC, 01
?_256:  mov     edx, dword [ebp-4H]                     ; 4846 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4849 _ 8B. 45, 08
        add     eax, edx                                ; 484C _ 01. D0
        movzx   eax, byte [eax]                         ; 484E _ 0F B6. 00
        test    al, al                                  ; 4851 _ 84. C0
        jz      ?_257                                   ; 4853 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4855 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4858 _ 8B. 45, 0C
        add     eax, edx                                ; 485B _ 01. D0
        movzx   eax, byte [eax]                         ; 485D _ 0F B6. 00
        test    al, al                                  ; 4860 _ 84. C0
        jnz     ?_254                                   ; 4862 _ 75, BD
?_257:  mov     edx, dword [ebp-4H]                     ; 4864 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4867 _ 8B. 45, 08
        add     eax, edx                                ; 486A _ 01. D0
        movzx   eax, byte [eax]                         ; 486C _ 0F B6. 00
        test    al, al                                  ; 486F _ 84. C0
        jnz     ?_258                                   ; 4871 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4873 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4876 _ 8B. 45, 0C
        add     eax, edx                                ; 4879 _ 01. D0
        movzx   eax, byte [eax]                         ; 487B _ 0F B6. 00
        test    al, al                                  ; 487E _ 84. C0
        jz      ?_258                                   ; 4880 _ 74, 07
        mov     eax, 0                                  ; 4882 _ B8, 00000000
        jmp     ?_260                                   ; 4887 _ EB, 2A

?_258:  mov     edx, dword [ebp-4H]                     ; 4889 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 488C _ 8B. 45, 08
        add     eax, edx                                ; 488F _ 01. D0
        movzx   eax, byte [eax]                         ; 4891 _ 0F B6. 00
        test    al, al                                  ; 4894 _ 84. C0
        jz      ?_259                                   ; 4896 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4898 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 489B _ 8B. 45, 0C
        add     eax, edx                                ; 489E _ 01. D0
        movzx   eax, byte [eax]                         ; 48A0 _ 0F B6. 00
        test    al, al                                  ; 48A3 _ 84. C0
        jz      ?_259                                   ; 48A5 _ 74, 07
        mov     eax, 0                                  ; 48A7 _ B8, 00000000
        jmp     ?_260                                   ; 48AC _ EB, 05

?_259:  mov     eax, 1                                  ; 48AE _ B8, 00000001
?_260:  leave                                           ; 48B3 _ C9
        ret                                             ; 48B4 _ C3

        nop                                             ; 48B5 _ 90
        nop                                             ; 48B6 _ 90
        nop                                             ; 48B7 _ 90



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

?_261:  db 00H                                          ; 0102 _ .

?_262:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2374:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2421:                                           ; byte
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

_closebtn.2541:                                         ; byte
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



?_263:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_264:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_265:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_266:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0017 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 001F _ sk b.

?_267:                                                  ; byte
        db 42H, 00H                                     ; 0024 _ B.

?_268:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0026 _ page is:
        db 20H, 00H                                     ; 002E _  .

?_269:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0030 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0038 _ L: .

?_270:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0044 _ H: .

?_271:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0048 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0050 _ w: .

?_272:                                                  ; byte
        db 3EH, 00H                                     ; 0054 _ >.

?_273:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0056 _ mem.

?_274:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 005A _ free .

?_275:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 0060 _  KB.

?_276:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0064 _ cls.

?_277:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0068 _ dir.



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

?_278:  resw    1                                       ; 000C

?_279:  resw    1                                       ; 000E

_keyinfo:                                               ; byte
        resb    24                                      ; 0010

?_280:  resd    1                                       ; 0028

_mouseinfo:                                             ; byte
        resb    52                                      ; 002C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_281:  resd    1                                       ; 010C

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

_task_a.2308:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2307:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2306:                                            ; byte
        resb    104                                     ; 0300

_str.2469:                                              ; byte
        resb    1                                       ; 0368

?_282:  resb    9                                       ; 0369

?_283:  resb    2                                       ; 0372

_task_b.2567:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


