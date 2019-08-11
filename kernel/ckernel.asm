; Disassembly of file: ckernel.o
; Sun Aug 11 17:00:56 2019
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
        movzx   eax, word [?_299]                       ; 001B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000013C(d)
        movzx   eax, word [?_300]                       ; 0028 _ 0F B7. 05, 0000000E(d)
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
        mov     dword [esp+4H], ?_283                   ; 0328 _ C7. 44 24, 04, 00000000(d)
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
        mov     dword [?_301], eax                      ; 03B3 _ A3, 00000028(d)
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
        mov     dword [esp+8H], ?_284                   ; 04A4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 04AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04B0 _ 89. 04 24
        call    _make_wtitle8                           ; 04B3 _ E8, 00001869
        mov     eax, dword [_shtctl]                    ; 04B8 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 04BD _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_285                   ; 04C5 _ C7. 44 24, 08, 0000000F(d)
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
        call    _set_cursor                             ; 0505 _ E8, 00002BB5
        mov     dword [ebp-18H], 87                     ; 050A _ C7. 45, E8, 00000057
        jmp     ?_004                                   ; 0511 _ EB, 59

?_003:  mov     dword [ebp-14H], 0                      ; 0513 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 051A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0520 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0525 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_284                   ; 052D _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0535 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0539 _ 89. 04 24
        call    _make_wtitle8                           ; 053C _ E8, 000017E0
        mov     eax, dword [_shtctl]                    ; 0541 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0546 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_285                   ; 054E _ C7. 44 24, 08, 0000000F(d)
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
        call    _transferScanCode                       ; 0610 _ E8, 00002921
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
        call    _set_cursor                             ; 0675 _ E8, 00002A45
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
        call    _set_cursor                             ; 06EE _ E8, 000029CC
        jmp     ?_008                                   ; 06F3 _ EB, 7A

?_006:  mov     eax, dword [ebp-40H]                    ; 06F5 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 06F8 _ 89. 04 24
        call    _isSpecialKey                           ; 06FB _ E8, 00002973
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
        call    _set_cursor                             ; 0824 _ E8, 00002896
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
        call    _set_cursor                             ; 0857 _ E8, 00002863
        jmp     ?_001                                   ; 085C _ E9, FFFFFBA9

_task_b_main:; Function begin
        push    ebp                                     ; 0861 _ 55
        mov     ebp, esp                                ; 0862 _ 89. E5
        sub     esp, 104                                ; 0864 _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 0867 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 086D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_286                  ; 0872 _ C7. 44 24, 14, 00000017(d)
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
        mov     dword [esp+14H], ?_287                  ; 0954 _ C7. 44 24, 14, 00000024(d)
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
        mov     eax, dword [?_302]                      ; 0EDA _ A1, 0000010C(d)
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
        movzx   eax, word [?_299]                       ; 13C5 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 13CC _ 98
        mov     dword [ebp-10H], eax                    ; 13CD _ 89. 45, F0
        movzx   eax, word [?_300]                       ; 13D0 _ 0F B7. 05, 0000000E(d)
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
        mov     byte [?_282], al                        ; 1466 _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 146B _ 0F B6. 45, EC
        shr     al, 4                                   ; 146F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1472 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 1475 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1479 _ 0F BE. C0
        mov     dword [esp], eax                        ; 147C _ 89. 04 24
        call    _charToHexVal                           ; 147F _ E8, FFFFFF95
        mov     byte [?_281], al                        ; 1484 _ A2, 00000102(d)
        mov     eax, _keyval                            ; 1489 _ B8, 00000100(d)
        leave                                           ; 148E _ C9
        ret                                             ; 148F _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 16                                 ; 1493 _ 83. EC, 10
        mov     byte [_str.2469], 48                    ; 1496 _ C6. 05, 00000368(d), 30
        mov     byte [?_303], 88                        ; 149D _ C6. 05, 00000369(d), 58
        mov     byte [?_304], 0                         ; 14A4 _ C6. 05, 00000372(d), 00
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
        mov     dword [esp+14H], ?_288                  ; 179C _ C7. 44 24, 14, 00000026(d)
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
        mov     dword [esp+14H], ?_289                  ; 1811 _ C7. 44 24, 14, 00000030(d)
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
        mov     dword [esp+14H], ?_290                  ; 1888 _ C7. 44 24, 14, 0000003C(d)
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
        mov     dword [esp+14H], ?_291                  ; 1900 _ C7. 44 24, 14, 00000048(d)
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
        mov     dword [esp+8H], ?_285                   ; 23DD _ C7. 44 24, 08, 0000000F(d)
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
        mov     dword [ebp-40H], eax                    ; 2557 _ 89. 45, C0
        mov     dword [ebp-0CH], 16                     ; 255A _ C7. 45, F4, 00000010
        mov     dword [ebp-10H], 28                     ; 2561 _ C7. 45, F0, 0000001C
        mov     dword [ebp-14H], 0                      ; 2568 _ C7. 45, EC, 00000000
        mov     eax, dword [ebp-40H]                    ; 256F _ 8B. 45, C0
        lea     edx, [eax+10H]                          ; 2572 _ 8D. 50, 10
        mov     eax, dword [ebp-40H]                    ; 2575 _ 8B. 45, C0
        mov     dword [esp+0CH], eax                    ; 2578 _ 89. 44 24, 0C
        lea     eax, [ebp-264H]                         ; 257C _ 8D. 85, FFFFFD9C
        mov     dword [esp+8H], eax                     ; 2582 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 2586 _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 258E _ 89. 14 24
        call    _fifo8_init                             ; 2591 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 2596 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 259B _ 89. 45, BC
        mov     eax, dword [ebp-40H]                    ; 259E _ 8B. 45, C0
        add     eax, 16                                 ; 25A1 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 25A4 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 25AC _ 89. 44 24, 04
        mov     eax, dword [ebp-44H]                    ; 25B0 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 25B3 _ 89. 04 24
        call    _timer_init                             ; 25B6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 25BB _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-44H]                    ; 25C3 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 25C6 _ 89. 04 24
        call    _timer_settime                          ; 25C9 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 25CE _ A1, 00000264(d)
        mov     dword [esp+14H], ?_292                  ; 25D3 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 25DB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 25E3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 25EB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 25F3 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 25F6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25FA _ 89. 04 24
        call    _showString                             ; 25FD _ E8, FFFFE934
        mov     dword [ebp-48H], 0                      ; 2602 _ C7. 45, B8, 00000000
        mov     dword [ebp-18H], 78848                  ; 2609 _ C7. 45, E8, 00013400
?_080:  call    _io_cli                                 ; 2610 _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 2615 _ 8B. 45, C0
        add     eax, 16                                 ; 2618 _ 83. C0, 10
        mov     dword [esp], eax                        ; 261B _ 89. 04 24
        call    _fifo8_status                           ; 261E _ E8, 00000000(rel)
        test    eax, eax                                ; 2623 _ 85. C0
        jnz     ?_081                                   ; 2625 _ 75, 07
        call    _io_sti                                 ; 2627 _ E8, 00000000(rel)
        jmp     ?_080                                   ; 262C _ EB, E2
; _console_task End of function

?_081:  ; Local function
        mov     eax, dword [ebp-40H]                    ; 262E _ 8B. 45, C0
        add     eax, 16                                 ; 2631 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2634 _ 89. 04 24
        call    _fifo8_get                              ; 2637 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], eax                    ; 263C _ 89. 45, B4
        call    _io_sti                                 ; 263F _ E8, 00000000(rel)
        cmp     dword [ebp-4CH], 1                      ; 2644 _ 83. 7D, B4, 01
        jg      ?_084                                   ; 2648 _ 7F, 6E
        cmp     dword [ebp-14H], 0                      ; 264A _ 83. 7D, EC, 00
        js      ?_084                                   ; 264E _ 78, 68
        cmp     dword [ebp-4CH], 0                      ; 2650 _ 83. 7D, B4, 00
        jz      ?_082                                   ; 2654 _ 74, 26
        mov     eax, dword [ebp-40H]                    ; 2656 _ 8B. 45, C0
        add     eax, 16                                 ; 2659 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 265C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2664 _ 89. 44 24, 04
        mov     eax, dword [ebp-44H]                    ; 2668 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 266B _ 89. 04 24
        call    _timer_init                             ; 266E _ E8, 00000000(rel)
        mov     dword [ebp-14H], 7                      ; 2673 _ C7. 45, EC, 00000007
        jmp     ?_083                                   ; 267A _ EB, 24

?_082:  mov     eax, dword [ebp-40H]                    ; 267C _ 8B. 45, C0
        add     eax, 16                                 ; 267F _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 2682 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 268A _ 89. 44 24, 04
        mov     eax, dword [ebp-44H]                    ; 268E _ 8B. 45, BC
        mov     dword [esp], eax                        ; 2691 _ 89. 04 24
        call    _timer_init                             ; 2694 _ E8, 00000000(rel)
        mov     dword [ebp-14H], 0                      ; 2699 _ C7. 45, EC, 00000000
?_083:  mov     dword [esp+4H], 50                      ; 26A0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-44H]                    ; 26A8 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 26AB _ 89. 04 24
        call    _timer_settime                          ; 26AE _ E8, 00000000(rel)
        jmp     ?_124                                   ; 26B3 _ E9, 00000846

?_084:  cmp     dword [ebp-4CH], 87                     ; 26B8 _ 83. 7D, B4, 57
        jnz     ?_085                                   ; 26BC _ 75, 3C
        mov     dword [ebp-14H], 7                      ; 26BE _ C7. 45, EC, 00000007
        mov     eax, dword [ebp-40H]                    ; 26C5 _ 8B. 45, C0
        add     eax, 16                                 ; 26C8 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 26CB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 26D3 _ 89. 44 24, 04
        mov     eax, dword [ebp-44H]                    ; 26D7 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 26DA _ 89. 04 24
        call    _timer_init                             ; 26DD _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 26E2 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-44H]                    ; 26EA _ 8B. 45, BC
        mov     dword [esp], eax                        ; 26ED _ 89. 04 24
        call    _timer_settime                          ; 26F0 _ E8, 00000000(rel)
        jmp     ?_124                                   ; 26F5 _ E9, 00000804

?_085:  cmp     dword [ebp-4CH], 88                     ; 26FA _ 83. 7D, B4, 58
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
        call    _set_cursor                             ; 2725 _ E8, 00000995
        mov     dword [ebp-14H], -1                     ; 272A _ C7. 45, EC, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 2731 _ A1, 00000278(d)
        mov     dword [esp+8H], 0                       ; 2736 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 273E _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 2746 _ 89. 04 24
        call    _task_run                               ; 2749 _ E8, 00000000(rel)
        jmp     ?_124                                   ; 274E _ E9, 000007AB

?_086:  cmp     dword [ebp-4CH], 28                     ; 2753 _ 83. 7D, B4, 1C
        jne     ?_122                                   ; 2757 _ 0F 85, 00000683
        mov     eax, dword [_shtctl]                    ; 275D _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2762 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 276A _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 276D _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2771 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2774 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2778 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 277B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 277F _ 89. 04 24
        call    _set_cursor                             ; 2782 _ E8, 00000938
        mov     eax, dword [ebp-0CH]                    ; 2787 _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 278A _ 8D. 50, 07
        test    eax, eax                                ; 278D _ 85. C0
        cmovs   eax, edx                                ; 278F _ 0F 48. C2
        sar     eax, 3                                  ; 2792 _ C1. F8, 03
        sub     eax, 2                                  ; 2795 _ 83. E8, 02
        mov     byte [ebp+eax-282H], 0                  ; 2798 _ C6. 84 05, FFFFFD7E, 00
        mov     eax, dword [ebp+8H]                     ; 27A0 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 27A3 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 27A7 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 27AA _ 89. 04 24
        call    _cons_newline                           ; 27AD _ E8, 00000994
        mov     dword [ebp-10H], eax                    ; 27B2 _ 89. 45, F0
        mov     dword [esp+4H], ?_293                   ; 27B5 _ C7. 44 24, 04, 00000056(d)
        lea     eax, [ebp-282H]                         ; 27BD _ 8D. 85, FFFFFD7E
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
        mov     dword [ebp-50H], eax                    ; 27ED _ 89. 45, B0
        mov     eax, dword [_shtctl]                    ; 27F0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_294                  ; 27F5 _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], 7                      ; 27FD _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2805 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2808 _ 89. 54 24, 0C
        mov     dword [esp+8H], 16                      ; 280C _ C7. 44 24, 08, 00000010
        mov     edx, dword [ebp+8H]                     ; 2814 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2817 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 281B _ 89. 04 24
        call    _showString                             ; 281E _ E8, FFFFE713
        mov     eax, dword [_shtctl]                    ; 2823 _ A1, 00000264(d)
        mov     edx, dword [ebp-50H]                    ; 2828 _ 8B. 55, B0
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
        mov     dword [esp+14H], ?_295                  ; 285A _ C7. 44 24, 14, 00000060(d)
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
        call    _cons_newline                           ; 2895 _ E8, 000008AC
        mov     dword [ebp-10H], eax                    ; 289A _ 89. 45, F0
        jmp     ?_124                                   ; 289D _ E9, 0000065C

?_087:  mov     dword [esp+4H], ?_296                   ; 28A2 _ C7. 44 24, 04, 00000064(d)
        lea     eax, [ebp-282H]                         ; 28AA _ 8D. 85, FFFFFD7E
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
        mov     dword [esp+14H], ?_292                  ; 2945 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 294D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 2955 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 295D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 2965 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2968 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 296C _ 89. 04 24
        call    _showString                             ; 296F _ E8, FFFFE5C2
        jmp     ?_124                                   ; 2974 _ E9, 00000585

?_092:  mov     dword [esp+4H], ?_297                   ; 2979 _ C7. 44 24, 04, 00000068(d)
        lea     eax, [ebp-282H]                         ; 2981 _ 8D. 85, FFFFFD7E
        mov     dword [esp], eax                        ; 2987 _ 89. 04 24
        call    _strcmp                                 ; 298A _ E8, 00000000(rel)
        test    eax, eax                                ; 298F _ 85. C0
        je      ?_101                                   ; 2991 _ 0F 84, 00000158
        jmp     ?_100                                   ; 2997 _ E9, 00000139

?_093:  mov     byte [ebp-283H], 0                      ; 299C _ C6. 85, FFFFFD7D, 00
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
        lea     eax, [ebp-28FH]                         ; 29C8 _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 29CE _ 8B. 55, DC
        add     eax, edx                                ; 29D1 _ 01. D0
        mov     byte [eax], cl                          ; 29D3 _ 88. 08
        add     dword [ebp-24H], 1                      ; 29D5 _ 83. 45, DC, 01
?_095:  cmp     dword [ebp-24H], 7                      ; 29D9 _ 83. 7D, DC, 07
        jle     ?_094                                   ; 29DD _ 7E, CD
        jmp     ?_097                                   ; 29DF _ EB, 01

?_096:  nop                                             ; 29E1 _ 90
?_097:  mov     dword [ebp-28H], 0                      ; 29E2 _ C7. 45, D8, 00000000
        lea     eax, [ebp-28FH]                         ; 29E9 _ 8D. 85, FFFFFD71
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
        lea     eax, [ebp-28FH]                         ; 2A14 _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 2A1A _ 8B. 55, DC
        add     eax, edx                                ; 2A1D _ 01. D0
        mov     byte [eax], cl                          ; 2A1F _ 88. 08
        add     dword [ebp-24H], 1                      ; 2A21 _ 83. 45, DC, 01
        add     dword [ebp-28H], 1                      ; 2A25 _ 83. 45, D8, 01
?_099:  cmp     dword [ebp-28H], 2                      ; 2A29 _ 83. 7D, D8, 02
        jle     ?_098                                   ; 2A2D _ 7E, D5
        lea     eax, [ebp-28FH]                         ; 2A2F _ 8D. 85, FFFFFD71
        mov     edx, dword [ebp-24H]                    ; 2A35 _ 8B. 55, DC
        add     eax, edx                                ; 2A38 _ 01. D0
        mov     byte [eax], 0                           ; 2A3A _ C6. 00, 00
        mov     edx, dword [_shtctl]                    ; 2A3D _ 8B. 15, 00000264(d)
        lea     eax, [ebp-28FH]                         ; 2A43 _ 8D. 85, FFFFFD71
        mov     dword [esp+14H], eax                    ; 2A49 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2A4D _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-10H]                    ; 2A55 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2A58 _ 89. 44 24, 0C
        mov     dword [esp+8H], 16                      ; 2A5C _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp+8H]                     ; 2A64 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2A67 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2A6B _ 89. 14 24
        call    _showString                             ; 2A6E _ E8, FFFFE4C3
        mov     dword [ebp-54H], 136                    ; 2A73 _ C7. 45, AC, 00000088
        mov     eax, dword [ebp-18H]                    ; 2A7A _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 2A7D _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 2A80 _ 89. 04 24
        call    _intToHexStr                            ; 2A83 _ E8, FFFFEA08
        mov     dword [ebp-58H], eax                    ; 2A88 _ 89. 45, A8
        mov     eax, dword [_shtctl]                    ; 2A8B _ A1, 00000264(d)
        mov     edx, dword [ebp-58H]                    ; 2A90 _ 8B. 55, A8
        mov     dword [esp+14H], edx                    ; 2A93 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 2A97 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2A9F _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2AA2 _ 89. 54 24, 0C
        mov     edx, dword [ebp-54H]                    ; 2AA6 _ 8B. 55, AC
        mov     dword [esp+8H], edx                     ; 2AA9 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2AAD _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2AB0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AB4 _ 89. 04 24
        call    _showString                             ; 2AB7 _ E8, FFFFE47A
        mov     eax, dword [ebp+8H]                     ; 2ABC _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2ABF _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2AC3 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2AC6 _ 89. 04 24
        call    _cons_newline                           ; 2AC9 _ E8, 00000678
        mov     dword [ebp-10H], eax                    ; 2ACE _ 89. 45, F0
        add     dword [ebp-18H], 32                     ; 2AD1 _ 83. 45, E8, 20
?_100:  mov     eax, dword [ebp-18H]                    ; 2AD5 _ 8B. 45, E8
        movzx   eax, byte [eax]                         ; 2AD8 _ 0F B6. 00
        test    al, al                                  ; 2ADB _ 84. C0
        jne     ?_093                                   ; 2ADD _ 0F 85, FFFFFEB9
        mov     dword [ebp-0CH], 16                     ; 2AE3 _ C7. 45, F4, 00000010
        jmp     ?_124                                   ; 2AEA _ E9, 0000040F

?_101:  movzx   eax, byte [ebp-282H]                    ; 2AEF _ 0F B6. 85, FFFFFD7E
        cmp     al, 116                                 ; 2AF6 _ 3C, 74
        jne     ?_124                                   ; 2AF8 _ 0F 85, 00000400
        movzx   eax, byte [ebp-281H]                    ; 2AFE _ 0F B6. 85, FFFFFD7F
        cmp     al, 121                                 ; 2B05 _ 3C, 79
        jne     ?_124                                   ; 2B07 _ 0F 85, 000003F1
        movzx   eax, byte [ebp-280H]                    ; 2B0D _ 0F B6. 85, FFFFFD80
        cmp     al, 112                                 ; 2B14 _ 3C, 70
        jne     ?_124                                   ; 2B16 _ 0F 85, 000003E2
        movzx   eax, byte [ebp-27FH]                    ; 2B1C _ 0F B6. 85, FFFFFD81
        cmp     al, 101                                 ; 2B23 _ 3C, 65
        jne     ?_124                                   ; 2B25 _ 0F 85, 000003D3
        mov     byte [ebp-290H], 0                      ; 2B2B _ C6. 85, FFFFFD70, 00
        mov     dword [ebp-2CH], 0                      ; 2B32 _ C7. 45, D4, 00000000
        mov     dword [ebp-30H], 5                      ; 2B39 _ C7. 45, D0, 00000005
        jmp     ?_103                                   ; 2B40 _ EB, 35

?_102:  lea     eax, [ebp-282H]                         ; 2B42 _ 8D. 85, FFFFFD7E
        mov     edx, dword [ebp-30H]                    ; 2B48 _ 8B. 55, D0
        add     eax, edx                                ; 2B4B _ 01. D0
        movzx   eax, byte [eax]                         ; 2B4D _ 0F B6. 00
        test    al, al                                  ; 2B50 _ 84. C0
        jz      ?_104                                   ; 2B52 _ 74, 2B
        lea     eax, [ebp-282H]                         ; 2B54 _ 8D. 85, FFFFFD7E
        mov     edx, dword [ebp-30H]                    ; 2B5A _ 8B. 55, D0
        add     eax, edx                                ; 2B5D _ 01. D0
        movzx   eax, byte [eax]                         ; 2B5F _ 0F B6. 00
        lea     edx, [ebp-29CH]                         ; 2B62 _ 8D. 95, FFFFFD64
        mov     ecx, dword [ebp-2CH]                    ; 2B68 _ 8B. 4D, D4
        add     edx, ecx                                ; 2B6B _ 01. CA
        mov     byte [edx], al                          ; 2B6D _ 88. 02
        add     dword [ebp-2CH], 1                      ; 2B6F _ 83. 45, D4, 01
        add     dword [ebp-30H], 1                      ; 2B73 _ 83. 45, D0, 01
?_103:  cmp     dword [ebp-30H], 16                     ; 2B77 _ 83. 7D, D0, 10
        jle     ?_102                                   ; 2B7B _ 7E, C5
        jmp     ?_105                                   ; 2B7D _ EB, 01

?_104:  nop                                             ; 2B7F _ 90
?_105:  lea     eax, [ebp-29CH]                         ; 2B80 _ 8D. 85, FFFFFD64
        mov     edx, dword [ebp-2CH]                    ; 2B86 _ 8B. 55, D4
        add     eax, edx                                ; 2B89 _ 01. D0
        mov     byte [eax], 0                           ; 2B8B _ C6. 00, 00
        mov     dword [ebp-18H], 78848                  ; 2B8E _ C7. 45, E8, 00013400
        jmp     ?_120                                   ; 2B95 _ E9, 00000217

?_106:  mov     byte [ebp-29DH], 0                      ; 2B9A _ C6. 85, FFFFFD63, 00
        mov     dword [ebp-34H], 0                      ; 2BA1 _ C7. 45, CC, 00000000
        jmp     ?_108                                   ; 2BA8 _ EB, 2D

?_107:  mov     edx, dword [ebp-18H]                    ; 2BAA _ 8B. 55, E8
        mov     eax, dword [ebp-34H]                    ; 2BAD _ 8B. 45, CC
        add     eax, edx                                ; 2BB0 _ 01. D0
        movzx   eax, byte [eax]                         ; 2BB2 _ 0F B6. 00
        test    al, al                                  ; 2BB5 _ 84. C0
        jz      ?_109                                   ; 2BB7 _ 74, 26
        mov     edx, dword [ebp-18H]                    ; 2BB9 _ 8B. 55, E8
        mov     eax, dword [ebp-34H]                    ; 2BBC _ 8B. 45, CC
        add     eax, edx                                ; 2BBF _ 01. D0
        movzx   eax, byte [eax]                         ; 2BC1 _ 0F B6. 00
        mov     ecx, eax                                ; 2BC4 _ 89. C1
        lea     eax, [ebp-2A9H]                         ; 2BC6 _ 8D. 85, FFFFFD57
        mov     edx, dword [ebp-34H]                    ; 2BCC _ 8B. 55, CC
        add     eax, edx                                ; 2BCF _ 01. D0
        mov     byte [eax], cl                          ; 2BD1 _ 88. 08
        add     dword [ebp-34H], 1                      ; 2BD3 _ 83. 45, CC, 01
?_108:  cmp     dword [ebp-34H], 7                      ; 2BD7 _ 83. 7D, CC, 07
        jle     ?_107                                   ; 2BDB _ 7E, CD
        jmp     ?_110                                   ; 2BDD _ EB, 01

?_109:  nop                                             ; 2BDF _ 90
?_110:  mov     dword [ebp-38H], 0                      ; 2BE0 _ C7. 45, C8, 00000000
        lea     eax, [ebp-2A9H]                         ; 2BE7 _ 8D. 85, FFFFFD57
        mov     edx, dword [ebp-34H]                    ; 2BED _ 8B. 55, CC
        add     eax, edx                                ; 2BF0 _ 01. D0
        mov     byte [eax], 46                          ; 2BF2 _ C6. 00, 2E
        add     dword [ebp-34H], 1                      ; 2BF5 _ 83. 45, CC, 01
        mov     dword [ebp-38H], 0                      ; 2BF9 _ C7. 45, C8, 00000000
        jmp     ?_112                                   ; 2C00 _ EB, 25

?_111:  mov     edx, dword [ebp-18H]                    ; 2C02 _ 8B. 55, E8
        mov     eax, dword [ebp-38H]                    ; 2C05 _ 8B. 45, C8
        add     eax, edx                                ; 2C08 _ 01. D0
        add     eax, 8                                  ; 2C0A _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 2C0D _ 0F B6. 00
        mov     ecx, eax                                ; 2C10 _ 89. C1
        lea     eax, [ebp-2A9H]                         ; 2C12 _ 8D. 85, FFFFFD57
        mov     edx, dword [ebp-34H]                    ; 2C18 _ 8B. 55, CC
        add     eax, edx                                ; 2C1B _ 01. D0
        mov     byte [eax], cl                          ; 2C1D _ 88. 08
        add     dword [ebp-34H], 1                      ; 2C1F _ 83. 45, CC, 01
        add     dword [ebp-38H], 1                      ; 2C23 _ 83. 45, C8, 01
?_112:  cmp     dword [ebp-38H], 2                      ; 2C27 _ 83. 7D, C8, 02
        jle     ?_111                                   ; 2C2B _ 7E, D5
        lea     eax, [ebp-2A9H]                         ; 2C2D _ 8D. 85, FFFFFD57
        mov     dword [esp+4H], eax                     ; 2C33 _ 89. 44 24, 04
        lea     eax, [ebp-29CH]                         ; 2C37 _ 8D. 85, FFFFFD64
        mov     dword [esp], eax                        ; 2C3D _ 89. 04 24
        call    _strcmp                                 ; 2C40 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 2C45 _ 83. F8, 01
        jne     ?_119                                   ; 2C48 _ 0F 85, 0000015F
        mov     dword [ebp-5CH], 88064                  ; 2C4E _ C7. 45, A4, 00015800
        mov     eax, dword [ebp-18H]                    ; 2C55 _ 8B. 45, E8
        movzx   eax, word [eax+1AH]                     ; 2C58 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 2C5C _ 0F B7. C0
        shl     eax, 9                                  ; 2C5F _ C1. E0, 09
        add     dword [ebp-5CH], eax                    ; 2C62 _ 01. 45, A4
        mov     eax, dword [ebp-18H]                    ; 2C65 _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 2C68 _ 8B. 40, 1C
        mov     dword [ebp-60H], eax                    ; 2C6B _ 89. 45, A0
        mov     dword [ebp-3CH], 0                      ; 2C6E _ C7. 45, C4, 00000000
        mov     dword [ebp-0CH], 16                     ; 2C75 _ C7. 45, F4, 00000010
        mov     dword [ebp-3CH], 0                      ; 2C7C _ C7. 45, C4, 00000000
        jmp     ?_118                                   ; 2C83 _ E9, 00000116

?_113:  mov     edx, dword [ebp-3CH]                    ; 2C88 _ 8B. 55, C4
        mov     eax, dword [ebp-5CH]                    ; 2C8B _ 8B. 45, A4
        add     eax, edx                                ; 2C8E _ 01. D0
        movzx   eax, byte [eax]                         ; 2C90 _ 0F B6. 00
        mov     byte [ebp-2ABH], al                     ; 2C93 _ 88. 85, FFFFFD55
        mov     byte [ebp-2AAH], 0                      ; 2C99 _ C6. 85, FFFFFD56, 00
        movzx   eax, byte [ebp-2ABH]                    ; 2CA0 _ 0F B6. 85, FFFFFD55
        cmp     al, 9                                   ; 2CA7 _ 3C, 09
        jnz     ?_115                                   ; 2CA9 _ 75, 5D
?_114:  mov     eax, dword [_shtctl]                    ; 2CAB _ A1, 00000264(d)
        mov     dword [esp+14H], ?_298                  ; 2CB0 _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], 7                      ; 2CB8 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp-10H]                    ; 2CC0 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2CC3 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2CC7 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2CCA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2CCE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2CD1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CD5 _ 89. 04 24
        call    _showString                             ; 2CD8 _ E8, FFFFE259
        add     dword [ebp-0CH], 8                      ; 2CDD _ 83. 45, F4, 08
        cmp     dword [ebp-0CH], 248                    ; 2CE1 _ 81. 7D, F4, 000000F8
        jnz     ?_114                                   ; 2CE8 _ 75, C1
        mov     dword [ebp-0CH], 8                      ; 2CEA _ C7. 45, F4, 00000008
        mov     eax, dword [ebp+8H]                     ; 2CF1 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2CF4 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2CF8 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2CFB _ 89. 04 24
        call    _cons_newline                           ; 2CFE _ E8, 00000443
        mov     dword [ebp-10H], eax                    ; 2D03 _ 89. 45, F0
        jmp     ?_114                                   ; 2D06 _ EB, A3

?_115:  movzx   eax, byte [ebp-2ABH]                    ; 2D08 _ 0F B6. 85, FFFFFD55
        cmp     al, 10                                  ; 2D0F _ 3C, 0A
        jnz     ?_116                                   ; 2D11 _ 75, 1E
        mov     dword [ebp-0CH], 8                      ; 2D13 _ C7. 45, F4, 00000008
        mov     eax, dword [ebp+8H]                     ; 2D1A _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2D1D _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2D21 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2D24 _ 89. 04 24
        call    _cons_newline                           ; 2D27 _ E8, 0000041A
        mov     dword [ebp-10H], eax                    ; 2D2C _ 89. 45, F0
        jmp     ?_117                                   ; 2D2F _ EB, 69

?_116:  movzx   eax, byte [ebp-2ABH]                    ; 2D31 _ 0F B6. 85, FFFFFD55
        cmp     al, 13                                  ; 2D38 _ 3C, 0D
        jz      ?_117                                   ; 2D3A _ 74, 5E
        mov     edx, dword [_shtctl]                    ; 2D3C _ 8B. 15, 00000264(d)
        lea     eax, [ebp-2ABH]                         ; 2D42 _ 8D. 85, FFFFFD55
        mov     dword [esp+14H], eax                    ; 2D48 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2D4C _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-10H]                    ; 2D54 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2D57 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2D5B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2D5E _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 2D62 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2D65 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2D69 _ 89. 14 24
        call    _showString                             ; 2D6C _ E8, FFFFE1C5
        add     dword [ebp-0CH], 8                      ; 2D71 _ 83. 45, F4, 08
        cmp     dword [ebp-0CH], 248                    ; 2D75 _ 81. 7D, F4, 000000F8
        jnz     ?_117                                   ; 2D7C _ 75, 1C
        mov     dword [ebp-0CH], 16                     ; 2D7E _ C7. 45, F4, 00000010
        mov     eax, dword [ebp+8H]                     ; 2D85 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2D88 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2D8C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2D8F _ 89. 04 24
        call    _cons_newline                           ; 2D92 _ E8, 000003AF
        mov     dword [ebp-10H], eax                    ; 2D97 _ 89. 45, F0
?_117:  add     dword [ebp-3CH], 1                      ; 2D9A _ 83. 45, C4, 01
?_118:  mov     eax, dword [ebp-3CH]                    ; 2D9E _ 8B. 45, C4
        cmp     eax, dword [ebp-60H]                    ; 2DA1 _ 3B. 45, A0
        jl      ?_113                                   ; 2DA4 _ 0F 8C, FFFFFEDE
        nop                                             ; 2DAA _ 90
        jmp     ?_121                                   ; 2DAB _ EB, 12

?_119:  add     dword [ebp-18H], 32                     ; 2DAD _ 83. 45, E8, 20
?_120:  mov     eax, dword [ebp-18H]                    ; 2DB1 _ 8B. 45, E8
        movzx   eax, byte [eax]                         ; 2DB4 _ 0F B6. 00
        test    al, al                                  ; 2DB7 _ 84. C0
        jne     ?_106                                   ; 2DB9 _ 0F 85, FFFFFDDB
?_121:  mov     eax, dword [ebp+8H]                     ; 2DBF _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2DC2 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2DC6 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2DC9 _ 89. 04 24
        call    _cons_newline                           ; 2DCC _ E8, 00000375
        mov     dword [ebp-10H], eax                    ; 2DD1 _ 89. 45, F0
        mov     dword [ebp-0CH], 16                     ; 2DD4 _ C7. 45, F4, 00000010
        jmp     ?_124                                   ; 2DDB _ E9, 0000011E

?_122:  cmp     dword [ebp-4CH], 14                     ; 2DE0 _ 83. 7D, B4, 0E
        jnz     ?_123                                   ; 2DE4 _ 75, 63
        cmp     dword [ebp-0CH], 8                      ; 2DE6 _ 83. 7D, F4, 08
        jle     ?_123                                   ; 2DEA _ 7E, 5D
        mov     eax, dword [_shtctl]                    ; 2DEC _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2DF1 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2DF9 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2DFC _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2E00 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2E03 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2E07 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2E0A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2E0E _ 89. 04 24
        call    _set_cursor                             ; 2E11 _ E8, 000002A9
        sub     dword [ebp-0CH], 8                      ; 2E16 _ 83. 6D, F4, 08
        mov     eax, dword [_shtctl]                    ; 2E1A _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2E1F _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2E27 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2E2A _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2E2E _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2E31 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2E35 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2E38 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2E3C _ 89. 04 24
        call    _set_cursor                             ; 2E3F _ E8, 0000027B
        jmp     ?_124                                   ; 2E44 _ E9, 000000B5

?_123:  mov     eax, dword [ebp-4CH]                    ; 2E49 _ 8B. 45, B4
        mov     dword [esp], eax                        ; 2E4C _ 89. 04 24
        call    _transferScanCode                       ; 2E4F _ E8, 000000E2
        mov     byte [ebp-61H], al                      ; 2E54 _ 88. 45, 9F
        cmp     dword [ebp-0CH], 239                    ; 2E57 _ 81. 7D, F4, 000000EF
        jg      ?_124                                   ; 2E5E _ 0F 8F, 0000009A
        cmp     byte [ebp-61H], 0                       ; 2E64 _ 80. 7D, 9F, 00
        je      ?_124                                   ; 2E68 _ 0F 84, 00000090
        mov     eax, dword [_shtctl]                    ; 2E6E _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2E73 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-10H]                    ; 2E7B _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2E7E _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2E82 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2E85 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2E89 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2E8C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2E90 _ 89. 04 24
        call    _set_cursor                             ; 2E93 _ E8, 00000227
        movzx   eax, byte [ebp-61H]                     ; 2E98 _ 0F B6. 45, 9F
        mov     byte [ebp-2ADH], al                     ; 2E9C _ 88. 85, FFFFFD53
        mov     byte [ebp-2ACH], 0                      ; 2EA2 _ C6. 85, FFFFFD54, 00
        mov     eax, dword [ebp-0CH]                    ; 2EA9 _ 8B. 45, F4
        lea     edx, [eax+7H]                           ; 2EAC _ 8D. 50, 07
        test    eax, eax                                ; 2EAF _ 85. C0
        cmovs   eax, edx                                ; 2EB1 _ 0F 48. C2
        sar     eax, 3                                  ; 2EB4 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 2EB7 _ 8D. 50, FE
        movzx   eax, byte [ebp-61H]                     ; 2EBA _ 0F B6. 45, 9F
        mov     byte [ebp+edx-282H], al                 ; 2EBE _ 88. 84 15, FFFFFD7E
        mov     edx, dword [_shtctl]                    ; 2EC5 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-2ADH]                         ; 2ECB _ 8D. 85, FFFFFD53
        mov     dword [esp+14H], eax                    ; 2ED1 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2ED5 _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-10H]                    ; 2EDD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2EE0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2EE4 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2EE7 _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 2EEB _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2EEE _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2EF2 _ 89. 14 24
        call    _showString                             ; 2EF5 _ E8, FFFFE03C
        add     dword [ebp-0CH], 8                      ; 2EFA _ 83. 45, F4, 08
?_124:  cmp     dword [ebp-14H], 0                      ; 2EFE _ 83. 7D, EC, 00
        js      ?_080                                   ; 2F02 _ 0F 88, FFFFF708
        mov     eax, dword [_shtctl]                    ; 2F08 _ A1, 00000264(d)
        mov     edx, dword [ebp-14H]                    ; 2F0D _ 8B. 55, EC
        mov     dword [esp+10H], edx                    ; 2F10 _ 89. 54 24, 10
        mov     edx, dword [ebp-10H]                    ; 2F14 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 2F17 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2F1B _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2F1E _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2F22 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2F25 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F29 _ 89. 04 24
        call    _set_cursor                             ; 2F2C _ E8, 0000018E
        jmp     ?_080                                   ; 2F31 _ E9, FFFFF6DA

_transferScanCode:; Function begin
        push    ebp                                     ; 2F36 _ 55
        mov     ebp, esp                                ; 2F37 _ 89. E5
        sub     esp, 16                                 ; 2F39 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 2F3C _ 83. 7D, 08, 2A
        jnz     ?_125                                   ; 2F40 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2F42 _ A1, 00000000(d)
        or      eax, 01H                                ; 2F47 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 2F4A _ A3, 00000000(d)
?_125:  cmp     dword [ebp+8H], 54                      ; 2F4F _ 83. 7D, 08, 36
        jnz     ?_126                                   ; 2F53 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2F55 _ A1, 00000000(d)
        or      eax, 02H                                ; 2F5A _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 2F5D _ A3, 00000000(d)
?_126:  cmp     dword [ebp+8H], 170                     ; 2F62 _ 81. 7D, 08, 000000AA
        jnz     ?_127                                   ; 2F69 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2F6B _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 2F70 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 2F73 _ A3, 00000000(d)
?_127:  cmp     dword [ebp+8H], 182                     ; 2F78 _ 81. 7D, 08, 000000B6
        jnz     ?_128                                   ; 2F7F _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2F81 _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 2F86 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 2F89 _ A3, 00000000(d)
?_128:  cmp     dword [ebp+8H], 58                      ; 2F8E _ 83. 7D, 08, 3A
        jnz     ?_130                                   ; 2F92 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 2F94 _ A1, 00000004(d)
        test    eax, eax                                ; 2F99 _ 85. C0
        jnz     ?_129                                   ; 2F9B _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 2F9D _ C7. 05, 00000004(d), 00000001
        jmp     ?_130                                   ; 2FA7 _ EB, 0A

?_129:  mov     dword [_caps_lock], 0                   ; 2FA9 _ C7. 05, 00000004(d), 00000000
?_130:  cmp     dword [ebp+8H], 42                      ; 2FB3 _ 83. 7D, 08, 2A
        jz      ?_131                                   ; 2FB7 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 2FB9 _ 83. 7D, 08, 36
        jz      ?_131                                   ; 2FBD _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 2FBF _ 81. 7D, 08, 000000AA
        jz      ?_131                                   ; 2FC6 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 2FC8 _ 81. 7D, 08, 000000B6
        jz      ?_131                                   ; 2FCF _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 2FD1 _ 83. 7D, 08, 53
        jg      ?_131                                   ; 2FD5 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 2FD7 _ 83. 7D, 08, 3A
        jnz     ?_132                                   ; 2FDB _ 75, 0A
?_131:  mov     eax, 0                                  ; 2FDD _ B8, 00000000
        jmp     ?_137                                   ; 2FE2 _ E9, 0000008A

?_132:  mov     byte [ebp-1H], 0                        ; 2FE7 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 2FEB _ A1, 00000000(d)
        test    eax, eax                                ; 2FF0 _ 85. C0
        jnz     ?_133                                   ; 2FF2 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 2FF4 _ 83. 7D, 08, 53
        jg      ?_133                                   ; 2FF8 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 2FFA _ 8B. 45, 08
        add     eax, _keytable                          ; 2FFD _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 3002 _ 0F B6. 00
        test    al, al                                  ; 3005 _ 84. C0
        jz      ?_133                                   ; 3007 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 3009 _ 8B. 45, 08
        add     eax, _keytable                          ; 300C _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 3011 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 3014 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 3017 _ 80. 7D, FF, 40
        jle     ?_135                                   ; 301B _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 301D _ 80. 7D, FF, 5A
        jg      ?_135                                   ; 3021 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 3023 _ A1, 00000004(d)
        test    eax, eax                                ; 3028 _ 85. C0
        jnz     ?_135                                   ; 302A _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 302C _ 0F B6. 45, FF
        add     eax, 32                                 ; 3030 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 3033 _ 88. 45, FF
        jmp     ?_135                                   ; 3036 _ EB, 34

?_133:  mov     eax, dword [_key_shift]                 ; 3038 _ A1, 00000000(d)
        test    eax, eax                                ; 303D _ 85. C0
        jz      ?_134                                   ; 303F _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 3041 _ 83. 7D, 08, 7F
        jg      ?_134                                   ; 3045 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 3047 _ 8B. 45, 08
        add     eax, _keytable1                         ; 304A _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 304F _ 0F B6. 00
        test    al, al                                  ; 3052 _ 84. C0
        jz      ?_134                                   ; 3054 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 3056 _ 8B. 45, 08
        add     eax, _keytable1                         ; 3059 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 305E _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 3061 _ 88. 45, FF
        jmp     ?_136                                   ; 3064 _ EB, 07

?_134:  mov     byte [ebp-1H], 0                        ; 3066 _ C6. 45, FF, 00
        jmp     ?_136                                   ; 306A _ EB, 01

?_135:  nop                                             ; 306C _ 90
?_136:  movzx   eax, byte [ebp-1H]                      ; 306D _ 0F B6. 45, FF
?_137:  leave                                           ; 3071 _ C9
        ret                                             ; 3072 _ C3
; _transferScanCode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 3073 _ 55
        mov     ebp, esp                                ; 3074 _ 89. E5
        sub     esp, 4                                  ; 3076 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 3079 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 307C _ 89. 04 24
        call    _transferScanCode                       ; 307F _ E8, FFFFFEB2
        cmp     dword [ebp+8H], 58                      ; 3084 _ 83. 7D, 08, 3A
        jz      ?_138                                   ; 3088 _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 308A _ 81. 7D, 08, 000000BA
        jz      ?_138                                   ; 3091 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 3093 _ 83. 7D, 08, 2A
        jz      ?_138                                   ; 3097 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 3099 _ 83. 7D, 08, 36
        jz      ?_138                                   ; 309D _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 309F _ 81. 7D, 08, 000000AA
        jz      ?_138                                   ; 30A6 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 30A8 _ 81. 7D, 08, 000000B6
        jnz     ?_139                                   ; 30AF _ 75, 07
?_138:  mov     eax, 1                                  ; 30B1 _ B8, 00000001
        jmp     ?_140                                   ; 30B6 _ EB, 05

?_139:  mov     eax, 0                                  ; 30B8 _ B8, 00000000
?_140:  leave                                           ; 30BD _ C9
        ret                                             ; 30BE _ C3
; _isSpecialKey End of function

_set_cursor:; Function begin
        push    ebp                                     ; 30BF _ 55
        mov     ebp, esp                                ; 30C0 _ 89. E5
        push    esi                                     ; 30C2 _ 56
        push    ebx                                     ; 30C3 _ 53
        sub     esp, 32                                 ; 30C4 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 30C7 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 30CA _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 30CD _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 30D0 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 30D3 _ 8B. 45, 18
        movzx   eax, al                                 ; 30D6 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 30D9 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 30DC _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 30DF _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 30E2 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 30E4 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 30E8 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 30EC _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 30EF _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 30F3 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 30F6 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 30FA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 30FE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3102 _ 89. 14 24
        call    _boxfill8                               ; 3105 _ E8, FFFFDF99
        mov     eax, dword [ebp+14H]                    ; 310A _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 310D _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 3110 _ 8B. 45, 10
        add     eax, 8                                  ; 3113 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 3116 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 311A _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 311E _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 3121 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3125 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3128 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 312C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 312F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3133 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3136 _ 89. 04 24
        call    _sheet_refresh                          ; 3139 _ E8, 00000000(rel)
        nop                                             ; 313E _ 90
        add     esp, 32                                 ; 313F _ 83. C4, 20
        pop     ebx                                     ; 3142 _ 5B
        pop     esi                                     ; 3143 _ 5E
        pop     ebp                                     ; 3144 _ 5D
        ret                                             ; 3145 _ C3
; _set_cursor End of function

_cons_newline:; Function begin
        push    ebp                                     ; 3146 _ 55
        mov     ebp, esp                                ; 3147 _ 89. E5
        push    ebx                                     ; 3149 _ 53
        sub     esp, 52                                 ; 314A _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 314D _ 81. 7D, 08, 0000008B
        jg      ?_141                                   ; 3154 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 3156 _ 83. 45, 08, 10
        jmp     ?_150                                   ; 315A _ E9, 000000DB

?_141:  mov     dword [ebp-10H], 28                     ; 315F _ C7. 45, F0, 0000001C
        jmp     ?_145                                   ; 3166 _ EB, 50

?_142:  mov     dword [ebp-0CH], 8                      ; 3168 _ C7. 45, F4, 00000008
        jmp     ?_144                                   ; 316F _ EB, 3A

?_143:  mov     eax, dword [ebp+0CH]                    ; 3171 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 3174 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 3176 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 3179 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 317C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 317F _ 8B. 40, 04
        imul    eax, ecx                                ; 3182 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 3185 _ 8B. 4D, F4
        add     eax, ecx                                ; 3188 _ 01. C8
        add     eax, edx                                ; 318A _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 318C _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 318F _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 3191 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3194 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 3197 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 319B _ 8B. 5D, F4
        add     edx, ebx                                ; 319E _ 01. DA
        add     edx, ecx                                ; 31A0 _ 01. CA
        movzx   eax, byte [eax]                         ; 31A2 _ 0F B6. 00
        mov     byte [edx], al                          ; 31A5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 31A7 _ 83. 45, F4, 01
?_144:  cmp     dword [ebp-0CH], 247                    ; 31AB _ 81. 7D, F4, 000000F7
        jle     ?_143                                   ; 31B2 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 31B4 _ 83. 45, F0, 01
?_145:  cmp     dword [ebp-10H], 139                    ; 31B8 _ 81. 7D, F0, 0000008B
        jle     ?_142                                   ; 31BF _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 31C1 _ C7. 45, F0, 0000008C
        jmp     ?_149                                   ; 31C8 _ EB, 33

?_146:  mov     dword [ebp-0CH], 8                      ; 31CA _ C7. 45, F4, 00000008
        jmp     ?_148                                   ; 31D1 _ EB, 1D

?_147:  mov     eax, dword [ebp+0CH]                    ; 31D3 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 31D6 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 31D8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 31DB _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 31DE _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 31E2 _ 8B. 4D, F4
        add     eax, ecx                                ; 31E5 _ 01. C8
        add     eax, edx                                ; 31E7 _ 01. D0
        mov     byte [eax], 0                           ; 31E9 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 31EC _ 83. 45, F4, 01
?_148:  cmp     dword [ebp-0CH], 247                    ; 31F0 _ 81. 7D, F4, 000000F7
        jle     ?_147                                   ; 31F7 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 31F9 _ 83. 45, F0, 01
?_149:  cmp     dword [ebp-10H], 155                    ; 31FD _ 81. 7D, F0, 0000009B
        jle     ?_146                                   ; 3204 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 3206 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 320B _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 3213 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 321B _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 3223 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 322B _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 322E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3232 _ 89. 04 24
        call    _sheet_refresh                          ; 3235 _ E8, 00000000(rel)
?_150:  mov     eax, dword [_shtctl]                    ; 323A _ A1, 00000264(d)
        mov     dword [esp+14H], ?_292                  ; 323F _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 3247 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 324F _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 3252 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 3256 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 325E _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 3261 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3265 _ 89. 04 24
        call    _showString                             ; 3268 _ E8, FFFFDCC9
        mov     eax, dword [ebp+8H]                     ; 326D _ 8B. 45, 08
        add     esp, 52                                 ; 3270 _ 83. C4, 34
        pop     ebx                                     ; 3273 _ 5B
        pop     ebp                                     ; 3274 _ 5D
        ret                                             ; 3275 _ C3
; _cons_newline End of function

        nop                                             ; 3276 _ 90
        nop                                             ; 3277 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 3278 _ 55
        mov     ebp, esp                                ; 3279 _ 89. E5
        sub     esp, 40                                 ; 327B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 327E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3286 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3289 _ 89. 04 24
        call    _memman_alloc_4k                        ; 328C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3291 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 3294 _ 83. 7D, F0, 00
        jnz     ?_151                                   ; 3298 _ 75, 0A
        mov     eax, 0                                  ; 329A _ B8, 00000000
        jmp     ?_155                                   ; 329F _ E9, 0000009D

?_151:  mov     eax, dword [ebp+10H]                    ; 32A4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 32A7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 32AB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32AF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32B2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 32B5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 32BA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 32BC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 32BF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 32C2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32C5 _ 8B. 40, 04
        test    eax, eax                                ; 32C8 _ 85. C0
        jnz     ?_152                                   ; 32CA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 32CC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 32CF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 32D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32DE _ 89. 04 24
        call    _memman_free_4k                         ; 32E1 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 32E6 _ B8, 00000000
        jmp     ?_155                                   ; 32EB _ EB, 54

?_152:  mov     eax, dword [ebp-10H]                    ; 32ED _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 32F0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 32F3 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 32F5 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 32F8 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 32FB _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 32FE _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3301 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3304 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3307 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 330A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3311 _ C7. 45, F4, 00000000
        jmp     ?_154                                   ; 3318 _ EB, 1B

?_153:  mov     edx, dword [ebp-10H]                    ; 331A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 331D _ 8B. 45, F4
        add     eax, 33                                 ; 3320 _ 83. C0, 21
        shl     eax, 5                                  ; 3323 _ C1. E0, 05
        add     eax, edx                                ; 3326 _ 01. D0
        add     eax, 16                                 ; 3328 _ 83. C0, 10
        mov     dword [eax], 0                          ; 332B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3331 _ 83. 45, F4, 01
?_154:  cmp     dword [ebp-0CH], 255                    ; 3335 _ 81. 7D, F4, 000000FF
        jle     ?_153                                   ; 333C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 333E _ 8B. 45, F0
?_155:  leave                                           ; 3341 _ C9
        ret                                             ; 3342 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3343 _ 55
        mov     ebp, esp                                ; 3344 _ 89. E5
        sub     esp, 16                                 ; 3346 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3349 _ C7. 45, FC, 00000000
        jmp     ?_158                                   ; 3350 _ EB, 5B

?_156:  mov     edx, dword [ebp+8H]                     ; 3352 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 3355 _ 8B. 45, FC
        add     eax, 33                                 ; 3358 _ 83. C0, 21
        shl     eax, 5                                  ; 335B _ C1. E0, 05
        add     eax, edx                                ; 335E _ 01. D0
        add     eax, 16                                 ; 3360 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3363 _ 8B. 00
        test    eax, eax                                ; 3365 _ 85. C0
        jnz     ?_157                                   ; 3367 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 3369 _ 8B. 45, FC
        shl     eax, 5                                  ; 336C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 336F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3375 _ 8B. 45, 08
        add     eax, edx                                ; 3378 _ 01. D0
        add     eax, 4                                  ; 337A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 337D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3380 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3383 _ 8B. 55, FC
        add     edx, 4                                  ; 3386 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 3389 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 338C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 3390 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 3393 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 339A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 339D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 33A4 _ 8B. 45, F8
        jmp     ?_159                                   ; 33A7 _ EB, 12

?_157:  add     dword [ebp-4H], 1                       ; 33A9 _ 83. 45, FC, 01
?_158:  cmp     dword [ebp-4H], 255                     ; 33AD _ 81. 7D, FC, 000000FF
        jle     ?_156                                   ; 33B4 _ 7E, 9C
        mov     eax, 0                                  ; 33B6 _ B8, 00000000
?_159:  leave                                           ; 33BB _ C9
        ret                                             ; 33BC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 33BD _ 55
        mov     ebp, esp                                ; 33BE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 33C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 33C3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 33C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 33C8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 33CB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 33CE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 33D1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 33D4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 33D7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 33DA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 33DD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 33E0 _ 89. 50, 14
        nop                                             ; 33E3 _ 90
        pop     ebp                                     ; 33E4 _ 5D
        ret                                             ; 33E5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 33E6 _ 55
        mov     ebp, esp                                ; 33E7 _ 89. E5
        push    edi                                     ; 33E9 _ 57
        push    esi                                     ; 33EA _ 56
        push    ebx                                     ; 33EB _ 53
        sub     esp, 60                                 ; 33EC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 33EF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 33F2 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 33F5 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 33F8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33FB _ 8B. 40, 10
        add     eax, 1                                  ; 33FE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3401 _ 39. 45, 10
        jle     ?_160                                   ; 3404 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3406 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3409 _ 8B. 40, 10
        add     eax, 1                                  ; 340C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 340F _ 89. 45, 10
?_160:  cmp     dword [ebp+10H], -1                     ; 3412 _ 83. 7D, 10, FF
        jge     ?_161                                   ; 3416 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3418 _ C7. 45, 10, FFFFFFFF
?_161:  mov     eax, dword [ebp+0CH]                    ; 341F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3422 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3425 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3428 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 342B _ 3B. 45, 10
        jle     ?_168                                   ; 342E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3434 _ 83. 7D, 10, 00
        js      ?_164                                   ; 3438 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 343E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3441 _ 89. 45, E4
        jmp     ?_163                                   ; 3444 _ EB, 34

?_162:  mov     eax, dword [ebp-1CH]                    ; 3446 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3449 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 344C _ 8B. 45, 08
        add     edx, 4                                  ; 344F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3452 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3456 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3459 _ 8B. 55, E4
        add     edx, 4                                  ; 345C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 345F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3463 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3466 _ 8B. 55, E4
        add     edx, 4                                  ; 3469 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 346C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3470 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3473 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3476 _ 83. 6D, E4, 01
?_163:  mov     eax, dword [ebp-1CH]                    ; 347A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 347D _ 3B. 45, 10
        jg      ?_162                                   ; 3480 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3482 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3485 _ 8B. 55, 10
        add     edx, 4                                  ; 3488 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 348B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 348E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 3492 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3495 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3498 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 349B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 349E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34A1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 34A4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34A7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34AA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 34AD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 34B0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 34B3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 34B6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34B9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34BC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 34BF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 34C2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 34C6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 34CA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 34CE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 34D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34D9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 34DC _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 34E1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 34E4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 34E7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34EA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34ED _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34F0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 34F3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34F6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34F9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 34FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 34FF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3502 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3505 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3508 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 350B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 350E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3511 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3514 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3518 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 351C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3520 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3524 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3528 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 352C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 352F _ 89. 04 24
        call    _sheet_refreshsub                       ; 3532 _ E8, 00000465
        jmp     ?_175                                   ; 3537 _ E9, 0000027D

?_164:  mov     eax, dword [ebp+8H]                     ; 353C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 353F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3542 _ 39. 45, E0
        jge     ?_167                                   ; 3545 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3547 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 354A _ 89. 45, E4
        jmp     ?_166                                   ; 354D _ EB, 34

?_165:  mov     eax, dword [ebp-1CH]                    ; 354F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3552 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3555 _ 8B. 45, 08
        add     edx, 4                                  ; 3558 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 355B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 355F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3562 _ 8B. 55, E4
        add     edx, 4                                  ; 3565 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3568 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 356C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 356F _ 8B. 55, E4
        add     edx, 4                                  ; 3572 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3575 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3579 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 357C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 357F _ 83. 45, E4, 01
?_166:  mov     eax, dword [ebp+8H]                     ; 3583 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3586 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3589 _ 39. 45, E4
        jl      ?_165                                   ; 358C _ 7C, C1
?_167:  mov     eax, dword [ebp+8H]                     ; 358E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3591 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3594 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3597 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 359A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 359D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35A0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35A3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35A6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35A9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35AC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35AF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 35B2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 35B5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 35B8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 35BB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35BE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35C1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35C4 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 35C7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 35CF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 35D3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35D7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 35DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35E2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 35E5 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 35EA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 35ED _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 35F0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35F3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35F6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35F9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35FC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35FF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3602 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3605 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3608 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 360B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 360E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3611 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3614 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3617 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 361A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 361E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3626 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 362A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 362E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3632 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3636 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3639 _ 89. 04 24
        call    _sheet_refreshsub                       ; 363C _ E8, 0000035B
        jmp     ?_175                                   ; 3641 _ E9, 00000173

?_168:  mov     eax, dword [ebp-20H]                    ; 3646 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3649 _ 3B. 45, 10
        jge     ?_175                                   ; 364C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3652 _ 83. 7D, E0, 00
        js      ?_171                                   ; 3656 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3658 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 365B _ 89. 45, E4
        jmp     ?_170                                   ; 365E _ EB, 34

?_169:  mov     eax, dword [ebp-1CH]                    ; 3660 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3663 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3666 _ 8B. 45, 08
        add     edx, 4                                  ; 3669 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 366C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3670 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3673 _ 8B. 55, E4
        add     edx, 4                                  ; 3676 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3679 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 367D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3680 _ 8B. 55, E4
        add     edx, 4                                  ; 3683 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3686 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 368A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 368D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3690 _ 83. 45, E4, 01
?_170:  mov     eax, dword [ebp-1CH]                    ; 3694 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3697 _ 3B. 45, 10
        jl      ?_169                                   ; 369A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 369C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 369F _ 8B. 55, 10
        add     edx, 4                                  ; 36A2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 36A5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 36A8 _ 89. 4C 90, 04
        jmp     ?_174                                   ; 36AC _ EB, 6C

?_171:  mov     eax, dword [ebp+8H]                     ; 36AE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36B1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 36B4 _ 89. 45, E4
        jmp     ?_173                                   ; 36B7 _ EB, 3A

?_172:  mov     eax, dword [ebp-1CH]                    ; 36B9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 36BC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 36BF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36C2 _ 8B. 55, E4
        add     edx, 4                                  ; 36C5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 36C8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36CC _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 36CF _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 36D2 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 36D6 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 36D9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36DC _ 8B. 45, 08
        add     edx, 4                                  ; 36DF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 36E2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 36E6 _ 8B. 55, E4
        add     edx, 1                                  ; 36E9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 36EC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 36EF _ 83. 6D, E4, 01
?_173:  mov     eax, dword [ebp-1CH]                    ; 36F3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 36F6 _ 3B. 45, 10
        jge     ?_172                                   ; 36F9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 36FB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 36FE _ 8B. 55, 10
        add     edx, 4                                  ; 3701 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3704 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3707 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 370B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 370E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3711 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3714 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3717 _ 89. 50, 10
?_174:  mov     eax, dword [ebp+0CH]                    ; 371A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 371D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3720 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3723 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3726 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3729 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 372C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 372F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3732 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3735 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3738 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 373B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 373E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3741 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3744 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3747 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 374B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 374F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3753 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3757 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 375B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 375E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3761 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3766 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3769 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 376C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 376F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3772 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3775 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3778 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 377B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 377E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3781 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3784 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3787 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 378A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 378D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3790 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3793 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3797 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 379A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 379E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 37A2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 37A6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 37AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 37AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 37B1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 37B4 _ E8, 000001E3
?_175:  nop                                             ; 37B9 _ 90
        add     esp, 60                                 ; 37BA _ 83. C4, 3C
        pop     ebx                                     ; 37BD _ 5B
        pop     esi                                     ; 37BE _ 5E
        pop     edi                                     ; 37BF _ 5F
        pop     ebp                                     ; 37C0 _ 5D
        ret                                             ; 37C1 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 37C2 _ 55
        mov     ebp, esp                                ; 37C3 _ 89. E5
        push    edi                                     ; 37C5 _ 57
        push    esi                                     ; 37C6 _ 56
        push    ebx                                     ; 37C7 _ 53
        sub     esp, 60                                 ; 37C8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 37CB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 37CE _ 8B. 40, 18
        test    eax, eax                                ; 37D1 _ 85. C0
        js      ?_176                                   ; 37D3 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 37D5 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 37D8 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 37DB _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 37DE _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 37E1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37E4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 37E7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 37EA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 37ED _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 37F0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 37F3 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 37F6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 37F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37FC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 37FF _ 8B. 45, 14
        add     edx, eax                                ; 3802 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3804 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3807 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 380A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 380D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3810 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3813 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3817 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 381B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 381F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3823 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3827 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 382B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 382E _ 89. 04 24
        call    _sheet_refreshsub                       ; 3831 _ E8, 00000166
?_176:  mov     eax, 0                                  ; 3836 _ B8, 00000000
        add     esp, 60                                 ; 383B _ 83. C4, 3C
        pop     ebx                                     ; 383E _ 5B
        pop     esi                                     ; 383F _ 5E
        pop     edi                                     ; 3840 _ 5F
        pop     ebp                                     ; 3841 _ 5D
        ret                                             ; 3842 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3843 _ 55
        mov     ebp, esp                                ; 3844 _ 89. E5
        push    esi                                     ; 3846 _ 56
        push    ebx                                     ; 3847 _ 53
        sub     esp, 48                                 ; 3848 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 384B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 384E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3851 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3854 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3857 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 385A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 385D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3860 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3863 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3866 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3869 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 386C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 386F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3872 _ 8B. 40, 18
        test    eax, eax                                ; 3875 _ 85. C0
        js      ?_177                                   ; 3877 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 387D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3880 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3883 _ 8B. 45, F0
        add     edx, eax                                ; 3886 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3888 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 388B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 388E _ 8B. 45, F4
        add     eax, ecx                                ; 3891 _ 01. C8
        mov     dword [esp+14H], 0                      ; 3893 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 389B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 389F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 38A3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 38A6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 38AA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 38AD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38B1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38B4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 38B7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 38BC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 38BF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 38C2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 38C5 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 38C8 _ 8B. 45, 14
        add     edx, eax                                ; 38CB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 38CD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 38D0 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 38D3 _ 8B. 45, 10
        add     eax, ebx                                ; 38D6 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 38D8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 38DC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 38E0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 38E4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 38E7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 38EB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 38EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38F5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 38F8 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 38FD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3900 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3903 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3906 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3909 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 390C _ 8B. 45, F0
        add     edx, eax                                ; 390F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3911 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3914 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3917 _ 8B. 45, F4
        add     eax, ebx                                ; 391A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 391C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3920 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3928 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 392C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3930 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3933 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3937 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 393A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 393E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3941 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3944 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3949 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 394C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 394F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3952 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3955 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3958 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 395B _ 8B. 45, 14
        add     edx, eax                                ; 395E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3960 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3963 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3966 _ 8B. 45, 10
        add     eax, esi                                ; 3969 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 396B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 396F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3973 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3977 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 397B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 397E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3982 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3985 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3989 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 398C _ 89. 04 24
        call    _sheet_refreshsub                       ; 398F _ E8, 00000008
?_177:  nop                                             ; 3994 _ 90
        add     esp, 48                                 ; 3995 _ 83. C4, 30
        pop     ebx                                     ; 3998 _ 5B
        pop     esi                                     ; 3999 _ 5E
        pop     ebp                                     ; 399A _ 5D
        ret                                             ; 399B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 399C _ 55
        mov     ebp, esp                                ; 399D _ 89. E5
        sub     esp, 48                                 ; 399F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 39A2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 39A5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 39A7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 39AA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 39AD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 39B0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 39B3 _ 83. 7D, 0C, 00
        jns     ?_178                                   ; 39B7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 39B9 _ C7. 45, 0C, 00000000
?_178:  cmp     dword [ebp+10H], 8                      ; 39C0 _ 83. 7D, 10, 08
        jg      ?_179                                   ; 39C4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 39C6 _ C7. 45, 10, 00000000
?_179:  mov     eax, dword [ebp+8H]                     ; 39CD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 39D0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 39D3 _ 39. 45, 14
        jle     ?_180                                   ; 39D6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 39D8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 39DB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 39DE _ 89. 45, 14
?_180:  mov     eax, dword [ebp+8H]                     ; 39E1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39E4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 39E7 _ 39. 45, 18
        jle     ?_181                                   ; 39EA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 39EC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39EF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 39F2 _ 89. 45, 18
?_181:  mov     eax, dword [ebp+1CH]                    ; 39F5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 39F8 _ 89. 45, FC
        jmp     ?_188                                   ; 39FB _ E9, 0000010F

?_182:  mov     eax, dword [ebp+8H]                     ; 3A00 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3A03 _ 8B. 55, FC
        add     edx, 4                                  ; 3A06 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3A09 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3A0D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3A10 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3A13 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3A15 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3A18 _ 8B. 45, 08
        add     eax, 1044                               ; 3A1B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3A20 _ 8B. 55, E8
        sub     edx, eax                                ; 3A23 _ 29. C2
        mov     eax, edx                                ; 3A25 _ 89. D0
        sar     eax, 5                                  ; 3A27 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3A2A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3A2D _ C7. 45, F4, 00000000
        jmp     ?_187                                   ; 3A34 _ E9, 000000C3

?_183:  mov     eax, dword [ebp-18H]                    ; 3A39 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3A3C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3A3F _ 8B. 45, F4
        add     eax, edx                                ; 3A42 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3A44 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3A47 _ C7. 45, F8, 00000000
        jmp     ?_186                                   ; 3A4E _ E9, 00000096

?_184:  mov     eax, dword [ebp-18H]                    ; 3A53 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3A56 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3A59 _ 8B. 45, F8
        add     eax, edx                                ; 3A5C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3A5E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3A61 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3A64 _ 3B. 45, D8
        jg      ?_185                                   ; 3A67 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3A69 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3A6C _ 3B. 45, 14
        jge     ?_185                                   ; 3A6F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3A71 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3A74 _ 3B. 45, DC
        jg      ?_185                                   ; 3A77 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3A79 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3A7C _ 3B. 45, 18
        jge     ?_185                                   ; 3A7F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3A81 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3A84 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3A87 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3A8B _ 8B. 55, F8
        add     eax, edx                                ; 3A8E _ 01. D0
        mov     edx, eax                                ; 3A90 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3A92 _ 8B. 45, E4
        add     eax, edx                                ; 3A95 _ 01. D0
        movzx   eax, byte [eax]                         ; 3A97 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3A9A _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3A9D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AA0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3AA3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3AA7 _ 8B. 55, D8
        add     eax, edx                                ; 3AAA _ 01. D0
        mov     edx, eax                                ; 3AAC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3AAE _ 8B. 45, EC
        add     eax, edx                                ; 3AB1 _ 01. D0
        movzx   eax, byte [eax]                         ; 3AB3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3AB6 _ 38. 45, E3
        jnz     ?_185                                   ; 3AB9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3ABB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3ABF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3AC2 _ 8B. 52, 14
        cmp     eax, edx                                ; 3AC5 _ 39. D0
        jz      ?_185                                   ; 3AC7 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3AC9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3ACC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3ACF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3AD3 _ 8B. 55, D8
        add     eax, edx                                ; 3AD6 _ 01. D0
        mov     edx, eax                                ; 3AD8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3ADA _ 8B. 45, F0
        add     edx, eax                                ; 3ADD _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3ADF _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3AE3 _ 88. 02
?_185:  add     dword [ebp-8H], 1                       ; 3AE5 _ 83. 45, F8, 01
?_186:  mov     eax, dword [ebp-18H]                    ; 3AE9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3AEC _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3AEF _ 39. 45, F8
        jl      ?_184                                   ; 3AF2 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3AF8 _ 83. 45, F4, 01
?_187:  mov     eax, dword [ebp-18H]                    ; 3AFC _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3AFF _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3B02 _ 39. 45, F4
        jl      ?_183                                   ; 3B05 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3B0B _ 83. 45, FC, 01
?_188:  mov     eax, dword [ebp-4H]                     ; 3B0F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3B12 _ 3B. 45, 20
        jle     ?_182                                   ; 3B15 _ 0F 8E, FFFFFEE5
        nop                                             ; 3B1B _ 90
        leave                                           ; 3B1C _ C9
        ret                                             ; 3B1D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3B1E _ 55
        mov     ebp, esp                                ; 3B1F _ 89. E5
        sub     esp, 64                                 ; 3B21 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3B24 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B27 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3B2A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3B2D _ 83. 7D, 0C, 00
        jns     ?_189                                   ; 3B31 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3B33 _ C7. 45, 0C, 00000000
?_189:  cmp     dword [ebp+10H], 0                      ; 3B3A _ 83. 7D, 10, 00
        jns     ?_190                                   ; 3B3E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3B40 _ C7. 45, 10, 00000000
?_190:  mov     eax, dword [ebp+8H]                     ; 3B47 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B4A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3B4D _ 39. 45, 14
        jle     ?_191                                   ; 3B50 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B52 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B55 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3B58 _ 89. 45, 14
?_191:  mov     eax, dword [ebp+8H]                     ; 3B5B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B5E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3B61 _ 39. 45, 18
        jle     ?_192                                   ; 3B64 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B66 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B69 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3B6C _ 89. 45, 18
?_192:  mov     eax, dword [ebp+1CH]                    ; 3B6F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3B72 _ 89. 45, FC
        jmp     ?_203                                   ; 3B75 _ E9, 00000139

?_193:  mov     eax, dword [ebp+8H]                     ; 3B7A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3B7D _ 8B. 55, FC
        add     edx, 4                                  ; 3B80 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3B83 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3B87 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3B8A _ 8B. 45, 08
        add     eax, 1044                               ; 3B8D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3B92 _ 8B. 55, DC
        sub     edx, eax                                ; 3B95 _ 29. C2
        mov     eax, edx                                ; 3B97 _ 89. D0
        sar     eax, 5                                  ; 3B99 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3B9C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3B9F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3BA2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3BA4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3BA7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3BAA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3BAD _ 8B. 55, 0C
        sub     edx, eax                                ; 3BB0 _ 29. C2
        mov     eax, edx                                ; 3BB2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3BB4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3BB7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3BBA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3BBD _ 8B. 55, 10
        sub     edx, eax                                ; 3BC0 _ 29. C2
        mov     eax, edx                                ; 3BC2 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3BC4 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3BC7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3BCA _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3BCD _ 8B. 55, 14
        sub     edx, eax                                ; 3BD0 _ 29. C2
        mov     eax, edx                                ; 3BD2 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3BD4 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3BD7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3BDA _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3BDD _ 8B. 55, 18
        sub     edx, eax                                ; 3BE0 _ 29. C2
        mov     eax, edx                                ; 3BE2 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3BE4 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3BE7 _ 83. 7D, F0, 00
        jns     ?_194                                   ; 3BEB _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3BED _ C7. 45, F0, 00000000
?_194:  cmp     dword [ebp-14H], 0                      ; 3BF4 _ 83. 7D, EC, 00
        jns     ?_195                                   ; 3BF8 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3BFA _ C7. 45, EC, 00000000
?_195:  mov     eax, dword [ebp-24H]                    ; 3C01 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C04 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3C07 _ 39. 45, E8
        jle     ?_196                                   ; 3C0A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3C0C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C0F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3C12 _ 89. 45, E8
?_196:  mov     eax, dword [ebp-24H]                    ; 3C15 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3C18 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3C1B _ 39. 45, E4
        jle     ?_197                                   ; 3C1E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3C20 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3C23 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3C26 _ 89. 45, E4
?_197:  mov     eax, dword [ebp-14H]                    ; 3C29 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3C2C _ 89. 45, F4
        jmp     ?_202                                   ; 3C2F _ EB, 76

?_198:  mov     eax, dword [ebp-24H]                    ; 3C31 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3C34 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3C37 _ 8B. 45, F4
        add     eax, edx                                ; 3C3A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3C3C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3C3F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3C42 _ 89. 45, F8
        jmp     ?_201                                   ; 3C45 _ EB, 54

?_199:  mov     eax, dword [ebp-24H]                    ; 3C47 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3C4A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3C4D _ 8B. 45, F8
        add     eax, edx                                ; 3C50 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3C52 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3C55 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3C58 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3C5B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3C5F _ 8B. 55, F8
        add     eax, edx                                ; 3C62 _ 01. D0
        mov     edx, eax                                ; 3C64 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3C66 _ 8B. 45, D4
        add     eax, edx                                ; 3C69 _ 01. D0
        movzx   eax, byte [eax]                         ; 3C6B _ 0F B6. 00
        movzx   eax, al                                 ; 3C6E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3C71 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3C74 _ 8B. 52, 14
        cmp     eax, edx                                ; 3C77 _ 39. D0
        jz      ?_200                                   ; 3C79 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3C7B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C7E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3C81 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3C85 _ 8B. 55, CC
        add     eax, edx                                ; 3C88 _ 01. D0
        mov     edx, eax                                ; 3C8A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3C8C _ 8B. 45, E0
        add     edx, eax                                ; 3C8F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3C91 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3C95 _ 88. 02
?_200:  add     dword [ebp-8H], 1                       ; 3C97 _ 83. 45, F8, 01
?_201:  mov     eax, dword [ebp-8H]                     ; 3C9B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3C9E _ 3B. 45, E8
        jl      ?_199                                   ; 3CA1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3CA3 _ 83. 45, F4, 01
?_202:  mov     eax, dword [ebp-0CH]                    ; 3CA7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3CAA _ 3B. 45, E4
        jl      ?_198                                   ; 3CAD _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3CAF _ 83. 45, FC, 01
?_203:  mov     eax, dword [ebp+8H]                     ; 3CB3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3CB6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3CB9 _ 39. 45, FC
        jle     ?_193                                   ; 3CBC _ 0F 8E, FFFFFEB8
        nop                                             ; 3CC2 _ 90
        leave                                           ; 3CC3 _ C9
        ret                                             ; 3CC4 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3CC5 _ 90
        nop                                             ; 3CC6 _ 90
        nop                                             ; 3CC7 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 3CC8 _ 55
        mov     ebp, esp                                ; 3CC9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3CCB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3CCE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CD4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3CD7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CDE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3CE1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CE8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3CEB _ C7. 40, 0C, 00000000
        nop                                             ; 3CF2 _ 90
        pop     ebp                                     ; 3CF3 _ 5D
        ret                                             ; 3CF4 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3CF5 _ 55
        mov     ebp, esp                                ; 3CF6 _ 89. E5
        sub     esp, 16                                 ; 3CF8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3CFB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3D02 _ C7. 45, FC, 00000000
        jmp     ?_205                                   ; 3D09 _ EB, 14

?_204:  mov     eax, dword [ebp+8H]                     ; 3D0B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D0E _ 8B. 55, FC
        add     edx, 2                                  ; 3D11 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D14 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3D18 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3D1B _ 83. 45, FC, 01
?_205:  mov     eax, dword [ebp+8H]                     ; 3D1F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D22 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3D24 _ 39. 45, FC
        jc      ?_204                                   ; 3D27 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3D29 _ 8B. 45, F8
        leave                                           ; 3D2C _ C9
        ret                                             ; 3D2D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3D2E _ 55
        mov     ebp, esp                                ; 3D2F _ 89. E5
        sub     esp, 16                                 ; 3D31 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3D34 _ C7. 45, FC, 00000000
        jmp     ?_209                                   ; 3D3B _ E9, 00000083

?_206:  mov     eax, dword [ebp+8H]                     ; 3D40 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D43 _ 8B. 55, FC
        add     edx, 2                                  ; 3D46 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D49 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3D4D _ 39. 45, 0C
        ja      ?_208                                   ; 3D50 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3D52 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D55 _ 8B. 55, FC
        add     edx, 2                                  ; 3D58 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3D5B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3D5E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3D61 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D64 _ 8B. 55, FC
        add     edx, 2                                  ; 3D67 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3D6A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3D6D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3D70 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3D73 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D76 _ 8B. 55, FC
        add     edx, 2                                  ; 3D79 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3D7C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3D7F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D82 _ 8B. 55, FC
        add     edx, 2                                  ; 3D85 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3D88 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3D8C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3D8F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3D92 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3D95 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3D98 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3D9C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3D9F _ 8B. 55, FC
        add     edx, 2                                  ; 3DA2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3DA5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3DA9 _ 85. C0
        jnz     ?_207                                   ; 3DAB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3DAD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DB0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3DB2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3DB5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3DB8 _ 89. 10
?_207:  mov     eax, dword [ebp-8H]                     ; 3DBA _ 8B. 45, F8
        jmp     ?_210                                   ; 3DBD _ EB, 17

?_208:  add     dword [ebp-4H], 1                       ; 3DBF _ 83. 45, FC, 01
?_209:  mov     eax, dword [ebp+8H]                     ; 3DC3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DC6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3DC8 _ 39. 45, FC
        jc      ?_206                                   ; 3DCB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3DD1 _ B8, 00000000
?_210:  leave                                           ; 3DD6 _ C9
        ret                                             ; 3DD7 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3DD8 _ 55
        mov     ebp, esp                                ; 3DD9 _ 89. E5
        push    ebx                                     ; 3DDB _ 53
        sub     esp, 16                                 ; 3DDC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3DDF _ C7. 45, F8, 00000000
        jmp     ?_212                                   ; 3DE6 _ EB, 15

?_211:  mov     eax, dword [ebp+8H]                     ; 3DE8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3DEB _ 8B. 55, F8
        add     edx, 2                                  ; 3DEE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3DF1 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3DF4 _ 39. 45, 0C
        jc      ?_213                                   ; 3DF7 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3DF9 _ 83. 45, F8, 01
?_212:  mov     eax, dword [ebp+8H]                     ; 3DFD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E00 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E02 _ 39. 45, F8
        jl      ?_211                                   ; 3E05 _ 7C, E1
        jmp     ?_214                                   ; 3E07 _ EB, 01

?_213:  nop                                             ; 3E09 _ 90
?_214:  cmp     dword [ebp-8H], 0                       ; 3E0A _ 83. 7D, F8, 00
        jle     ?_216                                   ; 3E0E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3E14 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E17 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E1A _ 8B. 45, 08
        add     edx, 2                                  ; 3E1D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3E20 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3E23 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E26 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E29 _ 8B. 45, 08
        add     edx, 2                                  ; 3E2C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E2F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3E33 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3E35 _ 39. 45, 0C
        jne     ?_216                                   ; 3E38 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3E3E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E41 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E44 _ 8B. 45, 08
        add     edx, 2                                  ; 3E47 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3E4A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3E4E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E51 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3E54 _ 8B. 45, 10
        add     ecx, eax                                ; 3E57 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3E59 _ 8B. 45, 08
        add     edx, 2                                  ; 3E5C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3E5F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3E63 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E66 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E68 _ 39. 45, F8
        jge     ?_215                                   ; 3E6B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3E6D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3E70 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3E73 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3E76 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3E79 _ 8B. 55, F8
        add     edx, 2                                  ; 3E7C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3E7F _ 8B. 04 D0
        cmp     ecx, eax                                ; 3E82 _ 39. C1
        jnz     ?_215                                   ; 3E84 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3E86 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3E89 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E8C _ 8B. 45, 08
        add     edx, 2                                  ; 3E8F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3E92 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3E96 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3E99 _ 8B. 55, F8
        add     edx, 2                                  ; 3E9C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3E9F _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3EA3 _ 8B. 55, F8
        sub     edx, 1                                  ; 3EA6 _ 83. EA, 01
        add     ecx, eax                                ; 3EA9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3EAB _ 8B. 45, 08
        add     edx, 2                                  ; 3EAE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3EB1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3EB5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EB8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3EBA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3EBD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3EC0 _ 89. 10
?_215:  mov     eax, 0                                  ; 3EC2 _ B8, 00000000
        jmp     ?_222                                   ; 3EC7 _ E9, 0000011C

?_216:  mov     eax, dword [ebp+8H]                     ; 3ECC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3ECF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3ED1 _ 39. 45, F8
        jge     ?_217                                   ; 3ED4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3ED6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3ED9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3EDC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3EDF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EE2 _ 8B. 55, F8
        add     edx, 2                                  ; 3EE5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3EE8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3EEB _ 39. C1
        jnz     ?_217                                   ; 3EED _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3EEF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3EF2 _ 8B. 55, F8
        add     edx, 2                                  ; 3EF5 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3EF8 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3EFB _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3EFE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F01 _ 8B. 55, F8
        add     edx, 2                                  ; 3F04 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3F07 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 3F0B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3F0E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3F11 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F14 _ 8B. 55, F8
        add     edx, 2                                  ; 3F17 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3F1A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3F1E _ B8, 00000000
        jmp     ?_222                                   ; 3F23 _ E9, 000000C0

?_217:  mov     eax, dword [ebp+8H]                     ; 3F28 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F2B _ 8B. 00
        cmp     eax, 4095                               ; 3F2D _ 3D, 00000FFF
        jg      ?_221                                   ; 3F32 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3F38 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F3B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3F3D _ 89. 45, F4
        jmp     ?_219                                   ; 3F40 _ EB, 28

?_218:  mov     eax, dword [ebp-0CH]                    ; 3F42 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3F45 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3F48 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 3F4B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 3F4E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3F51 _ 8B. 45, 08
        add     edx, 2                                  ; 3F54 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 3F57 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 3F5A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 3F5C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 3F5F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 3F62 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 3F66 _ 83. 6D, F4, 01
?_219:  mov     eax, dword [ebp-0CH]                    ; 3F6A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 3F6D _ 3B. 45, F8
        jg      ?_218                                   ; 3F70 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 3F72 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F75 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3F77 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3F7A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3F7D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3F7F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3F82 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3F85 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F88 _ 8B. 00
        cmp     edx, eax                                ; 3F8A _ 39. C2
        jge     ?_220                                   ; 3F8C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3F8E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3F91 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3F93 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3F96 _ 89. 50, 04
?_220:  mov     eax, dword [ebp+8H]                     ; 3F99 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3F9C _ 8B. 55, F8
        add     edx, 2                                  ; 3F9F _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3FA2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3FA5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3FA8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3FAB _ 8B. 55, F8
        add     edx, 2                                  ; 3FAE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3FB1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3FB4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3FB8 _ B8, 00000000
        jmp     ?_222                                   ; 3FBD _ EB, 29

?_221:  mov     eax, dword [ebp+8H]                     ; 3FBF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FC2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3FC5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3FC8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3FCB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3FCE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3FD1 _ 8B. 40, 08
        mov     edx, eax                                ; 3FD4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3FD6 _ 8B. 45, 10
        add     eax, edx                                ; 3FD9 _ 01. D0
        mov     edx, eax                                ; 3FDB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3FDD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3FE0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3FE3 _ B8, FFFFFFFF
?_222:  add     esp, 16                                 ; 3FE8 _ 83. C4, 10
        pop     ebx                                     ; 3FEB _ 5B
        pop     ebp                                     ; 3FEC _ 5D
        ret                                             ; 3FED _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 3FEE _ 55
        mov     ebp, esp                                ; 3FEF _ 89. E5
        sub     esp, 24                                 ; 3FF1 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3FF4 _ 8B. 45, 0C
        add     eax, 4095                               ; 3FF7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3FFC _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 4001 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4004 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4007 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 400B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 400E _ 89. 04 24
        call    _memman_alloc                           ; 4011 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4016 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4019 _ 8B. 45, FC
        leave                                           ; 401C _ C9
        ret                                             ; 401D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 401E _ 55
        mov     ebp, esp                                ; 401F _ 89. E5
        sub     esp, 28                                 ; 4021 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4024 _ 8B. 45, 10
        add     eax, 4095                               ; 4027 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 402C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4031 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4034 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4037 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 403B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 403E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4042 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4045 _ 89. 04 24
        call    _memman_free                            ; 4048 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 404D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4050 _ 8B. 45, FC
        leave                                           ; 4053 _ C9
        ret                                             ; 4054 _ C3
; _memman_free_4k End of function

        nop                                             ; 4055 _ 90
        nop                                             ; 4056 _ 90
        nop                                             ; 4057 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 4058 _ 55
        mov     ebp, esp                                ; 4059 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 405B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 405E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4061 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4064 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4067 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 406A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 406C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 406F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4072 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4075 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 4078 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 407F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4082 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4089 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 408C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4093 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4096 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 4099 _ 89. 50, 18
        nop                                             ; 409C _ 90
        pop     ebp                                     ; 409D _ 5D
        ret                                             ; 409E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 409F _ 55
        mov     ebp, esp                                ; 40A0 _ 89. E5
        sub     esp, 40                                 ; 40A2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 40A5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 40A8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 40AB _ 83. 7D, 08, 00
        jnz     ?_223                                   ; 40AF _ 75, 0A
        mov     eax, 4294967295                         ; 40B1 _ B8, FFFFFFFF
        jmp     ?_227                                   ; 40B6 _ E9, 000000AB

?_223:  mov     eax, dword [ebp+8H]                     ; 40BB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 40BE _ 8B. 40, 10
        test    eax, eax                                ; 40C1 _ 85. C0
        jnz     ?_224                                   ; 40C3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 40C5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 40C8 _ 8B. 40, 14
        or      eax, 01H                                ; 40CB _ 83. C8, 01
        mov     edx, eax                                ; 40CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 40D0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 40D3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 40D6 _ B8, FFFFFFFF
        jmp     ?_227                                   ; 40DB _ E9, 00000086

?_224:  mov     eax, dword [ebp+8H]                     ; 40E0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 40E3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 40E5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 40E8 _ 8B. 40, 04
        add     edx, eax                                ; 40EB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 40ED _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 40F1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 40F3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 40F6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 40F9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 40FC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 40FF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4102 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4105 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4108 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 410B _ 8B. 40, 0C
        cmp     edx, eax                                ; 410E _ 39. C2
        jnz     ?_225                                   ; 4110 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4112 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4115 _ C7. 40, 04, 00000000
?_225:  mov     eax, dword [ebp+8H]                     ; 411C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 411F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4122 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4125 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4128 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 412B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 412E _ 8B. 40, 18
        test    eax, eax                                ; 4131 _ 85. C0
        jz      ?_226                                   ; 4133 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4135 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4138 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 413B _ 8B. 40, 04
        cmp     eax, 2                                  ; 413E _ 83. F8, 02
        jz      ?_226                                   ; 4141 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4143 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4146 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4149 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4151 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 4159 _ 89. 04 24
        call    _task_run                               ; 415C _ E8, 00000000(rel)
?_226:  mov     eax, 0                                  ; 4161 _ B8, 00000000
?_227:  leave                                           ; 4166 _ C9
        ret                                             ; 4167 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 4168 _ 55
        mov     ebp, esp                                ; 4169 _ 89. E5
        sub     esp, 16                                 ; 416B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 416E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4171 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4174 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4177 _ 8B. 40, 0C
        cmp     edx, eax                                ; 417A _ 39. C2
        jnz     ?_228                                   ; 417C _ 75, 07
        mov     eax, 4294967295                         ; 417E _ B8, FFFFFFFF
        jmp     ?_230                                   ; 4183 _ EB, 51

?_228:  mov     eax, dword [ebp+8H]                     ; 4185 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4188 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 418A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 418D _ 8B. 40, 08
        add     eax, edx                                ; 4190 _ 01. D0
        movzx   eax, byte [eax]                         ; 4192 _ 0F B6. 00
        movzx   eax, al                                 ; 4195 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 4198 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 419B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 419E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 41A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41A4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 41A7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 41AA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 41AD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 41B0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41B3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 41B6 _ 39. C2
        jnz     ?_229                                   ; 41B8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 41BA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 41BD _ C7. 40, 08, 00000000
?_229:  mov     eax, dword [ebp+8H]                     ; 41C4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41C7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 41CA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41CD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 41D0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 41D3 _ 8B. 45, FC
?_230:  leave                                           ; 41D6 _ C9
        ret                                             ; 41D7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 41D8 _ 55
        mov     ebp, esp                                ; 41D9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 41DB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 41DE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 41E1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 41E4 _ 8B. 40, 10
        sub     edx, eax                                ; 41E7 _ 29. C2
        mov     eax, edx                                ; 41E9 _ 89. D0
        pop     ebp                                     ; 41EB _ 5D
        ret                                             ; 41EC _ C3
; _fifo8_status End of function

        nop                                             ; 41ED _ 90
        nop                                             ; 41EE _ 90
        nop                                             ; 41EF _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 41F0 _ 55
        mov     ebp, esp                                ; 41F1 _ 89. E5
        sub     esp, 40                                 ; 41F3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 41F6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 41FE _ C7. 04 24, 00000043
        call    _io_out8                                ; 4205 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 420A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4212 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4219 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 421E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4226 _ C7. 04 24, 00000040
        call    _io_out8                                ; 422D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4232 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 423C _ C7. 45, F4, 00000000
        jmp     ?_232                                   ; 4243 _ EB, 26

?_231:  mov     eax, dword [ebp-0CH]                    ; 4245 _ 8B. 45, F4
        shl     eax, 4                                  ; 4248 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 424B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4250 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4256 _ 8B. 45, F4
        shl     eax, 4                                  ; 4259 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 425C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4261 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4267 _ 83. 45, F4, 01
?_232:  cmp     dword [ebp-0CH], 499                    ; 426B _ 81. 7D, F4, 000001F3
        jle     ?_231                                   ; 4272 _ 7E, D1
        nop                                             ; 4274 _ 90
        leave                                           ; 4275 _ C9
        ret                                             ; 4276 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4277 _ 55
        mov     ebp, esp                                ; 4278 _ 89. E5
        sub     esp, 16                                 ; 427A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 427D _ C7. 45, FC, 00000000
        jmp     ?_235                                   ; 4284 _ EB, 36

?_233:  mov     eax, dword [ebp-4H]                     ; 4286 _ 8B. 45, FC
        shl     eax, 4                                  ; 4289 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 428C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4291 _ 8B. 00
        test    eax, eax                                ; 4293 _ 85. C0
        jnz     ?_234                                   ; 4295 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 4297 _ 8B. 45, FC
        shl     eax, 4                                  ; 429A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 429D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 42A2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 42A8 _ 8B. 45, FC
        shl     eax, 4                                  ; 42AB _ C1. E0, 04
        add     eax, _timerctl                               ; 42AE _ 05, 00000000(d)
        add     eax, 4                                  ; 42B3 _ 83. C0, 04
        jmp     ?_236                                   ; 42B6 _ EB, 12

?_234:  add     dword [ebp-4H], 1                       ; 42B8 _ 83. 45, FC, 01
?_235:  cmp     dword [ebp-4H], 499                     ; 42BC _ 81. 7D, FC, 000001F3
        jle     ?_233                                   ; 42C3 _ 7E, C1
        mov     eax, 0                                  ; 42C5 _ B8, 00000000
?_236:  leave                                           ; 42CA _ C9
        ret                                             ; 42CB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 42CC _ 55
        mov     ebp, esp                                ; 42CD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 42CF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 42D2 _ C7. 40, 04, 00000000
        nop                                             ; 42D9 _ 90
        pop     ebp                                     ; 42DA _ 5D
        ret                                             ; 42DB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 42DC _ 55
        mov     ebp, esp                                ; 42DD _ 89. E5
        sub     esp, 4                                  ; 42DF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 42E2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 42E5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 42E8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42EB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 42EE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 42F1 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 42F4 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 42F8 _ 88. 42, 0C
        nop                                             ; 42FB _ 90
        leave                                           ; 42FC _ C9
        ret                                             ; 42FD _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 42FE _ 55
        mov     ebp, esp                                ; 42FF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4301 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4304 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4307 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4309 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 430C _ C7. 40, 04, 00000002
        nop                                             ; 4313 _ 90
        pop     ebp                                     ; 4314 _ 5D
        ret                                             ; 4315 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4316 _ 55
        mov     ebp, esp                                ; 4317 _ 89. E5
        sub     esp, 40                                 ; 4319 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 431C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4324 _ C7. 04 24, 00000020
        call    _io_out8                                ; 432B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4330 _ A1, 00000000(d)
        add     eax, 1                                  ; 4335 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4338 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 433D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4341 _ C7. 45, F4, 00000000
        jmp     ?_240                                   ; 4348 _ E9, 000000AA

?_237:  mov     eax, dword [ebp-0CH]                    ; 434D _ 8B. 45, F4
        shl     eax, 4                                  ; 4350 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4353 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4358 _ 8B. 00
        cmp     eax, 2                                  ; 435A _ 83. F8, 02
        jne     ?_238                                   ; 435D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4363 _ 8B. 45, F4
        shl     eax, 4                                  ; 4366 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4369 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 436E _ 8B. 00
        lea     edx, [eax-1H]                           ; 4370 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4373 _ 8B. 45, F4
        shl     eax, 4                                  ; 4376 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4379 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 437E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4380 _ 8B. 45, F4
        shl     eax, 4                                  ; 4383 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4386 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 438B _ 8B. 00
        test    eax, eax                                ; 438D _ 85. C0
        jnz     ?_238                                   ; 438F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 4391 _ 8B. 45, F4
        shl     eax, 4                                  ; 4394 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4397 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 439C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 43A2 _ 8B. 45, F4
        shl     eax, 4                                  ; 43A5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 43A8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 43AD _ 0F B6. 00
        movzx   eax, al                                 ; 43B0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 43B3 _ 8B. 55, F4
        shl     edx, 4                                  ; 43B6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 43B9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 43BF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 43C1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 43C5 _ 89. 14 24
        call    _fifo8_put                              ; 43C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 43CD _ 8B. 45, F4
        shl     eax, 4                                  ; 43D0 _ C1. E0, 04
        add     eax, _timerctl                               ; 43D3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 43D8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 43DB _ A1, 00000000(d)
        cmp     edx, eax                                ; 43E0 _ 39. C2
        jnz     ?_238                                   ; 43E2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 43E4 _ C6. 45, F3, 01
?_238:  cmp     byte [ebp-0DH], 0                       ; 43E8 _ 80. 7D, F3, 00
        jz      ?_239                                   ; 43EC _ 74, 05
        call    _task_switch                            ; 43EE _ E8, 00000000(rel)
?_239:  add     dword [ebp-0CH], 1                      ; 43F3 _ 83. 45, F4, 01
?_240:  cmp     dword [ebp-0CH], 499                    ; 43F7 _ 81. 7D, F4, 000001F3
        jle     ?_237                                   ; 43FE _ 0F 8E, FFFFFF49
        nop                                             ; 4404 _ 90
        leave                                           ; 4405 _ C9
        ret                                             ; 4406 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4407 _ B8, 00000000(d)
        ret                                             ; 440C _ C3
; _getTimerController End of function

        nop                                             ; 440D _ 90
        nop                                             ; 440E _ 90
        nop                                             ; 440F _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 4410 _ 55
        mov     ebp, esp                                ; 4411 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4413 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_241                                   ; 441A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 441C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4423 _ 8B. 45, 0C
        shr     eax, 12                                 ; 4426 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4429 _ 89. 45, 0C
?_241:  mov     eax, dword [ebp+0CH]                    ; 442C _ 8B. 45, 0C
        mov     edx, eax                                ; 442F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4431 _ 8B. 45, 08
        mov     word [eax], dx                          ; 4434 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4437 _ 8B. 45, 10
        mov     edx, eax                                ; 443A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 443C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 443F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4443 _ 8B. 45, 10
        sar     eax, 16                                 ; 4446 _ C1. F8, 10
        mov     edx, eax                                ; 4449 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 444B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 444E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4451 _ 8B. 45, 14
        mov     edx, eax                                ; 4454 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4456 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4459 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 445C _ 8B. 45, 0C
        shr     eax, 16                                 ; 445F _ C1. E8, 10
        and     eax, 0FH                                ; 4462 _ 83. E0, 0F
        mov     edx, eax                                ; 4465 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4467 _ 8B. 45, 14
        sar     eax, 8                                  ; 446A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 446D _ 83. E0, F0
        or      eax, edx                                ; 4470 _ 09. D0
        mov     edx, eax                                ; 4472 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4474 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4477 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 447A _ 8B. 45, 10
        shr     eax, 24                                 ; 447D _ C1. E8, 18
        mov     edx, eax                                ; 4480 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4482 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4485 _ 88. 50, 07
        nop                                             ; 4488 _ 90
        pop     ebp                                     ; 4489 _ 5D
        ret                                             ; 448A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 448B _ 55
        mov     ebp, esp                                ; 448C _ 89. E5
        sub     esp, 16                                 ; 448E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4491 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4497 _ 8B. 55, 08
        mov     eax, edx                                ; 449A _ 89. D0
        shl     eax, 2                                  ; 449C _ C1. E0, 02
        add     eax, edx                                ; 449F _ 01. D0
        shl     eax, 2                                  ; 44A1 _ C1. E0, 02
        add     eax, ecx                                ; 44A4 _ 01. C8
        add     eax, 8                                  ; 44A6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 44A9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 44AF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 44B5 _ 8B. 55, 08
        mov     eax, edx                                ; 44B8 _ 89. D0
        shl     eax, 2                                  ; 44BA _ C1. E0, 02
        add     eax, edx                                ; 44BD _ 01. D0
        shl     eax, 2                                  ; 44BF _ C1. E0, 02
        add     eax, ecx                                ; 44C2 _ 01. C8
        add     eax, 12                                 ; 44C4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 44C7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 44CD _ C7. 45, FC, 00000000
        jmp     ?_243                                   ; 44D4 _ EB, 21

?_242:  mov     ecx, dword [_taskctl]                   ; 44D6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 44DC _ 8B. 55, FC
        mov     eax, edx                                ; 44DF _ 89. D0
        add     eax, eax                                ; 44E1 _ 01. C0
        add     eax, edx                                ; 44E3 _ 01. D0
        shl     eax, 3                                  ; 44E5 _ C1. E0, 03
        add     eax, ecx                                ; 44E8 _ 01. C8
        add     eax, 16                                 ; 44EA _ 83. C0, 10
        mov     dword [eax], 0                          ; 44ED _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 44F3 _ 83. 45, FC, 01
?_243:  cmp     dword [ebp-4H], 2                       ; 44F7 _ 83. 7D, FC, 02
        jle     ?_242                                   ; 44FB _ 7E, D9
        nop                                             ; 44FD _ 90
        leave                                           ; 44FE _ C9
        ret                                             ; 44FF _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4500 _ 55
        mov     ebp, esp                                ; 4501 _ 89. E5
        sub     esp, 40                                 ; 4503 _ 83. EC, 28
        call    _get_addr_gdt                           ; 4506 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 450B _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 450E _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 4516 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4519 _ 89. 04 24
        call    _memman_alloc_4k                        ; 451C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4521 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4526 _ C7. 45, F4, 00000000
        jmp     ?_245                                   ; 452D _ E9, 00000088

?_244:  mov     edx, dword [_taskctl]                   ; 4532 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4538 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 453B _ 69. C0, 00000094
        add     eax, edx                                ; 4541 _ 01. D0
        add     eax, 72                                 ; 4543 _ 83. C0, 48
        mov     dword [eax], 0                          ; 4546 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 454C _ 8B. 45, F4
        add     eax, 7                                  ; 454F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4552 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4558 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 455F _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4562 _ 69. C0, 00000094
        add     eax, ecx                                ; 4568 _ 01. C8
        add     eax, 68                                 ; 456A _ 83. C0, 44
        mov     dword [eax], edx                        ; 456D _ 89. 10
        mov     edx, dword [_taskctl]                   ; 456F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4575 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4578 _ 69. C0, 00000094
        add     eax, 96                                 ; 457E _ 83. C0, 60
        add     eax, edx                                ; 4581 _ 01. D0
        add     eax, 16                                 ; 4583 _ 83. C0, 10
        mov     ecx, eax                                ; 4586 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4588 _ 8B. 45, F4
        add     eax, 7                                  ; 458B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 458E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 4595 _ 8B. 45, F0
        add     eax, edx                                ; 4598 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 459A _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 45A2 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 45A6 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 45AE _ 89. 04 24
        call    _set_segmdesc                           ; 45B1 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 45B6 _ 83. 45, F4, 01
?_245:  cmp     dword [ebp-0CH], 4                      ; 45BA _ 83. 7D, F4, 04
        jle     ?_244                                   ; 45BE _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 45C4 _ C7. 45, F4, 00000000
        jmp     ?_247                                   ; 45CB _ EB, 0F

?_246:  mov     eax, dword [ebp-0CH]                    ; 45CD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 45D0 _ 89. 04 24
        call    _init_task_level                        ; 45D3 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 45D8 _ 83. 45, F4, 01
?_247:  cmp     dword [ebp-0CH], 2                      ; 45DC _ 83. 7D, F4, 02
        jle     ?_246                                   ; 45E0 _ 7E, EB
        call    _task_alloc                             ; 45E2 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 45E7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 45EA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 45ED _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 45F4 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 45F7 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 45FE _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4601 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4608 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 460B _ 89. 04 24
        call    _task_add                               ; 460E _ E8, 0000003A
        call    _task_switchsub                         ; 4613 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 4618 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 461B _ 8B. 00
        mov     dword [esp], eax                        ; 461D _ 89. 04 24
        call    _load_tr                                ; 4620 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4625 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 462A _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 462F _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4632 _ 8B. 40, 08
        mov     edx, eax                                ; 4635 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4637 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 463C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4640 _ 89. 04 24
        call    _timer_settime                          ; 4643 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4648 _ 8B. 45, EC
        leave                                           ; 464B _ C9
        ret                                             ; 464C _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 464D _ 55
        mov     ebp, esp                                ; 464E _ 89. E5
        sub     esp, 16                                 ; 4650 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4653 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4659 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 465C _ 8B. 50, 0C
        mov     eax, edx                                ; 465F _ 89. D0
        shl     eax, 2                                  ; 4661 _ C1. E0, 02
        add     eax, edx                                ; 4664 _ 01. D0
        shl     eax, 2                                  ; 4666 _ C1. E0, 02
        add     eax, ecx                                ; 4669 _ 01. C8
        add     eax, 8                                  ; 466B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 466E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4671 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4674 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4676 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4679 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 467C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4680 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4683 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4685 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4688 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 468B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 468D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4690 _ C7. 40, 04, 00000002
        nop                                             ; 4697 _ 90
        leave                                           ; 4698 _ C9
        ret                                             ; 4699 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 469A _ 55
        mov     ebp, esp                                ; 469B _ 89. E5
        sub     esp, 16                                 ; 469D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 46A0 _ C7. 45, FC, 00000000
        jmp     ?_250                                   ; 46A7 _ E9, 000000F7

?_248:  mov     edx, dword [_taskctl]                   ; 46AC _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 46B2 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 46B5 _ 69. C0, 00000094
        add     eax, edx                                ; 46BB _ 01. D0
        add     eax, 72                                 ; 46BD _ 83. C0, 48
        mov     eax, dword [eax]                        ; 46C0 _ 8B. 00
        test    eax, eax                                ; 46C2 _ 85. C0
        jne     ?_249                                   ; 46C4 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 46CA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 46D0 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 46D3 _ 69. C0, 00000094
        add     eax, 64                                 ; 46D9 _ 83. C0, 40
        add     eax, edx                                ; 46DC _ 01. D0
        add     eax, 4                                  ; 46DE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 46E1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 46E4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 46E7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 46EE _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 46F1 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 46F8 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 46FB _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4702 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4705 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 470C _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 470F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4716 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4719 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4720 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4723 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 472A _ 8B. 45, FC
        add     eax, 1                                  ; 472D _ 83. C0, 01
        shl     eax, 9                                  ; 4730 _ C1. E0, 09
        mov     edx, eax                                ; 4733 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4735 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4738 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 473B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 473E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4745 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4748 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 474F _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4752 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4759 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 475C _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4766 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4769 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4773 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4776 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4780 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4783 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 478D _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4790 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 479A _ 8B. 45, F8
        jmp     ?_251                                   ; 479D _ EB, 13

?_249:  add     dword [ebp-4H], 1                       ; 479F _ 83. 45, FC, 01
?_250:  cmp     dword [ebp-4H], 4                       ; 47A3 _ 83. 7D, FC, 04
        jle     ?_248                                   ; 47A7 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 47AD _ B8, 00000000
?_251:  leave                                           ; 47B2 _ C9
        ret                                             ; 47B3 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 47B4 _ 55
        mov     ebp, esp                                ; 47B5 _ 89. E5
        sub     esp, 24                                 ; 47B7 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 47BA _ 83. 7D, 0C, 00
        jns     ?_252                                   ; 47BE _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 47C0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 47C3 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 47C6 _ 89. 45, 0C
?_252:  cmp     dword [ebp+10H], 0                      ; 47C9 _ 83. 7D, 10, 00
        jle     ?_253                                   ; 47CD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 47CF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 47D2 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 47D5 _ 89. 50, 08
?_253:  mov     eax, dword [ebp+8H]                     ; 47D8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 47DB _ 8B. 40, 04
        cmp     eax, 2                                  ; 47DE _ 83. F8, 02
        jnz     ?_254                                   ; 47E1 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 47E3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 47E6 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 47E9 _ 39. 45, 0C
        jz      ?_254                                   ; 47EC _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 47EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 47F1 _ 89. 04 24
        call    _task_remove                            ; 47F4 _ E8, 0000002E
?_254:  mov     eax, dword [ebp+8H]                     ; 47F9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 47FC _ 8B. 40, 04
        cmp     eax, 2                                  ; 47FF _ 83. F8, 02
        jz      ?_255                                   ; 4802 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4804 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4807 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 480A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 480D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4810 _ 89. 04 24
        call    _task_add                               ; 4813 _ E8, FFFFFE35
?_255:  mov     eax, dword [_taskctl]                   ; 4818 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 481D _ C7. 40, 04, 00000001
        nop                                             ; 4824 _ 90
        leave                                           ; 4825 _ C9
        ret                                             ; 4826 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4827 _ 55
        mov     ebp, esp                                ; 4828 _ 89. E5
        sub     esp, 16                                 ; 482A _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 482D _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4833 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4836 _ 8B. 50, 0C
        mov     eax, edx                                ; 4839 _ 89. D0
        shl     eax, 2                                  ; 483B _ C1. E0, 02
        add     eax, edx                                ; 483E _ 01. D0
        shl     eax, 2                                  ; 4840 _ C1. E0, 02
        add     eax, ecx                                ; 4843 _ 01. C8
        add     eax, 8                                  ; 4845 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4848 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 484B _ C7. 45, FC, 00000000
        jmp     ?_258                                   ; 4852 _ EB, 23

?_256:  mov     eax, dword [ebp-8H]                     ; 4854 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4857 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 485A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 485E _ 39. 45, 08
        jnz     ?_257                                   ; 4861 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4863 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4866 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4869 _ C7. 44 90, 08, 00000000
        jmp     ?_259                                   ; 4871 _ EB, 0E

?_257:  add     dword [ebp-4H], 1                       ; 4873 _ 83. 45, FC, 01
?_258:  mov     eax, dword [ebp-8H]                     ; 4877 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 487A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 487C _ 39. 45, FC
        jl      ?_256                                   ; 487F _ 7C, D3
?_259:  mov     eax, dword [ebp-8H]                     ; 4881 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4884 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4886 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4889 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 488C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 488E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4891 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4894 _ 39. 45, FC
        jge     ?_260                                   ; 4897 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4899 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 489C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 489F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 48A2 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 48A5 _ 89. 50, 04
?_260:  mov     eax, dword [ebp-8H]                     ; 48A8 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 48AB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 48AE _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 48B1 _ 8B. 00
        cmp     edx, eax                                ; 48B3 _ 39. C2
        jl      ?_261                                   ; 48B5 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 48B7 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 48BA _ C7. 40, 04, 00000000
?_261:  mov     eax, dword [ebp+8H]                     ; 48C1 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 48C4 _ C7. 40, 04, 00000001
        jmp     ?_263                                   ; 48CB _ EB, 1B

?_262:  mov     eax, dword [ebp-4H]                     ; 48CD _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 48D0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 48D3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 48D6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 48DA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 48DD _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 48E0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 48E4 _ 83. 45, FC, 01
?_263:  mov     eax, dword [ebp-8H]                     ; 48E8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 48EB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 48ED _ 39. 45, FC
        jl      ?_262                                   ; 48F0 _ 7C, DB
        nop                                             ; 48F2 _ 90
        leave                                           ; 48F3 _ C9
        ret                                             ; 48F4 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 48F5 _ 55
        mov     ebp, esp                                ; 48F6 _ 89. E5
        sub     esp, 40                                 ; 48F8 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 48FB _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4901 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4906 _ 8B. 10
        mov     eax, edx                                ; 4908 _ 89. D0
        shl     eax, 2                                  ; 490A _ C1. E0, 02
        add     eax, edx                                ; 490D _ 01. D0
        shl     eax, 2                                  ; 490F _ C1. E0, 02
        add     eax, ecx                                ; 4912 _ 01. C8
        add     eax, 8                                  ; 4914 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4917 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 491A _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 491D _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4920 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4923 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4927 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 492A _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 492D _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4930 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4933 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4936 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4939 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 493C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 493F _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4942 _ 8B. 00
        cmp     edx, eax                                ; 4944 _ 39. C2
        jnz     ?_264                                   ; 4946 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4948 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 494B _ C7. 40, 04, 00000000
?_264:  mov     eax, dword [_taskctl]                   ; 4952 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4957 _ 8B. 40, 04
        test    eax, eax                                ; 495A _ 85. C0
        jz      ?_265                                   ; 495C _ 74, 24
        call    _task_switchsub                         ; 495E _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4963 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4969 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 496E _ 8B. 10
        mov     eax, edx                                ; 4970 _ 89. D0
        shl     eax, 2                                  ; 4972 _ C1. E0, 02
        add     eax, edx                                ; 4975 _ 01. D0
        shl     eax, 2                                  ; 4977 _ C1. E0, 02
        add     eax, ecx                                ; 497A _ 01. C8
        add     eax, 8                                  ; 497C _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 497F _ 89. 45, F4
?_265:  mov     eax, dword [ebp-0CH]                    ; 4982 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4985 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4988 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 498B _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 498F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4992 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4995 _ 8B. 40, 08
        mov     edx, eax                                ; 4998 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 499A _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 499F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 49A3 _ 89. 04 24
        call    _timer_settime                          ; 49A6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 49AB _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 49AE _ 3B. 45, F0
        jz      ?_266                                   ; 49B1 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 49B3 _ 83. 7D, EC, 00
        jz      ?_266                                   ; 49B7 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 49B9 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 49BC _ 8B. 00
        mov     dword [esp+4H], eax                     ; 49BE _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 49C2 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 49C9 _ E8, 00000000(rel)
        nop                                             ; 49CE _ 90
?_266:  nop                                             ; 49CF _ 90
        leave                                           ; 49D0 _ C9
        ret                                             ; 49D1 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 49D2 _ 55
        mov     ebp, esp                                ; 49D3 _ 89. E5
        sub     esp, 40                                 ; 49D5 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 49D8 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 49DF _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 49E6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 49E9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 49EC _ 83. F8, 02
        jnz     ?_267                                   ; 49EF _ 75, 51
        call    _task_now                               ; 49F1 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 49F6 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 49F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49FC _ 89. 04 24
        call    _task_remove                            ; 49FF _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4A04 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4A0B _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4A0E _ 3B. 45, F0
        jnz     ?_267                                   ; 4A11 _ 75, 2F
        call    _task_switchsub                         ; 4A13 _ E8, 0000002F
        call    _task_now                               ; 4A18 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4A1D _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4A20 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4A27 _ 83. 7D, F0, 00
        jz      ?_267                                   ; 4A2B _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4A2D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4A30 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4A32 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4A36 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4A3D _ E8, 00000000(rel)
?_267:  mov     eax, dword [ebp-0CH]                    ; 4A42 _ 8B. 45, F4
        leave                                           ; 4A45 _ C9
        ret                                             ; 4A46 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4A47 _ 55
        mov     ebp, esp                                ; 4A48 _ 89. E5
        sub     esp, 16                                 ; 4A4A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4A4D _ C7. 45, FC, 00000000
        jmp     ?_269                                   ; 4A54 _ EB, 22

?_268:  mov     ecx, dword [_taskctl]                   ; 4A56 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4A5C _ 8B. 55, FC
        mov     eax, edx                                ; 4A5F _ 89. D0
        shl     eax, 2                                  ; 4A61 _ C1. E0, 02
        add     eax, edx                                ; 4A64 _ 01. D0
        shl     eax, 2                                  ; 4A66 _ C1. E0, 02
        add     eax, ecx                                ; 4A69 _ 01. C8
        add     eax, 8                                  ; 4A6B _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4A6E _ 8B. 00
        test    eax, eax                                ; 4A70 _ 85. C0
        jg      ?_270                                   ; 4A72 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4A74 _ 83. 45, FC, 01
?_269:  cmp     dword [ebp-4H], 2                       ; 4A78 _ 83. 7D, FC, 02
        jle     ?_268                                   ; 4A7C _ 7E, D8
        jmp     ?_271                                   ; 4A7E _ EB, 01

?_270:  nop                                             ; 4A80 _ 90
?_271:  mov     eax, dword [_taskctl]                   ; 4A81 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4A86 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4A89 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4A8B _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4A90 _ C7. 40, 04, 00000000
        nop                                             ; 4A97 _ 90
        leave                                           ; 4A98 _ C9
        ret                                             ; 4A99 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4A9A _ 55
        mov     ebp, esp                                ; 4A9B _ 89. E5
        sub     esp, 16                                 ; 4A9D _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4AA0 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4AA6 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4AAB _ 8B. 10
        mov     eax, edx                                ; 4AAD _ 89. D0
        shl     eax, 2                                  ; 4AAF _ C1. E0, 02
        add     eax, edx                                ; 4AB2 _ 01. D0
        shl     eax, 2                                  ; 4AB4 _ C1. E0, 02
        add     eax, ecx                                ; 4AB7 _ 01. C8
        add     eax, 8                                  ; 4AB9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4ABC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4ABF _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4AC2 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4AC5 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4AC8 _ 8B. 44 90, 08
        leave                                           ; 4ACC _ C9
        ret                                             ; 4ACD _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4ACE _ 55
        mov     ebp, esp                                ; 4ACF _ 89. E5
        sub     esp, 24                                 ; 4AD1 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4AD4 _ 8B. 45, 10
        movzx   eax, al                                 ; 4AD7 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4ADA _ 8B. 55, 0C
        add     edx, 16                                 ; 4ADD _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4AE0 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4AE4 _ 89. 14 24
        call    _fifo8_put                              ; 4AE7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4AEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4AEF _ 89. 04 24
        call    _task_sleep                             ; 4AF2 _ E8, FFFFFEDB
        nop                                             ; 4AF7 _ 90
        leave                                           ; 4AF8 _ C9
        ret                                             ; 4AF9 _ C3
; _send_message End of function

        nop                                             ; 4AFA _ 90
        nop                                             ; 4AFB _ 90

.text:  ; Local function

_strcmp:
        push    ebp                                     ; 4AFC _ 55
        mov     ebp, esp                                ; 4AFD _ 89. E5
        sub     esp, 16                                 ; 4AFF _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4B02 _ 83. 7D, 08, 00
        jz      ?_272                                   ; 4B06 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4B08 _ 83. 7D, 0C, 00
        jnz     ?_273                                   ; 4B0C _ 75, 0A
?_272:  mov     eax, 0                                  ; 4B0E _ B8, 00000000
        jmp     ?_280                                   ; 4B13 _ E9, 0000009B

?_273:  mov     dword [ebp-4H], 0                       ; 4B18 _ C7. 45, FC, 00000000
        jmp     ?_276                                   ; 4B1F _ EB, 25

?_274:  mov     edx, dword [ebp-4H]                     ; 4B21 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B24 _ 8B. 45, 08
        add     eax, edx                                ; 4B27 _ 01. D0
        movzx   edx, byte [eax]                         ; 4B29 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4B2C _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4B2F _ 8B. 45, 0C
        add     eax, ecx                                ; 4B32 _ 01. C8
        movzx   eax, byte [eax]                         ; 4B34 _ 0F B6. 00
        cmp     dl, al                                  ; 4B37 _ 38. C2
        jz      ?_275                                   ; 4B39 _ 74, 07
        mov     eax, 0                                  ; 4B3B _ B8, 00000000
        jmp     ?_280                                   ; 4B40 _ EB, 71

?_275:  add     dword [ebp-4H], 1                       ; 4B42 _ 83. 45, FC, 01
?_276:  mov     edx, dword [ebp-4H]                     ; 4B46 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B49 _ 8B. 45, 08
        add     eax, edx                                ; 4B4C _ 01. D0
        movzx   eax, byte [eax]                         ; 4B4E _ 0F B6. 00
        test    al, al                                  ; 4B51 _ 84. C0
        jz      ?_277                                   ; 4B53 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4B55 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4B58 _ 8B. 45, 0C
        add     eax, edx                                ; 4B5B _ 01. D0
        movzx   eax, byte [eax]                         ; 4B5D _ 0F B6. 00
        test    al, al                                  ; 4B60 _ 84. C0
        jnz     ?_274                                   ; 4B62 _ 75, BD
?_277:  mov     edx, dword [ebp-4H]                     ; 4B64 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B67 _ 8B. 45, 08
        add     eax, edx                                ; 4B6A _ 01. D0
        movzx   eax, byte [eax]                         ; 4B6C _ 0F B6. 00
        test    al, al                                  ; 4B6F _ 84. C0
        jnz     ?_278                                   ; 4B71 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4B73 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4B76 _ 8B. 45, 0C
        add     eax, edx                                ; 4B79 _ 01. D0
        movzx   eax, byte [eax]                         ; 4B7B _ 0F B6. 00
        test    al, al                                  ; 4B7E _ 84. C0
        jz      ?_278                                   ; 4B80 _ 74, 07
        mov     eax, 0                                  ; 4B82 _ B8, 00000000
        jmp     ?_280                                   ; 4B87 _ EB, 2A

?_278:  mov     edx, dword [ebp-4H]                     ; 4B89 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4B8C _ 8B. 45, 08
        add     eax, edx                                ; 4B8F _ 01. D0
        movzx   eax, byte [eax]                         ; 4B91 _ 0F B6. 00
        test    al, al                                  ; 4B94 _ 84. C0
        jz      ?_279                                   ; 4B96 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4B98 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4B9B _ 8B. 45, 0C
        add     eax, edx                                ; 4B9E _ 01. D0
        movzx   eax, byte [eax]                         ; 4BA0 _ 0F B6. 00
        test    al, al                                  ; 4BA3 _ 84. C0
        jz      ?_279                                   ; 4BA5 _ 74, 07
        mov     eax, 0                                  ; 4BA7 _ B8, 00000000
        jmp     ?_280                                   ; 4BAC _ EB, 05

?_279:  mov     eax, 1                                  ; 4BAE _ B8, 00000001
?_280:  leave                                           ; 4BB3 _ C9
        ret                                             ; 4BB4 _ C3

        nop                                             ; 4BB5 _ 90
        nop                                             ; 4BB6 _ 90
        nop                                             ; 4BB7 _ 90



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

?_281:  db 00H                                          ; 0102 _ .

?_282:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
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



?_283:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_284:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_285:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_286:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0017 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 001F _ sk b.

?_287:                                                  ; byte
        db 42H, 00H                                     ; 0024 _ B.

?_288:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0026 _ page is:
        db 20H, 00H                                     ; 002E _  .

?_289:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0030 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0038 _ L: .

?_290:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0044 _ H: .

?_291:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0048 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0050 _ w: .

?_292:                                                  ; byte
        db 3EH, 00H                                     ; 0054 _ >.

?_293:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0056 _ mem.

?_294:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 005A _ free .

?_295:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 0060 _  KB.

?_296:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0064 _ cls.

?_297:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0068 _ dir.

?_298:                                                  ; byte
        db 20H, 00H, 00H, 00H                           ; 006C _  ...



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

?_299:  resw    1                                       ; 000C

?_300:  resw    1                                       ; 000E

_keyinfo:                                               ; byte
        resb    24                                      ; 0010

?_301:  resd    1                                       ; 0028

_mouseinfo:                                             ; byte
        resb    52                                      ; 002C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_302:  resd    1                                       ; 010C

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

?_303:  resb    9                                       ; 0369

?_304:  resb    2                                       ; 0372

_task_b.2567:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


