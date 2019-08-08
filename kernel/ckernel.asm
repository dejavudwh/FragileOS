; Disassembly of file: ckernel.o
; Thu Aug  8 16:59:38 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 112                                ; 0005 _ 83. EC, 70
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 0000000C(d)
        call    _initBootInfo                           ; 000F _ E8, 000011F9
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 0000000C(d)
        mov     dword [ebp-1CH], eax                    ; 0019 _ 89. 45, E4
        movzx   eax, word [?_176]                       ; 001C _ 0F B7. 05, 00000010(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000013C(d)
        movzx   eax, word [?_177]                       ; 0029 _ 0F B7. 05, 00000012(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 00000140(d)
        call    _init_pit                               ; 0036 _ E8, 00000000(rel)
        mov     dword [esp+8H], _timerbuf               ; 003B _ C7. 44 24, 08, 00000128(d)
        mov     dword [esp+4H], 8                       ; 0043 _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 004B _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 0052 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0057 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 005C _ 89. 45, E0
        mov     dword [esp+8H], 10                      ; 005F _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0067 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-20H]                    ; 006F _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0072 _ 89. 04 24
        call    _timer_init                             ; 0075 _ E8, 00000000(rel)
        mov     dword [esp+4H], 500                     ; 007A _ C7. 44 24, 04, 000001F4
        mov     eax, dword [ebp-20H]                    ; 0082 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0085 _ 89. 04 24
        call    _timer_settime                          ; 0088 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 008D _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0092 _ 89. 45, DC
        mov     dword [esp+8H], 2                       ; 0095 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 009D _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 00A5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00A8 _ 89. 04 24
        call    _timer_init                             ; 00AB _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00B0 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-24H]                    ; 00B8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00BB _ 89. 04 24
        call    _timer_settime                          ; 00BE _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00C3 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 00C8 _ 89. 45, D8
        mov     dword [esp+8H], 1                       ; 00CB _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00D3 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 00DB _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00DE _ 89. 04 24
        call    _timer_init                             ; 00E1 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00E6 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 00EE _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00F1 _ 89. 04 24
        call    _timer_settime                          ; 00F4 _ E8, 00000000(rel)
        mov     dword [esp+8H], _keybuf                 ; 00F9 _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0101 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0109 _ C7. 04 24, 00000014(d)
        call    _fifo8_init                             ; 0110 _ E8, 00000000(rel)
        mov     dword [esp+8H], _mousebuf               ; 0115 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 011D _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0125 _ C7. 04 24, 0000002C(d)
        call    _fifo8_init                             ; 012C _ E8, 00000000(rel)
        call    _init_palette                           ; 0131 _ E8, 0000119A
        call    _init_keyboard                          ; 0136 _ E8, 00001703
        call    _get_memory_block_count                 ; 013B _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 0140 _ 89. 45, D4
        call    _get_addr_buffer                        ; 0143 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 0148 _ 89. 45, D0
        mov     eax, dword [_memman]                    ; 014B _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0150 _ 89. 04 24
        call    _memman_init                            ; 0153 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0158 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 015D _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0165 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 016D _ 89. 04 24
        call    _memman_free                            ; 0170 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0175 _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 017B _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 0181 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 0186 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 018A _ 89. 54 24, 08
        mov     edx, dword [ebp-1CH]                    ; 018E _ 8B. 55, E4
        mov     dword [esp+4H], edx                     ; 0191 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0195 _ 89. 04 24
        call    _shtctl_init                            ; 0198 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 019D _ A3, 00000000(d)
        mov     eax, dword [_shtctl]                    ; 01A2 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01A7 _ 89. 04 24
        call    _sheet_alloc                            ; 01AA _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01AF _ A3, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 01B4 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01B9 _ 89. 04 24
        call    _sheet_alloc                            ; 01BC _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01C1 _ A3, 00000008(d)
        mov     edx, dword [_xsize]                     ; 01C6 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_ysize]                     ; 01CC _ A1, 00000140(d)
        imul    eax, edx                                ; 01D1 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01D4 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01DA _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01DE _ 89. 14 24
        call    _memman_alloc_4k                        ; 01E1 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01E6 _ A3, 00000144(d)
        mov     ebx, dword [_ysize]                     ; 01EB _ 8B. 1D, 00000140(d)
        mov     ecx, dword [_xsize]                     ; 01F1 _ 8B. 0D, 0000013C(d)
        mov     edx, dword [_buf_back]                  ; 01F7 _ 8B. 15, 00000144(d)
        mov     eax, dword [_sht_back]                  ; 01FD _ A1, 00000004(d)
        mov     dword [esp+10H], 99                     ; 0202 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 020A _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 020E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0212 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0216 _ 89. 04 24
        call    _sheet_setbuf                           ; 0219 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 021E _ A1, 00000008(d)
        mov     dword [esp+10H], 99                     ; 0223 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 022B _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0233 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 023B _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 0243 _ 89. 04 24
        call    _sheet_setbuf                           ; 0246 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 024B _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0251 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_buf_back]                  ; 0257 _ A1, 00000144(d)
        mov     dword [esp+8H], ecx                     ; 025C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0260 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0264 _ 89. 04 24
        call    _init_screen8                           ; 0267 _ E8, 00000AD9
        mov     dword [esp+4H], 99                      ; 026C _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 0274 _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 027B _ E8, 000012EC
        mov     edx, dword [_sht_back]                  ; 0280 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0286 _ A1, 00000000(d)
        mov     dword [esp+0CH], 0                      ; 028B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0293 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 029B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 029F _ 89. 04 24
        call    _sheet_slide                            ; 02A2 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02A7 _ A1, 0000013C(d)
        sub     eax, 16                                 ; 02AC _ 83. E8, 10
        mov     edx, eax                                ; 02AF _ 89. C2
        shr     edx, 31                                 ; 02B1 _ C1. EA, 1F
        add     eax, edx                                ; 02B4 _ 01. D0
        sar     eax, 1                                  ; 02B6 _ D1. F8
        mov     dword [_mx], eax                        ; 02B8 _ A3, 00000134(d)
        mov     eax, dword [_ysize]                     ; 02BD _ A1, 00000140(d)
        sub     eax, 44                                 ; 02C2 _ 83. E8, 2C
        mov     edx, eax                                ; 02C5 _ 89. C2
        shr     edx, 31                                 ; 02C7 _ C1. EA, 1F
        add     eax, edx                                ; 02CA _ 01. D0
        sar     eax, 1                                  ; 02CC _ D1. F8
        mov     dword [_my], eax                        ; 02CE _ A3, 00000138(d)
        mov     ebx, dword [_my]                        ; 02D3 _ 8B. 1D, 00000138(d)
        mov     ecx, dword [_mx]                        ; 02D9 _ 8B. 0D, 00000134(d)
        mov     edx, dword [_sht_mouse]                 ; 02DF _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 02E5 _ A1, 00000000(d)
        mov     dword [esp+0CH], ebx                    ; 02EA _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 02EE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 02F2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02F6 _ 89. 04 24
        call    _sheet_slide                            ; 02F9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 02FE _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 0305 _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 030C _ A1, 00000000(d)
        mov     dword [esp+4H], ?_164                   ; 0311 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0319 _ 89. 04 24
        call    _message_box                            ; 031C _ E8, 00001A38
        mov     dword [_shtMsgBox], eax                 ; 0321 _ A3, 00000130(d)
        mov     edx, dword [_sht_back]                  ; 0326 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 032C _ A1, 00000000(d)
        mov     dword [esp+8H], 0                       ; 0331 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0339 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 033D _ 89. 04 24
        call    _sheet_updown                           ; 0340 _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 0345 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 034B _ A1, 00000000(d)
        mov     dword [esp+8H], 100                     ; 0350 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0358 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 035C _ 89. 04 24
        call    _sheet_updown                           ; 035F _ E8, 00000000(rel)
        call    _io_sti                                 ; 0364 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0369 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 0370 _ E8, 00001504
        call    _get_addr_code32                        ; 0375 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 037A _ 89. 45, CC
        call    _get_addr_gdt                           ; 037D _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0382 _ 89. 45, C8
        mov     dword [?_188], 0                        ; 0385 _ C7. 05, 000002C0(d), 00000000
        mov     dword [?_189], 1073741824               ; 038F _ C7. 05, 000002C4(d), 40000000
        mov     dword [?_206], 0                        ; 0399 _ C7. 05, 00000340(d), 00000000
        mov     dword [?_207], 1073741824               ; 03A3 _ C7. 05, 00000344(d), 40000000
        mov     edx, _tss_a.2235                        ; 03AD _ BA, 00000260(d)
        mov     eax, dword [ebp-38H]                    ; 03B2 _ 8B. 45, C8
        add     eax, 56                                 ; 03B5 _ 83. C0, 38
        mov     dword [esp+0CH], 137                    ; 03B8 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], edx                     ; 03C0 _ 89. 54 24, 08
        mov     dword [esp+4H], 103                     ; 03C4 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 03CC _ 89. 04 24
        call    _set_segmdesc                           ; 03CF _ E8, 00000000(rel)
        mov     edx, _tss_a.2235                        ; 03D4 _ BA, 00000260(d)
        mov     eax, dword [ebp-38H]                    ; 03D9 _ 8B. 45, C8
        add     eax, 64                                 ; 03DC _ 83. C0, 40
        mov     dword [esp+0CH], 137                    ; 03DF _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], edx                     ; 03E7 _ 89. 54 24, 08
        mov     dword [esp+4H], 103                     ; 03EB _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 03F3 _ 89. 04 24
        call    _set_segmdesc                           ; 03F6 _ E8, 00000000(rel)
        mov     edx, _tss_b.2236                        ; 03FB _ BA, 000002E0(d)
        mov     eax, dword [ebp-38H]                    ; 0400 _ 8B. 45, C8
        add     eax, 72                                 ; 0403 _ 83. C0, 48
        mov     dword [esp+0CH], 137                    ; 0406 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], edx                     ; 040E _ 89. 54 24, 08
        mov     dword [esp+4H], 103                     ; 0412 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 041A _ 89. 04 24
        call    _set_segmdesc                           ; 041D _ E8, 00000000(rel)
        mov     edx, _testTask                          ; 0422 _ BA, 00000C39(d)
        mov     eax, dword [ebp-38H]                    ; 0427 _ 8B. 45, C8
        add     eax, 48                                 ; 042A _ 83. C0, 30
        mov     dword [esp+0CH], 16538                  ; 042D _ C7. 44 24, 0C, 0000409A
        mov     dword [esp+8H], edx                     ; 0435 _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 0439 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 0441 _ 89. 04 24
        call    _set_segmdesc                           ; 0444 _ E8, 00000000(rel)
        mov     dword [esp], 56                         ; 0449 _ C7. 04 24, 00000038
        call    _load_tr                                ; 0450 _ E8, 00000000(rel)
        call    _taskswitch8                            ; 0455 _ E8, 00000000(rel)
        mov     eax, dword [?_180]                      ; 045A _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 045F _ 89. 04 24
        call    _intToHexStr                            ; 0462 _ E8, 00001321
        mov     dword [ebp-3CH], eax                    ; 0467 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 046A _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0470 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 0475 _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 0478 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 047C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0484 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 048C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0494 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0498 _ 89. 04 24
        call    _showString                             ; 049B _ E8, 00000D8E
        mov     eax, dword [?_181]                      ; 04A0 _ A1, 00000298(d)
        mov     dword [esp], eax                        ; 04A5 _ 89. 04 24
        call    _intToHexStr                            ; 04A8 _ E8, 000012DB
        mov     dword [ebp-3CH], eax                    ; 04AD _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 04B0 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 04B6 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 04BB _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 04BE _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 04C2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 04CA _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 04D2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 04DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04DE _ 89. 04 24
        call    _showString                             ; 04E1 _ E8, 00000D48
        mov     eax, dword [?_182]                      ; 04E6 _ A1, 000002A8(d)
        lea     edx, [eax+7H]                           ; 04EB _ 8D. 50, 07
        test    eax, eax                                ; 04EE _ 85. C0
        cmovs   eax, edx                                ; 04F0 _ 0F 48. C2
        sar     eax, 3                                  ; 04F3 _ C1. F8, 03
        mov     dword [esp], eax                        ; 04F6 _ 89. 04 24
        call    _intToHexStr                            ; 04F9 _ E8, 0000128A
        mov     dword [ebp-3CH], eax                    ; 04FE _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 0501 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0507 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 050C _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 050F _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 0513 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 051B _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 0523 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 052B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 052F _ 89. 04 24
        call    _showString                             ; 0532 _ E8, 00000CF7
        mov     eax, dword [?_183]                      ; 0537 _ A1, 000002AC(d)
        lea     edx, [eax+7H]                           ; 053C _ 8D. 50, 07
        test    eax, eax                                ; 053F _ 85. C0
        cmovs   eax, edx                                ; 0541 _ 0F 48. C2
        sar     eax, 3                                  ; 0544 _ C1. F8, 03
        mov     dword [esp], eax                        ; 0547 _ 89. 04 24
        call    _intToHexStr                            ; 054A _ E8, 00001239
        mov     dword [ebp-3CH], eax                    ; 054F _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 0552 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0558 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 055D _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 0560 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 0564 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 48                     ; 056C _ C7. 44 24, 0C, 00000030
        mov     dword [esp+8H], 0                       ; 0574 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 057C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0580 _ 89. 04 24
        call    _showString                             ; 0583 _ E8, 00000CA6
        mov     eax, dword [?_184]                      ; 0588 _ A1, 000002B0(d)
        lea     edx, [eax+7H]                           ; 058D _ 8D. 50, 07
        test    eax, eax                                ; 0590 _ 85. C0
        cmovs   eax, edx                                ; 0592 _ 0F 48. C2
        sar     eax, 3                                  ; 0595 _ C1. F8, 03
        mov     dword [esp], eax                        ; 0598 _ 89. 04 24
        call    _intToHexStr                            ; 059B _ E8, 000011E8
        mov     dword [ebp-3CH], eax                    ; 05A0 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 05A3 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 05A9 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 05AE _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 05B1 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 05B5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 64                     ; 05BD _ C7. 44 24, 0C, 00000040
        mov     dword [esp+8H], 0                       ; 05C5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 05CD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05D1 _ 89. 04 24
        call    _showString                             ; 05D4 _ E8, 00000C55
        mov     eax, dword [?_185]                      ; 05D9 _ A1, 000002B4(d)
        lea     edx, [eax+7H]                           ; 05DE _ 8D. 50, 07
        test    eax, eax                                ; 05E1 _ 85. C0
        cmovs   eax, edx                                ; 05E3 _ 0F 48. C2
        sar     eax, 3                                  ; 05E6 _ C1. F8, 03
        mov     dword [esp], eax                        ; 05E9 _ 89. 04 24
        call    _intToHexStr                            ; 05EC _ E8, 00001197
        mov     dword [ebp-3CH], eax                    ; 05F1 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 05F4 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 05FA _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 05FF _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 0602 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 0606 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 80                     ; 060E _ C7. 44 24, 0C, 00000050
        mov     dword [esp+8H], 0                       ; 0616 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 061E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0622 _ 89. 04 24
        call    _showString                             ; 0625 _ E8, 00000C04
        mov     eax, dword [?_187]                      ; 062A _ A1, 000002BC(d)
        lea     edx, [eax+7H]                           ; 062F _ 8D. 50, 07
        test    eax, eax                                ; 0632 _ 85. C0
        cmovs   eax, edx                                ; 0634 _ 0F 48. C2
        sar     eax, 3                                  ; 0637 _ C1. F8, 03
        mov     dword [esp], eax                        ; 063A _ 89. 04 24
        call    _intToHexStr                            ; 063D _ E8, 00001146
        mov     dword [ebp-3CH], eax                    ; 0642 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 0645 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 064B _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 0650 _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 0653 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 0657 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 065F _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 0667 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 066F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0673 _ 89. 04 24
        call    _showString                             ; 0676 _ E8, 00000BB3
        mov     eax, dword [?_186]                      ; 067B _ A1, 000002B8(d)
        lea     edx, [eax+7H]                           ; 0680 _ 8D. 50, 07
        test    eax, eax                                ; 0683 _ 85. C0
        cmovs   eax, edx                                ; 0685 _ 0F 48. C2
        sar     eax, 3                                  ; 0688 _ C1. F8, 03
        mov     dword [esp], eax                        ; 068B _ 89. 04 24
        call    _intToHexStr                            ; 068E _ E8, 000010F5
        mov     dword [ebp-3CH], eax                    ; 0693 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 0696 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 069C _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 06A1 _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 06A4 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 06A8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 112                    ; 06B0 _ C7. 44 24, 0C, 00000070
        mov     dword [esp+8H], 0                       ; 06B8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 06C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06C4 _ 89. 04 24
        call    _showString                             ; 06C7 _ E8, 00000B62
        mov     eax, dword [?_179]                      ; 06CC _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 06D1 _ 89. 04 24
        call    _intToHexStr                            ; 06D4 _ E8, 000010AF
        mov     dword [ebp-3CH], eax                    ; 06D9 _ 89. 45, C4
        mov     edx, dword [_sht_back]                  ; 06DC _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 06E2 _ A1, 00000000(d)
        mov     ecx, dword [ebp-3CH]                    ; 06E7 _ 8B. 4D, C4
        mov     dword [esp+14H], ecx                    ; 06EA _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 06EE _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 128                    ; 06F6 _ C7. 44 24, 0C, 00000080
        mov     dword [esp+8H], 0                       ; 06FE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0706 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 070A _ 89. 04 24
        call    _showString                             ; 070D _ E8, 00000B1C
        mov     eax, dword [_memman]                    ; 0712 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0717 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 071F _ 89. 04 24
        call    _memman_alloc_4k                        ; 0722 _ E8, 00000000(rel)
        add     eax, 65536                              ; 0727 _ 05, 00010000
        mov     dword [ebp-40H], eax                    ; 072C _ 89. 45, C0
        mov     eax, dword [ebp-34H]                    ; 072F _ 8B. 45, CC
        neg     eax                                     ; 0732 _ F7. D8
        add     eax, _testTask                          ; 0734 _ 05, 00000C39(d)
        mov     dword [?_190], eax                      ; 0739 _ A3, 00000300(d)
        mov     dword [?_191], 514                      ; 073E _ C7. 05, 00000304(d), 00000202
        mov     dword [?_192], 0                        ; 0748 _ C7. 05, 00000308(d), 00000000
        mov     dword [?_193], 0                        ; 0752 _ C7. 05, 0000030C(d), 00000000
        mov     dword [?_194], 0                        ; 075C _ C7. 05, 00000310(d), 00000000
        mov     dword [?_195], 0                        ; 0766 _ C7. 05, 00000314(d), 00000000
        mov     dword [?_196], 1024                     ; 0770 _ C7. 05, 00000318(d), 00000400
        mov     dword [?_197], 0                        ; 077A _ C7. 05, 0000031C(d), 00000000
        mov     dword [?_198], 0                        ; 0784 _ C7. 05, 00000320(d), 00000000
        mov     dword [?_199], 0                        ; 078E _ C7. 05, 00000324(d), 00000000
        mov     eax, dword [?_182]                      ; 0798 _ A1, 000002A8(d)
        mov     dword [?_200], eax                      ; 079D _ A3, 00000328(d)
        mov     eax, dword [?_183]                      ; 07A2 _ A1, 000002AC(d)
        mov     dword [?_201], eax                      ; 07A7 _ A3, 0000032C(d)
        mov     eax, dword [?_184]                      ; 07AC _ A1, 000002B0(d)
        mov     dword [?_202], eax                      ; 07B1 _ A3, 00000330(d)
        mov     eax, dword [?_185]                      ; 07B6 _ A1, 000002B4(d)
        mov     dword [?_203], eax                      ; 07BB _ A3, 00000334(d)
        mov     eax, dword [?_186]                      ; 07C0 _ A1, 000002B8(d)
        mov     dword [?_204], eax                      ; 07C5 _ A3, 00000338(d)
        mov     eax, dword [?_187]                      ; 07CA _ A1, 000002BC(d)
        mov     dword [?_205], eax                      ; 07CF _ A3, 0000033C(d)
        mov     dword [ebp-44H], 0                      ; 07D4 _ C7. 45, BC, 00000000
        mov     dword [ebp-14H], 0                      ; 07DB _ C7. 45, EC, 00000000
        mov     byte [ebp-15H], 0                       ; 07E2 _ C6. 45, EB, 00
?_001:  call    _io_cli                                 ; 07E6 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 07EB _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 07F2 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 07F7 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 07F9 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0800 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0805 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0807 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 080E _ E8, 00000000(rel)
        add     eax, ebx                                ; 0813 _ 01. D8
        test    eax, eax                                ; 0815 _ 85. C0
        jnz     ?_002                                   ; 0817 _ 75, 07
        call    _io_sti                                 ; 0819 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 081E _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0820 _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 0827 _ E8, 00000000(rel)
        test    eax, eax                                ; 082C _ 85. C0
        je      ?_004                                   ; 082E _ 0F 84, 0000023A
        call    _io_sti                                 ; 0834 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0839 _ C7. 04 24, 00000014(d)
        call    _fifo8_get                              ; 0840 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 0845 _ 89. 45, BC
        cmp     dword [ebp-44H], 28                     ; 0848 _ 83. 7D, BC, 1C
        jnz     ?_003                                   ; 084C _ 75, 6F
        mov     esi, dword [_xsize]                     ; 084E _ 8B. 35, 0000013C(d)
        mov     ebx, dword [_buf_back]                  ; 0854 _ 8B. 1D, 00000144(d)
        mov     edx, dword [ebp-14H]                    ; 085A _ 8B. 55, EC
        mov     eax, edx                                ; 085D _ 89. D0
        shl     eax, 2                                  ; 085F _ C1. E0, 02
        add     eax, edx                                ; 0862 _ 01. D0
        shl     eax, 2                                  ; 0864 _ C1. E0, 02
        mov     edx, eax                                ; 0867 _ 89. C2
        mov     eax, dword [ebp-30H]                    ; 0869 _ 8B. 45, D0
        lea     ecx, [edx+eax]                          ; 086C _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 086F _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0875 _ A1, 00000000(d)
        mov     dword [esp+18H], 7                      ; 087A _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 0882 _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 0886 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 0889 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 088D _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0891 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0895 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0899 _ 89. 04 24
        call    _showMemoryInfo                         ; 089C _ E8, 000011AD
        add     dword [ebp-14H], 1                      ; 08A1 _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 08A5 _ 8B. 45, EC
        cmp     eax, dword [ebp-2CH]                    ; 08A8 _ 3B. 45, D4
        jle     ?_001                                   ; 08AB _ 0F 8E, FFFFFF35
        mov     dword [ebp-14H], 0                      ; 08B1 _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 08B8 _ E9, FFFFFF29

?_003:  mov     eax, dword [ebp-44H]                    ; 08BD _ 8B. 45, BC
        add     eax, _keytable                          ; 08C0 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 08C5 _ 0F B6. 00
        test    al, al                                  ; 08C8 _ 84. C0
        je      ?_001                                   ; 08CA _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 08D0 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 08D7 _ 0F 8F, FFFFFF09
        movsx   eax, byte [ebp-15H]                     ; 08DD _ 0F BE. 45, EB
        lea     ecx, [eax+32H]                          ; 08E1 _ 8D. 48, 32
        mov     edx, dword [_sht_back]                  ; 08E4 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 08EA _ A1, 00000000(d)
        mov     dword [esp+14H], ?_165                  ; 08EF _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 0                      ; 08F7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 08FF _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], ecx                     ; 0907 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 090B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 090F _ 89. 04 24
        call    _showString                             ; 0912 _ E8, 00000917
        movzx   eax, byte [ebp-15H]                     ; 0917 _ 0F B6. 45, EB
        add     eax, 25                                 ; 091B _ 83. C0, 19
        mov     byte [ebp-15H], al                      ; 091E _ 88. 45, EB
        mov     eax, dword [ebp-0CH]                    ; 0921 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0924 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0927 _ A1, 00000130(d)
        mov     edx, dword [eax+4H]                     ; 092C _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 092F _ A1, 00000130(d)
        mov     eax, dword [eax]                        ; 0934 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0936 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 093E _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0942 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 094A _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 094D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0951 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0959 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 095D _ 89. 04 24
        call    _boxfill8                               ; 0960 _ E8, 00000A36
        mov     eax, dword [ebp-0CH]                    ; 0965 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0968 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 096B _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 0971 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0976 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 097E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0982 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 098A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 098D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0991 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0995 _ 89. 04 24
        call    _sheet_refresh                          ; 0998 _ E8, 00000000(rel)
        mov     eax, dword [ebp-44H]                    ; 099D _ 8B. 45, BC
        add     eax, _keytable                          ; 09A0 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 09A5 _ 0F B6. 00
        mov     byte [ebp-4AH], al                      ; 09A8 _ 88. 45, B6
        mov     byte [ebp-49H], 0                       ; 09AB _ C6. 45, B7, 00
        mov     ecx, dword [_shtMsgBox]                 ; 09AF _ 8B. 0D, 00000130(d)
        mov     edx, dword [_shtctl]                    ; 09B5 _ 8B. 15, 00000000(d)
        lea     eax, [ebp-4AH]                          ; 09BB _ 8D. 45, B6
        mov     dword [esp+14H], eax                    ; 09BE _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 09C2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 09CA _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 09D2 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 09D5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09D9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09DD _ 89. 14 24
        call    _showString                             ; 09E0 _ E8, 00000849
        add     dword [ebp-0CH], 8                      ; 09E5 _ 83. 45, F4, 08
        mov     eax, dword [ebp-0CH]                    ; 09E9 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 09EC _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 09EF _ 8B. 45, F0
        movzx   eax, al                                 ; 09F2 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 09F5 _ 8B. 15, 00000130(d)
        mov     ecx, dword [edx+4H]                     ; 09FB _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 09FE _ 8B. 15, 00000130(d)
        mov     edx, dword [edx]                        ; 0A04 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0A06 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0A0E _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0A12 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0A1A _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0A1D _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0A21 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0A25 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0A29 _ 89. 14 24
        call    _boxfill8                               ; 0A2C _ E8, 0000096A
        mov     eax, dword [ebp-0CH]                    ; 0A31 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0A34 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0A37 _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 0A3D _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0A42 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0A4A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0A4E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0A56 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0A59 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A5D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A61 _ 89. 04 24
        call    _sheet_refresh                          ; 0A64 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0A69 _ E9, FFFFFD78

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0A6E _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0A75 _ E8, 00000000(rel)
        test    eax, eax                                ; 0A7A _ 85. C0
        jz      ?_005                                   ; 0A7C _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0A7E _ 8B. 0D, 00000008(d)
        mov     edx, dword [_sht_back]                  ; 0A84 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0A8A _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 0A8F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A93 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A97 _ 89. 04 24
        call    _show_mouse_info                        ; 0A9A _ E8, 000006B6
        jmp     ?_001                                   ; 0A9F _ E9, FFFFFD42

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0AA4 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0AAB _ E8, 00000000(rel)
        test    eax, eax                                ; 0AB0 _ 85. C0
        je      ?_001                                   ; 0AB2 _ 0F 84, FFFFFD2E
        call    _io_sti                                 ; 0AB8 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0ABD _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 0AC4 _ E8, 00000000(rel)
        mov     dword [ebp-48H], eax                    ; 0AC9 _ 89. 45, B8
        cmp     dword [ebp-48H], 10                     ; 0ACC _ 83. 7D, B8, 0A
        jnz     ?_006                                   ; 0AD0 _ 75, 41
        mov     edx, dword [_sht_back]                  ; 0AD2 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0AD8 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_166                  ; 0ADD _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 0AE5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 0AED _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 0AF5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0AFD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B01 _ 89. 04 24
        call    _showString                             ; 0B04 _ E8, 00000725
        call    _taskswitch9                            ; 0B09 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0B0E _ E9, FFFFFCD3

?_006:  ; Local function
        cmp     dword [ebp-48H], 2                      ; 0B13 _ 83. 7D, B8, 02
        jnz     ?_007                                   ; 0B17 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 0B19 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0B1F _ A1, 00000000(d)
        mov     dword [esp+14H], ?_167                  ; 0B24 _ C7. 44 24, 14, 0000001B(d)
        mov     dword [esp+10H], 7                      ; 0B2C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 0B34 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 0B3C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0B44 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B48 _ 89. 04 24
        call    _showString                             ; 0B4B _ E8, 000006DE
        jmp     ?_001                                   ; 0B50 _ E9, FFFFFC91

?_007:  ; Local function
        cmp     dword [ebp-48H], 0                      ; 0B55 _ 83. 7D, B8, 00
        jz      ?_008                                   ; 0B59 _ 74, 24
        mov     dword [esp+8H], 0                       ; 0B5B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0B63 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 0B6B _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0B6E _ 89. 04 24
        call    _timer_init                             ; 0B71 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0B76 _ C7. 45, F0, 00000000
        jmp     ?_009                                   ; 0B7D _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 0B7F _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0B87 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 0B8F _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0B92 _ 89. 04 24
        call    _timer_init                             ; 0B95 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0B9A _ C7. 45, F0, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 0BA1 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 0BA9 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0BAC _ 89. 04 24
        call    _timer_settime                          ; 0BAF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0BB4 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0BB7 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0BBA _ 8B. 45, F0
        movzx   eax, al                                 ; 0BBD _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0BC0 _ 8B. 15, 00000130(d)
        mov     ecx, dword [edx+4H]                     ; 0BC6 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0BC9 _ 8B. 15, 00000130(d)
        mov     edx, dword [edx]                        ; 0BCF _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0BD1 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0BD9 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0BDD _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0BE5 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0BE8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0BEC _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0BF0 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0BF4 _ 89. 14 24
        call    _boxfill8                               ; 0BF7 _ E8, 0000079F
        mov     eax, dword [ebp-0CH]                    ; 0BFC _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0BFF _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0C02 _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 0C08 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0C0D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0C15 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0C19 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0C21 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0C24 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0C28 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C2C _ 89. 04 24
        call    _sheet_refresh                          ; 0C2F _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0C34 _ E9, FFFFFBAD

_testTask:; Function begin
        push    ebp                                     ; 0C39 _ 55
        mov     ebp, esp                                ; 0C3A _ 89. E5
        sub     esp, 88                                 ; 0C3C _ 83. EC, 58
        mov     edx, dword [_sht_back]                  ; 0C3F _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0C45 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_168                  ; 0C4A _ C7. 44 24, 14, 00000022(d)
        mov     dword [esp+10H], 7                      ; 0C52 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 0C5A _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 0                       ; 0C62 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0C6A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6E _ 89. 04 24
        call    _showString                             ; 0C71 _ E8, 000005B8
        mov     dword [ebp-0CH], 0                      ; 0C76 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0C7D _ C7. 45, F0, 00000000
        lea     eax, [ebp-30H]                          ; 0C84 _ 8D. 45, D0
        mov     dword [esp+8H], eax                     ; 0C87 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0C8B _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-28H]                          ; 0C93 _ 8D. 45, D8
        mov     dword [esp], eax                        ; 0C96 _ 89. 04 24
        call    _fifo8_init                             ; 0C99 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0C9E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0CA3 _ 89. 45, F4
        mov     dword [esp+8H], 123                     ; 0CA6 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-28H]                          ; 0CAE _ 8D. 45, D8
        mov     dword [esp+4H], eax                     ; 0CB1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0CB5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CB8 _ 89. 04 24
        call    _timer_init                             ; 0CBB _ E8, 00000000(rel)
        mov     dword [esp+4H], 500                     ; 0CC0 _ C7. 44 24, 04, 000001F4
        mov     eax, dword [ebp-0CH]                    ; 0CC8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CCB _ 89. 04 24
        call    _timer_settime                          ; 0CCE _ E8, 00000000(rel)
?_010:  call    _io_cli                                 ; 0CD3 _ E8, 00000000(rel)
        lea     eax, [ebp-28H]                          ; 0CD8 _ 8D. 45, D8
        mov     dword [esp], eax                        ; 0CDB _ 89. 04 24
        call    _fifo8_status                           ; 0CDE _ E8, 00000000(rel)
        test    eax, eax                                ; 0CE3 _ 85. C0
        jnz     ?_011                                   ; 0CE5 _ 75, 07
        call    _io_sti                                 ; 0CE7 _ E8, 00000000(rel)
        jmp     ?_010                                   ; 0CEC _ EB, E5
; _testTask End of function

?_011:  ; Local function
        lea     eax, [ebp-28H]                          ; 0CEE _ 8D. 45, D8
        mov     dword [esp], eax                        ; 0CF1 _ 89. 04 24
        call    _fifo8_get                              ; 0CF4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0CF9 _ 89. 45, F0
        call    _io_sti                                 ; 0CFC _ E8, 00000000(rel)
        cmp     dword [ebp-10H], 123                    ; 0D01 _ 83. 7D, F0, 7B
        jnz     ?_010                                   ; 0D05 _ 75, CC
        mov     edx, dword [_sht_back]                  ; 0D07 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0D0D _ A1, 00000000(d)
        mov     dword [esp+14H], ?_169                  ; 0D12 _ C7. 44 24, 14, 0000002F(d)
        mov     dword [esp+10H], 7                      ; 0D1A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 0D22 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0D2A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0D32 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D36 _ 89. 04 24
        call    _showString                             ; 0D39 _ E8, 000004F0
        call    _taskswitch7                            ; 0D3E _ E8, 00000000(rel)
        jmp     ?_010                                   ; 0D43 _ EB, 8E

_init_screen8:; Function begin
        push    ebp                                     ; 0D45 _ 55
        mov     ebp, esp                                ; 0D46 _ 89. E5
        push    ebx                                     ; 0D48 _ 53
        sub     esp, 36                                 ; 0D49 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0D4C _ 8B. 45, 10
        lea     edx, [eax-2AH]                          ; 0D4F _ 8D. 50, D6
        mov     eax, dword [ebp+0CH]                    ; 0D52 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0D55 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0D58 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0D5C _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0D60 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0D68 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0D70 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0D78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D82 _ 89. 04 24
        call    _boxfill8                               ; 0D85 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0D8A _ 8B. 45, 10
        lea     ecx, [eax-29H]                          ; 0D8D _ 8D. 48, D7
        mov     eax, dword [ebp+0CH]                    ; 0D90 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0D93 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0D96 _ 8B. 45, 10
        sub     eax, 41                                 ; 0D99 _ 83. E8, 29
        mov     dword [esp+18H], ecx                    ; 0D9C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0DA0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0DA4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0DA8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0DB0 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0DB8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DBB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DBF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DC2 _ 89. 04 24
        call    _boxfill8                               ; 0DC5 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0DCA _ 8B. 45, 10
        lea     ecx, [eax-28H]                          ; 0DCD _ 8D. 48, D8
        mov     eax, dword [ebp+0CH]                    ; 0DD0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0DD3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0DD6 _ 8B. 45, 10
        sub     eax, 40                                 ; 0DD9 _ 83. E8, 28
        mov     dword [esp+18H], ecx                    ; 0DDC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0DE0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0DE4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0DE8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0DF0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DF8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DFB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DFF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E02 _ 89. 04 24
        call    _boxfill8                               ; 0E05 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0E0A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0E0D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0E10 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E13 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E16 _ 8B. 45, 10
        sub     eax, 39                                 ; 0E19 _ 83. E8, 27
        mov     dword [esp+18H], ecx                    ; 0E1C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0E20 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0E24 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0E28 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0E30 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0E38 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E42 _ 89. 04 24
        call    _boxfill8                               ; 0E45 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0E4A _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0E4D _ 8D. 50, DB
        mov     eax, dword [ebp+10H]                    ; 0E50 _ 8B. 45, 10
        sub     eax, 37                                 ; 0E53 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0E56 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0E5A _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0E62 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0E66 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0E6E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0E76 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E79 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E7D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E80 _ 89. 04 24
        call    _boxfill8                               ; 0E83 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0E88 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0E8B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0E8E _ 8B. 45, 10
        sub     eax, 37                                 ; 0E91 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0E94 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0E98 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0EA0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0EA4 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0EAC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0EB4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EB7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EBB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EBE _ 89. 04 24
        call    _boxfill8                               ; 0EC1 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0EC6 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0EC9 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0ECC _ 8B. 45, 10
        sub     eax, 4                                  ; 0ECF _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0ED2 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0ED6 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0EDE _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0EE2 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0EEA _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0EF2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EF5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EF9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EFC _ 89. 04 24
        call    _boxfill8                               ; 0EFF _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0F04 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0F07 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0F0A _ 8B. 45, 10
        sub     eax, 36                                 ; 0F0D _ 83. E8, 24
        mov     dword [esp+18H], edx                    ; 0F10 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0F14 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0F1C _ 89. 44 24, 10
        mov     dword [esp+0CH], 72                     ; 0F20 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 15                      ; 0F28 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0F30 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F33 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F37 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F3A _ 89. 04 24
        call    _boxfill8                               ; 0F3D _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0F42 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F45 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F48 _ 8B. 45, 10
        sub     eax, 3                                  ; 0F4B _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0F4E _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0F52 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0F5A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0F5E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0F66 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0F6E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F71 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F75 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F78 _ 89. 04 24
        call    _boxfill8                               ; 0F7B _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0F80 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F83 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F86 _ 8B. 45, 10
        sub     eax, 37                                 ; 0F89 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0F8C _ 89. 54 24, 18
        mov     dword [esp+14H], 73                     ; 0F90 _ C7. 44 24, 14, 00000049
        mov     dword [esp+10H], eax                    ; 0F98 _ 89. 44 24, 10
        mov     dword [esp+0CH], 73                     ; 0F9C _ C7. 44 24, 0C, 00000049
        mov     dword [esp+8H], 0                       ; 0FA4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0FAC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FAF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FB3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FB6 _ 89. 04 24
        call    _boxfill8                               ; 0FB9 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0FBE _ 8B. 45, 10
        lea     ebx, [eax-25H]                          ; 0FC1 _ 8D. 58, DB
        mov     eax, dword [ebp+0CH]                    ; 0FC4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0FC7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0FCA _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0FCD _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0FD0 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0FD3 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0FD6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0FDA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0FDE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0FE2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0FE6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0FEE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FF1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FF5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FF8 _ 89. 04 24
        call    _boxfill8                               ; 0FFB _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 1000 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1003 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1006 _ 8B. 45, 0C
        lea     ecx, [eax-3DH]                          ; 1009 _ 8D. 48, C3
        mov     eax, dword [ebp+10H]                    ; 100C _ 8B. 45, 10
        lea     edx, [eax-24H]                          ; 100F _ 8D. 50, DC
        mov     eax, dword [ebp+0CH]                    ; 1012 _ 8B. 45, 0C
        sub     eax, 61                                 ; 1015 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 1018 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 101C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1020 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1024 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1028 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1030 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1033 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1037 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 103A _ 89. 04 24
        call    _boxfill8                               ; 103D _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 1042 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1045 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1048 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 104B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 104E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1051 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1054 _ 8B. 45, 0C
        sub     eax, 61                                 ; 1057 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 105A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 105E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1062 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1066 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 106A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1072 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1075 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1079 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 107C _ 89. 04 24
        call    _boxfill8                               ; 107F _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 1084 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1087 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 108A _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 108D _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1090 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 1093 _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 1096 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1099 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 109C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 10A0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 10A4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 10A8 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 10AC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 10B4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 10B7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10BB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10BE _ 89. 04 24
        call    _boxfill8                               ; 10C1 _ E8, 000002D5
        nop                                             ; 10C6 _ 90
        add     esp, 36                                 ; 10C7 _ 83. C4, 24
        pop     ebx                                     ; 10CA _ 5B
        pop     ebp                                     ; 10CB _ 5D
        ret                                             ; 10CC _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 10CD _ 55
        mov     ebp, esp                                ; 10CE _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 10D0 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 10D3 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 10D6 _ A1, 00000134(d)
        add     eax, edx                                ; 10DB _ 01. D0
        mov     dword [_mx], eax                        ; 10DD _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 10E2 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 10E5 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 10E8 _ A1, 00000138(d)
        add     eax, edx                                ; 10ED _ 01. D0
        mov     dword [_my], eax                        ; 10EF _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 10F4 _ A1, 00000134(d)
        test    eax, eax                                ; 10F9 _ 85. C0
        jns     ?_012                                   ; 10FB _ 79, 0A
        mov     dword [_mx], 0                          ; 10FD _ C7. 05, 00000134(d), 00000000
?_012:  mov     eax, dword [_my]                        ; 1107 _ A1, 00000138(d)
        test    eax, eax                                ; 110C _ 85. C0
        jns     ?_013                                   ; 110E _ 79, 0A
        mov     dword [_my], 0                          ; 1110 _ C7. 05, 00000138(d), 00000000
?_013:  mov     edx, dword [_xsize]                     ; 111A _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1120 _ A1, 00000134(d)
        cmp     edx, eax                                ; 1125 _ 39. C2
        jg      ?_014                                   ; 1127 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1129 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 112E _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1131 _ A3, 00000134(d)
?_014:  mov     edx, dword [_ysize]                     ; 1136 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 113C _ A1, 00000138(d)
        cmp     edx, eax                                ; 1141 _ 39. C2
        jg      ?_015                                   ; 1143 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1145 _ A1, 00000140(d)
        sub     eax, 1                                  ; 114A _ 83. E8, 01
        mov     dword [_my], eax                        ; 114D _ A3, 00000138(d)
?_015:  nop                                             ; 1152 _ 90
        pop     ebp                                     ; 1153 _ 5D
        ret                                             ; 1154 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1155 _ 55
        mov     ebp, esp                                ; 1156 _ 89. E5
        sub     esp, 40                                 ; 1158 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 115B _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1160 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1163 _ C6. 45, F3, 00
        call    _io_sti                                 ; 1167 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 116C _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 1173 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1178 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 117B _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 117F _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1183 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 118A _ E8, 00000780
        test    eax, eax                                ; 118F _ 85. C0
        jz      ?_016                                   ; 1191 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1193 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 119B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 119E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11A5 _ 89. 04 24
        call    _computeMousePosition                   ; 11A8 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 11AD _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 11B3 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 11B8 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 11BC _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 11C0 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 11C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11CA _ 89. 04 24
        call    _sheet_slide                            ; 11CD _ E8, 00000000(rel)
        mov     eax, dword [?_178]                      ; 11D2 _ A1, 0000010C(d)
        and     eax, 01H                                ; 11D7 _ 83. E0, 01
        test    eax, eax                                ; 11DA _ 85. C0
        jz      ?_016                                   ; 11DC _ 74, 2C
        mov     eax, dword [_my]                        ; 11DE _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 11E3 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 11E6 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 11EB _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 11EE _ A1, 00000130(d)
        mov     dword [esp+0CH], ecx                    ; 11F3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 11F7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 11FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1202 _ 89. 04 24
        call    _sheet_slide                            ; 1205 _ E8, 00000000(rel)
?_016:  nop                                             ; 120A _ 90
        leave                                           ; 120B _ C9
        ret                                             ; 120C _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 120D _ 55
        mov     ebp, esp                                ; 120E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1210 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1213 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1219 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 800                      ; 121C _ 66: C7. 40, 04, 0320
        mov     eax, dword [ebp+8H]                     ; 1222 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 600                      ; 1225 _ 66: C7. 40, 06, 0258
        nop                                             ; 122B _ 90
        pop     ebp                                     ; 122C _ 5D
        ret                                             ; 122D _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 122E _ 55
        mov     ebp, esp                                ; 122F _ 89. E5
        push    ebx                                     ; 1231 _ 53
        sub     esp, 68                                 ; 1232 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1235 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1238 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 123B _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 123E _ 89. 45, F4
        jmp     ?_018                                   ; 1241 _ EB, 4B

?_017:  mov     eax, dword [ebp+1CH]                    ; 1243 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1246 _ 0F B6. 00
        movzx   eax, al                                 ; 1249 _ 0F B6. C0
        shl     eax, 4                                  ; 124C _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 124F _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1255 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 1259 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 125C _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 125F _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1262 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1264 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1268 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 126C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 126F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1273 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1276 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 127A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 127E _ 89. 14 24
        call    _showFont8                              ; 1281 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1286 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 128A _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 128E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1291 _ 0F B6. 00
        test    al, al                                  ; 1294 _ 84. C0
        jnz     ?_017                                   ; 1296 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 1298 _ 8B. 45, 14
        add     eax, 16                                 ; 129B _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 129E _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 12A2 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 12A5 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 12A9 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 12AC _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12B0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12B3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12B7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12BA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12C1 _ 89. 04 24
        call    _sheet_refresh                          ; 12C4 _ E8, 00000000(rel)
        nop                                             ; 12C9 _ 90
        add     esp, 68                                 ; 12CA _ 83. C4, 44
        pop     ebx                                     ; 12CD _ 5B
        pop     ebp                                     ; 12CE _ 5D
        ret                                             ; 12CF _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 12D0 _ 55
        mov     ebp, esp                                ; 12D1 _ 89. E5
        sub     esp, 24                                 ; 12D3 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2294         ; 12D6 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 12DE _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 12E6 _ C7. 04 24, 00000000
        call    _set_palette                            ; 12ED _ E8, 00000003
        nop                                             ; 12F2 _ 90
        leave                                           ; 12F3 _ C9
        ret                                             ; 12F4 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 12F5 _ 55
        mov     ebp, esp                                ; 12F6 _ 89. E5
        sub     esp, 40                                 ; 12F8 _ 83. EC, 28
        call    _io_load_eflags                         ; 12FB _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1300 _ 89. 45, F0
        call    _io_cli                                 ; 1303 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1308 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 130B _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 130F _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1316 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 131B _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 131E _ 89. 45, F4
        jmp     ?_020                                   ; 1321 _ EB, 62

?_019:  mov     eax, dword [ebp+10H]                    ; 1323 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1326 _ 0F B6. 00
        shr     al, 2                                   ; 1329 _ C0. E8, 02
        movzx   eax, al                                 ; 132C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 132F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1333 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 133A _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 133F _ 8B. 45, 10
        add     eax, 1                                  ; 1342 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1345 _ 0F B6. 00
        shr     al, 2                                   ; 1348 _ C0. E8, 02
        movzx   eax, al                                 ; 134B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 134E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1352 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1359 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 135E _ 8B. 45, 10
        add     eax, 2                                  ; 1361 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1364 _ 0F B6. 00
        shr     al, 2                                   ; 1367 _ C0. E8, 02
        movzx   eax, al                                 ; 136A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 136D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1371 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1378 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 137D _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 1381 _ 83. 45, F4, 01
?_020:  mov     eax, dword [ebp-0CH]                    ; 1385 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1388 _ 3B. 45, 0C
        jle     ?_019                                   ; 138B _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 138D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1390 _ 89. 04 24
        call    _io_store_eflags                        ; 1393 _ E8, 00000000(rel)
        nop                                             ; 1398 _ 90
        leave                                           ; 1399 _ C9
        ret                                             ; 139A _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 139B _ 55
        mov     ebp, esp                                ; 139C _ 89. E5
        sub     esp, 20                                 ; 139E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 13A1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 13A4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 13A7 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 13AA _ 89. 45, F8
        jmp     ?_024                                   ; 13AD _ EB, 31

?_021:  mov     eax, dword [ebp+14H]                    ; 13AF _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 13B2 _ 89. 45, FC
        jmp     ?_023                                   ; 13B5 _ EB, 1D

?_022:  mov     eax, dword [ebp-8H]                     ; 13B7 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 13BA _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 13BE _ 8B. 55, FC
        add     eax, edx                                ; 13C1 _ 01. D0
        mov     edx, eax                                ; 13C3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13C5 _ 8B. 45, 08
        add     edx, eax                                ; 13C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13CE _ 88. 02
        add     dword [ebp-4H], 1                       ; 13D0 _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 13D4 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 13D7 _ 3B. 45, 1C
        jle     ?_022                                   ; 13DA _ 7E, DB
        add     dword [ebp-8H], 1                       ; 13DC _ 83. 45, F8, 01
?_024:  mov     eax, dword [ebp-8H]                     ; 13E0 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 13E3 _ 3B. 45, 20
        jle     ?_021                                   ; 13E6 _ 7E, C7
        nop                                             ; 13E8 _ 90
        leave                                           ; 13E9 _ C9
        ret                                             ; 13EA _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 13EB _ 55
        mov     ebp, esp                                ; 13EC _ 89. E5
        sub     esp, 20                                 ; 13EE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 13F1 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 13F4 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 13F7 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 13FE _ E9, 0000015C

?_025:  mov     edx, dword [ebp-4H]                     ; 1403 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1406 _ 8B. 45, 1C
        add     eax, edx                                ; 1409 _ 01. D0
        movzx   eax, byte [eax]                         ; 140B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 140E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1411 _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1415 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 1417 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 141A _ 8B. 45, FC
        add     eax, edx                                ; 141D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 141F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1423 _ 8B. 55, 10
        add     eax, edx                                ; 1426 _ 01. D0
        mov     edx, eax                                ; 1428 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 142A _ 8B. 45, 08
        add     edx, eax                                ; 142D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 142F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1433 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1435 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1439 _ 83. E0, 40
        test    eax, eax                                ; 143C _ 85. C0
        jz      ?_027                                   ; 143E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1440 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1443 _ 8B. 45, FC
        add     eax, edx                                ; 1446 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1448 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 144C _ 8B. 55, 10
        add     eax, edx                                ; 144F _ 01. D0
        lea     edx, [eax+1H]                           ; 1451 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1454 _ 8B. 45, 08
        add     edx, eax                                ; 1457 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1459 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 145D _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 145F _ 0F BE. 45, FB
        and     eax, 20H                                ; 1463 _ 83. E0, 20
        test    eax, eax                                ; 1466 _ 85. C0
        jz      ?_028                                   ; 1468 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 146A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 146D _ 8B. 45, FC
        add     eax, edx                                ; 1470 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1472 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1476 _ 8B. 55, 10
        add     eax, edx                                ; 1479 _ 01. D0
        lea     edx, [eax+2H]                           ; 147B _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 147E _ 8B. 45, 08
        add     edx, eax                                ; 1481 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1483 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1487 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1489 _ 0F BE. 45, FB
        and     eax, 10H                                ; 148D _ 83. E0, 10
        test    eax, eax                                ; 1490 _ 85. C0
        jz      ?_029                                   ; 1492 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1494 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1497 _ 8B. 45, FC
        add     eax, edx                                ; 149A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 149C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 14A0 _ 8B. 55, 10
        add     eax, edx                                ; 14A3 _ 01. D0
        lea     edx, [eax+3H]                           ; 14A5 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 14A8 _ 8B. 45, 08
        add     edx, eax                                ; 14AB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14AD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14B1 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 14B3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 14B7 _ 83. E0, 08
        test    eax, eax                                ; 14BA _ 85. C0
        jz      ?_030                                   ; 14BC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 14BE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14C1 _ 8B. 45, FC
        add     eax, edx                                ; 14C4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14C6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 14CA _ 8B. 55, 10
        add     eax, edx                                ; 14CD _ 01. D0
        lea     edx, [eax+4H]                           ; 14CF _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 14D2 _ 8B. 45, 08
        add     edx, eax                                ; 14D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14DB _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 14DD _ 0F BE. 45, FB
        and     eax, 04H                                ; 14E1 _ 83. E0, 04
        test    eax, eax                                ; 14E4 _ 85. C0
        jz      ?_031                                   ; 14E6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 14E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14EB _ 8B. 45, FC
        add     eax, edx                                ; 14EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14F0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 14F4 _ 8B. 55, 10
        add     eax, edx                                ; 14F7 _ 01. D0
        lea     edx, [eax+5H]                           ; 14F9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 14FC _ 8B. 45, 08
        add     edx, eax                                ; 14FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1501 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1505 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1507 _ 0F BE. 45, FB
        and     eax, 02H                                ; 150B _ 83. E0, 02
        test    eax, eax                                ; 150E _ 85. C0
        jz      ?_032                                   ; 1510 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1512 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1515 _ 8B. 45, FC
        add     eax, edx                                ; 1518 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 151A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 151E _ 8B. 55, 10
        add     eax, edx                                ; 1521 _ 01. D0
        lea     edx, [eax+6H]                           ; 1523 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1526 _ 8B. 45, 08
        add     edx, eax                                ; 1529 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 152B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 152F _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1531 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1535 _ 83. E0, 01
        test    eax, eax                                ; 1538 _ 85. C0
        jz      ?_033                                   ; 153A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 153C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 153F _ 8B. 45, FC
        add     eax, edx                                ; 1542 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1544 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1548 _ 8B. 55, 10
        add     eax, edx                                ; 154B _ 01. D0
        lea     edx, [eax+7H]                           ; 154D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1550 _ 8B. 45, 08
        add     edx, eax                                ; 1553 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1555 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1559 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 155B _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 155F _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 1563 _ 0F 8E, FFFFFE9A
        nop                                             ; 1569 _ 90
        leave                                           ; 156A _ C9
        ret                                             ; 156B _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 156C _ 55
        mov     ebp, esp                                ; 156D _ 89. E5
        sub     esp, 20                                 ; 156F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1572 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1575 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 1578 _ C7. 45, F8, 00000000
        jmp     ?_041                                   ; 157F _ E9, 000000B1

?_035:  mov     dword [ebp-4H], 0                       ; 1584 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 158B _ E9, 00000097

?_036:  mov     eax, dword [ebp-8H]                     ; 1590 _ 8B. 45, F8
        shl     eax, 4                                  ; 1593 _ C1. E0, 04
        mov     edx, eax                                ; 1596 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1598 _ 8B. 45, FC
        add     eax, edx                                ; 159B _ 01. D0
        add     eax, _cursor.2341                       ; 159D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 15A2 _ 0F B6. 00
        cmp     al, 42                                  ; 15A5 _ 3C, 2A
        jnz     ?_037                                   ; 15A7 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 15A9 _ 8B. 45, F8
        shl     eax, 4                                  ; 15AC _ C1. E0, 04
        mov     edx, eax                                ; 15AF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 15B1 _ 8B. 45, FC
        add     eax, edx                                ; 15B4 _ 01. D0
        mov     edx, eax                                ; 15B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15B8 _ 8B. 45, 08
        add     eax, edx                                ; 15BB _ 01. D0
        mov     byte [eax], 0                           ; 15BD _ C6. 00, 00
?_037:  mov     eax, dword [ebp-8H]                     ; 15C0 _ 8B. 45, F8
        shl     eax, 4                                  ; 15C3 _ C1. E0, 04
        mov     edx, eax                                ; 15C6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 15C8 _ 8B. 45, FC
        add     eax, edx                                ; 15CB _ 01. D0
        add     eax, _cursor.2341                       ; 15CD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 15D2 _ 0F B6. 00
        cmp     al, 79                                  ; 15D5 _ 3C, 4F
        jnz     ?_038                                   ; 15D7 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 15D9 _ 8B. 45, F8
        shl     eax, 4                                  ; 15DC _ C1. E0, 04
        mov     edx, eax                                ; 15DF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 15E1 _ 8B. 45, FC
        add     eax, edx                                ; 15E4 _ 01. D0
        mov     edx, eax                                ; 15E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15E8 _ 8B. 45, 08
        add     eax, edx                                ; 15EB _ 01. D0
        mov     byte [eax], 7                           ; 15ED _ C6. 00, 07
?_038:  mov     eax, dword [ebp-8H]                     ; 15F0 _ 8B. 45, F8
        shl     eax, 4                                  ; 15F3 _ C1. E0, 04
        mov     edx, eax                                ; 15F6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 15F8 _ 8B. 45, FC
        add     eax, edx                                ; 15FB _ 01. D0
        add     eax, _cursor.2341                       ; 15FD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1602 _ 0F B6. 00
        cmp     al, 46                                  ; 1605 _ 3C, 2E
        jnz     ?_039                                   ; 1607 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1609 _ 8B. 45, F8
        shl     eax, 4                                  ; 160C _ C1. E0, 04
        mov     edx, eax                                ; 160F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1611 _ 8B. 45, FC
        add     eax, edx                                ; 1614 _ 01. D0
        mov     edx, eax                                ; 1616 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1618 _ 8B. 45, 08
        add     edx, eax                                ; 161B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 161D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1621 _ 88. 02
?_039:  add     dword [ebp-4H], 1                       ; 1623 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1627 _ 83. 7D, FC, 0F
        jle     ?_036                                   ; 162B _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1631 _ 83. 45, F8, 01
?_041:  cmp     dword [ebp-8H], 15                      ; 1635 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 1639 _ 0F 8E, FFFFFF45
        nop                                             ; 163F _ 90
        leave                                           ; 1640 _ C9
        ret                                             ; 1641 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1642 _ 55
        mov     ebp, esp                                ; 1643 _ 89. E5
        push    ebx                                     ; 1645 _ 53
        sub     esp, 16                                 ; 1646 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1649 _ C7. 45, F4, 00000000
        jmp     ?_045                                   ; 1650 _ EB, 4E

?_042:  mov     dword [ebp-8H], 0                       ; 1652 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1659 _ EB, 39

?_043:  mov     eax, dword [ebp-0CH]                    ; 165B _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 165E _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1662 _ 8B. 55, F8
        add     eax, edx                                ; 1665 _ 01. D0
        mov     edx, eax                                ; 1667 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1669 _ 8B. 45, 20
        add     eax, edx                                ; 166C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 166E _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1671 _ 8B. 55, F4
        add     edx, ecx                                ; 1674 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1676 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 167A _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 167D _ 8B. 4D, F8
        add     ecx, ebx                                ; 1680 _ 01. D9
        add     edx, ecx                                ; 1682 _ 01. CA
        mov     ecx, edx                                ; 1684 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1686 _ 8B. 55, 08
        add     edx, ecx                                ; 1689 _ 01. CA
        movzx   eax, byte [eax]                         ; 168B _ 0F B6. 00
        mov     byte [edx], al                          ; 168E _ 88. 02
        add     dword [ebp-8H], 1                       ; 1690 _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1694 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1697 _ 3B. 45, 10
        jl      ?_043                                   ; 169A _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 169C _ 83. 45, F4, 01
?_045:  mov     eax, dword [ebp-0CH]                    ; 16A0 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 16A3 _ 3B. 45, 14
        jl      ?_042                                   ; 16A6 _ 7C, AA
        nop                                             ; 16A8 _ 90
        add     esp, 16                                 ; 16A9 _ 83. C4, 10
        pop     ebx                                     ; 16AC _ 5B
        pop     ebp                                     ; 16AD _ 5D
        ret                                             ; 16AE _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 16AF _ 55
        mov     ebp, esp                                ; 16B0 _ 89. E5
        sub     esp, 40                                 ; 16B2 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 16B5 _ A1, 0000000C(d)
        mov     dword [ebp-0CH], eax                    ; 16BA _ 89. 45, F4
        movzx   eax, word [?_176]                       ; 16BD _ 0F B7. 05, 00000010(d)
        cwde                                            ; 16C4 _ 98
        mov     dword [ebp-10H], eax                    ; 16C5 _ 89. 45, F0
        movzx   eax, word [?_177]                       ; 16C8 _ 0F B7. 05, 00000012(d)
        cwde                                            ; 16CF _ 98
        mov     dword [ebp-14H], eax                    ; 16D0 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 16D3 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 16DB _ C7. 04 24, 00000020
        call    _io_out8                                ; 16E2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 16E7 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 16EB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 16F2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 16F7 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 16FA _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 16FE _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1702 _ C7. 04 24, 00000014(d)
        call    _fifo8_put                              ; 1709 _ E8, 00000000(rel)
        nop                                             ; 170E _ 90
        leave                                           ; 170F _ C9
        ret                                             ; 1710 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1711 _ 55
        mov     ebp, esp                                ; 1712 _ 89. E5
        sub     esp, 4                                  ; 1714 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1717 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 171A _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 171D _ 80. 7D, FC, 09
        jle     ?_046                                   ; 1721 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1723 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1727 _ 83. C0, 37
        jmp     ?_047                                   ; 172A _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 172C _ 0F B6. 45, FC
        add     eax, 48                                 ; 1730 _ 83. C0, 30
?_047:  leave                                           ; 1733 _ C9
        ret                                             ; 1734 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1735 _ 55
        mov     ebp, esp                                ; 1736 _ 89. E5
        sub     esp, 24                                 ; 1738 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 173B _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 173E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1741 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1748 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 174C _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 174F _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1752 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1756 _ 89. 04 24
        call    _charToHexVal                           ; 1759 _ E8, FFFFFFB3
        mov     byte [?_163], al                        ; 175E _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 1763 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1767 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 176A _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 176D _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1771 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1774 _ 89. 04 24
        call    _charToHexVal                           ; 1777 _ E8, FFFFFF95
        mov     byte [?_162], al                        ; 177C _ A2, 00000006(d)
        mov     eax, _keyval                            ; 1781 _ B8, 00000004(d)
        leave                                           ; 1786 _ C9
        ret                                             ; 1787 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1788 _ 55
        mov     ebp, esp                                ; 1789 _ 89. E5
        sub     esp, 16                                 ; 178B _ 83. EC, 10
        mov     byte [_str.2389], 48                    ; 178E _ C6. 05, 00000348(d), 30
        mov     byte [?_208], 88                        ; 1795 _ C6. 05, 00000349(d), 58
        mov     byte [?_209], 0                         ; 179C _ C6. 05, 00000352(d), 00
        mov     dword [ebp-4H], 2                       ; 17A3 _ C7. 45, FC, 00000002
        jmp     ?_049                                   ; 17AA _ EB, 0F

?_048:  mov     eax, dword [ebp-4H]                     ; 17AC _ 8B. 45, FC
        add     eax, _str.2389                          ; 17AF _ 05, 00000348(d)
        mov     byte [eax], 48                          ; 17B4 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 17B7 _ 83. 45, FC, 01
?_049:  cmp     dword [ebp-4H], 9                       ; 17BB _ 83. 7D, FC, 09
        jle     ?_048                                   ; 17BF _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 17C1 _ C7. 45, F8, 00000009
        jmp     ?_053                                   ; 17C8 _ EB, 42

?_050:  mov     eax, dword [ebp+8H]                     ; 17CA _ 8B. 45, 08
        and     eax, 0FH                                ; 17CD _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 17D0 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 17D3 _ 8B. 45, 08
        shr     eax, 4                                  ; 17D6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 17D9 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 17DC _ 83. 7D, F4, 09
        jle     ?_051                                   ; 17E0 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 17E2 _ 8B. 45, F4
        add     eax, 55                                 ; 17E5 _ 83. C0, 37
        mov     edx, eax                                ; 17E8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 17EA _ 8B. 45, F8
        add     eax, _str.2389                          ; 17ED _ 05, 00000348(d)
        mov     byte [eax], dl                          ; 17F2 _ 88. 10
        jmp     ?_052                                   ; 17F4 _ EB, 12

?_051:  mov     eax, dword [ebp-0CH]                    ; 17F6 _ 8B. 45, F4
        add     eax, 48                                 ; 17F9 _ 83. C0, 30
        mov     edx, eax                                ; 17FC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 17FE _ 8B. 45, F8
        add     eax, _str.2389                          ; 1801 _ 05, 00000348(d)
        mov     byte [eax], dl                          ; 1806 _ 88. 10
?_052:  sub     dword [ebp-8H], 1                       ; 1808 _ 83. 6D, F8, 01
?_053:  cmp     dword [ebp-8H], 1                       ; 180C _ 83. 7D, F8, 01
        jle     ?_054                                   ; 1810 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1812 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1816 _ 75, B2
?_054:  mov     eax, _str.2389                          ; 1818 _ B8, 00000348(d)
        leave                                           ; 181D _ C9
        ret                                             ; 181E _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 181F _ 55
        mov     ebp, esp                                ; 1820 _ 89. E5
        sub     esp, 24                                 ; 1822 _ 83. EC, 18
?_055:  mov     dword [esp], 100                        ; 1825 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 182C _ E8, 00000000(rel)
        and     eax, 02H                                ; 1831 _ 83. E0, 02
        test    eax, eax                                ; 1834 _ 85. C0
        jz      ?_056                                   ; 1836 _ 74, 02
        jmp     ?_055                                   ; 1838 _ EB, EB
; _wait_KBC_sendready End of function

?_056:  ; Local function
        nop                                             ; 183A _ 90
        nop                                             ; 183B _ 90
        leave                                           ; 183C _ C9
        ret                                             ; 183D _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 183E _ 55
        mov     ebp, esp                                ; 183F _ 89. E5
        sub     esp, 24                                 ; 1841 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1844 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1849 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1851 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1858 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 185D _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1862 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 186A _ C7. 04 24, 00000060
        call    _io_out8                                ; 1871 _ E8, 00000000(rel)
        nop                                             ; 1876 _ 90
        leave                                           ; 1877 _ C9
        ret                                             ; 1878 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1879 _ 55
        mov     ebp, esp                                ; 187A _ 89. E5
        sub     esp, 24                                 ; 187C _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 187F _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1884 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 188C _ C7. 04 24, 00000064
        call    _io_out8                                ; 1893 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1898 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 189D _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 18A5 _ C7. 04 24, 00000060
        call    _io_out8                                ; 18AC _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 18B1 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 18B4 _ C6. 40, 03, 00
        nop                                             ; 18B8 _ 90
        leave                                           ; 18B9 _ C9
        ret                                             ; 18BA _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 18BB _ 55
        mov     ebp, esp                                ; 18BC _ 89. E5
        sub     esp, 40                                 ; 18BE _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 18C1 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 18C9 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 18D0 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 18D5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 18DD _ C7. 04 24, 00000020
        call    _io_out8                                ; 18E4 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 18E9 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 18F0 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 18F5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 18F8 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 18FC _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1900 _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 1907 _ E8, 00000000(rel)
        nop                                             ; 190C _ 90
        leave                                           ; 190D _ C9
        ret                                             ; 190E _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 190F _ 55
        mov     ebp, esp                                ; 1910 _ 89. E5
        sub     esp, 4                                  ; 1912 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1915 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1918 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 191B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 191E _ 0F B6. 40, 03
        test    al, al                                  ; 1922 _ 84. C0
        jnz     ?_058                                   ; 1924 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1926 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 192A _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 192C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 192F _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 1933 _ B8, 00000000
        jmp     ?_065                                   ; 1938 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 193D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1940 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1944 _ 3C, 01
        jnz     ?_060                                   ; 1946 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1948 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 194C _ 25, 000000C8
        cmp     eax, 8                                  ; 1951 _ 83. F8, 08
        jnz     ?_059                                   ; 1954 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1956 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1959 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 195D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 195F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1962 _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 1966 _ B8, 00000000
        jmp     ?_065                                   ; 196B _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 1970 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1973 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1977 _ 3C, 02
        jnz     ?_061                                   ; 1979 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 197B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 197E _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1982 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1985 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1988 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 198C _ B8, 00000000
        jmp     ?_065                                   ; 1991 _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 1996 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1999 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 199D _ 3C, 03
        jne     ?_064                                   ; 199F _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 19A5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 19A8 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 19AC _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 19AF _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 19B2 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 19B6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19B9 _ 0F B6. 00
        movzx   eax, al                                 ; 19BC _ 0F B6. C0
        and     eax, 07H                                ; 19BF _ 83. E0, 07
        mov     edx, eax                                ; 19C2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19C4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 19C7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 19CA _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 19CD _ 0F B6. 40, 01
        movzx   eax, al                                 ; 19D1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 19D4 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 19D7 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 19DA _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 19DD _ 0F B6. 40, 02
        movzx   eax, al                                 ; 19E1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 19E4 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 19E7 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 19EA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19ED _ 0F B6. 00
        movzx   eax, al                                 ; 19F0 _ 0F B6. C0
        and     eax, 10H                                ; 19F3 _ 83. E0, 10
        test    eax, eax                                ; 19F6 _ 85. C0
        jz      ?_062                                   ; 19F8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 19FA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 19FD _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1A00 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1A05 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A07 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1A0A _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 1A0D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1A10 _ 0F B6. 00
        movzx   eax, al                                 ; 1A13 _ 0F B6. C0
        and     eax, 20H                                ; 1A16 _ 83. E0, 20
        test    eax, eax                                ; 1A19 _ 85. C0
        jz      ?_063                                   ; 1A1B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1A1D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1A20 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1A23 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1A28 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A2A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A2D _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 1A30 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1A33 _ 8B. 40, 08
        neg     eax                                     ; 1A36 _ F7. D8
        mov     edx, eax                                ; 1A38 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A3A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A3D _ 89. 50, 08
        mov     eax, 1                                  ; 1A40 _ B8, 00000001
        jmp     ?_065                                   ; 1A45 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 1A47 _ B8, FFFFFFFF
?_065:  leave                                           ; 1A4C _ C9
        ret                                             ; 1A4D _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1A4E _ 55
        mov     ebp, esp                                ; 1A4F _ 89. E5
        sub     esp, 88                                 ; 1A51 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 1A54 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 1A5B _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1A62 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1A69 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1A70 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 1A76 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A79 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 1A7B _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1A7F _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1A82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A86 _ 89. 04 24
        call    _init_screen8                           ; 1A89 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 1A8E _ 8B. 45, 20
        movsx   eax, al                                 ; 1A91 _ 0F BE. C0
        mov     dword [esp+14H], ?_170                  ; 1A94 _ C7. 44 24, 14, 0000003B(d)
        mov     dword [esp+10H], eax                    ; 1A9C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AA0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AA3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1AA7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1AAA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AAE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AB1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AB5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AB8 _ 89. 04 24
        call    _showString                             ; 1ABB _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 1AC0 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1AC3 _ 89. 04 24
        call    _intToHexStr                            ; 1AC6 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1ACB _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1ACE _ 8B. 45, 20
        movsx   eax, al                                 ; 1AD1 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1AD4 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1AD7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1ADB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1ADF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AE2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1AE6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1AE9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AED _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AF0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AF4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AF7 _ 89. 04 24
        call    _showString                             ; 1AFA _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1AFF _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1B03 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B06 _ 0F BE. C0
        mov     dword [esp+14H], ?_171                  ; 1B09 _ C7. 44 24, 14, 00000045(d)
        mov     dword [esp+10H], eax                    ; 1B11 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B15 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B18 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1B1C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1B1F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B23 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B26 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B2A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B2D _ 89. 04 24
        call    _showString                             ; 1B30 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1B35 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1B38 _ 8B. 00
        mov     dword [esp], eax                        ; 1B3A _ 89. 04 24
        call    _intToHexStr                            ; 1B3D _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1B42 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1B45 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B48 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1B4B _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1B4E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B52 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B56 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B59 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1B5D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1B60 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B64 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B6E _ 89. 04 24
        call    _showString                             ; 1B71 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1B76 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1B7A _ 8B. 45, 20
        movsx   eax, al                                 ; 1B7D _ 0F BE. C0
        mov     dword [esp+14H], ?_172                  ; 1B80 _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1B88 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B8C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B8F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1B93 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1B96 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B9A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B9D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BA1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BA4 _ 89. 04 24
        call    _showString                             ; 1BA7 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1BAC _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1BAF _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1BB2 _ 89. 04 24
        call    _intToHexStr                            ; 1BB5 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1BBA _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1BBD _ 8B. 45, 20
        movsx   eax, al                                 ; 1BC0 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1BC3 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1BC6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1BCA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1BCE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1BD1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1BD5 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1BD8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1BDC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BDF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BE3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BE6 _ 89. 04 24
        call    _showString                             ; 1BE9 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1BEE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1BF2 _ 8B. 45, 20
        movsx   eax, al                                 ; 1BF5 _ 0F BE. C0
        mov     dword [esp+14H], ?_173                  ; 1BF8 _ C7. 44 24, 14, 0000005D(d)
        mov     dword [esp+10H], eax                    ; 1C00 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1C04 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1C07 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1C0B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1C0E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1C12 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C1C _ 89. 04 24
        call    _showString                             ; 1C1F _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1C24 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1C27 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1C2A _ 89. 04 24
        call    _intToHexStr                            ; 1C2D _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1C32 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1C35 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C38 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1C3B _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1C3E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1C42 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1C46 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1C49 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1C4D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1C50 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1C54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C5E _ 89. 04 24
        call    _showString                             ; 1C61 _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 1C66 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1C6A _ 8B. 45, 20
        movsx   eax, al                                 ; 1C6D _ 0F BE. C0
        mov     dword [esp+14H], ?_174                  ; 1C70 _ C7. 44 24, 14, 00000069(d)
        mov     dword [esp+10H], eax                    ; 1C78 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1C7C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1C7F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1C83 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1C86 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1C8A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C8D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C91 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C94 _ 89. 04 24
        call    _showString                             ; 1C97 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 1C9C _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1C9F _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1CA2 _ 89. 04 24
        call    _intToHexStr                            ; 1CA5 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 1CAA _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1CAD _ 8B. 45, 20
        movsx   eax, al                                 ; 1CB0 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1CB3 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1CB6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1CBA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1CBE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1CC1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1CC5 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1CC8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1CCC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CCF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CD3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CD6 _ 89. 04 24
        call    _showString                             ; 1CD9 _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 1CDE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1CE2 _ 8B. 45, 20
        movsx   eax, al                                 ; 1CE5 _ 0F BE. C0
        mov     dword [esp+14H], ?_175                  ; 1CE8 _ C7. 44 24, 14, 00000076(d)
        mov     dword [esp+10H], eax                    ; 1CF0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1CF4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1CF7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1CFB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1CFE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1D02 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D05 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D09 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D0C _ 89. 04 24
        call    _showString                             ; 1D0F _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 1D14 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1D17 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 1D1A _ 89. 04 24
        call    _intToHexStr                            ; 1D1D _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 1D22 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 1D25 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D28 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 1D2B _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 1D2E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1D32 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1D36 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1D39 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1D3D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1D40 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1D44 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D47 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D4B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D4E _ 89. 04 24
        call    _showString                             ; 1D51 _ E8, FFFFF4D8
        nop                                             ; 1D56 _ 90
        leave                                           ; 1D57 _ C9
        ret                                             ; 1D58 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1D59 _ 55
        mov     ebp, esp                                ; 1D5A _ 89. E5
        sub     esp, 56                                 ; 1D5C _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1D5F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D62 _ 89. 04 24
        call    _sheet_alloc                            ; 1D65 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1D6A _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1D6D _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1D72 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1D7A _ 89. 04 24
        call    _memman_alloc_4k                        ; 1D7D _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1D82 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1D85 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1D8D _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1D95 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1D9D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1DA0 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1DA4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1DA7 _ 89. 04 24
        call    _sheet_setbuf                           ; 1DAA _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1DAF _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1DB2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1DB6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1DB9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DBD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DC0 _ 89. 04 24
        call    _make_window8                           ; 1DC3 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1DC8 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1DD0 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1DD8 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1DE0 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1DE8 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1DF0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1DF3 _ 89. 04 24
        call    _make_textbox8                          ; 1DF6 _ E8, 000003AA
        mov     dword [esp+0CH], 72                     ; 1DFB _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1E03 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1E0B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1E0E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E12 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E15 _ 89. 04 24
        call    _sheet_slide                            ; 1E18 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1E1D _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1E25 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1E28 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E2C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E2F _ 89. 04 24
        call    _sheet_updown                           ; 1E32 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1E37 _ 8B. 45, F4
        leave                                           ; 1E3A _ C9
        ret                                             ; 1E3B _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1E3C _ 55
        mov     ebp, esp                                ; 1E3D _ 89. E5
        push    ebx                                     ; 1E3F _ 53
        sub     esp, 68                                 ; 1E40 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1E43 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E46 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1E49 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1E4C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E4F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1E52 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1E55 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1E58 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E5B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E5E _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1E60 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1E68 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1E6C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1E74 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1E7C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1E84 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E87 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E8B _ 89. 04 24
        call    _boxfill8                               ; 1E8E _ E8, FFFFF508
        mov     eax, dword [ebp-18H]                    ; 1E93 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1E96 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E99 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E9C _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1E9E _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1EA6 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1EAA _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1EB2 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1EBA _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1EC2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1EC5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EC9 _ 89. 04 24
        call    _boxfill8                               ; 1ECC _ E8, FFFFF4CA
        mov     eax, dword [ebp-1CH]                    ; 1ED1 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1ED4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1ED7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EDA _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1EDC _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1EE0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1EE8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1EF0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1EF8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1F00 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1F03 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F07 _ 89. 04 24
        call    _boxfill8                               ; 1F0A _ E8, FFFFF48C
        mov     eax, dword [ebp-1CH]                    ; 1F0F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1F12 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F15 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F18 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1F1A _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1F1E _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1F26 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1F2E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1F36 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1F3E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1F41 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F45 _ 89. 04 24
        call    _boxfill8                               ; 1F48 _ E8, FFFFF44E
        mov     eax, dword [ebp-1CH]                    ; 1F4D _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1F50 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1F53 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1F56 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1F59 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1F5C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1F5F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F62 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1F64 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1F68 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1F6C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1F74 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1F78 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1F80 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1F83 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F87 _ 89. 04 24
        call    _boxfill8                               ; 1F8A _ E8, FFFFF40C
        mov     eax, dword [ebp-1CH]                    ; 1F8F _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1F92 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1F95 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1F98 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1F9B _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1F9E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1FA1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FA4 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1FA6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1FAA _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1FAE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1FB6 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1FBA _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1FC2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1FC5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FC9 _ 89. 04 24
        call    _boxfill8                               ; 1FCC _ E8, FFFFF3CA
        mov     eax, dword [ebp-1CH]                    ; 1FD1 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1FD4 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1FD7 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1FDA _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1FDD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FE0 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1FE2 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1FE6 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1FEA _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1FF2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1FFA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 2002 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2005 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2009 _ 89. 04 24
        call    _boxfill8                               ; 200C _ E8, FFFFF38A
        mov     eax, dword [ebp-18H]                    ; 2011 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 2014 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2017 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 201A _ 8B. 00
        mov     dword [esp+18H], 20                     ; 201C _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2024 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2028 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2030 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2038 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 2040 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2043 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2047 _ 89. 04 24
        call    _boxfill8                               ; 204A _ E8, FFFFF34C
        mov     eax, dword [ebp-1CH]                    ; 204F _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 2052 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 2055 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 2058 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 205B _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 205E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2061 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2064 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2066 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 206A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 206E _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2072 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 207A _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 2082 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2085 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2089 _ 89. 04 24
        call    _boxfill8                               ; 208C _ E8, FFFFF30A
        mov     eax, dword [ebp-1CH]                    ; 2091 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 2094 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 2097 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 209A _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 209D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 20A0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20A3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20A6 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 20A8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 20AC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 20B0 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 20B4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 20BC _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 20C4 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 20C7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20CB _ 89. 04 24
        call    _boxfill8                               ; 20CE _ E8, FFFFF2C8
        mov     eax, dword [ebp+10H]                    ; 20D3 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 20D6 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 20DA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 20E2 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 20EA _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 20F2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 20F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 20F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 20FC _ 89. 04 24
        call    _showString                             ; 20FF _ E8, FFFFF12A
        mov     dword [ebp-10H], 0                      ; 2104 _ C7. 45, F0, 00000000
        jmp     ?_073                                   ; 210B _ E9, 00000084

?_066:  mov     dword [ebp-0CH], 0                      ; 2110 _ C7. 45, F4, 00000000
        jmp     ?_072                                   ; 2117 _ EB, 71

?_067:  mov     eax, dword [ebp-10H]                    ; 2119 _ 8B. 45, F0
        shl     eax, 4                                  ; 211C _ C1. E0, 04
        mov     edx, eax                                ; 211F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2121 _ 8B. 45, F4
        add     eax, edx                                ; 2124 _ 01. D0
        add     eax, _closebtn.2453                     ; 2126 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 212B _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 212E _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2131 _ 80. 7D, EF, 40
        jnz     ?_068                                   ; 2135 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2137 _ C6. 45, EF, 00
        jmp     ?_071                                   ; 213B _ EB, 1C

?_068:  cmp     byte [ebp-11H], 36                      ; 213D _ 80. 7D, EF, 24
        jnz     ?_069                                   ; 2141 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2143 _ C6. 45, EF, 0F
        jmp     ?_071                                   ; 2147 _ EB, 10

?_069:  cmp     byte [ebp-11H], 81                      ; 2149 _ 80. 7D, EF, 51
        jnz     ?_070                                   ; 214D _ 75, 06
        mov     byte [ebp-11H], 8                       ; 214F _ C6. 45, EF, 08
        jmp     ?_071                                   ; 2153 _ EB, 04

?_070:  mov     byte [ebp-11H], 7                       ; 2155 _ C6. 45, EF, 07
?_071:  mov     eax, dword [ebp+0CH]                    ; 2159 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 215C _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 215E _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2161 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2164 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2167 _ 8B. 40, 04
        imul    eax, edx                                ; 216A _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 216D _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2170 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2173 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2176 _ 8B. 55, F4
        add     edx, ebx                                ; 2179 _ 01. DA
        add     eax, edx                                ; 217B _ 01. D0
        lea     edx, [ecx+eax]                          ; 217D _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2180 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2184 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2186 _ 83. 45, F4, 01
?_072:  cmp     dword [ebp-0CH], 15                     ; 218A _ 83. 7D, F4, 0F
        jle     ?_067                                   ; 218E _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2190 _ 83. 45, F0, 01
?_073:  cmp     dword [ebp-10H], 13                     ; 2194 _ 83. 7D, F0, 0D
        jle     ?_066                                   ; 2198 _ 0F 8E, FFFFFF72
        nop                                             ; 219E _ 90
        add     esp, 68                                 ; 219F _ 83. C4, 44
        pop     ebx                                     ; 21A2 _ 5B
        pop     ebp                                     ; 21A3 _ 5D
        ret                                             ; 21A4 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 21A5 _ 55
        mov     ebp, esp                                ; 21A6 _ 89. E5
        push    edi                                     ; 21A8 _ 57
        push    esi                                     ; 21A9 _ 56
        push    ebx                                     ; 21AA _ 53
        sub     esp, 44                                 ; 21AB _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 21AE _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 21B1 _ 8B. 45, 14
        add     eax, edx                                ; 21B4 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 21B6 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 21B9 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 21BC _ 8B. 45, 18
        add     eax, edx                                ; 21BF _ 01. D0
        mov     dword [ebp-14H], eax                    ; 21C1 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 21C4 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 21C7 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 21CA _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 21CD _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 21D0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 21D3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 21D6 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 21D9 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 21DC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21DF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21E5 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 21E7 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 21EB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21EF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21F3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 21F7 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 21FF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2203 _ 89. 04 24
        call    _boxfill8                               ; 2206 _ E8, FFFFF190
        mov     eax, dword [ebp-14H]                    ; 220B _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 220E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2211 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2214 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2217 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 221A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 221D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2220 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2226 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2229 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 222C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 222E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2232 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2236 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 223A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 223E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2246 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 224A _ 89. 04 24
        call    _boxfill8                               ; 224D _ E8, FFFFF149
        mov     eax, dword [ebp-14H]                    ; 2252 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2255 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2258 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 225B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 225E _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2261 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2264 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2267 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 226A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 226D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2270 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2273 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2275 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2279 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 227D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2281 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2285 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 228D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2291 _ 89. 04 24
        call    _boxfill8                               ; 2294 _ E8, FFFFF102
        mov     eax, dword [ebp-14H]                    ; 2299 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 229C _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 229F _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 22A2 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 22A5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 22A8 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 22AB _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 22AE _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 22B1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 22B4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 22B7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22BA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 22BC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 22C0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 22C4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 22C8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 22CC _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 22D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22D8 _ 89. 04 24
        call    _boxfill8                               ; 22DB _ E8, FFFFF0BB
        mov     eax, dword [ebp+10H]                    ; 22E0 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 22E3 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 22E6 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 22E9 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 22EC _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 22EF _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 22F2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 22F5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 22F8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22FB _ 8B. 00
        mov     dword [esp+18H], esi                    ; 22FD _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2301 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2304 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2308 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 230C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2310 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2318 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 231C _ 89. 04 24
        call    _boxfill8                               ; 231F _ E8, FFFFF077
        mov     eax, dword [ebp+0CH]                    ; 2324 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2327 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 232A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 232D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2330 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2333 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2336 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2339 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 233C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 233F _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2341 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2344 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2348 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 234C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2350 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2354 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 235C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2360 _ 89. 04 24
        call    _boxfill8                               ; 2363 _ E8, FFFFF033
        mov     eax, dword [ebp-14H]                    ; 2368 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 236B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 236E _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 2371 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2374 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2377 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 237A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 237D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2380 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2383 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2385 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2389 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 238C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2390 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2394 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2398 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 23A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23A4 _ 89. 04 24
        call    _boxfill8                               ; 23A7 _ E8, FFFFEFEF
        mov     eax, dword [ebp-14H]                    ; 23AC _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 23AF _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 23B2 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 23B5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 23B8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 23BB _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 23BE _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 23C1 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 23C4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 23C7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 23CA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23CD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 23CF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 23D3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 23D7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 23DB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 23DF _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 23E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23EB _ 89. 04 24
        call    _boxfill8                               ; 23EE _ E8, FFFFEFA8
        mov     eax, dword [ebp+10H]                    ; 23F3 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 23F6 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 23F9 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 23FC _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 23FF _ 8B. 45, 1C
        movzx   eax, al                                 ; 2402 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2405 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2408 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 240B _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 240E _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2410 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2413 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2417 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 241A _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 241E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2422 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2426 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 242A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 242E _ 89. 14 24
        call    _boxfill8                               ; 2431 _ E8, FFFFEF65
        nop                                             ; 2436 _ 90
        add     esp, 44                                 ; 2437 _ 83. C4, 2C
        pop     ebx                                     ; 243A _ 5B
        pop     esi                                     ; 243B _ 5E
        pop     edi                                     ; 243C _ 5F
        pop     ebp                                     ; 243D _ 5D
        ret                                             ; 243E _ C3
; _make_textbox8 End of function

        nop                                             ; 243F _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2440 _ 55
        mov     ebp, esp                                ; 2441 _ 89. E5
        sub     esp, 40                                 ; 2443 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2446 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 244E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2451 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2454 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2459 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 245C _ 83. 7D, F0, 00
        jnz     ?_074                                   ; 2460 _ 75, 0A
        mov     eax, 0                                  ; 2462 _ B8, 00000000
        jmp     ?_078                                   ; 2467 _ E9, 0000009D

?_074:  mov     eax, dword [ebp+10H]                    ; 246C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 246F _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2473 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2477 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 247A _ 89. 04 24
        call    _memman_alloc_4k                        ; 247D _ E8, 00000000(rel)
        mov     edx, eax                                ; 2482 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2484 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2487 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 248A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 248D _ 8B. 40, 04
        test    eax, eax                                ; 2490 _ 85. C0
        jnz     ?_075                                   ; 2492 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2494 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2497 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 249F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24A6 _ 89. 04 24
        call    _memman_free_4k                         ; 24A9 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 24AE _ B8, 00000000
        jmp     ?_078                                   ; 24B3 _ EB, 54

?_075:  mov     eax, dword [ebp-10H]                    ; 24B5 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 24B8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24BB _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 24BD _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 24C0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 24C3 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 24C6 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 24C9 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 24CC _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 24CF _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 24D2 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 24D9 _ C7. 45, F4, 00000000
        jmp     ?_077                                   ; 24E0 _ EB, 1B

?_076:  mov     edx, dword [ebp-10H]                    ; 24E2 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 24E5 _ 8B. 45, F4
        add     eax, 33                                 ; 24E8 _ 83. C0, 21
        shl     eax, 5                                  ; 24EB _ C1. E0, 05
        add     eax, edx                                ; 24EE _ 01. D0
        add     eax, 16                                 ; 24F0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 24F3 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 24F9 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 255                    ; 24FD _ 81. 7D, F4, 000000FF
        jle     ?_076                                   ; 2504 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 2506 _ 8B. 45, F0
?_078:  leave                                           ; 2509 _ C9
        ret                                             ; 250A _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 250B _ 55
        mov     ebp, esp                                ; 250C _ 89. E5
        sub     esp, 16                                 ; 250E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2511 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 2518 _ EB, 5B

?_079:  mov     edx, dword [ebp+8H]                     ; 251A _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 251D _ 8B. 45, FC
        add     eax, 33                                 ; 2520 _ 83. C0, 21
        shl     eax, 5                                  ; 2523 _ C1. E0, 05
        add     eax, edx                                ; 2526 _ 01. D0
        add     eax, 16                                 ; 2528 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 252B _ 8B. 00
        test    eax, eax                                ; 252D _ 85. C0
        jnz     ?_080                                   ; 252F _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2531 _ 8B. 45, FC
        shl     eax, 5                                  ; 2534 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2537 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 253D _ 8B. 45, 08
        add     eax, edx                                ; 2540 _ 01. D0
        add     eax, 4                                  ; 2542 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2545 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2548 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 254B _ 8B. 55, FC
        add     edx, 4                                  ; 254E _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2551 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2554 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 2558 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 255B _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2562 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2565 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 256C _ 8B. 45, F8
        jmp     ?_082                                   ; 256F _ EB, 12

?_080:  add     dword [ebp-4H], 1                       ; 2571 _ 83. 45, FC, 01
?_081:  cmp     dword [ebp-4H], 255                     ; 2575 _ 81. 7D, FC, 000000FF
        jle     ?_079                                   ; 257C _ 7E, 9C
        mov     eax, 0                                  ; 257E _ B8, 00000000
?_082:  leave                                           ; 2583 _ C9
        ret                                             ; 2584 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 2585 _ 55
        mov     ebp, esp                                ; 2586 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2588 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 258B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 258E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2590 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2593 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2596 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2599 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 259C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 259F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 25A2 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 25A5 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 25A8 _ 89. 50, 14
        nop                                             ; 25AB _ 90
        pop     ebp                                     ; 25AC _ 5D
        ret                                             ; 25AD _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 25AE _ 55
        mov     ebp, esp                                ; 25AF _ 89. E5
        push    edi                                     ; 25B1 _ 57
        push    esi                                     ; 25B2 _ 56
        push    ebx                                     ; 25B3 _ 53
        sub     esp, 60                                 ; 25B4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 25B7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 25BA _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 25BD _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 25C0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25C3 _ 8B. 40, 10
        add     eax, 1                                  ; 25C6 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 25C9 _ 39. 45, 10
        jle     ?_083                                   ; 25CC _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 25CE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25D1 _ 8B. 40, 10
        add     eax, 1                                  ; 25D4 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 25D7 _ 89. 45, 10
?_083:  cmp     dword [ebp+10H], -1                     ; 25DA _ 83. 7D, 10, FF
        jge     ?_084                                   ; 25DE _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 25E0 _ C7. 45, 10, FFFFFFFF
?_084:  mov     eax, dword [ebp+0CH]                    ; 25E7 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 25EA _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 25ED _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 25F0 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 25F3 _ 3B. 45, 10
        jle     ?_091                                   ; 25F6 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 25FC _ 83. 7D, 10, 00
        js      ?_087                                   ; 2600 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2606 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2609 _ 89. 45, E4
        jmp     ?_086                                   ; 260C _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 260E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2611 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2614 _ 8B. 45, 08
        add     edx, 4                                  ; 2617 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 261A _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 261E _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2621 _ 8B. 55, E4
        add     edx, 4                                  ; 2624 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2627 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 262B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 262E _ 8B. 55, E4
        add     edx, 4                                  ; 2631 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2634 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2638 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 263B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 263E _ 83. 6D, E4, 01
?_086:  mov     eax, dword [ebp-1CH]                    ; 2642 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2645 _ 3B. 45, 10
        jg      ?_085                                   ; 2648 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 264A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 264D _ 8B. 55, 10
        add     edx, 4                                  ; 2650 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2653 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2656 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 265A _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 265D _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2660 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2663 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2666 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2669 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 266C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 266F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2672 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2675 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2678 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 267B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 267E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2681 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2684 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2687 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 268A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 268E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2692 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2696 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 269A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 269E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26A1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 26A4 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 26A9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 26AC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 26AF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26B2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26B5 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26B8 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26BB _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26BE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26C1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26C4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26C7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26CA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26CD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26D0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26D3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26D6 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 26D9 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 26DC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 26E0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 26E4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 26E8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 26EC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 26F0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26F4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26F7 _ 89. 04 24
        call    _sheet_refreshsub                       ; 26FA _ E8, 00000465
        jmp     ?_098                                   ; 26FF _ E9, 0000027D

?_087:  mov     eax, dword [ebp+8H]                     ; 2704 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2707 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 270A _ 39. 45, E0
        jge     ?_090                                   ; 270D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 270F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2712 _ 89. 45, E4
        jmp     ?_089                                   ; 2715 _ EB, 34

?_088:  mov     eax, dword [ebp-1CH]                    ; 2717 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 271A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 271D _ 8B. 45, 08
        add     edx, 4                                  ; 2720 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2723 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2727 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 272A _ 8B. 55, E4
        add     edx, 4                                  ; 272D _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2730 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2734 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2737 _ 8B. 55, E4
        add     edx, 4                                  ; 273A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 273D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2741 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2744 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2747 _ 83. 45, E4, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 274B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 274E _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2751 _ 39. 45, E4
        jl      ?_088                                   ; 2754 _ 7C, C1
?_090:  mov     eax, dword [ebp+8H]                     ; 2756 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2759 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 275C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 275F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2762 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2765 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2768 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 276B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 276E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2771 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2774 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2777 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 277A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 277D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2780 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2783 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2786 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2789 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 278C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 278F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2797 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 279B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 279F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27A3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27A7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27AA _ 89. 04 24
        call    _sheet_refreshmap                       ; 27AD _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 27B2 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 27B5 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 27B8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27BB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27BE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27C1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27C4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27C7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27CA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27CD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27D0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27D3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27D6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27D9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27DC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27DF _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 27E2 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 27E6 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 27EE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 27F2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27F6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27FA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2801 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2804 _ E8, 0000035B
        jmp     ?_098                                   ; 2809 _ E9, 00000173

?_091:  mov     eax, dword [ebp-20H]                    ; 280E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2811 _ 3B. 45, 10
        jge     ?_098                                   ; 2814 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 281A _ 83. 7D, E0, 00
        js      ?_094                                   ; 281E _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2820 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2823 _ 89. 45, E4
        jmp     ?_093                                   ; 2826 _ EB, 34

?_092:  mov     eax, dword [ebp-1CH]                    ; 2828 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 282B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 282E _ 8B. 45, 08
        add     edx, 4                                  ; 2831 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2834 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2838 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 283B _ 8B. 55, E4
        add     edx, 4                                  ; 283E _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2841 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2845 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2848 _ 8B. 55, E4
        add     edx, 4                                  ; 284B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 284E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2852 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2855 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2858 _ 83. 45, E4, 01
?_093:  mov     eax, dword [ebp-1CH]                    ; 285C _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 285F _ 3B. 45, 10
        jl      ?_092                                   ; 2862 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2864 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2867 _ 8B. 55, 10
        add     edx, 4                                  ; 286A _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 286D _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2870 _ 89. 4C 90, 04
        jmp     ?_097                                   ; 2874 _ EB, 6C

?_094:  mov     eax, dword [ebp+8H]                     ; 2876 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2879 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 287C _ 89. 45, E4
        jmp     ?_096                                   ; 287F _ EB, 3A

?_095:  mov     eax, dword [ebp-1CH]                    ; 2881 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 2884 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 2887 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 288A _ 8B. 55, E4
        add     edx, 4                                  ; 288D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2890 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2894 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 2897 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 289A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 289E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 28A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28A4 _ 8B. 45, 08
        add     edx, 4                                  ; 28A7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28AA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 28AE _ 8B. 55, E4
        add     edx, 1                                  ; 28B1 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 28B4 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 28B7 _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 28BB _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 28BE _ 3B. 45, 10
        jge     ?_095                                   ; 28C1 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 28C3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 28C6 _ 8B. 55, 10
        add     edx, 4                                  ; 28C9 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 28CC _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 28CF _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 28D3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28D6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 28D9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28DC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28DF _ 89. 50, 10
?_097:  mov     eax, dword [ebp+0CH]                    ; 28E2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28E5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28E8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28EB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28EE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28F1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28F4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28F7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28FA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28FD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2900 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2903 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2906 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2909 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 290C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 290F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2913 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2917 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 291B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 291F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2923 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2926 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2929 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 292E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2931 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2934 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2937 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 293A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 293D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2940 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2943 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2946 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2949 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 294C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 294F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2952 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2955 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2958 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 295B _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 295F _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2962 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2966 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 296A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 296E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2972 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2976 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2979 _ 89. 04 24
        call    _sheet_refreshsub                       ; 297C _ E8, 000001E3
?_098:  nop                                             ; 2981 _ 90
        add     esp, 60                                 ; 2982 _ 83. C4, 3C
        pop     ebx                                     ; 2985 _ 5B
        pop     esi                                     ; 2986 _ 5E
        pop     edi                                     ; 2987 _ 5F
        pop     ebp                                     ; 2988 _ 5D
        ret                                             ; 2989 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 298A _ 55
        mov     ebp, esp                                ; 298B _ 89. E5
        push    edi                                     ; 298D _ 57
        push    esi                                     ; 298E _ 56
        push    ebx                                     ; 298F _ 53
        sub     esp, 60                                 ; 2990 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2993 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2996 _ 8B. 40, 18
        test    eax, eax                                ; 2999 _ 85. C0
        js      ?_099                                   ; 299B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 299D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 29A0 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 29A3 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 29A6 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 29A9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29AC _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 29AF _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 29B2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 29B5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29B8 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 29BB _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 29BE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29C1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29C4 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 29C7 _ 8B. 45, 14
        add     edx, eax                                ; 29CA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 29CC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29CF _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 29D2 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 29D5 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 29D8 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 29DB _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 29DF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 29E3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 29E7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 29EB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 29EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29F6 _ 89. 04 24
        call    _sheet_refreshsub                       ; 29F9 _ E8, 00000166
?_099:  mov     eax, 0                                  ; 29FE _ B8, 00000000
        add     esp, 60                                 ; 2A03 _ 83. C4, 3C
        pop     ebx                                     ; 2A06 _ 5B
        pop     esi                                     ; 2A07 _ 5E
        pop     edi                                     ; 2A08 _ 5F
        pop     ebp                                     ; 2A09 _ 5D
        ret                                             ; 2A0A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 2A0B _ 55
        mov     ebp, esp                                ; 2A0C _ 89. E5
        push    esi                                     ; 2A0E _ 56
        push    ebx                                     ; 2A0F _ 53
        sub     esp, 48                                 ; 2A10 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2A13 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A16 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2A19 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2A1C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2A1F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2A22 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2A25 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A28 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2A2B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A2E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2A31 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2A34 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A37 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A3A _ 8B. 40, 18
        test    eax, eax                                ; 2A3D _ 85. C0
        js      ?_100                                   ; 2A3F _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2A45 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2A48 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2A4B _ 8B. 45, F0
        add     edx, eax                                ; 2A4E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2A50 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2A53 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 2A56 _ 8B. 45, F4
        add     eax, ecx                                ; 2A59 _ 01. C8
        mov     dword [esp+14H], 0                      ; 2A5B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2A63 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2A67 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2A6B _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2A6E _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2A72 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A75 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A79 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A7C _ 89. 04 24
        call    _sheet_refreshmap                       ; 2A7F _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 2A84 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2A87 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2A8A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2A8D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2A90 _ 8B. 45, 14
        add     edx, eax                                ; 2A93 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2A95 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2A98 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 2A9B _ 8B. 45, 10
        add     eax, ebx                                ; 2A9E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 2AA0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2AA4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2AA8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2AAC _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2AAF _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2AB3 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2AB6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2ABA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2ABD _ 89. 04 24
        call    _sheet_refreshmap                       ; 2AC0 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 2AC5 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2AC8 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2ACB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2ACE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2AD1 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2AD4 _ 8B. 45, F0
        add     edx, eax                                ; 2AD7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2AD9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2ADC _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2ADF _ 8B. 45, F4
        add     eax, ebx                                ; 2AE2 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2AE4 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2AE8 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2AF0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2AF4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2AF8 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2AFB _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2AFF _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2B02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B09 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2B0C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2B11 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2B14 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2B17 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2B1A _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2B1D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B20 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2B23 _ 8B. 45, 14
        add     edx, eax                                ; 2B26 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B28 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 2B2B _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2B2E _ 8B. 45, 10
        add     eax, esi                                ; 2B31 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2B33 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2B37 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2B3B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2B3F _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2B43 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2B46 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2B4A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2B4D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B51 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B54 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2B57 _ E8, 00000008
?_100:  nop                                             ; 2B5C _ 90
        add     esp, 48                                 ; 2B5D _ 83. C4, 30
        pop     ebx                                     ; 2B60 _ 5B
        pop     esi                                     ; 2B61 _ 5E
        pop     ebp                                     ; 2B62 _ 5D
        ret                                             ; 2B63 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2B64 _ 55
        mov     ebp, esp                                ; 2B65 _ 89. E5
        sub     esp, 48                                 ; 2B67 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2B6A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B6D _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 2B6F _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2B72 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B75 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2B78 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2B7B _ 83. 7D, 0C, 00
        jns     ?_101                                   ; 2B7F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B81 _ C7. 45, 0C, 00000000
?_101:  cmp     dword [ebp+10H], 8                      ; 2B88 _ 83. 7D, 10, 08
        jg      ?_102                                   ; 2B8C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2B8E _ C7. 45, 10, 00000000
?_102:  mov     eax, dword [ebp+8H]                     ; 2B95 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B98 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2B9B _ 39. 45, 14
        jle     ?_103                                   ; 2B9E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BA0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BA3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2BA6 _ 89. 45, 14
?_103:  mov     eax, dword [ebp+8H]                     ; 2BA9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BAC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2BAF _ 39. 45, 18
        jle     ?_104                                   ; 2BB2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BB4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BB7 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2BBA _ 89. 45, 18
?_104:  mov     eax, dword [ebp+1CH]                    ; 2BBD _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2BC0 _ 89. 45, FC
        jmp     ?_111                                   ; 2BC3 _ E9, 0000010F

?_105:  mov     eax, dword [ebp+8H]                     ; 2BC8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BCB _ 8B. 55, FC
        add     edx, 4                                  ; 2BCE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BD1 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2BD5 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2BD8 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2BDB _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2BDD _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2BE0 _ 8B. 45, 08
        add     eax, 1044                               ; 2BE3 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2BE8 _ 8B. 55, E8
        sub     edx, eax                                ; 2BEB _ 29. C2
        mov     eax, edx                                ; 2BED _ 89. D0
        sar     eax, 5                                  ; 2BEF _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2BF2 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2BF5 _ C7. 45, F4, 00000000
        jmp     ?_110                                   ; 2BFC _ E9, 000000C3

?_106:  mov     eax, dword [ebp-18H]                    ; 2C01 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2C04 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2C07 _ 8B. 45, F4
        add     eax, edx                                ; 2C0A _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2C0C _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2C0F _ C7. 45, F8, 00000000
        jmp     ?_109                                   ; 2C16 _ E9, 00000096

?_107:  mov     eax, dword [ebp-18H]                    ; 2C1B _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2C1E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2C21 _ 8B. 45, F8
        add     eax, edx                                ; 2C24 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2C26 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2C29 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2C2C _ 3B. 45, D8
        jg      ?_108                                   ; 2C2F _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2C31 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2C34 _ 3B. 45, 14
        jge     ?_108                                   ; 2C37 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2C39 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2C3C _ 3B. 45, DC
        jg      ?_108                                   ; 2C3F _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2C41 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2C44 _ 3B. 45, 18
        jge     ?_108                                   ; 2C47 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2C49 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2C4C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2C4F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2C53 _ 8B. 55, F8
        add     eax, edx                                ; 2C56 _ 01. D0
        mov     edx, eax                                ; 2C58 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2C5A _ 8B. 45, E4
        add     eax, edx                                ; 2C5D _ 01. D0
        movzx   eax, byte [eax]                         ; 2C5F _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2C62 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2C65 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C68 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2C6B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2C6F _ 8B. 55, D8
        add     eax, edx                                ; 2C72 _ 01. D0
        mov     edx, eax                                ; 2C74 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2C76 _ 8B. 45, EC
        add     eax, edx                                ; 2C79 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C7B _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 2C7E _ 38. 45, E3
        jnz     ?_108                                   ; 2C81 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2C83 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2C87 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2C8A _ 8B. 52, 14
        cmp     eax, edx                                ; 2C8D _ 39. D0
        jz      ?_108                                   ; 2C8F _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2C91 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C94 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2C97 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2C9B _ 8B. 55, D8
        add     eax, edx                                ; 2C9E _ 01. D0
        mov     edx, eax                                ; 2CA0 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2CA2 _ 8B. 45, F0
        add     edx, eax                                ; 2CA5 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2CA7 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2CAB _ 88. 02
?_108:  add     dword [ebp-8H], 1                       ; 2CAD _ 83. 45, F8, 01
?_109:  mov     eax, dword [ebp-18H]                    ; 2CB1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2CB4 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2CB7 _ 39. 45, F8
        jl      ?_107                                   ; 2CBA _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2CC0 _ 83. 45, F4, 01
?_110:  mov     eax, dword [ebp-18H]                    ; 2CC4 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2CC7 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2CCA _ 39. 45, F4
        jl      ?_106                                   ; 2CCD _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2CD3 _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp-4H]                     ; 2CD7 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2CDA _ 3B. 45, 20
        jle     ?_105                                   ; 2CDD _ 0F 8E, FFFFFEE5
        nop                                             ; 2CE3 _ 90
        leave                                           ; 2CE4 _ C9
        ret                                             ; 2CE5 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2CE6 _ 55
        mov     ebp, esp                                ; 2CE7 _ 89. E5
        sub     esp, 64                                 ; 2CE9 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2CEC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2CEF _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2CF2 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2CF5 _ 83. 7D, 0C, 00
        jns     ?_112                                   ; 2CF9 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2CFB _ C7. 45, 0C, 00000000
?_112:  cmp     dword [ebp+10H], 0                      ; 2D02 _ 83. 7D, 10, 00
        jns     ?_113                                   ; 2D06 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2D08 _ C7. 45, 10, 00000000
?_113:  mov     eax, dword [ebp+8H]                     ; 2D0F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D12 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2D15 _ 39. 45, 14
        jle     ?_114                                   ; 2D18 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2D1A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D1D _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2D20 _ 89. 45, 14
?_114:  mov     eax, dword [ebp+8H]                     ; 2D23 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D26 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2D29 _ 39. 45, 18
        jle     ?_115                                   ; 2D2C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2D2E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D31 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2D34 _ 89. 45, 18
?_115:  mov     eax, dword [ebp+1CH]                    ; 2D37 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2D3A _ 89. 45, FC
        jmp     ?_126                                   ; 2D3D _ E9, 00000139

?_116:  mov     eax, dword [ebp+8H]                     ; 2D42 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D45 _ 8B. 55, FC
        add     edx, 4                                  ; 2D48 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D4B _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 2D4F _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2D52 _ 8B. 45, 08
        add     eax, 1044                               ; 2D55 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2D5A _ 8B. 55, DC
        sub     edx, eax                                ; 2D5D _ 29. C2
        mov     eax, edx                                ; 2D5F _ 89. D0
        sar     eax, 5                                  ; 2D61 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2D64 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2D67 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2D6A _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2D6C _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2D6F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2D72 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2D75 _ 8B. 55, 0C
        sub     edx, eax                                ; 2D78 _ 29. C2
        mov     eax, edx                                ; 2D7A _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2D7C _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 2D7F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2D82 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2D85 _ 8B. 55, 10
        sub     edx, eax                                ; 2D88 _ 29. C2
        mov     eax, edx                                ; 2D8A _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2D8C _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 2D8F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2D92 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2D95 _ 8B. 55, 14
        sub     edx, eax                                ; 2D98 _ 29. C2
        mov     eax, edx                                ; 2D9A _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2D9C _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2D9F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2DA2 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2DA5 _ 8B. 55, 18
        sub     edx, eax                                ; 2DA8 _ 29. C2
        mov     eax, edx                                ; 2DAA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2DAC _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2DAF _ 83. 7D, F0, 00
        jns     ?_117                                   ; 2DB3 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2DB5 _ C7. 45, F0, 00000000
?_117:  cmp     dword [ebp-14H], 0                      ; 2DBC _ 83. 7D, EC, 00
        jns     ?_118                                   ; 2DC0 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2DC2 _ C7. 45, EC, 00000000
?_118:  mov     eax, dword [ebp-24H]                    ; 2DC9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2DCC _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2DCF _ 39. 45, E8
        jle     ?_119                                   ; 2DD2 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2DD4 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2DD7 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2DDA _ 89. 45, E8
?_119:  mov     eax, dword [ebp-24H]                    ; 2DDD _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2DE0 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2DE3 _ 39. 45, E4
        jle     ?_120                                   ; 2DE6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2DE8 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2DEB _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2DEE _ 89. 45, E4
?_120:  mov     eax, dword [ebp-14H]                    ; 2DF1 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2DF4 _ 89. 45, F4
        jmp     ?_125                                   ; 2DF7 _ EB, 76

?_121:  mov     eax, dword [ebp-24H]                    ; 2DF9 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2DFC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2DFF _ 8B. 45, F4
        add     eax, edx                                ; 2E02 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2E04 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E07 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2E0A _ 89. 45, F8
        jmp     ?_124                                   ; 2E0D _ EB, 54

?_122:  mov     eax, dword [ebp-24H]                    ; 2E0F _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2E12 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2E15 _ 8B. 45, F8
        add     eax, edx                                ; 2E18 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2E1A _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2E1D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2E20 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2E23 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2E27 _ 8B. 55, F8
        add     eax, edx                                ; 2E2A _ 01. D0
        mov     edx, eax                                ; 2E2C _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2E2E _ 8B. 45, D4
        add     eax, edx                                ; 2E31 _ 01. D0
        movzx   eax, byte [eax]                         ; 2E33 _ 0F B6. 00
        movzx   eax, al                                 ; 2E36 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2E39 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2E3C _ 8B. 52, 14
        cmp     eax, edx                                ; 2E3F _ 39. D0
        jz      ?_123                                   ; 2E41 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2E43 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E46 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2E49 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2E4D _ 8B. 55, CC
        add     eax, edx                                ; 2E50 _ 01. D0
        mov     edx, eax                                ; 2E52 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2E54 _ 8B. 45, E0
        add     edx, eax                                ; 2E57 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2E59 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2E5D _ 88. 02
?_123:  add     dword [ebp-8H], 1                       ; 2E5F _ 83. 45, F8, 01
?_124:  mov     eax, dword [ebp-8H]                     ; 2E63 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2E66 _ 3B. 45, E8
        jl      ?_122                                   ; 2E69 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2E6B _ 83. 45, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 2E6F _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2E72 _ 3B. 45, E4
        jl      ?_121                                   ; 2E75 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2E77 _ 83. 45, FC, 01
?_126:  mov     eax, dword [ebp+8H]                     ; 2E7B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E7E _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2E81 _ 39. 45, FC
        jle     ?_116                                   ; 2E84 _ 0F 8E, FFFFFEB8
        nop                                             ; 2E8A _ 90
        leave                                           ; 2E8B _ C9
        ret                                             ; 2E8C _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2E8D _ 90
        nop                                             ; 2E8E _ 90
        nop                                             ; 2E8F _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2E90 _ 55
        mov     ebp, esp                                ; 2E91 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E93 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2E96 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E9C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E9F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2EA6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2EA9 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2EB0 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2EB3 _ C7. 40, 0C, 00000000
        nop                                             ; 2EBA _ 90
        pop     ebp                                     ; 2EBB _ 5D
        ret                                             ; 2EBC _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2EBD _ 55
        mov     ebp, esp                                ; 2EBE _ 89. E5
        sub     esp, 16                                 ; 2EC0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2EC3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2ECA _ C7. 45, FC, 00000000
        jmp     ?_128                                   ; 2ED1 _ EB, 14

?_127:  mov     eax, dword [ebp+8H]                     ; 2ED3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2ED6 _ 8B. 55, FC
        add     edx, 2                                  ; 2ED9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2EDC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2EE0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2EE3 _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2EE7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EEA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2EEC _ 39. 45, FC
        jc      ?_127                                   ; 2EEF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2EF1 _ 8B. 45, F8
        leave                                           ; 2EF4 _ C9
        ret                                             ; 2EF5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2EF6 _ 55
        mov     ebp, esp                                ; 2EF7 _ 89. E5
        sub     esp, 16                                 ; 2EF9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2EFC _ C7. 45, FC, 00000000
        jmp     ?_132                                   ; 2F03 _ E9, 00000083

?_129:  mov     eax, dword [ebp+8H]                     ; 2F08 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F0B _ 8B. 55, FC
        add     edx, 2                                  ; 2F0E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2F11 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2F15 _ 39. 45, 0C
        ja      ?_131                                   ; 2F18 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2F1A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F1D _ 8B. 55, FC
        add     edx, 2                                  ; 2F20 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2F23 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2F26 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2F29 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F2C _ 8B. 55, FC
        add     edx, 2                                  ; 2F2F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2F32 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2F35 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2F38 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F3B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F3E _ 8B. 55, FC
        add     edx, 2                                  ; 2F41 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2F44 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2F47 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F4A _ 8B. 55, FC
        add     edx, 2                                  ; 2F4D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2F50 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2F54 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2F57 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2F5A _ 8B. 4D, FC
        add     ecx, 2                                  ; 2F5D _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2F60 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2F64 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F67 _ 8B. 55, FC
        add     edx, 2                                  ; 2F6A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2F6D _ 8B. 44 D0, 04
        test    eax, eax                                ; 2F71 _ 85. C0
        jnz     ?_130                                   ; 2F73 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2F75 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F78 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2F7A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F7D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F80 _ 89. 10
?_130:  mov     eax, dword [ebp-8H]                     ; 2F82 _ 8B. 45, F8
        jmp     ?_133                                   ; 2F85 _ EB, 17

?_131:  add     dword [ebp-4H], 1                       ; 2F87 _ 83. 45, FC, 01
?_132:  mov     eax, dword [ebp+8H]                     ; 2F8B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F8E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2F90 _ 39. 45, FC
        jc      ?_129                                   ; 2F93 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2F99 _ B8, 00000000
?_133:  leave                                           ; 2F9E _ C9
        ret                                             ; 2F9F _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2FA0 _ 55
        mov     ebp, esp                                ; 2FA1 _ 89. E5
        push    ebx                                     ; 2FA3 _ 53
        sub     esp, 16                                 ; 2FA4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2FA7 _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2FAE _ EB, 15

?_134:  mov     eax, dword [ebp+8H]                     ; 2FB0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2FB3 _ 8B. 55, F8
        add     edx, 2                                  ; 2FB6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2FB9 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2FBC _ 39. 45, 0C
        jc      ?_136                                   ; 2FBF _ 72, 10
        add     dword [ebp-8H], 1                       ; 2FC1 _ 83. 45, F8, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 2FC5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FC8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2FCA _ 39. 45, F8
        jl      ?_134                                   ; 2FCD _ 7C, E1
        jmp     ?_137                                   ; 2FCF _ EB, 01

?_136:  nop                                             ; 2FD1 _ 90
?_137:  cmp     dword [ebp-8H], 0                       ; 2FD2 _ 83. 7D, F8, 00
        jle     ?_139                                   ; 2FD6 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2FDC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2FDF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2FE2 _ 8B. 45, 08
        add     edx, 2                                  ; 2FE5 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2FE8 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2FEB _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2FEE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2FF1 _ 8B. 45, 08
        add     edx, 2                                  ; 2FF4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2FF7 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2FFB _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2FFD _ 39. 45, 0C
        jne     ?_139                                   ; 3000 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 3006 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3009 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 300C _ 8B. 45, 08
        add     edx, 2                                  ; 300F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3012 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 3016 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3019 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 301C _ 8B. 45, 10
        add     ecx, eax                                ; 301F _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3021 _ 8B. 45, 08
        add     edx, 2                                  ; 3024 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3027 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 302B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 302E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3030 _ 39. 45, F8
        jge     ?_138                                   ; 3033 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 3035 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3038 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 303B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 303E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3041 _ 8B. 55, F8
        add     edx, 2                                  ; 3044 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3047 _ 8B. 04 D0
        cmp     ecx, eax                                ; 304A _ 39. C1
        jnz     ?_138                                   ; 304C _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 304E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3051 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3054 _ 8B. 45, 08
        add     edx, 2                                  ; 3057 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 305A _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 305E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3061 _ 8B. 55, F8
        add     edx, 2                                  ; 3064 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3067 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 306B _ 8B. 55, F8
        sub     edx, 1                                  ; 306E _ 83. EA, 01
        add     ecx, eax                                ; 3071 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3073 _ 8B. 45, 08
        add     edx, 2                                  ; 3076 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3079 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 307D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3080 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3082 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3085 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3088 _ 89. 10
?_138:  mov     eax, 0                                  ; 308A _ B8, 00000000
        jmp     ?_145                                   ; 308F _ E9, 0000011C

?_139:  mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3097 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3099 _ 39. 45, F8
        jge     ?_140                                   ; 309C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 309E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 30A1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 30A4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 30A7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 30AA _ 8B. 55, F8
        add     edx, 2                                  ; 30AD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 30B0 _ 8B. 04 D0
        cmp     ecx, eax                                ; 30B3 _ 39. C1
        jnz     ?_140                                   ; 30B5 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 30B7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 30BA _ 8B. 55, F8
        add     edx, 2                                  ; 30BD _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 30C0 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 30C3 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 30C6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 30C9 _ 8B. 55, F8
        add     edx, 2                                  ; 30CC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 30CF _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 30D3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 30D6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 30D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 30DC _ 8B. 55, F8
        add     edx, 2                                  ; 30DF _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 30E2 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 30E6 _ B8, 00000000
        jmp     ?_145                                   ; 30EB _ E9, 000000C0

?_140:  mov     eax, dword [ebp+8H]                     ; 30F0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30F3 _ 8B. 00
        cmp     eax, 4095                               ; 30F5 _ 3D, 00000FFF
        jg      ?_144                                   ; 30FA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3100 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3103 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3105 _ 89. 45, F4
        jmp     ?_142                                   ; 3108 _ EB, 28

?_141:  mov     eax, dword [ebp-0CH]                    ; 310A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 310D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3110 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 3113 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 3116 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3119 _ 8B. 45, 08
        add     edx, 2                                  ; 311C _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 311F _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 3122 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 3124 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 3127 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 312A _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 312E _ 83. 6D, F4, 01
?_142:  mov     eax, dword [ebp-0CH]                    ; 3132 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 3135 _ 3B. 45, F8
        jg      ?_141                                   ; 3138 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 313A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 313D _ 8B. 00
        lea     edx, [eax+1H]                           ; 313F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3142 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3145 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3147 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 314A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 314D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3150 _ 8B. 00
        cmp     edx, eax                                ; 3152 _ 39. C2
        jge     ?_143                                   ; 3154 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3156 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3159 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 315B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 315E _ 89. 50, 04
?_143:  mov     eax, dword [ebp+8H]                     ; 3161 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3164 _ 8B. 55, F8
        add     edx, 2                                  ; 3167 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 316A _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 316D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3170 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3173 _ 8B. 55, F8
        add     edx, 2                                  ; 3176 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3179 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 317C _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3180 _ B8, 00000000
        jmp     ?_145                                   ; 3185 _ EB, 29

?_144:  mov     eax, dword [ebp+8H]                     ; 3187 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 318A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 318D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3190 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3193 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3196 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3199 _ 8B. 40, 08
        mov     edx, eax                                ; 319C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 319E _ 8B. 45, 10
        add     eax, edx                                ; 31A1 _ 01. D0
        mov     edx, eax                                ; 31A3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31A5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31A8 _ 89. 50, 08
        mov     eax, 4294967295                         ; 31AB _ B8, FFFFFFFF
?_145:  add     esp, 16                                 ; 31B0 _ 83. C4, 10
        pop     ebx                                     ; 31B3 _ 5B
        pop     ebp                                     ; 31B4 _ 5D
        ret                                             ; 31B5 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 31B6 _ 55
        mov     ebp, esp                                ; 31B7 _ 89. E5
        sub     esp, 24                                 ; 31B9 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 31BC _ 8B. 45, 0C
        add     eax, 4095                               ; 31BF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 31C4 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 31C9 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 31CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 31CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31D6 _ 89. 04 24
        call    _memman_alloc                           ; 31D9 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 31DE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 31E1 _ 8B. 45, FC
        leave                                           ; 31E4 _ C9
        ret                                             ; 31E5 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 31E6 _ 55
        mov     ebp, esp                                ; 31E7 _ 89. E5
        sub     esp, 28                                 ; 31E9 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 31EC _ 8B. 45, 10
        add     eax, 4095                               ; 31EF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 31F4 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 31F9 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 31FC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 31FF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3203 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3206 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 320A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 320D _ 89. 04 24
        call    _memman_free                            ; 3210 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 3215 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3218 _ 8B. 45, FC
        leave                                           ; 321B _ C9
        ret                                             ; 321C _ C3
; _memman_free_4k End of function

        nop                                             ; 321D _ 90
        nop                                             ; 321E _ 90
        nop                                             ; 321F _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3220 _ 55
        mov     ebp, esp                                ; 3221 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3223 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3226 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3229 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 322C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 322F _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3232 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3234 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3237 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 323A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 323D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3240 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3247 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 324A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3251 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3254 _ C7. 40, 08, 00000000
        nop                                             ; 325B _ 90
        pop     ebp                                     ; 325C _ 5D
        ret                                             ; 325D _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 325E _ 55
        mov     ebp, esp                                ; 325F _ 89. E5
        sub     esp, 4                                  ; 3261 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3264 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3267 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 326A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 326D _ 8B. 40, 10
        test    eax, eax                                ; 3270 _ 85. C0
        jnz     ?_146                                   ; 3272 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3274 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3277 _ 8B. 40, 14
        or      eax, 01H                                ; 327A _ 83. C8, 01
        mov     edx, eax                                ; 327D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 327F _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3282 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3285 _ B8, FFFFFFFF
        jmp     ?_148                                   ; 328A _ EB, 50

?_146:  mov     eax, dword [ebp+8H]                     ; 328C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 328F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3291 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3294 _ 8B. 40, 04
        add     edx, eax                                ; 3297 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 3299 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 329D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 329F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 32A2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 32A5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 32A8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 32AB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 32AE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 32B1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 32B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32B7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 32BA _ 39. C2
        jnz     ?_147                                   ; 32BC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 32BE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 32C1 _ C7. 40, 04, 00000000
?_147:  mov     eax, dword [ebp+8H]                     ; 32C8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32CB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 32CE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 32D1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 32D4 _ 89. 50, 10
        mov     eax, 0                                  ; 32D7 _ B8, 00000000
?_148:  leave                                           ; 32DC _ C9
        ret                                             ; 32DD _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 32DE _ 55
        mov     ebp, esp                                ; 32DF _ 89. E5
        sub     esp, 16                                 ; 32E1 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 32E4 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 32E7 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 32EA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32ED _ 8B. 40, 0C
        cmp     edx, eax                                ; 32F0 _ 39. C2
        jnz     ?_149                                   ; 32F2 _ 75, 07
        mov     eax, 4294967295                         ; 32F4 _ B8, FFFFFFFF
        jmp     ?_151                                   ; 32F9 _ EB, 51

?_149:  mov     eax, dword [ebp+8H]                     ; 32FB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 32FE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3300 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3303 _ 8B. 40, 08
        add     eax, edx                                ; 3306 _ 01. D0
        movzx   eax, byte [eax]                         ; 3308 _ 0F B6. 00
        movzx   eax, al                                 ; 330B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 330E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3311 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3314 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3317 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 331A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 331D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3320 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3323 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3326 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3329 _ 8B. 40, 0C
        cmp     edx, eax                                ; 332C _ 39. C2
        jnz     ?_150                                   ; 332E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3330 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3333 _ C7. 40, 08, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 333A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 333D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3340 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3343 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3346 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3349 _ 8B. 45, FC
?_151:  leave                                           ; 334C _ C9
        ret                                             ; 334D _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 334E _ 55
        mov     ebp, esp                                ; 334F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3351 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3354 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3357 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 335A _ 8B. 40, 10
        sub     edx, eax                                ; 335D _ 29. C2
        mov     eax, edx                                ; 335F _ 89. D0
        pop     ebp                                     ; 3361 _ 5D
        ret                                             ; 3362 _ C3
; _fifo8_status End of function

        nop                                             ; 3363 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3364 _ 55
        mov     ebp, esp                                ; 3365 _ 89. E5
        sub     esp, 40                                 ; 3367 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 336A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3372 _ C7. 04 24, 00000043
        call    _io_out8                                ; 3379 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 337E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3386 _ C7. 04 24, 00000040
        call    _io_out8                                ; 338D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 3392 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 339A _ C7. 04 24, 00000040
        call    _io_out8                                ; 33A1 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 33A6 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 33B0 _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 33B7 _ EB, 15

?_152:  mov     eax, dword [ebp-0CH]                    ; 33B9 _ 8B. 45, F4
        shl     eax, 4                                  ; 33BC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 33BF _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 33C4 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 33CA _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 33CE _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 33D5 _ 7E, E2
        nop                                             ; 33D7 _ 90
        leave                                           ; 33D8 _ C9
        ret                                             ; 33D9 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 33DA _ 55
        mov     ebp, esp                                ; 33DB _ 89. E5
        sub     esp, 16                                 ; 33DD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 33E0 _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 33E7 _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 33E9 _ 8B. 45, FC
        shl     eax, 4                                  ; 33EC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 33EF _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 33F4 _ 8B. 00
        test    eax, eax                                ; 33F6 _ 85. C0
        jnz     ?_155                                   ; 33F8 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 33FA _ 8B. 45, FC
        shl     eax, 4                                  ; 33FD _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3400 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3405 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 340B _ 8B. 45, FC
        shl     eax, 4                                  ; 340E _ C1. E0, 04
        add     eax, _timerctl                               ; 3411 _ 05, 00000000(d)
        add     eax, 4                                  ; 3416 _ 83. C0, 04
        jmp     ?_157                                   ; 3419 _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 341B _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 341F _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 3426 _ 7E, C1
        mov     eax, 0                                  ; 3428 _ B8, 00000000
?_157:  leave                                           ; 342D _ C9
        ret                                             ; 342E _ C3
; _timer_alloc End of function

_timer_init:; Function begin
        push    ebp                                     ; 342F _ 55
        mov     ebp, esp                                ; 3430 _ 89. E5
        sub     esp, 4                                  ; 3432 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3435 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3438 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 343B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 343E _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3441 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3444 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3447 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 344B _ 88. 42, 0C
        nop                                             ; 344E _ 90
        leave                                           ; 344F _ C9
        ret                                             ; 3450 _ C3
; _timer_init End of function

_timer_free:; Function begin
        push    ebp                                     ; 3451 _ 55
        mov     ebp, esp                                ; 3452 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3454 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3457 _ C7. 40, 04, 00000000
        nop                                             ; 345E _ 90
        pop     ebp                                     ; 345F _ 5D
        ret                                             ; 3460 _ C3
; _timer_free End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3461 _ 55
        mov     ebp, esp                                ; 3462 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3464 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3467 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 346A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 346C _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 346F _ C7. 40, 04, 00000002
        nop                                             ; 3476 _ 90
        pop     ebp                                     ; 3477 _ 5D
        ret                                             ; 3478 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3479 _ 55
        mov     ebp, esp                                ; 347A _ 89. E5
        sub     esp, 40                                 ; 347C _ 83. EC, 28
        mov     dword [esp+4H], 96                      ; 347F _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 3487 _ C7. 04 24, 00000020
        call    _io_out8                                ; 348E _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3493 _ A1, 00000000(d)
        add     eax, 1                                  ; 3498 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 349B _ A3, 00000000(d)
        mov     dword [ebp-0CH], 0                      ; 34A0 _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 34A7 _ E9, 00000080

?_158:  mov     eax, dword [ebp-0CH]                    ; 34AC _ 8B. 45, F4
        shl     eax, 4                                  ; 34AF _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 34B2 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 34B7 _ 8B. 00
        cmp     eax, 2                                  ; 34B9 _ 83. F8, 02
        jnz     ?_159                                   ; 34BC _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 34BE _ 8B. 45, F4
        shl     eax, 4                                  ; 34C1 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 34C4 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 34C9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 34CB _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 34CE _ 8B. 45, F4
        shl     eax, 4                                  ; 34D1 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 34D4 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 34D9 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 34DB _ 8B. 45, F4
        shl     eax, 4                                  ; 34DE _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 34E1 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 34E6 _ 8B. 00
        test    eax, eax                                ; 34E8 _ 85. C0
        jnz     ?_159                                   ; 34EA _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 34EC _ 8B. 45, F4
        shl     eax, 4                                  ; 34EF _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 34F2 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 34F7 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 34FD _ 8B. 45, F4
        shl     eax, 4                                  ; 3500 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3503 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3508 _ 0F B6. 00
        movzx   eax, al                                 ; 350B _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 350E _ 8B. 55, F4
        shl     edx, 4                                  ; 3511 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3514 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 351A _ 8B. 12
        mov     dword [esp+4H], eax                     ; 351C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3520 _ 89. 14 24
        call    _fifo8_put                              ; 3523 _ E8, 00000000(rel)
?_159:  add     dword [ebp-0CH], 1                      ; 3528 _ 83. 45, F4, 01
?_160:  cmp     dword [ebp-0CH], 499                    ; 352C _ 81. 7D, F4, 000001F3
        jle     ?_158                                   ; 3533 _ 0F 8E, FFFFFF73
        nop                                             ; 3539 _ 90
        leave                                           ; 353A _ C9
        ret                                             ; 353B _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 353C _ B8, 00000000(d)
        ret                                             ; 3541 _ C3
; _getTimerController End of function

        nop                                             ; 3542 _ 90
        nop                                             ; 3543 _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3544 _ 55
        mov     ebp, esp                                ; 3545 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3547 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_161                                   ; 354E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3550 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3557 _ 8B. 45, 0C
        shr     eax, 12                                 ; 355A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 355D _ 89. 45, 0C
?_161:  mov     eax, dword [ebp+0CH]                    ; 3560 _ 8B. 45, 0C
        mov     edx, eax                                ; 3563 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3565 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3568 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 356B _ 8B. 45, 10
        mov     edx, eax                                ; 356E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3570 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3573 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3577 _ 8B. 45, 10
        sar     eax, 16                                 ; 357A _ C1. F8, 10
        mov     edx, eax                                ; 357D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 357F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3582 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3585 _ 8B. 45, 14
        mov     edx, eax                                ; 3588 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 358A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 358D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3590 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3593 _ C1. E8, 10
        and     eax, 0FH                                ; 3596 _ 83. E0, 0F
        mov     edx, eax                                ; 3599 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 359B _ 8B. 45, 14
        sar     eax, 8                                  ; 359E _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 35A1 _ 83. E0, F0
        or      eax, edx                                ; 35A4 _ 09. D0
        mov     edx, eax                                ; 35A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 35A8 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 35AB _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 35AE _ 8B. 45, 10
        shr     eax, 24                                 ; 35B1 _ C1. E8, 18
        mov     edx, eax                                ; 35B4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 35B6 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 35B9 _ 88. 50, 07
        nop                                             ; 35BC _ 90
        pop     ebp                                     ; 35BD _ 5D
        ret                                             ; 35BE _ C3

        nop                                             ; 35BF _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_162:  db 00H                                          ; 0006 _ .

?_163:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

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

_table_rgb.2294:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2341:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 00C0 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 00C8 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 00D8 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00E0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00F0 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0100 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0110 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0120 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0130 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0138 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 0140 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0148 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 0150 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0158 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0168 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0178 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0180 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0188 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0190 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0198 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A0 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 01A8 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B0 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 01B8 _ .....***

_closebtn.2453:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01C0 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 01C8 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01D0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01E0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0200 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0210 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 0220 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0228 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0230 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0238 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0240 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0248 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0250 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0258 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0260 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0268 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0280 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0288 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0290 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0298 _ @@@@@@@@



?_164:                                                  ; byte
        db 6DH, 65H, 73H, 73H, 61H, 67H, 65H, 00H       ; 0000 _ message.

?_165:                                                  ; byte
        db 74H, 00H                                     ; 0008 _ t.

?_166:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 74H       ; 000A _ switch t
        db 6FH, 20H, 74H, 61H, 73H, 6BH, 20H, 62H       ; 0012 _ o task b
        db 00H                                          ; 001A _ .

?_167:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 001B _ 3[sec].

?_168:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0022 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 002A _ sk b.

?_169:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 62H       ; 002F _ switch b
        db 61H, 63H, 6BH, 00H                           ; 0037 _ ack.

?_170:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003B _ page is:
        db 20H, 00H                                     ; 0043 _  .

?_171:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0045 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 004D _ L: .

?_172:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0051 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0059 _ H: .

?_173:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005D _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0065 _ w: .

?_174:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0069 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0071 _ gh: .

?_175:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H, 00H       ; 0076 _ type: ..
        db 00H, 00H                                     ; 007E _ ..



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..

_shtctl:                                                
        resd    1                                       ; 0000

_sht_back:                                              ; dword
        resd    1                                       ; 0004

_sht_mouse:                                             ; dword
        resd    1                                       ; 0008

_bootInfo:                                              ; dword
        resd    1                                       ; 000C

?_176:  resw    1                                       ; 0010

?_177:  resw    1                                       ; 0012

_keyinfo:                                               ; byte
        resb    24                                      ; 0014

_mouseinfo:                                             ; byte
        resb    52                                      ; 002C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_178:  resd    1                                       ; 010C

_timerinfo:                                             ; byte
        resb    24                                      ; 0110

_timerbuf:                                              ; byte
        resb    8                                       ; 0128

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0130

_mx:    resd    1                                       ; 0134

_my:    resd    1                                       ; 0138

_xsize: resd    1                                       ; 013C

_ysize: resd    1                                       ; 0140

_buf_back:                                              ; dword
        resd    7                                       ; 0144

_buf_mouse:                                             ; byte
        resb    256                                     ; 0160

_tss_a.2235:                                            ; byte
        resb    28                                      ; 0260

?_179:  resd    2                                       ; 027C

?_180:  resd    5                                       ; 0284

?_181:  resd    4                                       ; 0298

?_182:  resd    1                                       ; 02A8

?_183:  resd    1                                       ; 02AC

?_184:  resd    1                                       ; 02B0

?_185:  resd    1                                       ; 02B4

?_186:  resd    1                                       ; 02B8

?_187:  resd    1                                       ; 02BC

?_188:  resd    1                                       ; 02C0

?_189:  resd    7                                       ; 02C4

_tss_b.2236:                                            ; byte
        resb    32                                      ; 02E0

?_190:  resd    1                                       ; 0300

?_191:  resd    1                                       ; 0304

?_192:  resd    1                                       ; 0308

?_193:  resd    1                                       ; 030C

?_194:  resd    1                                       ; 0310

?_195:  resd    1                                       ; 0314

?_196:  resd    1                                       ; 0318

?_197:  resd    1                                       ; 031C

?_198:  resd    1                                       ; 0320

?_199:  resd    1                                       ; 0324

?_200:  resd    1                                       ; 0328

?_201:  resd    1                                       ; 032C

?_202:  resd    1                                       ; 0330

?_203:  resd    1                                       ; 0334

?_204:  resd    1                                       ; 0338

?_205:  resd    1                                       ; 033C

?_206:  resd    1                                       ; 0340

?_207:  resd    1                                       ; 0344

_str.2389:                                              ; byte
        resb    1                                       ; 0348

?_208:  resb    9                                       ; 0349

?_209:  resb    14                                      ; 0352

_timerctl:                                              ; byte
        resb    8032                                    ; 0360


