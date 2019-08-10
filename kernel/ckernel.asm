; Disassembly of file: ckernel.o
; Sat Aug 10 11:36:23 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 96                                 ; 0005 _ 83. EC, 60
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000F _ E8, 00000EE9
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-20H], eax                    ; 0019 _ 89. 45, E0
        movzx   eax, word [?_208]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000011C(d)
        movzx   eax, word [?_209]                       ; 0029 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 00000120(d)
        call    _init_pit                               ; 0036 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0043 _ C7. 44 24, 08, 0000010C(d)
        mov     dword [esp+4H], 8                       ; 004B _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0053 _ C7. 04 24, 000000F0(d)
        call    _fifo8_init                             ; 005A _ E8, 00000000(rel)
        call    _timer_alloc                            ; 005F _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0064 _ 89. 45, DC
        mov     dword [esp+8H], 10                      ; 0067 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006F _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 0077 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 007A _ 89. 04 24
        call    _timer_init                             ; 007D _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0082 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-24H]                    ; 008A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 008D _ 89. 04 24
        call    _timer_settime                          ; 0090 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0095 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 009A _ 89. 45, D8
        mov     dword [esp+8H], 2                       ; 009D _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A5 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-28H]                    ; 00AD _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00B0 _ 89. 04 24
        call    _timer_init                             ; 00B3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00B8 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-28H]                    ; 00C0 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00C3 _ 89. 04 24
        call    _timer_settime                          ; 00C6 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CB _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 00D0 _ 89. 45, D4
        mov     dword [esp+8H], 1                       ; 00D3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DB _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 00E3 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00E6 _ 89. 04 24
        call    _timer_init                             ; 00E9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00EE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 00F6 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00F9 _ 89. 04 24
        call    _timer_settime                          ; 00FC _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0101 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0109 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 0111 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0119 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 0120 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0125 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012D _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0135 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013D _ C7. 04 24, 00000024(d)
        call    _fifo8_init                             ; 0144 _ E8, 00000000(rel)
        call    _init_palette                           ; 0149 _ E8, 00000E72
        call    _init_keyboard                          ; 014E _ E8, 000013DB
        call    _get_memory_block_count                 ; 0153 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 0158 _ 89. 45, D0
        call    _get_addr_buffer                        ; 015B _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 0160 _ 89. 45, CC
        mov     eax, dword [_memman]                    ; 0163 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0168 _ 89. 04 24
        call    _memman_init                            ; 016B _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0170 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0175 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 017D _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 0185 _ 89. 04 24
        call    _memman_free                            ; 0188 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 018D _ 8B. 0D, 00000120(d)
        mov     edx, dword [_xsize]                     ; 0193 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_memman]                    ; 0199 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 019E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A2 _ 89. 54 24, 08
        mov     edx, dword [ebp-20H]                    ; 01A6 _ 8B. 55, E0
        mov     dword [esp+4H], edx                     ; 01A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01AD _ 89. 04 24
        call    _shtctl_init                            ; 01B0 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B5 _ A3, 00000244(d)
        mov     eax, dword [_shtctl]                    ; 01BA _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 01BF _ 89. 04 24
        call    _sheet_alloc                            ; 01C2 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01C7 _ A3, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 01CC _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 01D1 _ 89. 04 24
        call    _sheet_alloc                            ; 01D4 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01D9 _ A3, 0000024C(d)
        mov     edx, dword [_xsize]                     ; 01DE _ 8B. 15, 0000011C(d)
        mov     eax, dword [_ysize]                     ; 01E4 _ A1, 00000120(d)
        imul    eax, edx                                ; 01E9 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EC _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F2 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F6 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01F9 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01FE _ A3, 00000124(d)
        mov     ebx, dword [_ysize]                     ; 0203 _ 8B. 1D, 00000120(d)
        mov     ecx, dword [_xsize]                     ; 0209 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_buf_back]                  ; 020F _ 8B. 15, 00000124(d)
        mov     eax, dword [_sht_back]                  ; 0215 _ A1, 00000248(d)
        mov     dword [esp+10H], 99                     ; 021A _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0222 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0226 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 022A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 022E _ 89. 04 24
        call    _sheet_setbuf                           ; 0231 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0236 _ A1, 0000024C(d)
        mov     dword [esp+10H], 99                     ; 023B _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0243 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0253 _ C7. 44 24, 04, 00000140(d)
        mov     dword [esp], eax                        ; 025B _ 89. 04 24
        call    _sheet_setbuf                           ; 025E _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0263 _ 8B. 0D, 00000120(d)
        mov     edx, dword [_xsize]                     ; 0269 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_buf_back]                  ; 026F _ A1, 00000124(d)
        mov     dword [esp+8H], ecx                     ; 0274 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0278 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027C _ 89. 04 24
        call    _init_screen8                           ; 027F _ E8, 000007B1
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 00000FC4
        mov     edx, dword [_sht_back]                  ; 0298 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 029E _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 02A3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B7 _ 89. 04 24
        call    _sheet_slide                            ; 02BA _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02BF _ A1, 0000011C(d)
        sub     eax, 16                                 ; 02C4 _ 83. E8, 10
        mov     edx, eax                                ; 02C7 _ 89. C2
        shr     edx, 31                                 ; 02C9 _ C1. EA, 1F
        add     eax, edx                                ; 02CC _ 01. D0
        sar     eax, 1                                  ; 02CE _ D1. F8
        mov     dword [_mx], eax                        ; 02D0 _ A3, 00000114(d)
        mov     eax, dword [_ysize]                     ; 02D5 _ A1, 00000120(d)
        sub     eax, 44                                 ; 02DA _ 83. E8, 2C
        mov     edx, eax                                ; 02DD _ 89. C2
        shr     edx, 31                                 ; 02DF _ C1. EA, 1F
        add     eax, edx                                ; 02E2 _ 01. D0
        sar     eax, 1                                  ; 02E4 _ D1. F8
        mov     dword [_my], eax                        ; 02E6 _ A3, 00000118(d)
        mov     ebx, dword [_my]                        ; 02EB _ 8B. 1D, 00000118(d)
        mov     ecx, dword [_mx]                        ; 02F1 _ 8B. 0D, 00000114(d)
        mov     edx, dword [_sht_mouse]                 ; 02F7 _ 8B. 15, 0000024C(d)
        mov     eax, dword [_shtctl]                    ; 02FD _ A1, 00000244(d)
        mov     dword [esp+0CH], ebx                    ; 0302 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0306 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 030A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 030E _ 89. 04 24
        call    _sheet_slide                            ; 0311 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0316 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 031D _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0324 _ A1, 00000244(d)
        mov     dword [esp+4H], ?_199                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 00001620
        mov     dword [_shtMsgBox], eax                 ; 0339 _ A3, 00000240(d)
        mov     edx, dword [_sht_back]                  ; 033E _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0344 _ A1, 00000244(d)
        mov     dword [esp+8H], 0                       ; 0349 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0351 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0355 _ 89. 04 24
        call    _sheet_updown                           ; 0358 _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035D _ 8B. 15, 0000024C(d)
        mov     eax, dword [_shtctl]                    ; 0363 _ A1, 00000244(d)
        mov     dword [esp+8H], 100                     ; 0368 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0370 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0374 _ 89. 04 24
        call    _sheet_updown                           ; 0377 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037C _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0381 _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0388 _ E8, 000011DC
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0392 _ 89. 45, C8
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 039A _ 89. 45, C4
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2274], eax               ; 03AA _ A3, 00000264(d)
        mov     eax, dword [_task_a.2274]               ; 03AF _ A1, 00000264(d)
        mov     dword [?_210], eax                      ; 03B4 _ A3, 00000020(d)
        mov     eax, dword [_task_a.2274]               ; 03B9 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 03BE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C6 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CE _ 89. 04 24
        call    _task_run                               ; 03D1 _ E8, 00000000(rel)
        call    _multi_windows                          ; 03D6 _ E8, 00001C64
        mov     dword [ebp-40H], 0                      ; 03DB _ C7. 45, C0, 00000000
        mov     dword [ebp-14H], 0                      ; 03E2 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 03E9 _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 03F0 _ C7. 45, E4, 00000000
?_001:  call    _io_cli                                 ; 03F7 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 03FC _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0403 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0408 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 040A _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0411 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0416 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0418 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 041F _ E8, 00000000(rel)
        add     eax, ebx                                ; 0424 _ 01. D8
        test    eax, eax                                ; 0426 _ 85. C0
        jnz     ?_002                                   ; 0428 _ 75, 07
        call    _io_sti                                 ; 042A _ E8, 00000000(rel)
        jmp     ?_001                                   ; 042F _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0431 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0438 _ E8, 00000000(rel)
        test    eax, eax                                ; 043D _ 85. C0
        je      ?_004                                   ; 043F _ 0F 84, 000001FD
        call    _io_sti                                 ; 0445 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 044A _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 0451 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 0456 _ 89. 45, C0
        cmp     dword [ebp-40H], 28                     ; 0459 _ 83. 7D, C0, 1C
        jnz     ?_003                                   ; 045D _ 75, 6F
        mov     esi, dword [_xsize]                     ; 045F _ 8B. 35, 0000011C(d)
        mov     ebx, dword [_buf_back]                  ; 0465 _ 8B. 1D, 00000124(d)
        mov     edx, dword [ebp-14H]                    ; 046B _ 8B. 55, EC
        mov     eax, edx                                ; 046E _ 89. D0
        shl     eax, 2                                  ; 0470 _ C1. E0, 02
        add     eax, edx                                ; 0473 _ 01. D0
        shl     eax, 2                                  ; 0475 _ C1. E0, 02
        mov     edx, eax                                ; 0478 _ 89. C2
        mov     eax, dword [ebp-34H]                    ; 047A _ 8B. 45, CC
        lea     ecx, [edx+eax]                          ; 047D _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 0480 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0486 _ A1, 00000244(d)
        mov     dword [esp+18H], 7                      ; 048B _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 0493 _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 0497 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 049A _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 049E _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 04A2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04AA _ 89. 04 24
        call    _showMemoryInfo                         ; 04AD _ E8, 0000128C
        add     dword [ebp-14H], 1                      ; 04B2 _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 04B6 _ 8B. 45, EC
        cmp     eax, dword [ebp-30H]                    ; 04B9 _ 3B. 45, D0
        jle     ?_001                                   ; 04BC _ 0F 8E, FFFFFF35
        mov     dword [ebp-14H], 0                      ; 04C2 _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 04C9 _ E9, FFFFFF29

?_003:  mov     eax, dword [ebp-40H]                    ; 04CE _ 8B. 45, C0
        add     eax, _keytable                          ; 04D1 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 04D6 _ 0F B6. 00
        test    al, al                                  ; 04D9 _ 84. C0
        je      ?_001                                   ; 04DB _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 04E1 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 04E8 _ 0F 8F, FFFFFF09
        mov     eax, dword [ebp-0CH]                    ; 04EE _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 04F1 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 04F4 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 04F9 _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 04FC _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0501 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0503 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 050B _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 050F _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0517 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 051A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 051E _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0526 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 052A _ 89. 04 24
        call    _boxfill8                               ; 052D _ E8, 00000B59
        mov     eax, dword [ebp-0CH]                    ; 0532 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0535 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0538 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 053E _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0543 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 054B _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 054F _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0557 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 055A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 055E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0562 _ 89. 04 24
        call    _sheet_refresh                          ; 0565 _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 056A _ 8B. 45, C0
        add     eax, _keytable                          ; 056D _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0572 _ 0F B6. 00
        mov     byte [ebp-46H], al                      ; 0575 _ 88. 45, BA
        mov     byte [ebp-45H], 0                       ; 0578 _ C6. 45, BB, 00
        mov     ecx, dword [_shtMsgBox]                 ; 057C _ 8B. 0D, 00000240(d)
        mov     edx, dword [_shtctl]                    ; 0582 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-46H]                          ; 0588 _ 8D. 45, BA
        mov     dword [esp+14H], eax                    ; 058B _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 058F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0597 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 059F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 05A2 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 05A6 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 05AA _ 89. 14 24
        call    _showString                             ; 05AD _ E8, 0000096C
        add     dword [ebp-0CH], 8                      ; 05B2 _ 83. 45, F4, 08
        mov     dword [ebp-1CH], 1                      ; 05B6 _ C7. 45, E4, 00000001
        mov     eax, dword [ebp-0CH]                    ; 05BD _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 05C0 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 05C3 _ 8B. 45, F0
        movzx   eax, al                                 ; 05C6 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 05C9 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 05CF _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 05D2 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 05D8 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 05DA _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 05E2 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 05E6 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 05EE _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 05F1 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 05F5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 05F9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 05FD _ 89. 14 24
        call    _boxfill8                               ; 0600 _ E8, 00000A86
        mov     eax, dword [ebp-0CH]                    ; 0605 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0608 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 060B _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0611 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0616 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 061E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0622 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 062A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 062D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0631 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0635 _ 89. 04 24
        call    _sheet_refresh                          ; 0638 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 063D _ E9, FFFFFDB5

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0642 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0649 _ E8, 00000000(rel)
        test    eax, eax                                ; 064E _ 85. C0
        jz      ?_005                                   ; 0650 _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0652 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [_sht_back]                  ; 0658 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 065E _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 0663 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0667 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 066B _ 89. 04 24
        call    _show_mouse_info                        ; 066E _ E8, 000007D2
        jmp     ?_001                                   ; 0673 _ E9, FFFFFD7F

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0678 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 067F _ E8, 00000000(rel)
        test    eax, eax                                ; 0684 _ 85. C0
        je      ?_001                                   ; 0686 _ 0F 84, FFFFFD6B
        call    _io_sti                                 ; 068C _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0691 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 0698 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 069D _ 89. 45, BC
        cmp     dword [ebp-44H], 10                     ; 06A0 _ 83. 7D, BC, 0A
        jnz     ?_006                                   ; 06A4 _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 06A6 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 06AC _ A1, 00000244(d)
        mov     dword [esp+14H], ?_200                  ; 06B1 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 06B9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 06C1 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 06C9 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 06CC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06D4 _ 89. 04 24
        call    _showString                             ; 06D7 _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 06DC _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-24H]                    ; 06E4 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 06E7 _ 89. 04 24
        call    _timer_settime                          ; 06EA _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 06EF _ 83. 45, E8, 08
        cmp     dword [ebp-18H], 40                     ; 06F3 _ 83. 7D, E8, 28
        jle     ?_001                                   ; 06F7 _ 0F 8E, FFFFFCFA
        cmp     dword [ebp-1CH], 0                      ; 06FD _ 83. 7D, E4, 00
        jne     ?_001                                   ; 0701 _ 0F 85, FFFFFCF0
        call    _io_cli                                 ; 0707 _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2274]               ; 070C _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0711 _ 89. 04 24
        call    _task_sleep                             ; 0714 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0719 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 071E _ E9, FFFFFCD4

?_006:  ; Local function
        cmp     dword [ebp-44H], 2                      ; 0723 _ 83. 7D, BC, 02
        jnz     ?_007                                   ; 0727 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 0729 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 072F _ A1, 00000244(d)
        mov     dword [esp+14H], ?_201                  ; 0734 _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 073C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 0744 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 074C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0754 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0758 _ 89. 04 24
        call    _showString                             ; 075B _ E8, 000007BE
        jmp     ?_001                                   ; 0760 _ E9, FFFFFC92

?_007:  ; Local function
        cmp     dword [ebp-44H], 0                      ; 0765 _ 83. 7D, BC, 00
        jz      ?_008                                   ; 0769 _ 74, 24
        mov     dword [esp+8H], 0                       ; 076B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0773 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 077B _ 8B. 45, D4
        mov     dword [esp], eax                        ; 077E _ 89. 04 24
        call    _timer_init                             ; 0781 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0786 _ C7. 45, F0, 00000000
        jmp     ?_009                                   ; 078D _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 078F _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0797 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 079F _ 8B. 45, D4
        mov     dword [esp], eax                        ; 07A2 _ 89. 04 24
        call    _timer_init                             ; 07A5 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 07AA _ C7. 45, F0, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 07B1 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 07B9 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 07BC _ 89. 04 24
        call    _timer_settime                          ; 07BF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 07C4 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 07C7 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 07CA _ 8B. 45, F0
        movzx   eax, al                                 ; 07CD _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 07D0 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 07D6 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 07D9 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 07DF _ 8B. 12
        mov     dword [esp+18H], 43                     ; 07E1 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 07E9 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 07ED _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 07F5 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 07F8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 07FC _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0800 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0804 _ 89. 14 24
        call    _boxfill8                               ; 0807 _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 080C _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 080F _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0812 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0818 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 081D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0825 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0829 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0831 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0834 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0838 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 083C _ 89. 04 24
        call    _sheet_refresh                          ; 083F _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0844 _ E9, FFFFFBAE

_task_b_main:; Function begin
        push    ebp                                     ; 0849 _ 55
        mov     ebp, esp                                ; 084A _ 89. E5
        sub     esp, 104                                ; 084C _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 084F _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0855 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_202                  ; 085A _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 0862 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 086A _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0872 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 087A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 087E _ 89. 04 24
        call    _showString                             ; 0881 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 0886 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 088D _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0894 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 089C _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 089F _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 08A3 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 08AB _ 8D. 45, C8
        mov     dword [esp], eax                        ; 08AE _ 89. 04 24
        call    _fifo8_init                             ; 08B1 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 08B6 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 08BB _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 08BE _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 08C6 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 08C9 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 08CD _ 8B. 45, EC
        mov     dword [esp], eax                        ; 08D0 _ 89. 04 24
        call    _timer_init                             ; 08D3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 08D8 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 08E0 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 08E3 _ 89. 04 24
        call    _timer_settime                          ; 08E6 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 08EB _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 08F2 _ C7. 45, F0, 00000000
?_010:  add     dword [ebp-0CH], 1                      ; 08F9 _ 83. 45, F4, 01
        call    _io_cli                                 ; 08FD _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0902 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0905 _ 89. 04 24
        call    _fifo8_status                           ; 0908 _ E8, 00000000(rel)
        test    eax, eax                                ; 090D _ 85. C0
        jnz     ?_011                                   ; 090F _ 75, 07
        call    _io_sti                                 ; 0911 _ E8, 00000000(rel)
        jmp     ?_010                                   ; 0916 _ EB, E1
; _task_b_main End of function

?_011:  ; Local function
        lea     eax, [ebp-38H]                          ; 0918 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 091B _ 89. 04 24
        call    _fifo8_get                              ; 091E _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0923 _ 89. 45, E8
        call    _io_sti                                 ; 0926 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 092B _ 83. 7D, E8, 7B
        jnz     ?_010                                   ; 092F _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0931 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0937 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_203                  ; 093C _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 0944 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 094C _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0954 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0957 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 095B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 095F _ 89. 04 24
        call    _showString                             ; 0962 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0967 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 096F _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0972 _ 89. 04 24
        call    _timer_settime                          ; 0975 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 097A _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 097E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0981 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0983 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 098B _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0993 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 099B _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 09A3 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 09AB _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 09B3 _ 89. 04 24
        call    _boxfill8                               ; 09B6 _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 09BB _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 09C0 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 09C8 _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 09D0 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 09D8 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 09E0 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 09E3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09E7 _ 89. 04 24
        call    _sheet_refresh                          ; 09EA _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 09EF _ 8B. 45, F4
        mov     dword [esp], eax                        ; 09F2 _ 89. 04 24
        call    _intToHexStr                            ; 09F5 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 09FA _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 09FD _ A1, 00000244(d)
        mov     edx, dword [ebp-1CH]                    ; 0A02 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0A05 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0A09 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0A11 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0A19 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0A21 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0A24 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A28 _ 89. 04 24
        call    _showString                             ; 0A2B _ E8, 000004EE
        jmp     ?_010                                   ; 0A30 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0A35 _ 55
        mov     ebp, esp                                ; 0A36 _ 89. E5
        push    ebx                                     ; 0A38 _ 53
        sub     esp, 36                                 ; 0A39 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0A3C _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0A3F _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0A42 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0A45 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0A48 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0A4C _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0A50 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0A58 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0A60 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0A68 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A6B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A6F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A72 _ 89. 04 24
        call    _boxfill8                               ; 0A75 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0A7A _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0A7D _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0A80 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A83 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A86 _ 8B. 45, 10
        sub     eax, 28                                 ; 0A89 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0A8C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0A90 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A94 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A98 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0AA0 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0AA8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AAB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AB2 _ 89. 04 24
        call    _boxfill8                               ; 0AB5 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0ABA _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0ABD _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0AC0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0AC3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0AC6 _ 8B. 45, 10
        sub     eax, 27                                 ; 0AC9 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0ACC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0AD0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AD4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0AD8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0AE0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0AE8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AEB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AEF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AF2 _ 89. 04 24
        call    _boxfill8                               ; 0AF5 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0AFA _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0AFD _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0B00 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B03 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B06 _ 8B. 45, 10
        sub     eax, 26                                 ; 0B09 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0B0C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B10 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B14 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B18 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0B20 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0B28 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B2B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B2F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B32 _ 89. 04 24
        call    _boxfill8                               ; 0B35 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0B3A _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0B3D _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0B40 _ 8B. 45, 10
        sub     eax, 24                                 ; 0B43 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0B46 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0B4A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0B52 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0B56 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0B5E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B66 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B69 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B6D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B70 _ 89. 04 24
        call    _boxfill8                               ; 0B73 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0B78 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B7B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B7E _ 8B. 45, 10
        sub     eax, 24                                 ; 0B81 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0B84 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0B88 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0B90 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0B94 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0B9C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0BA4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BA7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BAB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BAE _ 89. 04 24
        call    _boxfill8                               ; 0BB1 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0BB6 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0BB9 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0BBC _ 8B. 45, 10
        sub     eax, 4                                  ; 0BBF _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0BC2 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0BC6 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0BCE _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0BD2 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0BDA _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0BE2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BE5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BE9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BEC _ 89. 04 24
        call    _boxfill8                               ; 0BEF _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0BF4 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0BF7 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0BFA _ 8B. 45, 10
        sub     eax, 23                                 ; 0BFD _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0C00 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C04 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C0C _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0C10 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0C18 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C20 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C2A _ 89. 04 24
        call    _boxfill8                               ; 0C2D _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0C32 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C35 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C38 _ 8B. 45, 10
        sub     eax, 3                                  ; 0C3B _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0C3E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C42 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C4A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0C4E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0C56 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C5E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C61 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C65 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C68 _ 89. 04 24
        call    _boxfill8                               ; 0C6B _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0C70 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C73 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C76 _ 8B. 45, 10
        sub     eax, 24                                 ; 0C79 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0C7C _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0C80 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0C88 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0C8C _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0C94 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C9C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C9F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CA3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CA6 _ 89. 04 24
        call    _boxfill8                               ; 0CA9 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0CAE _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0CB1 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0CB4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CB7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CBA _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0CBD _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0CC0 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0CC3 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0CC6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0CCA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0CCE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0CD2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0CD6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0CDE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CE1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CE5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CE8 _ 89. 04 24
        call    _boxfill8                               ; 0CEB _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0CF0 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0CF3 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0CF6 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0CF9 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0CFC _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0CFF _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0D02 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D05 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D08 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D0C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D10 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D14 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0D18 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D20 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D2A _ 89. 04 24
        call    _boxfill8                               ; 0D2D _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0D32 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D35 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D38 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D3B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D3E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D41 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0D44 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D47 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D4A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D4E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D52 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D56 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D5A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D62 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D65 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D69 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D6C _ 89. 04 24
        call    _boxfill8                               ; 0D6F _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0D74 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D77 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D7A _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D7D _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0D80 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D83 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0D86 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0D89 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0D8C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D90 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D94 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D98 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D9C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DA4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DA7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DAB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DAE _ 89. 04 24
        call    _boxfill8                               ; 0DB1 _ E8, 000002D5
        nop                                             ; 0DB6 _ 90
        add     esp, 36                                 ; 0DB7 _ 83. C4, 24
        pop     ebx                                     ; 0DBA _ 5B
        pop     ebp                                     ; 0DBB _ 5D
        ret                                             ; 0DBC _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0DBD _ 55
        mov     ebp, esp                                ; 0DBE _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0DC0 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0DC3 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0DC6 _ A1, 00000114(d)
        add     eax, edx                                ; 0DCB _ 01. D0
        mov     dword [_mx], eax                        ; 0DCD _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 0DD2 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0DD5 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0DD8 _ A1, 00000118(d)
        add     eax, edx                                ; 0DDD _ 01. D0
        mov     dword [_my], eax                        ; 0DDF _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 0DE4 _ A1, 00000114(d)
        test    eax, eax                                ; 0DE9 _ 85. C0
        jns     ?_012                                   ; 0DEB _ 79, 0A
        mov     dword [_mx], 0                          ; 0DED _ C7. 05, 00000114(d), 00000000
?_012:  mov     eax, dword [_my]                        ; 0DF7 _ A1, 00000118(d)
        test    eax, eax                                ; 0DFC _ 85. C0
        jns     ?_013                                   ; 0DFE _ 79, 0A
        mov     dword [_my], 0                          ; 0E00 _ C7. 05, 00000118(d), 00000000
?_013:  mov     edx, dword [_xsize]                     ; 0E0A _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 0E10 _ A1, 00000114(d)
        cmp     edx, eax                                ; 0E15 _ 39. C2
        jg      ?_014                                   ; 0E17 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0E19 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0E1E _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0E21 _ A3, 00000114(d)
?_014:  mov     edx, dword [_ysize]                     ; 0E26 _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 0E2C _ A1, 00000118(d)
        cmp     edx, eax                                ; 0E31 _ 39. C2
        jg      ?_015                                   ; 0E33 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0E35 _ A1, 00000120(d)
        sub     eax, 1                                  ; 0E3A _ 83. E8, 01
        mov     dword [_my], eax                        ; 0E3D _ A3, 00000118(d)
?_015:  nop                                             ; 0E42 _ 90
        pop     ebp                                     ; 0E43 _ 5D
        ret                                             ; 0E44 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0E45 _ 55
        mov     ebp, esp                                ; 0E46 _ 89. E5
        sub     esp, 40                                 ; 0E48 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0E4B _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 0E50 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0E53 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0E57 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0E5C _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 0E63 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0E68 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0E6B _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0E6F _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0E73 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0E7A _ E8, 00000780
        test    eax, eax                                ; 0E7F _ 85. C0
        jz      ?_016                                   ; 0E81 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0E83 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0E8B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E8E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E95 _ 89. 04 24
        call    _computeMousePosition                   ; 0E98 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0E9D _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 0EA3 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 0EA8 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0EAC _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0EB0 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0EB3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EB7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EBA _ 89. 04 24
        call    _sheet_slide                            ; 0EBD _ E8, 00000000(rel)
        mov     eax, dword [?_211]                      ; 0EC2 _ A1, 000000EC(d)
        and     eax, 01H                                ; 0EC7 _ 83. E0, 01
        test    eax, eax                                ; 0ECA _ 85. C0
        jz      ?_016                                   ; 0ECC _ 74, 2C
        mov     eax, dword [_my]                        ; 0ECE _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 0ED3 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0ED6 _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 0EDB _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0EDE _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 0EE3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0EE7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0EEB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EEF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EF2 _ 89. 04 24
        call    _sheet_slide                            ; 0EF5 _ E8, 00000000(rel)
?_016:  nop                                             ; 0EFA _ 90
        leave                                           ; 0EFB _ C9
        ret                                             ; 0EFC _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0EFD _ 55
        mov     ebp, esp                                ; 0EFE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F00 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0F03 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0F09 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0F0C _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0F12 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0F15 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0F1B _ 90
        pop     ebp                                     ; 0F1C _ 5D
        ret                                             ; 0F1D _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0F1E _ 55
        mov     ebp, esp                                ; 0F1F _ 89. E5
        push    ebx                                     ; 0F21 _ 53
        sub     esp, 68                                 ; 0F22 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0F25 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0F28 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0F2B _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0F2E _ 89. 45, F4
        jmp     ?_018                                   ; 0F31 _ EB, 4B

?_017:  mov     eax, dword [ebp+1CH]                    ; 0F33 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F36 _ 0F B6. 00
        movzx   eax, al                                 ; 0F39 _ 0F B6. C0
        shl     eax, 4                                  ; 0F3C _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0F3F _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0F45 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0F49 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0F4C _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0F4F _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0F52 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0F54 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0F58 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F5C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F5F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0F63 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0F66 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0F6A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0F6E _ 89. 14 24
        call    _showFont8                              ; 0F71 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0F76 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0F7A _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0F7E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F81 _ 0F B6. 00
        test    al, al                                  ; 0F84 _ 84. C0
        jnz     ?_017                                   ; 0F86 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0F88 _ 8B. 45, 14
        add     eax, 16                                 ; 0F8B _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0F8E _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0F92 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0F95 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F99 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F9C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0FA0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0FA3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0FA7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FAA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FAE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FB1 _ 89. 04 24
        call    _sheet_refresh                          ; 0FB4 _ E8, 00000000(rel)
        nop                                             ; 0FB9 _ 90
        add     esp, 68                                 ; 0FBA _ 83. C4, 44
        pop     ebx                                     ; 0FBD _ 5B
        pop     ebp                                     ; 0FBE _ 5D
        ret                                             ; 0FBF _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0FC0 _ 55
        mov     ebp, esp                                ; 0FC1 _ 89. E5
        sub     esp, 24                                 ; 0FC3 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2333         ; 0FC6 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 0FCE _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0FD6 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0FDD _ E8, 00000003
        nop                                             ; 0FE2 _ 90
        leave                                           ; 0FE3 _ C9
        ret                                             ; 0FE4 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0FE5 _ 55
        mov     ebp, esp                                ; 0FE6 _ 89. E5
        sub     esp, 40                                 ; 0FE8 _ 83. EC, 28
        call    _io_load_eflags                         ; 0FEB _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0FF0 _ 89. 45, F0
        call    _io_cli                                 ; 0FF3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0FF8 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0FFB _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0FFF _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1006 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 100B _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 100E _ 89. 45, F4
        jmp     ?_020                                   ; 1011 _ EB, 62

?_019:  mov     eax, dword [ebp+10H]                    ; 1013 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1016 _ 0F B6. 00
        shr     al, 2                                   ; 1019 _ C0. E8, 02
        movzx   eax, al                                 ; 101C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 101F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1023 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 102A _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 102F _ 8B. 45, 10
        add     eax, 1                                  ; 1032 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1035 _ 0F B6. 00
        shr     al, 2                                   ; 1038 _ C0. E8, 02
        movzx   eax, al                                 ; 103B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 103E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1042 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1049 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 104E _ 8B. 45, 10
        add     eax, 2                                  ; 1051 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1054 _ 0F B6. 00
        shr     al, 2                                   ; 1057 _ C0. E8, 02
        movzx   eax, al                                 ; 105A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 105D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1061 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1068 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 106D _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 1071 _ 83. 45, F4, 01
?_020:  mov     eax, dword [ebp-0CH]                    ; 1075 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1078 _ 3B. 45, 0C
        jle     ?_019                                   ; 107B _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 107D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1080 _ 89. 04 24
        call    _io_store_eflags                        ; 1083 _ E8, 00000000(rel)
        nop                                             ; 1088 _ 90
        leave                                           ; 1089 _ C9
        ret                                             ; 108A _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 108B _ 55
        mov     ebp, esp                                ; 108C _ 89. E5
        sub     esp, 20                                 ; 108E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1091 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1094 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1097 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 109A _ 89. 45, F8
        jmp     ?_024                                   ; 109D _ EB, 31

?_021:  mov     eax, dword [ebp+14H]                    ; 109F _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 10A2 _ 89. 45, FC
        jmp     ?_023                                   ; 10A5 _ EB, 1D

?_022:  mov     eax, dword [ebp-8H]                     ; 10A7 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 10AA _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 10AE _ 8B. 55, FC
        add     eax, edx                                ; 10B1 _ 01. D0
        mov     edx, eax                                ; 10B3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10B5 _ 8B. 45, 08
        add     edx, eax                                ; 10B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10BE _ 88. 02
        add     dword [ebp-4H], 1                       ; 10C0 _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 10C4 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 10C7 _ 3B. 45, 1C
        jle     ?_022                                   ; 10CA _ 7E, DB
        add     dword [ebp-8H], 1                       ; 10CC _ 83. 45, F8, 01
?_024:  mov     eax, dword [ebp-8H]                     ; 10D0 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 10D3 _ 3B. 45, 20
        jle     ?_021                                   ; 10D6 _ 7E, C7
        nop                                             ; 10D8 _ 90
        leave                                           ; 10D9 _ C9
        ret                                             ; 10DA _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 10DB _ 55
        mov     ebp, esp                                ; 10DC _ 89. E5
        sub     esp, 20                                 ; 10DE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 10E1 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 10E4 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 10E7 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 10EE _ E9, 0000015C

?_025:  mov     edx, dword [ebp-4H]                     ; 10F3 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 10F6 _ 8B. 45, 1C
        add     eax, edx                                ; 10F9 _ 01. D0
        movzx   eax, byte [eax]                         ; 10FB _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 10FE _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1101 _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1105 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 1107 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 110A _ 8B. 45, FC
        add     eax, edx                                ; 110D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 110F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1113 _ 8B. 55, 10
        add     eax, edx                                ; 1116 _ 01. D0
        mov     edx, eax                                ; 1118 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 111A _ 8B. 45, 08
        add     edx, eax                                ; 111D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 111F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1123 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1125 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1129 _ 83. E0, 40
        test    eax, eax                                ; 112C _ 85. C0
        jz      ?_027                                   ; 112E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1130 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1133 _ 8B. 45, FC
        add     eax, edx                                ; 1136 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1138 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 113C _ 8B. 55, 10
        add     eax, edx                                ; 113F _ 01. D0
        lea     edx, [eax+1H]                           ; 1141 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1144 _ 8B. 45, 08
        add     edx, eax                                ; 1147 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1149 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 114D _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 114F _ 0F BE. 45, FB
        and     eax, 20H                                ; 1153 _ 83. E0, 20
        test    eax, eax                                ; 1156 _ 85. C0
        jz      ?_028                                   ; 1158 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 115A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 115D _ 8B. 45, FC
        add     eax, edx                                ; 1160 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1162 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1166 _ 8B. 55, 10
        add     eax, edx                                ; 1169 _ 01. D0
        lea     edx, [eax+2H]                           ; 116B _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 116E _ 8B. 45, 08
        add     edx, eax                                ; 1171 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1173 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1177 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1179 _ 0F BE. 45, FB
        and     eax, 10H                                ; 117D _ 83. E0, 10
        test    eax, eax                                ; 1180 _ 85. C0
        jz      ?_029                                   ; 1182 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1184 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1187 _ 8B. 45, FC
        add     eax, edx                                ; 118A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 118C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1190 _ 8B. 55, 10
        add     eax, edx                                ; 1193 _ 01. D0
        lea     edx, [eax+3H]                           ; 1195 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1198 _ 8B. 45, 08
        add     edx, eax                                ; 119B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 119D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11A1 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 11A3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 11A7 _ 83. E0, 08
        test    eax, eax                                ; 11AA _ 85. C0
        jz      ?_030                                   ; 11AC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11AE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11B1 _ 8B. 45, FC
        add     eax, edx                                ; 11B4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11B6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11BA _ 8B. 55, 10
        add     eax, edx                                ; 11BD _ 01. D0
        lea     edx, [eax+4H]                           ; 11BF _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11C2 _ 8B. 45, 08
        add     edx, eax                                ; 11C5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11C7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11CB _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 11CD _ 0F BE. 45, FB
        and     eax, 04H                                ; 11D1 _ 83. E0, 04
        test    eax, eax                                ; 11D4 _ 85. C0
        jz      ?_031                                   ; 11D6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11D8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11DB _ 8B. 45, FC
        add     eax, edx                                ; 11DE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11E0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11E4 _ 8B. 55, 10
        add     eax, edx                                ; 11E7 _ 01. D0
        lea     edx, [eax+5H]                           ; 11E9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 11EC _ 8B. 45, 08
        add     edx, eax                                ; 11EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11F5 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 11F7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 11FB _ 83. E0, 02
        test    eax, eax                                ; 11FE _ 85. C0
        jz      ?_032                                   ; 1200 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1202 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1205 _ 8B. 45, FC
        add     eax, edx                                ; 1208 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 120A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 120E _ 8B. 55, 10
        add     eax, edx                                ; 1211 _ 01. D0
        lea     edx, [eax+6H]                           ; 1213 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        add     edx, eax                                ; 1219 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 121B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 121F _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1221 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1225 _ 83. E0, 01
        test    eax, eax                                ; 1228 _ 85. C0
        jz      ?_033                                   ; 122A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 122C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 122F _ 8B. 45, FC
        add     eax, edx                                ; 1232 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1234 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1238 _ 8B. 55, 10
        add     eax, edx                                ; 123B _ 01. D0
        lea     edx, [eax+7H]                           ; 123D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1240 _ 8B. 45, 08
        add     edx, eax                                ; 1243 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1245 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1249 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 124B _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 124F _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 1253 _ 0F 8E, FFFFFE9A
        nop                                             ; 1259 _ 90
        leave                                           ; 125A _ C9
        ret                                             ; 125B _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 125C _ 55
        mov     ebp, esp                                ; 125D _ 89. E5
        sub     esp, 20                                 ; 125F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1262 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1265 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 1268 _ C7. 45, F8, 00000000
        jmp     ?_041                                   ; 126F _ E9, 000000B1

?_035:  mov     dword [ebp-4H], 0                       ; 1274 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 127B _ E9, 00000097

?_036:  mov     eax, dword [ebp-8H]                     ; 1280 _ 8B. 45, F8
        shl     eax, 4                                  ; 1283 _ C1. E0, 04
        mov     edx, eax                                ; 1286 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1288 _ 8B. 45, FC
        add     eax, edx                                ; 128B _ 01. D0
        add     eax, _cursor.2380                       ; 128D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1292 _ 0F B6. 00
        cmp     al, 42                                  ; 1295 _ 3C, 2A
        jnz     ?_037                                   ; 1297 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1299 _ 8B. 45, F8
        shl     eax, 4                                  ; 129C _ C1. E0, 04
        mov     edx, eax                                ; 129F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12A1 _ 8B. 45, FC
        add     eax, edx                                ; 12A4 _ 01. D0
        mov     edx, eax                                ; 12A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12A8 _ 8B. 45, 08
        add     eax, edx                                ; 12AB _ 01. D0
        mov     byte [eax], 0                           ; 12AD _ C6. 00, 00
?_037:  mov     eax, dword [ebp-8H]                     ; 12B0 _ 8B. 45, F8
        shl     eax, 4                                  ; 12B3 _ C1. E0, 04
        mov     edx, eax                                ; 12B6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12B8 _ 8B. 45, FC
        add     eax, edx                                ; 12BB _ 01. D0
        add     eax, _cursor.2380                       ; 12BD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12C2 _ 0F B6. 00
        cmp     al, 79                                  ; 12C5 _ 3C, 4F
        jnz     ?_038                                   ; 12C7 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 12C9 _ 8B. 45, F8
        shl     eax, 4                                  ; 12CC _ C1. E0, 04
        mov     edx, eax                                ; 12CF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12D1 _ 8B. 45, FC
        add     eax, edx                                ; 12D4 _ 01. D0
        mov     edx, eax                                ; 12D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12D8 _ 8B. 45, 08
        add     eax, edx                                ; 12DB _ 01. D0
        mov     byte [eax], 7                           ; 12DD _ C6. 00, 07
?_038:  mov     eax, dword [ebp-8H]                     ; 12E0 _ 8B. 45, F8
        shl     eax, 4                                  ; 12E3 _ C1. E0, 04
        mov     edx, eax                                ; 12E6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12E8 _ 8B. 45, FC
        add     eax, edx                                ; 12EB _ 01. D0
        add     eax, _cursor.2380                       ; 12ED _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12F2 _ 0F B6. 00
        cmp     al, 46                                  ; 12F5 _ 3C, 2E
        jnz     ?_039                                   ; 12F7 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 12F9 _ 8B. 45, F8
        shl     eax, 4                                  ; 12FC _ C1. E0, 04
        mov     edx, eax                                ; 12FF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1301 _ 8B. 45, FC
        add     eax, edx                                ; 1304 _ 01. D0
        mov     edx, eax                                ; 1306 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1308 _ 8B. 45, 08
        add     edx, eax                                ; 130B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 130D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1311 _ 88. 02
?_039:  add     dword [ebp-4H], 1                       ; 1313 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1317 _ 83. 7D, FC, 0F
        jle     ?_036                                   ; 131B _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1321 _ 83. 45, F8, 01
?_041:  cmp     dword [ebp-8H], 15                      ; 1325 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 1329 _ 0F 8E, FFFFFF45
        nop                                             ; 132F _ 90
        leave                                           ; 1330 _ C9
        ret                                             ; 1331 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1332 _ 55
        mov     ebp, esp                                ; 1333 _ 89. E5
        push    ebx                                     ; 1335 _ 53
        sub     esp, 16                                 ; 1336 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1339 _ C7. 45, F4, 00000000
        jmp     ?_045                                   ; 1340 _ EB, 4E

?_042:  mov     dword [ebp-8H], 0                       ; 1342 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1349 _ EB, 39

?_043:  mov     eax, dword [ebp-0CH]                    ; 134B _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 134E _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1352 _ 8B. 55, F8
        add     eax, edx                                ; 1355 _ 01. D0
        mov     edx, eax                                ; 1357 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1359 _ 8B. 45, 20
        add     eax, edx                                ; 135C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 135E _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1361 _ 8B. 55, F4
        add     edx, ecx                                ; 1364 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1366 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 136A _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 136D _ 8B. 4D, F8
        add     ecx, ebx                                ; 1370 _ 01. D9
        add     edx, ecx                                ; 1372 _ 01. CA
        mov     ecx, edx                                ; 1374 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1376 _ 8B. 55, 08
        add     edx, ecx                                ; 1379 _ 01. CA
        movzx   eax, byte [eax]                         ; 137B _ 0F B6. 00
        mov     byte [edx], al                          ; 137E _ 88. 02
        add     dword [ebp-8H], 1                       ; 1380 _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1384 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1387 _ 3B. 45, 10
        jl      ?_043                                   ; 138A _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 138C _ 83. 45, F4, 01
?_045:  mov     eax, dword [ebp-0CH]                    ; 1390 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 1393 _ 3B. 45, 14
        jl      ?_042                                   ; 1396 _ 7C, AA
        nop                                             ; 1398 _ 90
        add     esp, 16                                 ; 1399 _ 83. C4, 10
        pop     ebx                                     ; 139C _ 5B
        pop     ebp                                     ; 139D _ 5D
        ret                                             ; 139E _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 139F _ 55
        mov     ebp, esp                                ; 13A0 _ 89. E5
        sub     esp, 40                                 ; 13A2 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 13A5 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 13AA _ 89. 45, F4
        movzx   eax, word [?_208]                       ; 13AD _ 0F B7. 05, 00000004(d)
        cwde                                            ; 13B4 _ 98
        mov     dword [ebp-10H], eax                    ; 13B5 _ 89. 45, F0
        movzx   eax, word [?_209]                       ; 13B8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13BF _ 98
        mov     dword [ebp-14H], eax                    ; 13C0 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 13C3 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 13CB _ C7. 04 24, 00000020
        call    _io_out8                                ; 13D2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 13D7 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 13DB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 13E2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 13E7 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 13EA _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 13EE _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 13F2 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 13F9 _ E8, 00000000(rel)
        nop                                             ; 13FE _ 90
        leave                                           ; 13FF _ C9
        ret                                             ; 1400 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1401 _ 55
        mov     ebp, esp                                ; 1402 _ 89. E5
        sub     esp, 4                                  ; 1404 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1407 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 140A _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 140D _ 80. 7D, FC, 09
        jle     ?_046                                   ; 1411 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1413 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1417 _ 83. C0, 37
        jmp     ?_047                                   ; 141A _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 141C _ 0F B6. 45, FC
        add     eax, 48                                 ; 1420 _ 83. C0, 30
?_047:  leave                                           ; 1423 _ C9
        ret                                             ; 1424 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1425 _ 55
        mov     ebp, esp                                ; 1426 _ 89. E5
        sub     esp, 24                                 ; 1428 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 142B _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 142E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1431 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1438 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 143C _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 143F _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1442 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1446 _ 89. 04 24
        call    _charToHexVal                           ; 1449 _ E8, FFFFFFB3
        mov     byte [?_198], al                        ; 144E _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 1453 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1457 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 145A _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 145D _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1461 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1464 _ 89. 04 24
        call    _charToHexVal                           ; 1467 _ E8, FFFFFF95
        mov     byte [?_197], al                        ; 146C _ A2, 00000076(d)
        mov     eax, _keyval                            ; 1471 _ B8, 00000074(d)
        leave                                           ; 1476 _ C9
        ret                                             ; 1477 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1478 _ 55
        mov     ebp, esp                                ; 1479 _ 89. E5
        sub     esp, 16                                 ; 147B _ 83. EC, 10
        mov     byte [_str.2428], 48                    ; 147E _ C6. 05, 00000368(d), 30
        mov     byte [?_212], 88                        ; 1485 _ C6. 05, 00000369(d), 58
        mov     byte [?_213], 0                         ; 148C _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 1493 _ C7. 45, FC, 00000002
        jmp     ?_049                                   ; 149A _ EB, 0F

?_048:  mov     eax, dword [ebp-4H]                     ; 149C _ 8B. 45, FC
        add     eax, _str.2428                          ; 149F _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 14A4 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 14A7 _ 83. 45, FC, 01
?_049:  cmp     dword [ebp-4H], 9                       ; 14AB _ 83. 7D, FC, 09
        jle     ?_048                                   ; 14AF _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 14B1 _ C7. 45, F8, 00000009
        jmp     ?_053                                   ; 14B8 _ EB, 42

?_050:  mov     eax, dword [ebp+8H]                     ; 14BA _ 8B. 45, 08
        and     eax, 0FH                                ; 14BD _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 14C0 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 14C3 _ 8B. 45, 08
        shr     eax, 4                                  ; 14C6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 14C9 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 14CC _ 83. 7D, F4, 09
        jle     ?_051                                   ; 14D0 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 14D2 _ 8B. 45, F4
        add     eax, 55                                 ; 14D5 _ 83. C0, 37
        mov     edx, eax                                ; 14D8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14DA _ 8B. 45, F8
        add     eax, _str.2428                          ; 14DD _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 14E2 _ 88. 10
        jmp     ?_052                                   ; 14E4 _ EB, 12

?_051:  mov     eax, dword [ebp-0CH]                    ; 14E6 _ 8B. 45, F4
        add     eax, 48                                 ; 14E9 _ 83. C0, 30
        mov     edx, eax                                ; 14EC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14EE _ 8B. 45, F8
        add     eax, _str.2428                          ; 14F1 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 14F6 _ 88. 10
?_052:  sub     dword [ebp-8H], 1                       ; 14F8 _ 83. 6D, F8, 01
?_053:  cmp     dword [ebp-8H], 1                       ; 14FC _ 83. 7D, F8, 01
        jle     ?_054                                   ; 1500 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1502 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1506 _ 75, B2
?_054:  mov     eax, _str.2428                          ; 1508 _ B8, 00000368(d)
        leave                                           ; 150D _ C9
        ret                                             ; 150E _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 150F _ 55
        mov     ebp, esp                                ; 1510 _ 89. E5
        sub     esp, 24                                 ; 1512 _ 83. EC, 18
?_055:  mov     dword [esp], 100                        ; 1515 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 151C _ E8, 00000000(rel)
        and     eax, 02H                                ; 1521 _ 83. E0, 02
        test    eax, eax                                ; 1524 _ 85. C0
        jz      ?_056                                   ; 1526 _ 74, 02
        jmp     ?_055                                   ; 1528 _ EB, EB
; _wait_KBC_sendready End of function

?_056:  ; Local function
        nop                                             ; 152A _ 90
        nop                                             ; 152B _ 90
        leave                                           ; 152C _ C9
        ret                                             ; 152D _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 152E _ 55
        mov     ebp, esp                                ; 152F _ 89. E5
        sub     esp, 24                                 ; 1531 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1534 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1539 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1541 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1548 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 154D _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1552 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 155A _ C7. 04 24, 00000060
        call    _io_out8                                ; 1561 _ E8, 00000000(rel)
        nop                                             ; 1566 _ 90
        leave                                           ; 1567 _ C9
        ret                                             ; 1568 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1569 _ 55
        mov     ebp, esp                                ; 156A _ 89. E5
        sub     esp, 24                                 ; 156C _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 156F _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1574 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 157C _ C7. 04 24, 00000064
        call    _io_out8                                ; 1583 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1588 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 158D _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1595 _ C7. 04 24, 00000060
        call    _io_out8                                ; 159C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 15A1 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 15A4 _ C6. 40, 03, 00
        nop                                             ; 15A8 _ 90
        leave                                           ; 15A9 _ C9
        ret                                             ; 15AA _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 15AB _ 55
        mov     ebp, esp                                ; 15AC _ 89. E5
        sub     esp, 40                                 ; 15AE _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 15B1 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 15B9 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 15C0 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 15C5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 15CD _ C7. 04 24, 00000020
        call    _io_out8                                ; 15D4 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 15D9 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 15E0 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 15E5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 15E8 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 15EC _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 15F0 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 15F7 _ E8, 00000000(rel)
        nop                                             ; 15FC _ 90
        leave                                           ; 15FD _ C9
        ret                                             ; 15FE _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 15FF _ 55
        mov     ebp, esp                                ; 1600 _ 89. E5
        sub     esp, 4                                  ; 1602 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1605 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1608 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 160B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 160E _ 0F B6. 40, 03
        test    al, al                                  ; 1612 _ 84. C0
        jnz     ?_058                                   ; 1614 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1616 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 161A _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 161C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 161F _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 1623 _ B8, 00000000
        jmp     ?_065                                   ; 1628 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 162D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1630 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1634 _ 3C, 01
        jnz     ?_060                                   ; 1636 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1638 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 163C _ 25, 000000C8
        cmp     eax, 8                                  ; 1641 _ 83. F8, 08
        jnz     ?_059                                   ; 1644 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1646 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1649 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 164D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 164F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1652 _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 1656 _ B8, 00000000
        jmp     ?_065                                   ; 165B _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 1660 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1663 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1667 _ 3C, 02
        jnz     ?_061                                   ; 1669 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 166B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 166E _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1672 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1675 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1678 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 167C _ B8, 00000000
        jmp     ?_065                                   ; 1681 _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 1686 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1689 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 168D _ 3C, 03
        jne     ?_064                                   ; 168F _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1695 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1698 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 169C _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 169F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 16A2 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 16A6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 16A9 _ 0F B6. 00
        movzx   eax, al                                 ; 16AC _ 0F B6. C0
        and     eax, 07H                                ; 16AF _ 83. E0, 07
        mov     edx, eax                                ; 16B2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16B4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 16B7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 16BA _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 16BD _ 0F B6. 40, 01
        movzx   eax, al                                 ; 16C1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 16C4 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 16C7 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 16CA _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 16CD _ 0F B6. 40, 02
        movzx   eax, al                                 ; 16D1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 16D4 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 16D7 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 16DA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 16DD _ 0F B6. 00
        movzx   eax, al                                 ; 16E0 _ 0F B6. C0
        and     eax, 10H                                ; 16E3 _ 83. E0, 10
        test    eax, eax                                ; 16E6 _ 85. C0
        jz      ?_062                                   ; 16E8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 16EA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 16ED _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 16F0 _ 0D, FFFFFF00
        mov     edx, eax                                ; 16F5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16F7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 16FA _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 16FD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1700 _ 0F B6. 00
        movzx   eax, al                                 ; 1703 _ 0F B6. C0
        and     eax, 20H                                ; 1706 _ 83. E0, 20
        test    eax, eax                                ; 1709 _ 85. C0
        jz      ?_063                                   ; 170B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 170D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1710 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1713 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1718 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 171A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 171D _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 1720 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1723 _ 8B. 40, 08
        neg     eax                                     ; 1726 _ F7. D8
        mov     edx, eax                                ; 1728 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 172A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 172D _ 89. 50, 08
        mov     eax, 1                                  ; 1730 _ B8, 00000001
        jmp     ?_065                                   ; 1735 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 1737 _ B8, FFFFFFFF
?_065:  leave                                           ; 173C _ C9
        ret                                             ; 173D _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 173E _ 55
        mov     ebp, esp                                ; 173F _ 89. E5
        sub     esp, 72                                 ; 1741 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 1744 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 174B _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1752 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1759 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1760 _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 1766 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1769 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 176B _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 176F _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1772 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1776 _ 89. 04 24
        call    _init_screen8                           ; 1779 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 177E _ 8B. 45, 20
        movsx   eax, al                                 ; 1781 _ 0F BE. C0
        mov     dword [esp+14H], ?_204                  ; 1784 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 178C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1790 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1793 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1797 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 179A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 179E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17A8 _ 89. 04 24
        call    _showString                             ; 17AB _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 17B0 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 17B3 _ 89. 04 24
        call    _intToHexStr                            ; 17B6 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 17BB _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 17BE _ 8B. 45, 20
        movsx   eax, al                                 ; 17C1 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 17C4 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 17C7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 17CB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17CF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17D2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 17D6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 17D9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17DD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17E0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17E4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17E7 _ 89. 04 24
        call    _showString                             ; 17EA _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 17EF _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 17F3 _ 8B. 45, 20
        movsx   eax, al                                 ; 17F6 _ 0F BE. C0
        mov     dword [esp+14H], ?_205                  ; 17F9 _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 1801 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1805 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1808 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 180C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 180F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1813 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1816 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 181A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 181D _ 89. 04 24
        call    _showString                             ; 1820 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1825 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1828 _ 8B. 00
        mov     dword [esp], eax                        ; 182A _ 89. 04 24
        call    _intToHexStr                            ; 182D _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1832 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1835 _ 8B. 45, 20
        movsx   eax, al                                 ; 1838 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 183B _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 183E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1842 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1846 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1849 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 184D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1850 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1854 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1857 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 185B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 185E _ 89. 04 24
        call    _showString                             ; 1861 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1866 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 186A _ 8B. 45, 20
        movsx   eax, al                                 ; 186D _ 0F BE. C0
        mov     dword [esp+14H], ?_206                  ; 1870 _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 1878 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 187C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 187F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1883 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1886 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 188A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 188D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1891 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1894 _ 89. 04 24
        call    _showString                             ; 1897 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 189C _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 189F _ 8B. 40, 04
        mov     dword [esp], eax                        ; 18A2 _ 89. 04 24
        call    _intToHexStr                            ; 18A5 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 18AA _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 18AD _ 8B. 45, 20
        movsx   eax, al                                 ; 18B0 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 18B3 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 18B6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 18BA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18BE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18C1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 18C5 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 18C8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18D6 _ 89. 04 24
        call    _showString                             ; 18D9 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 18DE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 18E2 _ 8B. 45, 20
        movsx   eax, al                                 ; 18E5 _ 0F BE. C0
        mov     dword [esp+14H], ?_207                  ; 18E8 _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 18F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18F4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 18FB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 18FE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1902 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1905 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1909 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 190C _ 89. 04 24
        call    _showString                             ; 190F _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1914 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1917 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 191A _ 89. 04 24
        call    _intToHexStr                            ; 191D _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1922 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1925 _ 8B. 45, 20
        movsx   eax, al                                 ; 1928 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 192B _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 192E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1932 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1936 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1939 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 193D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1940 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1944 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1947 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 194B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 194E _ 89. 04 24
        call    _showString                             ; 1951 _ E8, FFFFF5C8
        nop                                             ; 1956 _ 90
        leave                                           ; 1957 _ C9
        ret                                             ; 1958 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1959 _ 55
        mov     ebp, esp                                ; 195A _ 89. E5
        sub     esp, 56                                 ; 195C _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 195F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1962 _ 89. 04 24
        call    _sheet_alloc                            ; 1965 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 196A _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 196D _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1972 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 197A _ 89. 04 24
        call    _memman_alloc_4k                        ; 197D _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1982 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1985 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 198D _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1995 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 199D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 19A0 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 19A4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 19A7 _ 89. 04 24
        call    _sheet_setbuf                           ; 19AA _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 19AF _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 19B2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 19B6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 19B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19C0 _ 89. 04 24
        call    _make_window8                           ; 19C3 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 19C8 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 19D0 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 19D8 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 19E0 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 19E8 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 19F0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 19F3 _ 89. 04 24
        call    _make_textbox8                          ; 19F6 _ E8, 000003AA
        mov     dword [esp+0CH], 172                    ; 19FB _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1A03 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1A0B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A0E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A12 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A15 _ 89. 04 24
        call    _sheet_slide                            ; 1A18 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1A1D _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1A25 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A28 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A2C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A2F _ 89. 04 24
        call    _sheet_updown                           ; 1A32 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1A37 _ 8B. 45, F4
        leave                                           ; 1A3A _ C9
        ret                                             ; 1A3B _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1A3C _ 55
        mov     ebp, esp                                ; 1A3D _ 89. E5
        push    ebx                                     ; 1A3F _ 53
        sub     esp, 68                                 ; 1A40 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1A43 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A46 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1A49 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1A4C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1A4F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1A52 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1A55 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1A58 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A5B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A5E _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1A60 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1A68 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1A6C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1A74 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1A7C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1A84 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1A87 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A8B _ 89. 04 24
        call    _boxfill8                               ; 1A8E _ E8, FFFFF5F8
        mov     eax, dword [ebp-18H]                    ; 1A93 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1A96 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1A99 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A9C _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1A9E _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1AA6 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1AAA _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1AB2 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1ABA _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1AC2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1AC5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AC9 _ 89. 04 24
        call    _boxfill8                               ; 1ACC _ E8, FFFFF5BA
        mov     eax, dword [ebp-1CH]                    ; 1AD1 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1AD4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AD7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1ADA _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1ADC _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1AE0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1AE8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1AF0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AF8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1B00 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B03 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B07 _ 89. 04 24
        call    _boxfill8                               ; 1B0A _ E8, FFFFF57C
        mov     eax, dword [ebp-1CH]                    ; 1B0F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B12 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B15 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B18 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B1A _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1B1E _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1B26 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B2E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B36 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1B3E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B41 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B45 _ 89. 04 24
        call    _boxfill8                               ; 1B48 _ E8, FFFFF53E
        mov     eax, dword [ebp-1CH]                    ; 1B4D _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1B50 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1B53 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1B56 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1B59 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1B5C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B5F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B62 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1B64 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1B68 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1B6C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1B74 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1B78 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1B80 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B83 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B87 _ 89. 04 24
        call    _boxfill8                               ; 1B8A _ E8, FFFFF4FC
        mov     eax, dword [ebp-1CH]                    ; 1B8F _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1B92 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1B95 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1B98 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1B9B _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1B9E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BA1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BA4 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1BA6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1BAA _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1BAE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1BB6 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1BBA _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1BC2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1BC5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BC9 _ 89. 04 24
        call    _boxfill8                               ; 1BCC _ E8, FFFFF4BA
        mov     eax, dword [ebp-1CH]                    ; 1BD1 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1BD4 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1BD7 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1BDA _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1BDD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BE0 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1BE2 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1BE6 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1BEA _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1BF2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1BFA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1C02 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C05 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C09 _ 89. 04 24
        call    _boxfill8                               ; 1C0C _ E8, FFFFF47A
        mov     eax, dword [ebp-18H]                    ; 1C11 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1C14 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1C17 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C1A _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1C1C _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1C24 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1C28 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1C30 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1C38 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1C40 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C43 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C47 _ 89. 04 24
        call    _boxfill8                               ; 1C4A _ E8, FFFFF43C
        mov     eax, dword [ebp-1CH]                    ; 1C4F _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1C52 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1C55 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1C58 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1C5B _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1C5E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C61 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C64 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C66 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C6A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1C6E _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1C72 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1C7A _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1C82 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C85 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C89 _ 89. 04 24
        call    _boxfill8                               ; 1C8C _ E8, FFFFF3FA
        mov     eax, dword [ebp-1CH]                    ; 1C91 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1C94 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1C97 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1C9A _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1C9D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1CA0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CA3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CA6 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CA8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CAC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CB0 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1CB4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1CBC _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1CC4 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CC7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CCB _ 89. 04 24
        call    _boxfill8                               ; 1CCE _ E8, FFFFF3B8
        mov     eax, dword [ebp+10H]                    ; 1CD3 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1CD6 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1CDA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1CE2 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1CEA _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1CF2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CF5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CF9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CFC _ 89. 04 24
        call    _showString                             ; 1CFF _ E8, FFFFF21A
        mov     dword [ebp-10H], 0                      ; 1D04 _ C7. 45, F0, 00000000
        jmp     ?_073                                   ; 1D0B _ E9, 00000084

?_066:  mov     dword [ebp-0CH], 0                      ; 1D10 _ C7. 45, F4, 00000000
        jmp     ?_072                                   ; 1D17 _ EB, 71

?_067:  mov     eax, dword [ebp-10H]                    ; 1D19 _ 8B. 45, F0
        shl     eax, 4                                  ; 1D1C _ C1. E0, 04
        mov     edx, eax                                ; 1D1F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1D21 _ 8B. 45, F4
        add     eax, edx                                ; 1D24 _ 01. D0
        add     eax, _closebtn.2490                     ; 1D26 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1D2B _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1D2E _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1D31 _ 80. 7D, EF, 40
        jnz     ?_068                                   ; 1D35 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1D37 _ C6. 45, EF, 00
        jmp     ?_071                                   ; 1D3B _ EB, 1C

?_068:  cmp     byte [ebp-11H], 36                      ; 1D3D _ 80. 7D, EF, 24
        jnz     ?_069                                   ; 1D41 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1D43 _ C6. 45, EF, 0F
        jmp     ?_071                                   ; 1D47 _ EB, 10

?_069:  cmp     byte [ebp-11H], 81                      ; 1D49 _ 80. 7D, EF, 51
        jnz     ?_070                                   ; 1D4D _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1D4F _ C6. 45, EF, 08
        jmp     ?_071                                   ; 1D53 _ EB, 04

?_070:  mov     byte [ebp-11H], 7                       ; 1D55 _ C6. 45, EF, 07
?_071:  mov     eax, dword [ebp+0CH]                    ; 1D59 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1D5C _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1D5E _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1D61 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1D64 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D67 _ 8B. 40, 04
        imul    eax, edx                                ; 1D6A _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1D6D _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1D70 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1D73 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1D76 _ 8B. 55, F4
        add     edx, ebx                                ; 1D79 _ 01. DA
        add     eax, edx                                ; 1D7B _ 01. D0
        lea     edx, [ecx+eax]                          ; 1D7D _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1D80 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1D84 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1D86 _ 83. 45, F4, 01
?_072:  cmp     dword [ebp-0CH], 15                     ; 1D8A _ 83. 7D, F4, 0F
        jle     ?_067                                   ; 1D8E _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1D90 _ 83. 45, F0, 01
?_073:  cmp     dword [ebp-10H], 13                     ; 1D94 _ 83. 7D, F0, 0D
        jle     ?_066                                   ; 1D98 _ 0F 8E, FFFFFF72
        nop                                             ; 1D9E _ 90
        add     esp, 68                                 ; 1D9F _ 83. C4, 44
        pop     ebx                                     ; 1DA2 _ 5B
        pop     ebp                                     ; 1DA3 _ 5D
        ret                                             ; 1DA4 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1DA5 _ 55
        mov     ebp, esp                                ; 1DA6 _ 89. E5
        push    edi                                     ; 1DA8 _ 57
        push    esi                                     ; 1DA9 _ 56
        push    ebx                                     ; 1DAA _ 53
        sub     esp, 44                                 ; 1DAB _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1DAE _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1DB1 _ 8B. 45, 14
        add     eax, edx                                ; 1DB4 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1DB6 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1DB9 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1DBC _ 8B. 45, 18
        add     eax, edx                                ; 1DBF _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1DC1 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1DC4 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1DC7 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1DCA _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1DCD _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1DD0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DD3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1DD6 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1DD9 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1DDC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1DDF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1DE2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DE5 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1DE7 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1DEB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1DEF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DF3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1DF7 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1DFF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E03 _ 89. 04 24
        call    _boxfill8                               ; 1E06 _ E8, FFFFF280
        mov     eax, dword [ebp-14H]                    ; 1E0B _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1E0E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1E11 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1E14 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1E17 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E1A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E1D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E20 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1E23 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E26 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E29 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E2C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E2E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E32 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E36 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E3A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1E3E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1E46 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E4A _ 89. 04 24
        call    _boxfill8                               ; 1E4D _ E8, FFFFF239
        mov     eax, dword [ebp-14H]                    ; 1E52 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1E55 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1E58 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1E5B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1E5E _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1E61 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1E64 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E67 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1E6A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E6D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E70 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E73 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E75 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E79 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E7D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E81 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1E85 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1E8D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E91 _ 89. 04 24
        call    _boxfill8                               ; 1E94 _ E8, FFFFF1F2
        mov     eax, dword [ebp-14H]                    ; 1E99 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1E9C _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1E9F _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1EA2 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1EA5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1EA8 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1EAB _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1EAE _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1EB1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1EB4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EB7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EBA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1EBC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EC0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EC4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EC8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1ECC _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1ED4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1ED8 _ 89. 04 24
        call    _boxfill8                               ; 1EDB _ E8, FFFFF1AB
        mov     eax, dword [ebp+10H]                    ; 1EE0 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1EE3 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1EE6 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1EE9 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1EEC _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1EEF _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1EF2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1EF5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EF8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EFB _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1EFD _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1F01 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1F04 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F08 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F0C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1F10 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1F18 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F1C _ 89. 04 24
        call    _boxfill8                               ; 1F1F _ E8, FFFFF167
        mov     eax, dword [ebp+0CH]                    ; 1F24 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1F27 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1F2A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1F2D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1F30 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1F33 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1F36 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F39 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F3C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F3F _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 1F41 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1F44 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F48 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F4C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F50 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1F54 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1F5C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F60 _ 89. 04 24
        call    _boxfill8                               ; 1F63 _ E8, FFFFF123
        mov     eax, dword [ebp-14H]                    ; 1F68 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1F6B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1F6E _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 1F71 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1F74 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1F77 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1F7A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F7D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F80 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F83 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1F85 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1F89 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1F8C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F90 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F94 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1F98 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1FA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FA4 _ 89. 04 24
        call    _boxfill8                               ; 1FA7 _ E8, FFFFF0DF
        mov     eax, dword [ebp-14H]                    ; 1FAC _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1FAF _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 1FB2 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1FB5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1FB8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1FBB _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1FBE _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1FC1 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1FC4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FC7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FCA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FCD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1FCF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FD3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FD7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FDB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1FDF _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1FE7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FEB _ 89. 04 24
        call    _boxfill8                               ; 1FEE _ E8, FFFFF098
        mov     eax, dword [ebp+10H]                    ; 1FF3 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1FF6 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1FF9 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1FFC _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1FFF _ 8B. 45, 1C
        movzx   eax, al                                 ; 2002 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2005 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2008 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 200B _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 200E _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2010 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2013 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2017 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 201A _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 201E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2022 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2026 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 202A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 202E _ 89. 14 24
        call    _boxfill8                               ; 2031 _ E8, FFFFF055
        nop                                             ; 2036 _ 90
        add     esp, 44                                 ; 2037 _ 83. C4, 2C
        pop     ebx                                     ; 203A _ 5B
        pop     esi                                     ; 203B _ 5E
        pop     edi                                     ; 203C _ 5F
        pop     ebp                                     ; 203D _ 5D
        ret                                             ; 203E _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 203F _ 55
        mov     ebp, esp                                ; 2040 _ 89. E5
        sub     esp, 88                                 ; 2042 _ 83. EC, 58
        call    _get_addr_code32                        ; 2045 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 204A _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 204D _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 2051 _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 2055 _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 2059 _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 205D _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 2061 _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 2065 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 206C _ C7. 45, F4, 00000000
        jmp     ?_075                                   ; 2073 _ E9, 000001A2

?_074:  mov     eax, dword [_shtctl]                    ; 2078 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 207D _ 89. 04 24
        call    _sheet_alloc                            ; 2080 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2085 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2087 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 208A _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 208E _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 2093 _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 209B _ 89. 04 24
        call    _memman_alloc_4k                        ; 209E _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 20A3 _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 20A6 _ 8B. 45, F4
        add     eax, 98                                 ; 20A9 _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 20AC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 20AF _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 20B3 _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 20B6 _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 20B9 _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 20BD _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 20C5 _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 20CD _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 20D5 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 20D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20DC _ 89. 04 24
        call    _sheet_setbuf                           ; 20DF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 20E4 _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 20E7 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 20EB _ 8B. 15, 00000244(d)
        lea     eax, [ebp-2AH]                          ; 20F1 _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 20F4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 20F8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 20FC _ 89. 14 24
        call    _make_window8                           ; 20FF _ E8, FFFFF938
        call    _task_alloc                             ; 2104 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2109 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 210B _ 8B. 45, F4
        mov     dword [_task_b.2516+eax*4], edx         ; 210E _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 2115 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2118 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+70H], 0                      ; 211F _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2126 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2129 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 1073741824             ; 2130 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-10H]                    ; 2137 _ 8B. 45, F0
        neg     eax                                     ; 213A _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 213C _ 8D. 90, 00000849(d)
        mov     eax, dword [ebp-0CH]                    ; 2142 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2145 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+30H], edx                    ; 214C _ 89. 50, 30
        mov     eax, dword [ebp-0CH]                    ; 214F _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2152 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+58H], 0                      ; 2159 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2160 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2163 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+5CH], 8                      ; 216A _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2171 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2174 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+60H], 32                     ; 217B _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-0CH]                    ; 2182 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2185 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+64H], 24                     ; 218C _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-0CH]                    ; 2193 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 2196 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+68H], 0                      ; 219D _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-0CH]                    ; 21A4 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 21A7 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+6CH], 16                     ; 21AE _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-0CH]                    ; 21B5 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 21B8 _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+48H]                    ; 21BF _ 8B. 50, 48
        mov     eax, dword [ebp-0CH]                    ; 21C2 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 21C5 _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 21CC _ 83. EA, 08
        mov     dword [eax+48H], edx                    ; 21CF _ 89. 50, 48
        mov     eax, dword [ebp-0CH]                    ; 21D2 _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 21D5 _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 21D9 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 21DC _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+48H]                    ; 21E3 _ 8B. 40, 48
        add     eax, 4                                  ; 21E6 _ 83. C0, 04
        mov     dword [eax], edx                        ; 21E9 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 21EB _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 21EE _ 8D. 50, 01
        mov     eax, edx                                ; 21F1 _ 89. D0
        shl     eax, 2                                  ; 21F3 _ C1. E0, 02
        add     edx, eax                                ; 21F6 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 21F8 _ 8B. 45, F4
        mov     eax, dword [_task_b.2516+eax*4]         ; 21FB _ 8B. 04 85, 00000374(d)
        mov     dword [esp+8H], edx                     ; 2202 _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 2206 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 220E _ 89. 04 24
        call    _task_run                               ; 2211 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 2216 _ 83. 45, F4, 01
?_075:  cmp     dword [ebp-0CH], 1                      ; 221A _ 83. 7D, F4, 01
        jle     ?_074                                   ; 221E _ 0F 8E, FFFFFE54
        mov     edx, dword [ebp-24H]                    ; 2224 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 2227 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 222C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 2234 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 223C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2240 _ 89. 04 24
        call    _sheet_slide                            ; 2243 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 2248 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 224B _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 2250 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2258 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 225C _ 89. 04 24
        call    _sheet_updown                           ; 225F _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2264 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 2267 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 226C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 2274 _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 227C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2280 _ 89. 04 24
        call    _sheet_slide                            ; 2283 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2288 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 228B _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 2290 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2298 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 229C _ 89. 04 24
        call    _sheet_updown                           ; 229F _ E8, 00000000(rel)
        nop                                             ; 22A4 _ 90
        leave                                           ; 22A5 _ C9
        ret                                             ; 22A6 _ C3
; _multi_windows End of function

        nop                                             ; 22A7 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 22A8 _ 55
        mov     ebp, esp                                ; 22A9 _ 89. E5
        sub     esp, 40                                 ; 22AB _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 22AE _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 22B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22B9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 22BC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 22C1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 22C4 _ 83. 7D, F0, 00
        jnz     ?_076                                   ; 22C8 _ 75, 0A
        mov     eax, 0                                  ; 22CA _ B8, 00000000
        jmp     ?_080                                   ; 22CF _ E9, 0000009D

?_076:  mov     eax, dword [ebp+10H]                    ; 22D4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 22D7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 22DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22E2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 22E5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 22EA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 22EC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 22EF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 22F2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 22F5 _ 8B. 40, 04
        test    eax, eax                                ; 22F8 _ 85. C0
        jnz     ?_077                                   ; 22FA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 22FC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 22FF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2307 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 230B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 230E _ 89. 04 24
        call    _memman_free_4k                         ; 2311 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2316 _ B8, 00000000
        jmp     ?_080                                   ; 231B _ EB, 54

?_077:  mov     eax, dword [ebp-10H]                    ; 231D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2320 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2323 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2325 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2328 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 232B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 232E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2331 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2334 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2337 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 233A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2341 _ C7. 45, F4, 00000000
        jmp     ?_079                                   ; 2348 _ EB, 1B

?_078:  mov     edx, dword [ebp-10H]                    ; 234A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 234D _ 8B. 45, F4
        add     eax, 33                                 ; 2350 _ 83. C0, 21
        shl     eax, 5                                  ; 2353 _ C1. E0, 05
        add     eax, edx                                ; 2356 _ 01. D0
        add     eax, 16                                 ; 2358 _ 83. C0, 10
        mov     dword [eax], 0                          ; 235B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2361 _ 83. 45, F4, 01
?_079:  cmp     dword [ebp-0CH], 255                    ; 2365 _ 81. 7D, F4, 000000FF
        jle     ?_078                                   ; 236C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 236E _ 8B. 45, F0
?_080:  leave                                           ; 2371 _ C9
        ret                                             ; 2372 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2373 _ 55
        mov     ebp, esp                                ; 2374 _ 89. E5
        sub     esp, 16                                 ; 2376 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2379 _ C7. 45, FC, 00000000
        jmp     ?_083                                   ; 2380 _ EB, 5B

?_081:  mov     edx, dword [ebp+8H]                     ; 2382 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2385 _ 8B. 45, FC
        add     eax, 33                                 ; 2388 _ 83. C0, 21
        shl     eax, 5                                  ; 238B _ C1. E0, 05
        add     eax, edx                                ; 238E _ 01. D0
        add     eax, 16                                 ; 2390 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2393 _ 8B. 00
        test    eax, eax                                ; 2395 _ 85. C0
        jnz     ?_082                                   ; 2397 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2399 _ 8B. 45, FC
        shl     eax, 5                                  ; 239C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 239F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 23A5 _ 8B. 45, 08
        add     eax, edx                                ; 23A8 _ 01. D0
        add     eax, 4                                  ; 23AA _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 23AD _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 23B0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23B3 _ 8B. 55, FC
        add     edx, 4                                  ; 23B6 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 23B9 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 23BC _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 23C0 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 23C3 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 23CA _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 23CD _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 23D4 _ 8B. 45, F8
        jmp     ?_084                                   ; 23D7 _ EB, 12

?_082:  add     dword [ebp-4H], 1                       ; 23D9 _ 83. 45, FC, 01
?_083:  cmp     dword [ebp-4H], 255                     ; 23DD _ 81. 7D, FC, 000000FF
        jle     ?_081                                   ; 23E4 _ 7E, 9C
        mov     eax, 0                                  ; 23E6 _ B8, 00000000
?_084:  leave                                           ; 23EB _ C9
        ret                                             ; 23EC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 23ED _ 55
        mov     ebp, esp                                ; 23EE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 23F0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 23F3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 23F6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 23F8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 23FB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 23FE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2401 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2404 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2407 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 240A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 240D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2410 _ 89. 50, 14
        nop                                             ; 2413 _ 90
        pop     ebp                                     ; 2414 _ 5D
        ret                                             ; 2415 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 2416 _ 55
        mov     ebp, esp                                ; 2417 _ 89. E5
        push    edi                                     ; 2419 _ 57
        push    esi                                     ; 241A _ 56
        push    ebx                                     ; 241B _ 53
        sub     esp, 60                                 ; 241C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 241F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2422 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2425 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2428 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 242B _ 8B. 40, 10
        add     eax, 1                                  ; 242E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2431 _ 39. 45, 10
        jle     ?_085                                   ; 2434 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2436 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2439 _ 8B. 40, 10
        add     eax, 1                                  ; 243C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 243F _ 89. 45, 10
?_085:  cmp     dword [ebp+10H], -1                     ; 2442 _ 83. 7D, 10, FF
        jge     ?_086                                   ; 2446 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2448 _ C7. 45, 10, FFFFFFFF
?_086:  mov     eax, dword [ebp+0CH]                    ; 244F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2452 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2455 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2458 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 245B _ 3B. 45, 10
        jle     ?_093                                   ; 245E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2464 _ 83. 7D, 10, 00
        js      ?_089                                   ; 2468 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 246E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2471 _ 89. 45, E4
        jmp     ?_088                                   ; 2474 _ EB, 34

?_087:  mov     eax, dword [ebp-1CH]                    ; 2476 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2479 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 247C _ 8B. 45, 08
        add     edx, 4                                  ; 247F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2482 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2486 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2489 _ 8B. 55, E4
        add     edx, 4                                  ; 248C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 248F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2493 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2496 _ 8B. 55, E4
        add     edx, 4                                  ; 2499 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 249C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 24A0 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 24A3 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 24A6 _ 83. 6D, E4, 01
?_088:  mov     eax, dword [ebp-1CH]                    ; 24AA _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 24AD _ 3B. 45, 10
        jg      ?_087                                   ; 24B0 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 24B2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 24B5 _ 8B. 55, 10
        add     edx, 4                                  ; 24B8 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 24BB _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 24BE _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 24C2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 24C5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 24C8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24CB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24CE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 24D1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 24D4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 24D7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24DA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24DD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24E0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24E3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24E6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24E9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24EC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24EF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 24F2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 24F6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 24FA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24FE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2502 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2506 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2509 _ 89. 04 24
        call    _sheet_refreshmap                       ; 250C _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2511 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2514 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2517 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 251A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 251D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2520 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2523 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2526 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2529 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 252C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 252F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2532 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2535 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2538 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 253B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 253E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2541 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2544 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2548 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 254C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2550 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2554 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2558 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 255C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 255F _ 89. 04 24
        call    _sheet_refreshsub                       ; 2562 _ E8, 00000465
        jmp     ?_100                                   ; 2567 _ E9, 0000027D

?_089:  mov     eax, dword [ebp+8H]                     ; 256C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 256F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2572 _ 39. 45, E0
        jge     ?_092                                   ; 2575 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2577 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 257A _ 89. 45, E4
        jmp     ?_091                                   ; 257D _ EB, 34

?_090:  mov     eax, dword [ebp-1CH]                    ; 257F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2582 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2585 _ 8B. 45, 08
        add     edx, 4                                  ; 2588 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 258B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 258F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2592 _ 8B. 55, E4
        add     edx, 4                                  ; 2595 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2598 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 259C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 259F _ 8B. 55, E4
        add     edx, 4                                  ; 25A2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 25A5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 25A9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 25AC _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 25AF _ 83. 45, E4, 01
?_091:  mov     eax, dword [ebp+8H]                     ; 25B3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25B6 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 25B9 _ 39. 45, E4
        jl      ?_090                                   ; 25BC _ 7C, C1
?_092:  mov     eax, dword [ebp+8H]                     ; 25BE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25C1 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 25C4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 25C7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 25CA _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25CD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25D0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25D3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25D6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25D9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25DC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25DF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25E2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25E5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25E8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25EB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25EE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25F1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25F4 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 25F7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 25FF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2603 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2607 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 260B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 260F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2612 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2615 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 261A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 261D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2620 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2623 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2626 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2629 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 262C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 262F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2632 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2635 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2638 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 263B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 263E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2641 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2644 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2647 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 264A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 264E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2656 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 265A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 265E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2662 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2666 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2669 _ 89. 04 24
        call    _sheet_refreshsub                       ; 266C _ E8, 0000035B
        jmp     ?_100                                   ; 2671 _ E9, 00000173

?_093:  mov     eax, dword [ebp-20H]                    ; 2676 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2679 _ 3B. 45, 10
        jge     ?_100                                   ; 267C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2682 _ 83. 7D, E0, 00
        js      ?_096                                   ; 2686 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2688 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 268B _ 89. 45, E4
        jmp     ?_095                                   ; 268E _ EB, 34

?_094:  mov     eax, dword [ebp-1CH]                    ; 2690 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2693 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2696 _ 8B. 45, 08
        add     edx, 4                                  ; 2699 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 269C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26A0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 26A3 _ 8B. 55, E4
        add     edx, 4                                  ; 26A6 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 26A9 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26AD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 26B0 _ 8B. 55, E4
        add     edx, 4                                  ; 26B3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 26B6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 26BA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 26BD _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 26C0 _ 83. 45, E4, 01
?_095:  mov     eax, dword [ebp-1CH]                    ; 26C4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 26C7 _ 3B. 45, 10
        jl      ?_094                                   ; 26CA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 26CC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26CF _ 8B. 55, 10
        add     edx, 4                                  ; 26D2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 26D5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 26D8 _ 89. 4C 90, 04
        jmp     ?_099                                   ; 26DC _ EB, 6C

?_096:  mov     eax, dword [ebp+8H]                     ; 26DE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26E1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 26E4 _ 89. 45, E4
        jmp     ?_098                                   ; 26E7 _ EB, 3A

?_097:  mov     eax, dword [ebp-1CH]                    ; 26E9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 26EC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 26EF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 26F2 _ 8B. 55, E4
        add     edx, 4                                  ; 26F5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 26F8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26FC _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 26FF _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2702 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 2706 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2709 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 270C _ 8B. 45, 08
        add     edx, 4                                  ; 270F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2712 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2716 _ 8B. 55, E4
        add     edx, 1                                  ; 2719 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 271C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 271F _ 83. 6D, E4, 01
?_098:  mov     eax, dword [ebp-1CH]                    ; 2723 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2726 _ 3B. 45, 10
        jge     ?_097                                   ; 2729 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 272B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 272E _ 8B. 55, 10
        add     edx, 4                                  ; 2731 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2734 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2737 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 273B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 273E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2741 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2744 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2747 _ 89. 50, 10
?_099:  mov     eax, dword [ebp+0CH]                    ; 274A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 274D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2750 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2753 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2756 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2759 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 275C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 275F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2762 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2765 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2768 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 276B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 276E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2771 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2774 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2777 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 277B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 277F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2783 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2787 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 278B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 278E _ 89. 04 24
        call    _sheet_refreshmap                       ; 2791 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2796 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2799 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 279C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 279F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27A2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27A5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27A8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27AB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27AE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27B1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27B4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27B7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27BA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27BD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 27C0 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 27C3 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 27C7 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 27CA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 27CE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 27D2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27D6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27E1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 27E4 _ E8, 000001E3
?_100:  nop                                             ; 27E9 _ 90
        add     esp, 60                                 ; 27EA _ 83. C4, 3C
        pop     ebx                                     ; 27ED _ 5B
        pop     esi                                     ; 27EE _ 5E
        pop     edi                                     ; 27EF _ 5F
        pop     ebp                                     ; 27F0 _ 5D
        ret                                             ; 27F1 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 27F2 _ 55
        mov     ebp, esp                                ; 27F3 _ 89. E5
        push    edi                                     ; 27F5 _ 57
        push    esi                                     ; 27F6 _ 56
        push    ebx                                     ; 27F7 _ 53
        sub     esp, 60                                 ; 27F8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 27FB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27FE _ 8B. 40, 18
        test    eax, eax                                ; 2801 _ 85. C0
        js      ?_101                                   ; 2803 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 2805 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 2808 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 280B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 280E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 2811 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2814 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2817 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 281A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 281D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2820 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2823 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 2826 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2829 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 282C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 282F _ 8B. 45, 14
        add     edx, eax                                ; 2832 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2834 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2837 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 283A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 283D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2840 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 2843 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2847 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 284B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 284F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2853 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2857 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 285B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 285E _ 89. 04 24
        call    _sheet_refreshsub                       ; 2861 _ E8, 00000166
?_101:  mov     eax, 0                                  ; 2866 _ B8, 00000000
        add     esp, 60                                 ; 286B _ 83. C4, 3C
        pop     ebx                                     ; 286E _ 5B
        pop     esi                                     ; 286F _ 5E
        pop     edi                                     ; 2870 _ 5F
        pop     ebp                                     ; 2871 _ 5D
        ret                                             ; 2872 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 2873 _ 55
        mov     ebp, esp                                ; 2874 _ 89. E5
        push    esi                                     ; 2876 _ 56
        push    ebx                                     ; 2877 _ 53
        sub     esp, 48                                 ; 2878 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 287B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 287E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2881 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2884 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2887 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 288A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 288D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2890 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2893 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2896 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2899 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 289C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 289F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 28A2 _ 8B. 40, 18
        test    eax, eax                                ; 28A5 _ 85. C0
        js      ?_102                                   ; 28A7 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 28AD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 28B0 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 28B3 _ 8B. 45, F0
        add     edx, eax                                ; 28B6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28B8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 28BB _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 28BE _ 8B. 45, F4
        add     eax, ecx                                ; 28C1 _ 01. C8
        mov     dword [esp+14H], 0                      ; 28C3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 28CB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 28CF _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 28D3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 28D6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 28DA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 28DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28E4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 28E7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 28EC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 28EF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 28F2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 28F5 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 28F8 _ 8B. 45, 14
        add     edx, eax                                ; 28FB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28FD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2900 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 2903 _ 8B. 45, 10
        add     eax, ebx                                ; 2906 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 2908 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 290C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2910 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2914 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2917 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 291B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 291E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2922 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2925 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2928 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 292D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2930 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2933 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2936 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2939 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 293C _ 8B. 45, F0
        add     edx, eax                                ; 293F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2941 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2944 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2947 _ 8B. 45, F4
        add     eax, ebx                                ; 294A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 294C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2950 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2958 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 295C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2960 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2963 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2967 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 296A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 296E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2971 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2974 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2979 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 297C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 297F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2982 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2985 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2988 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 298B _ 8B. 45, 14
        add     edx, eax                                ; 298E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2990 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 2993 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2996 _ 8B. 45, 10
        add     eax, esi                                ; 2999 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 299B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 299F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 29A3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 29A7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 29AB _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 29AE _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 29B2 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 29B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29BC _ 89. 04 24
        call    _sheet_refreshsub                       ; 29BF _ E8, 00000008
?_102:  nop                                             ; 29C4 _ 90
        add     esp, 48                                 ; 29C5 _ 83. C4, 30
        pop     ebx                                     ; 29C8 _ 5B
        pop     esi                                     ; 29C9 _ 5E
        pop     ebp                                     ; 29CA _ 5D
        ret                                             ; 29CB _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 29CC _ 55
        mov     ebp, esp                                ; 29CD _ 89. E5
        sub     esp, 48                                 ; 29CF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 29D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29D5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 29D7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 29DA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 29DD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 29E0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 29E3 _ 83. 7D, 0C, 00
        jns     ?_103                                   ; 29E7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 29E9 _ C7. 45, 0C, 00000000
?_103:  cmp     dword [ebp+10H], 8                      ; 29F0 _ 83. 7D, 10, 08
        jg      ?_104                                   ; 29F4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 29F6 _ C7. 45, 10, 00000000
?_104:  mov     eax, dword [ebp+8H]                     ; 29FD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A00 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2A03 _ 39. 45, 14
        jle     ?_105                                   ; 2A06 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A08 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A0B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2A0E _ 89. 45, 14
?_105:  mov     eax, dword [ebp+8H]                     ; 2A11 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A14 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2A17 _ 39. 45, 18
        jle     ?_106                                   ; 2A1A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A1C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A1F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2A22 _ 89. 45, 18
?_106:  mov     eax, dword [ebp+1CH]                    ; 2A25 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2A28 _ 89. 45, FC
        jmp     ?_113                                   ; 2A2B _ E9, 0000010F

?_107:  mov     eax, dword [ebp+8H]                     ; 2A30 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2A33 _ 8B. 55, FC
        add     edx, 4                                  ; 2A36 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A39 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2A3D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2A40 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2A43 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2A45 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2A48 _ 8B. 45, 08
        add     eax, 1044                               ; 2A4B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2A50 _ 8B. 55, E8
        sub     edx, eax                                ; 2A53 _ 29. C2
        mov     eax, edx                                ; 2A55 _ 89. D0
        sar     eax, 5                                  ; 2A57 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2A5A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2A5D _ C7. 45, F4, 00000000
        jmp     ?_112                                   ; 2A64 _ E9, 000000C3

?_108:  mov     eax, dword [ebp-18H]                    ; 2A69 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2A6C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2A6F _ 8B. 45, F4
        add     eax, edx                                ; 2A72 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2A74 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2A77 _ C7. 45, F8, 00000000
        jmp     ?_111                                   ; 2A7E _ E9, 00000096

?_109:  mov     eax, dword [ebp-18H]                    ; 2A83 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2A86 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2A89 _ 8B. 45, F8
        add     eax, edx                                ; 2A8C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2A8E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2A91 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2A94 _ 3B. 45, D8
        jg      ?_110                                   ; 2A97 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2A99 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2A9C _ 3B. 45, 14
        jge     ?_110                                   ; 2A9F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2AA1 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2AA4 _ 3B. 45, DC
        jg      ?_110                                   ; 2AA7 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2AA9 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2AAC _ 3B. 45, 18
        jge     ?_110                                   ; 2AAF _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2AB1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2AB4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2AB7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2ABB _ 8B. 55, F8
        add     eax, edx                                ; 2ABE _ 01. D0
        mov     edx, eax                                ; 2AC0 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2AC2 _ 8B. 45, E4
        add     eax, edx                                ; 2AC5 _ 01. D0
        movzx   eax, byte [eax]                         ; 2AC7 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2ACA _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2ACD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AD0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2AD3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2AD7 _ 8B. 55, D8
        add     eax, edx                                ; 2ADA _ 01. D0
        mov     edx, eax                                ; 2ADC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2ADE _ 8B. 45, EC
        add     eax, edx                                ; 2AE1 _ 01. D0
        movzx   eax, byte [eax]                         ; 2AE3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 2AE6 _ 38. 45, E3
        jnz     ?_110                                   ; 2AE9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2AEB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2AEF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2AF2 _ 8B. 52, 14
        cmp     eax, edx                                ; 2AF5 _ 39. D0
        jz      ?_110                                   ; 2AF7 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2AF9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AFC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2AFF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2B03 _ 8B. 55, D8
        add     eax, edx                                ; 2B06 _ 01. D0
        mov     edx, eax                                ; 2B08 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2B0A _ 8B. 45, F0
        add     edx, eax                                ; 2B0D _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2B0F _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2B13 _ 88. 02
?_110:  add     dword [ebp-8H], 1                       ; 2B15 _ 83. 45, F8, 01
?_111:  mov     eax, dword [ebp-18H]                    ; 2B19 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2B1C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2B1F _ 39. 45, F8
        jl      ?_109                                   ; 2B22 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2B28 _ 83. 45, F4, 01
?_112:  mov     eax, dword [ebp-18H]                    ; 2B2C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2B2F _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2B32 _ 39. 45, F4
        jl      ?_108                                   ; 2B35 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2B3B _ 83. 45, FC, 01
?_113:  mov     eax, dword [ebp-4H]                     ; 2B3F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2B42 _ 3B. 45, 20
        jle     ?_107                                   ; 2B45 _ 0F 8E, FFFFFEE5
        nop                                             ; 2B4B _ 90
        leave                                           ; 2B4C _ C9
        ret                                             ; 2B4D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B4E _ 55
        mov     ebp, esp                                ; 2B4F _ 89. E5
        sub     esp, 64                                 ; 2B51 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B54 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B57 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2B5A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2B5D _ 83. 7D, 0C, 00
        jns     ?_114                                   ; 2B61 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B63 _ C7. 45, 0C, 00000000
?_114:  cmp     dword [ebp+10H], 0                      ; 2B6A _ 83. 7D, 10, 00
        jns     ?_115                                   ; 2B6E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2B70 _ C7. 45, 10, 00000000
?_115:  mov     eax, dword [ebp+8H]                     ; 2B77 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B7A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2B7D _ 39. 45, 14
        jle     ?_116                                   ; 2B80 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B82 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B85 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2B88 _ 89. 45, 14
?_116:  mov     eax, dword [ebp+8H]                     ; 2B8B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B8E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2B91 _ 39. 45, 18
        jle     ?_117                                   ; 2B94 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B96 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B99 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2B9C _ 89. 45, 18
?_117:  mov     eax, dword [ebp+1CH]                    ; 2B9F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2BA2 _ 89. 45, FC
        jmp     ?_128                                   ; 2BA5 _ E9, 00000139

?_118:  mov     eax, dword [ebp+8H]                     ; 2BAA _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BAD _ 8B. 55, FC
        add     edx, 4                                  ; 2BB0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BB3 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 2BB7 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2BBA _ 8B. 45, 08
        add     eax, 1044                               ; 2BBD _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2BC2 _ 8B. 55, DC
        sub     edx, eax                                ; 2BC5 _ 29. C2
        mov     eax, edx                                ; 2BC7 _ 89. D0
        sar     eax, 5                                  ; 2BC9 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2BCC _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2BCF _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2BD2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2BD4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2BD7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2BDA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2BDD _ 8B. 55, 0C
        sub     edx, eax                                ; 2BE0 _ 29. C2
        mov     eax, edx                                ; 2BE2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2BE4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 2BE7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2BEA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2BED _ 8B. 55, 10
        sub     edx, eax                                ; 2BF0 _ 29. C2
        mov     eax, edx                                ; 2BF2 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2BF4 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 2BF7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2BFA _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2BFD _ 8B. 55, 14
        sub     edx, eax                                ; 2C00 _ 29. C2
        mov     eax, edx                                ; 2C02 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2C04 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2C07 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2C0A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2C0D _ 8B. 55, 18
        sub     edx, eax                                ; 2C10 _ 29. C2
        mov     eax, edx                                ; 2C12 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2C14 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2C17 _ 83. 7D, F0, 00
        jns     ?_119                                   ; 2C1B _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2C1D _ C7. 45, F0, 00000000
?_119:  cmp     dword [ebp-14H], 0                      ; 2C24 _ 83. 7D, EC, 00
        jns     ?_120                                   ; 2C28 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2C2A _ C7. 45, EC, 00000000
?_120:  mov     eax, dword [ebp-24H]                    ; 2C31 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C34 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2C37 _ 39. 45, E8
        jle     ?_121                                   ; 2C3A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2C3C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C3F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2C42 _ 89. 45, E8
?_121:  mov     eax, dword [ebp-24H]                    ; 2C45 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C48 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2C4B _ 39. 45, E4
        jle     ?_122                                   ; 2C4E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2C50 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C53 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2C56 _ 89. 45, E4
?_122:  mov     eax, dword [ebp-14H]                    ; 2C59 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2C5C _ 89. 45, F4
        jmp     ?_127                                   ; 2C5F _ EB, 76

?_123:  mov     eax, dword [ebp-24H]                    ; 2C61 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2C64 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2C67 _ 8B. 45, F4
        add     eax, edx                                ; 2C6A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2C6C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C6F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2C72 _ 89. 45, F8
        jmp     ?_126                                   ; 2C75 _ EB, 54

?_124:  mov     eax, dword [ebp-24H]                    ; 2C77 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2C7A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2C7D _ 8B. 45, F8
        add     eax, edx                                ; 2C80 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2C82 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2C85 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C88 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2C8B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2C8F _ 8B. 55, F8
        add     eax, edx                                ; 2C92 _ 01. D0
        mov     edx, eax                                ; 2C94 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2C96 _ 8B. 45, D4
        add     eax, edx                                ; 2C99 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C9B _ 0F B6. 00
        movzx   eax, al                                 ; 2C9E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2CA1 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2CA4 _ 8B. 52, 14
        cmp     eax, edx                                ; 2CA7 _ 39. D0
        jz      ?_125                                   ; 2CA9 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2CAB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2CAE _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2CB1 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2CB5 _ 8B. 55, CC
        add     eax, edx                                ; 2CB8 _ 01. D0
        mov     edx, eax                                ; 2CBA _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2CBC _ 8B. 45, E0
        add     edx, eax                                ; 2CBF _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2CC1 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2CC5 _ 88. 02
?_125:  add     dword [ebp-8H], 1                       ; 2CC7 _ 83. 45, F8, 01
?_126:  mov     eax, dword [ebp-8H]                     ; 2CCB _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2CCE _ 3B. 45, E8
        jl      ?_124                                   ; 2CD1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2CD3 _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp-0CH]                    ; 2CD7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2CDA _ 3B. 45, E4
        jl      ?_123                                   ; 2CDD _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2CDF _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2CE3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CE6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2CE9 _ 39. 45, FC
        jle     ?_118                                   ; 2CEC _ 0F 8E, FFFFFEB8
        nop                                             ; 2CF2 _ 90
        leave                                           ; 2CF3 _ C9
        ret                                             ; 2CF4 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2CF5 _ 90
        nop                                             ; 2CF6 _ 90
        nop                                             ; 2CF7 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2CF8 _ 55
        mov     ebp, esp                                ; 2CF9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CFB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2CFE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D04 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2D07 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D0E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2D11 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D18 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2D1B _ C7. 40, 0C, 00000000
        nop                                             ; 2D22 _ 90
        pop     ebp                                     ; 2D23 _ 5D
        ret                                             ; 2D24 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2D25 _ 55
        mov     ebp, esp                                ; 2D26 _ 89. E5
        sub     esp, 16                                 ; 2D28 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2D2B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2D32 _ C7. 45, FC, 00000000
        jmp     ?_130                                   ; 2D39 _ EB, 14

?_129:  mov     eax, dword [ebp+8H]                     ; 2D3B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D3E _ 8B. 55, FC
        add     edx, 2                                  ; 2D41 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D44 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2D48 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2D4B _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp+8H]                     ; 2D4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D52 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2D54 _ 39. 45, FC
        jc      ?_129                                   ; 2D57 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2D59 _ 8B. 45, F8
        leave                                           ; 2D5C _ C9
        ret                                             ; 2D5D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2D5E _ 55
        mov     ebp, esp                                ; 2D5F _ 89. E5
        sub     esp, 16                                 ; 2D61 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2D64 _ C7. 45, FC, 00000000
        jmp     ?_134                                   ; 2D6B _ E9, 00000083

?_131:  mov     eax, dword [ebp+8H]                     ; 2D70 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D73 _ 8B. 55, FC
        add     edx, 2                                  ; 2D76 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D79 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2D7D _ 39. 45, 0C
        ja      ?_133                                   ; 2D80 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2D82 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D85 _ 8B. 55, FC
        add     edx, 2                                  ; 2D88 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D8B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2D8E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2D91 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D94 _ 8B. 55, FC
        add     edx, 2                                  ; 2D97 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2D9A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2D9D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2DA0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2DA3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2DA6 _ 8B. 55, FC
        add     edx, 2                                  ; 2DA9 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2DAC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2DAF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2DB2 _ 8B. 55, FC
        add     edx, 2                                  ; 2DB5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2DB8 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2DBC _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2DBF _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2DC2 _ 8B. 4D, FC
        add     ecx, 2                                  ; 2DC5 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2DC8 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2DCC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2DCF _ 8B. 55, FC
        add     edx, 2                                  ; 2DD2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2DD5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2DD9 _ 85. C0
        jnz     ?_132                                   ; 2DDB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2DDD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DE0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2DE2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DE5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DE8 _ 89. 10
?_132:  mov     eax, dword [ebp-8H]                     ; 2DEA _ 8B. 45, F8
        jmp     ?_135                                   ; 2DED _ EB, 17

?_133:  add     dword [ebp-4H], 1                       ; 2DEF _ 83. 45, FC, 01
?_134:  mov     eax, dword [ebp+8H]                     ; 2DF3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DF6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2DF8 _ 39. 45, FC
        jc      ?_131                                   ; 2DFB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2E01 _ B8, 00000000
?_135:  leave                                           ; 2E06 _ C9
        ret                                             ; 2E07 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2E08 _ 55
        mov     ebp, esp                                ; 2E09 _ 89. E5
        push    ebx                                     ; 2E0B _ 53
        sub     esp, 16                                 ; 2E0C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2E0F _ C7. 45, F8, 00000000
        jmp     ?_137                                   ; 2E16 _ EB, 15

?_136:  mov     eax, dword [ebp+8H]                     ; 2E18 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E1B _ 8B. 55, F8
        add     edx, 2                                  ; 2E1E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E21 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2E24 _ 39. 45, 0C
        jc      ?_138                                   ; 2E27 _ 72, 10
        add     dword [ebp-8H], 1                       ; 2E29 _ 83. 45, F8, 01
?_137:  mov     eax, dword [ebp+8H]                     ; 2E2D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E30 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2E32 _ 39. 45, F8
        jl      ?_136                                   ; 2E35 _ 7C, E1
        jmp     ?_139                                   ; 2E37 _ EB, 01

?_138:  nop                                             ; 2E39 _ 90
?_139:  cmp     dword [ebp-8H], 0                       ; 2E3A _ 83. 7D, F8, 00
        jle     ?_141                                   ; 2E3E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2E44 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E47 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E4A _ 8B. 45, 08
        add     edx, 2                                  ; 2E4D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2E50 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2E53 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E56 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E59 _ 8B. 45, 08
        add     edx, 2                                  ; 2E5C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E5F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2E63 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2E65 _ 39. 45, 0C
        jne     ?_141                                   ; 2E68 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2E6E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E71 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E74 _ 8B. 45, 08
        add     edx, 2                                  ; 2E77 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2E7A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2E7E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E81 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E84 _ 8B. 45, 10
        add     ecx, eax                                ; 2E87 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2E89 _ 8B. 45, 08
        add     edx, 2                                  ; 2E8C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E8F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E93 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E96 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2E98 _ 39. 45, F8
        jge     ?_140                                   ; 2E9B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2E9D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2EA0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EA3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EA6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EA9 _ 8B. 55, F8
        add     edx, 2                                  ; 2EAC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2EAF _ 8B. 04 D0
        cmp     ecx, eax                                ; 2EB2 _ 39. C1
        jnz     ?_140                                   ; 2EB4 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2EB6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2EB9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        add     edx, 2                                  ; 2EBF _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2EC2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EC6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EC9 _ 8B. 55, F8
        add     edx, 2                                  ; 2ECC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2ECF _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2ED3 _ 8B. 55, F8
        sub     edx, 1                                  ; 2ED6 _ 83. EA, 01
        add     ecx, eax                                ; 2ED9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        add     edx, 2                                  ; 2EDE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2EE1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EE5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EE8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EEA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EED _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2EF0 _ 89. 10
?_140:  mov     eax, 0                                  ; 2EF2 _ B8, 00000000
        jmp     ?_147                                   ; 2EF7 _ E9, 0000011C

?_141:  mov     eax, dword [ebp+8H]                     ; 2EFC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EFF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2F01 _ 39. 45, F8
        jge     ?_142                                   ; 2F04 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2F06 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2F09 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2F0C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F0F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F12 _ 8B. 55, F8
        add     edx, 2                                  ; 2F15 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2F18 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2F1B _ 39. C1
        jnz     ?_142                                   ; 2F1D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2F1F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F22 _ 8B. 55, F8
        add     edx, 2                                  ; 2F25 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2F28 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2F2B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2F2E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F31 _ 8B. 55, F8
        add     edx, 2                                  ; 2F34 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2F37 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2F3B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2F3E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F41 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F44 _ 8B. 55, F8
        add     edx, 2                                  ; 2F47 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F4A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2F4E _ B8, 00000000
        jmp     ?_147                                   ; 2F53 _ E9, 000000C0

?_142:  mov     eax, dword [ebp+8H]                     ; 2F58 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F5B _ 8B. 00
        cmp     eax, 4095                               ; 2F5D _ 3D, 00000FFF
        jg      ?_146                                   ; 2F62 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2F68 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F6B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2F6D _ 89. 45, F4
        jmp     ?_144                                   ; 2F70 _ EB, 28

?_143:  mov     eax, dword [ebp-0CH]                    ; 2F72 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F75 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2F78 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2F7B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2F7E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2F81 _ 8B. 45, 08
        add     edx, 2                                  ; 2F84 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2F87 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2F8A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2F8C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2F8F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2F92 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2F96 _ 83. 6D, F4, 01
?_144:  mov     eax, dword [ebp-0CH]                    ; 2F9A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2F9D _ 3B. 45, F8
        jg      ?_143                                   ; 2FA0 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2FA2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FA5 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2FA7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FAA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2FAD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2FAF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FB2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FB5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FB8 _ 8B. 00
        cmp     edx, eax                                ; 2FBA _ 39. C2
        jge     ?_145                                   ; 2FBC _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2FBE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2FC1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2FC3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2FC6 _ 89. 50, 04
?_145:  mov     eax, dword [ebp+8H]                     ; 2FC9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2FCC _ 8B. 55, F8
        add     edx, 2                                  ; 2FCF _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2FD2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2FD5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2FD8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2FDB _ 8B. 55, F8
        add     edx, 2                                  ; 2FDE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2FE1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2FE4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2FE8 _ B8, 00000000
        jmp     ?_147                                   ; 2FED _ EB, 29

?_146:  mov     eax, dword [ebp+8H]                     ; 2FEF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2FF2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2FF5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FF8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2FFB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FFE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3001 _ 8B. 40, 08
        mov     edx, eax                                ; 3004 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3006 _ 8B. 45, 10
        add     eax, edx                                ; 3009 _ 01. D0
        mov     edx, eax                                ; 300B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 300D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3010 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3013 _ B8, FFFFFFFF
?_147:  add     esp, 16                                 ; 3018 _ 83. C4, 10
        pop     ebx                                     ; 301B _ 5B
        pop     ebp                                     ; 301C _ 5D
        ret                                             ; 301D _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 301E _ 55
        mov     ebp, esp                                ; 301F _ 89. E5
        sub     esp, 24                                 ; 3021 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3024 _ 8B. 45, 0C
        add     eax, 4095                               ; 3027 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 302C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 3031 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3034 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3037 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 303B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 303E _ 89. 04 24
        call    _memman_alloc                           ; 3041 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 3046 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3049 _ 8B. 45, FC
        leave                                           ; 304C _ C9
        ret                                             ; 304D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 304E _ 55
        mov     ebp, esp                                ; 304F _ 89. E5
        sub     esp, 28                                 ; 3051 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3054 _ 8B. 45, 10
        add     eax, 4095                               ; 3057 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 305C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 3061 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3064 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3067 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 306B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 306E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3072 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3075 _ 89. 04 24
        call    _memman_free                            ; 3078 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 307D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3080 _ 8B. 45, FC
        leave                                           ; 3083 _ C9
        ret                                             ; 3084 _ C3
; _memman_free_4k End of function

        nop                                             ; 3085 _ 90
        nop                                             ; 3086 _ 90
        nop                                             ; 3087 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3088 _ 55
        mov     ebp, esp                                ; 3089 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 308B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 308E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3091 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3097 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 309A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 309C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 309F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 30A2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 30A5 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 30A8 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 30AF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30B2 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 30B9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 30BC _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 30C3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 30C6 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 30C9 _ 89. 50, 18
        nop                                             ; 30CC _ 90
        pop     ebp                                     ; 30CD _ 5D
        ret                                             ; 30CE _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 30CF _ 55
        mov     ebp, esp                                ; 30D0 _ 89. E5
        sub     esp, 40                                 ; 30D2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 30D5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 30D8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 30DB _ 83. 7D, 08, 00
        jnz     ?_148                                   ; 30DF _ 75, 0A
        mov     eax, 4294967295                         ; 30E1 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 30E6 _ E9, 000000AB

?_148:  mov     eax, dword [ebp+8H]                     ; 30EB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30EE _ 8B. 40, 10
        test    eax, eax                                ; 30F1 _ 85. C0
        jnz     ?_149                                   ; 30F3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 30F5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 30F8 _ 8B. 40, 14
        or      eax, 01H                                ; 30FB _ 83. C8, 01
        mov     edx, eax                                ; 30FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3100 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3103 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3106 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 310B _ E9, 00000086

?_149:  mov     eax, dword [ebp+8H]                     ; 3110 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3113 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3115 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3118 _ 8B. 40, 04
        add     edx, eax                                ; 311B _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 311D _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3121 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3123 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3126 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3129 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 312C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 312F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3132 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3135 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3138 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 313B _ 8B. 40, 0C
        cmp     edx, eax                                ; 313E _ 39. C2
        jnz     ?_150                                   ; 3140 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3142 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3145 _ C7. 40, 04, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 314C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 314F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3152 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3155 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3158 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 315B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 315E _ 8B. 40, 18
        test    eax, eax                                ; 3161 _ 85. C0
        jz      ?_151                                   ; 3163 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 3165 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3168 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 316B _ 8B. 40, 04
        cmp     eax, 2                                  ; 316E _ 83. F8, 02
        jz      ?_151                                   ; 3171 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3173 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3176 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 3179 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 3181 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 3189 _ 89. 04 24
        call    _task_run                               ; 318C _ E8, 00000000(rel)
?_151:  mov     eax, 0                                  ; 3191 _ B8, 00000000
?_152:  leave                                           ; 3196 _ C9
        ret                                             ; 3197 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3198 _ 55
        mov     ebp, esp                                ; 3199 _ 89. E5
        sub     esp, 16                                 ; 319B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 319E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 31A1 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 31A4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31A7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31AA _ 39. C2
        jnz     ?_153                                   ; 31AC _ 75, 07
        mov     eax, 4294967295                         ; 31AE _ B8, FFFFFFFF
        jmp     ?_155                                   ; 31B3 _ EB, 51

?_153:  mov     eax, dword [ebp+8H]                     ; 31B5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 31B8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 31BA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31BD _ 8B. 40, 08
        add     eax, edx                                ; 31C0 _ 01. D0
        movzx   eax, byte [eax]                         ; 31C2 _ 0F B6. 00
        movzx   eax, al                                 ; 31C5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 31C8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 31CB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31CE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 31D1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31D4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31D7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31DA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 31DD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31E0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31E3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31E6 _ 39. C2
        jnz     ?_154                                   ; 31E8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 31EA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31ED _ C7. 40, 08, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 31F4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31F7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 31FA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31FD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3200 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3203 _ 8B. 45, FC
?_155:  leave                                           ; 3206 _ C9
        ret                                             ; 3207 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 3208 _ 55
        mov     ebp, esp                                ; 3209 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 320B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 320E _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3211 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3214 _ 8B. 40, 10
        sub     edx, eax                                ; 3217 _ 29. C2
        mov     eax, edx                                ; 3219 _ 89. D0
        pop     ebp                                     ; 321B _ 5D
        ret                                             ; 321C _ C3
; _fifo8_status End of function

        nop                                             ; 321D _ 90
        nop                                             ; 321E _ 90
        nop                                             ; 321F _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3220 _ 55
        mov     ebp, esp                                ; 3221 _ 89. E5
        sub     esp, 40                                 ; 3223 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3226 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 322E _ C7. 04 24, 00000043
        call    _io_out8                                ; 3235 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 323A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3242 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3249 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 324E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3256 _ C7. 04 24, 00000040
        call    _io_out8                                ; 325D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3262 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 326C _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 3273 _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 3275 _ 8B. 45, F4
        shl     eax, 4                                  ; 3278 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 327B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3280 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3286 _ 8B. 45, F4
        shl     eax, 4                                  ; 3289 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 328C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3291 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3297 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 329B _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 32A2 _ 7E, D1
        nop                                             ; 32A4 _ 90
        leave                                           ; 32A5 _ C9
        ret                                             ; 32A6 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 32A7 _ 55
        mov     ebp, esp                                ; 32A8 _ 89. E5
        sub     esp, 16                                 ; 32AA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 32AD _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 32B4 _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 32B6 _ 8B. 45, FC
        shl     eax, 4                                  ; 32B9 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 32BC _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 32C1 _ 8B. 00
        test    eax, eax                                ; 32C3 _ 85. C0
        jnz     ?_159                                   ; 32C5 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 32C7 _ 8B. 45, FC
        shl     eax, 4                                  ; 32CA _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 32CD _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 32D2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 32D8 _ 8B. 45, FC
        shl     eax, 4                                  ; 32DB _ C1. E0, 04
        add     eax, _timerctl                               ; 32DE _ 05, 00000000(d)
        add     eax, 4                                  ; 32E3 _ 83. C0, 04
        jmp     ?_161                                   ; 32E6 _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 32E8 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 32EC _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 32F3 _ 7E, C1
        mov     eax, 0                                  ; 32F5 _ B8, 00000000
?_161:  leave                                           ; 32FA _ C9
        ret                                             ; 32FB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 32FC _ 55
        mov     ebp, esp                                ; 32FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32FF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3302 _ C7. 40, 04, 00000000
        nop                                             ; 3309 _ 90
        pop     ebp                                     ; 330A _ 5D
        ret                                             ; 330B _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 330C _ 55
        mov     ebp, esp                                ; 330D _ 89. E5
        sub     esp, 4                                  ; 330F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3312 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3315 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3318 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 331B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 331E _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3321 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3324 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3328 _ 88. 42, 0C
        nop                                             ; 332B _ 90
        leave                                           ; 332C _ C9
        ret                                             ; 332D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 332E _ 55
        mov     ebp, esp                                ; 332F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3331 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3334 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3337 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3339 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 333C _ C7. 40, 04, 00000002
        nop                                             ; 3343 _ 90
        pop     ebp                                     ; 3344 _ 5D
        ret                                             ; 3345 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3346 _ 55
        mov     ebp, esp                                ; 3347 _ 89. E5
        sub     esp, 40                                 ; 3349 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 334C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3354 _ C7. 04 24, 00000020
        call    _io_out8                                ; 335B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3360 _ A1, 00000000(d)
        add     eax, 1                                  ; 3365 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3368 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 336D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3371 _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3378 _ E9, 000000AA

?_162:  mov     eax, dword [ebp-0CH]                    ; 337D _ 8B. 45, F4
        shl     eax, 4                                  ; 3380 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3383 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3388 _ 8B. 00
        cmp     eax, 2                                  ; 338A _ 83. F8, 02
        jne     ?_163                                   ; 338D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3393 _ 8B. 45, F4
        shl     eax, 4                                  ; 3396 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3399 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 339E _ 8B. 00
        lea     edx, [eax-1H]                           ; 33A0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 33A3 _ 8B. 45, F4
        shl     eax, 4                                  ; 33A6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 33A9 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 33AE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 33B0 _ 8B. 45, F4
        shl     eax, 4                                  ; 33B3 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 33B6 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 33BB _ 8B. 00
        test    eax, eax                                ; 33BD _ 85. C0
        jnz     ?_163                                   ; 33BF _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 33C1 _ 8B. 45, F4
        shl     eax, 4                                  ; 33C4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 33C7 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 33CC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 33D2 _ 8B. 45, F4
        shl     eax, 4                                  ; 33D5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 33D8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 33DD _ 0F B6. 00
        movzx   eax, al                                 ; 33E0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 33E3 _ 8B. 55, F4
        shl     edx, 4                                  ; 33E6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 33E9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 33EF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 33F1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 33F5 _ 89. 14 24
        call    _fifo8_put                              ; 33F8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 33FD _ 8B. 45, F4
        shl     eax, 4                                  ; 3400 _ C1. E0, 04
        add     eax, _timerctl                               ; 3403 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 3408 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 340B _ A1, 00000000(d)
        cmp     edx, eax                                ; 3410 _ 39. C2
        jnz     ?_163                                   ; 3412 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3414 _ C6. 45, F3, 01
?_163:  cmp     byte [ebp-0DH], 0                       ; 3418 _ 80. 7D, F3, 00
        jz      ?_164                                   ; 341C _ 74, 05
        call    _task_switch                            ; 341E _ E8, 00000000(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 3423 _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 3427 _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 342E _ 0F 8E, FFFFFF49
        nop                                             ; 3434 _ 90
        leave                                           ; 3435 _ C9
        ret                                             ; 3436 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 3437 _ B8, 00000000(d)
        ret                                             ; 343C _ C3
; _getTimerController End of function

        nop                                             ; 343D _ 90
        nop                                             ; 343E _ 90
        nop                                             ; 343F _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3440 _ 55
        mov     ebp, esp                                ; 3441 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3443 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_166                                   ; 344A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 344C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3453 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3456 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3459 _ 89. 45, 0C
?_166:  mov     eax, dword [ebp+0CH]                    ; 345C _ 8B. 45, 0C
        mov     edx, eax                                ; 345F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3461 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3464 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3467 _ 8B. 45, 10
        mov     edx, eax                                ; 346A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 346C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 346F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3473 _ 8B. 45, 10
        sar     eax, 16                                 ; 3476 _ C1. F8, 10
        mov     edx, eax                                ; 3479 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 347B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 347E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3481 _ 8B. 45, 14
        mov     edx, eax                                ; 3484 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3486 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3489 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 348C _ 8B. 45, 0C
        shr     eax, 16                                 ; 348F _ C1. E8, 10
        and     eax, 0FH                                ; 3492 _ 83. E0, 0F
        mov     edx, eax                                ; 3495 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3497 _ 8B. 45, 14
        sar     eax, 8                                  ; 349A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 349D _ 83. E0, F0
        or      eax, edx                                ; 34A0 _ 09. D0
        mov     edx, eax                                ; 34A2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34A4 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 34A7 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 34AA _ 8B. 45, 10
        shr     eax, 24                                 ; 34AD _ C1. E8, 18
        mov     edx, eax                                ; 34B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34B2 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 34B5 _ 88. 50, 07
        nop                                             ; 34B8 _ 90
        pop     ebp                                     ; 34B9 _ 5D
        ret                                             ; 34BA _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 34BB _ 55
        mov     ebp, esp                                ; 34BC _ 89. E5
        sub     esp, 16                                 ; 34BE _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 34C1 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 34C7 _ 8B. 55, 08
        mov     eax, edx                                ; 34CA _ 89. D0
        shl     eax, 2                                  ; 34CC _ C1. E0, 02
        add     eax, edx                                ; 34CF _ 01. D0
        shl     eax, 2                                  ; 34D1 _ C1. E0, 02
        add     eax, ecx                                ; 34D4 _ 01. C8
        add     eax, 8                                  ; 34D6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 34D9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 34DF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 34E5 _ 8B. 55, 08
        mov     eax, edx                                ; 34E8 _ 89. D0
        shl     eax, 2                                  ; 34EA _ C1. E0, 02
        add     eax, edx                                ; 34ED _ 01. D0
        shl     eax, 2                                  ; 34EF _ C1. E0, 02
        add     eax, ecx                                ; 34F2 _ 01. C8
        add     eax, 12                                 ; 34F4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 34F7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 34FD _ C7. 45, FC, 00000000
        jmp     ?_168                                   ; 3504 _ EB, 21

?_167:  mov     ecx, dword [_taskctl]                   ; 3506 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 350C _ 8B. 55, FC
        mov     eax, edx                                ; 350F _ 89. D0
        add     eax, eax                                ; 3511 _ 01. C0
        add     eax, edx                                ; 3513 _ 01. D0
        shl     eax, 3                                  ; 3515 _ C1. E0, 03
        add     eax, ecx                                ; 3518 _ 01. C8
        add     eax, 16                                 ; 351A _ 83. C0, 10
        mov     dword [eax], 0                          ; 351D _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3523 _ 83. 45, FC, 01
?_168:  cmp     dword [ebp-4H], 2                       ; 3527 _ 83. 7D, FC, 02
        jle     ?_167                                   ; 352B _ 7E, D9
        nop                                             ; 352D _ 90
        leave                                           ; 352E _ C9
        ret                                             ; 352F _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 3530 _ 55
        mov     ebp, esp                                ; 3531 _ 89. E5
        sub     esp, 40                                 ; 3533 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3536 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 353B _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 353E _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 3546 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3549 _ 89. 04 24
        call    _memman_alloc_4k                        ; 354C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3551 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3556 _ C7. 45, F4, 00000000
        jmp     ?_170                                   ; 355D _ EB, 7F

?_169:  mov     edx, dword [_taskctl]                   ; 355F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3565 _ 8B. 45, F4
        imul    eax, eax, 120                           ; 3568 _ 6B. C0, 78
        add     eax, edx                                ; 356B _ 01. D0
        add     eax, 72                                 ; 356D _ 83. C0, 48
        mov     dword [eax], 0                          ; 3570 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3576 _ 8B. 45, F4
        add     eax, 7                                  ; 3579 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 357C _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3582 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3589 _ 8B. 45, F4
        imul    eax, eax, 120                           ; 358C _ 6B. C0, 78
        add     eax, ecx                                ; 358F _ 01. C8
        add     eax, 68                                 ; 3591 _ 83. C0, 44
        mov     dword [eax], edx                        ; 3594 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3596 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 359C _ 8B. 45, F4
        imul    eax, eax, 120                           ; 359F _ 6B. C0, 78
        add     eax, 80                                 ; 35A2 _ 83. C0, 50
        add     eax, edx                                ; 35A5 _ 01. D0
        add     eax, 4                                  ; 35A7 _ 83. C0, 04
        mov     ecx, eax                                ; 35AA _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 35AC _ 8B. 45, F4
        add     eax, 7                                  ; 35AF _ 83. C0, 07
        lea     edx, [eax*8]                            ; 35B2 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 35B9 _ 8B. 45, F0
        add     eax, edx                                ; 35BC _ 01. D0
        mov     dword [esp+0CH], 137                    ; 35BE _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 35C6 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 35CA _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 35D2 _ 89. 04 24
        call    _set_segmdesc                           ; 35D5 _ E8, FFFFFE66
        add     dword [ebp-0CH], 1                      ; 35DA _ 83. 45, F4, 01
?_170:  cmp     dword [ebp-0CH], 4                      ; 35DE _ 83. 7D, F4, 04
        jle     ?_169                                   ; 35E2 _ 0F 8E, FFFFFF77
        mov     dword [ebp-0CH], 0                      ; 35E8 _ C7. 45, F4, 00000000
        jmp     ?_172                                   ; 35EF _ EB, 0F

?_171:  mov     eax, dword [ebp-0CH]                    ; 35F1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 35F4 _ 89. 04 24
        call    _init_task_level                        ; 35F7 _ E8, FFFFFEBF
        add     dword [ebp-0CH], 1                      ; 35FC _ 83. 45, F4, 01
?_172:  cmp     dword [ebp-0CH], 2                      ; 3600 _ 83. 7D, F4, 02
        jle     ?_171                                   ; 3604 _ 7E, EB
        call    _task_alloc                             ; 3606 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 360B _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 360E _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3611 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3618 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 361B _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 3622 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 3625 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 362C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 362F _ 89. 04 24
        call    _task_add                               ; 3632 _ E8, 0000003A
        call    _task_switchsub                         ; 3637 _ E8, 0000041A
        mov     eax, dword [ebp-14H]                    ; 363C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 363F _ 8B. 00
        mov     dword [esp], eax                        ; 3641 _ 89. 04 24
        call    _load_tr                                ; 3644 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 3649 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 364E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3653 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3656 _ 8B. 40, 08
        mov     edx, eax                                ; 3659 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 365B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3660 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3664 _ 89. 04 24
        call    _timer_settime                          ; 3667 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 366C _ 8B. 45, EC
        leave                                           ; 366F _ C9
        ret                                             ; 3670 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 3671 _ 55
        mov     ebp, esp                                ; 3672 _ 89. E5
        sub     esp, 16                                 ; 3674 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3677 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 367D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3680 _ 8B. 50, 0C
        mov     eax, edx                                ; 3683 _ 89. D0
        shl     eax, 2                                  ; 3685 _ C1. E0, 02
        add     eax, edx                                ; 3688 _ 01. D0
        shl     eax, 2                                  ; 368A _ C1. E0, 02
        add     eax, ecx                                ; 368D _ 01. C8
        add     eax, 8                                  ; 368F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3692 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3695 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3698 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 369A _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 369D _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 36A0 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 36A4 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 36A7 _ 8B. 00
        lea     edx, [eax+1H]                           ; 36A9 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 36AC _ 8B. 45, FC
        mov     dword [eax], edx                        ; 36AF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 36B1 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 36B4 _ C7. 40, 04, 00000002
        nop                                             ; 36BB _ 90
        leave                                           ; 36BC _ C9
        ret                                             ; 36BD _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 36BE _ 55
        mov     ebp, esp                                ; 36BF _ 89. E5
        sub     esp, 16                                 ; 36C1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 36C4 _ C7. 45, FC, 00000000
        jmp     ?_175                                   ; 36CB _ E9, 000000E2

?_173:  mov     edx, dword [_taskctl]                   ; 36D0 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 36D6 _ 8B. 45, FC
        imul    eax, eax, 120                           ; 36D9 _ 6B. C0, 78
        add     eax, edx                                ; 36DC _ 01. D0
        add     eax, 72                                 ; 36DE _ 83. C0, 48
        mov     eax, dword [eax]                        ; 36E1 _ 8B. 00
        test    eax, eax                                ; 36E3 _ 85. C0
        jne     ?_174                                   ; 36E5 _ 0F 85, 000000C3
        mov     edx, dword [_taskctl]                   ; 36EB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 36F1 _ 8B. 45, FC
        imul    eax, eax, 120                           ; 36F4 _ 6B. C0, 78
        add     eax, 64                                 ; 36F7 _ 83. C0, 40
        add     eax, edx                                ; 36FA _ 01. D0
        add     eax, 4                                  ; 36FC _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 36FF _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 3702 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 3705 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 370C _ 8B. 45, F8
        mov     dword [eax+34H], 514                    ; 370F _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-8H]                     ; 3716 _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 3719 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 3720 _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 3723 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 372A _ 8B. 45, F8
        mov     dword [eax+40H], 0                      ; 372D _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-8H]                     ; 3734 _ 8B. 45, F8
        mov     dword [eax+44H], 0                      ; 3737 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 373E _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 3741 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3748 _ 8B. 45, FC
        add     eax, 1                                  ; 374B _ 83. C0, 01
        shl     eax, 9                                  ; 374E _ C1. E0, 09
        mov     edx, eax                                ; 3751 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3753 _ 8B. 45, F8
        mov     dword [eax+48H], edx                    ; 3756 _ 89. 50, 48
        mov     eax, dword [ebp-8H]                     ; 3759 _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 375C _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3763 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 3766 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 376D _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 3770 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 3777 _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 377A _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 3781 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3784 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 378B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 378E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3795 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 3798 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 379F _ 8B. 45, F8
        mov     dword [eax+74H], 1073741824             ; 37A2 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-8H]                     ; 37A9 _ 8B. 45, F8
        jmp     ?_176                                   ; 37AC _ EB, 13

?_174:  add     dword [ebp-4H], 1                       ; 37AE _ 83. 45, FC, 01
?_175:  cmp     dword [ebp-4H], 4                       ; 37B2 _ 83. 7D, FC, 04
        jle     ?_173                                   ; 37B6 _ 0F 8E, FFFFFF14
        mov     eax, 0                                  ; 37BC _ B8, 00000000
?_176:  leave                                           ; 37C1 _ C9
        ret                                             ; 37C2 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 37C3 _ 55
        mov     ebp, esp                                ; 37C4 _ 89. E5
        sub     esp, 24                                 ; 37C6 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 37C9 _ 83. 7D, 0C, 00
        jns     ?_177                                   ; 37CD _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 37CF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37D2 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 37D5 _ 89. 45, 0C
?_177:  cmp     dword [ebp+10H], 0                      ; 37D8 _ 83. 7D, 10, 00
        jle     ?_178                                   ; 37DC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 37DE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 37E1 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 37E4 _ 89. 50, 08
?_178:  mov     eax, dword [ebp+8H]                     ; 37E7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37EA _ 8B. 40, 04
        cmp     eax, 2                                  ; 37ED _ 83. F8, 02
        jnz     ?_179                                   ; 37F0 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 37F2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37F5 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 37F8 _ 39. 45, 0C
        jz      ?_179                                   ; 37FB _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 37FD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3800 _ 89. 04 24
        call    _task_remove                            ; 3803 _ E8, 0000002E
?_179:  mov     eax, dword [ebp+8H]                     ; 3808 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 380B _ 8B. 40, 04
        cmp     eax, 2                                  ; 380E _ 83. F8, 02
        jz      ?_180                                   ; 3811 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 3813 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3816 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3819 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 381C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 381F _ 89. 04 24
        call    _task_add                               ; 3822 _ E8, FFFFFE4A
?_180:  mov     eax, dword [_taskctl]                   ; 3827 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 382C _ C7. 40, 04, 00000001
        nop                                             ; 3833 _ 90
        leave                                           ; 3834 _ C9
        ret                                             ; 3835 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 3836 _ 55
        mov     ebp, esp                                ; 3837 _ 89. E5
        sub     esp, 16                                 ; 3839 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 383C _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3842 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3845 _ 8B. 50, 0C
        mov     eax, edx                                ; 3848 _ 89. D0
        shl     eax, 2                                  ; 384A _ C1. E0, 02
        add     eax, edx                                ; 384D _ 01. D0
        shl     eax, 2                                  ; 384F _ C1. E0, 02
        add     eax, ecx                                ; 3852 _ 01. C8
        add     eax, 8                                  ; 3854 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 3857 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 385A _ C7. 45, FC, 00000000
        jmp     ?_183                                   ; 3861 _ EB, 23

?_181:  mov     eax, dword [ebp-8H]                     ; 3863 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 3866 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3869 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 386D _ 39. 45, 08
        jnz     ?_182                                   ; 3870 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 3872 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 3875 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 3878 _ C7. 44 90, 08, 00000000
        jmp     ?_184                                   ; 3880 _ EB, 0E

?_182:  add     dword [ebp-4H], 1                       ; 3882 _ 83. 45, FC, 01
?_183:  mov     eax, dword [ebp-8H]                     ; 3886 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3889 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 388B _ 39. 45, FC
        jl      ?_181                                   ; 388E _ 7C, D3
?_184:  mov     eax, dword [ebp-8H]                     ; 3890 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3893 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3895 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 3898 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 389B _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 389D _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 38A0 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 38A3 _ 39. 45, FC
        jge     ?_185                                   ; 38A6 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 38A8 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 38AB _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 38AE _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 38B1 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 38B4 _ 89. 50, 04
?_185:  mov     eax, dword [ebp-8H]                     ; 38B7 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 38BA _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 38BD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 38C0 _ 8B. 00
        cmp     edx, eax                                ; 38C2 _ 39. C2
        jl      ?_186                                   ; 38C4 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 38C6 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 38C9 _ C7. 40, 04, 00000000
?_186:  mov     eax, dword [ebp+8H]                     ; 38D0 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 38D3 _ C7. 40, 04, 00000001
        jmp     ?_188                                   ; 38DA _ EB, 1B

?_187:  mov     eax, dword [ebp-4H]                     ; 38DC _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 38DF _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 38E2 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 38E5 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 38E9 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 38EC _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 38EF _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 38F3 _ 83. 45, FC, 01
?_188:  mov     eax, dword [ebp-8H]                     ; 38F7 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 38FA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 38FC _ 39. 45, FC
        jl      ?_187                                   ; 38FF _ 7C, DB
        nop                                             ; 3901 _ 90
        leave                                           ; 3902 _ C9
        ret                                             ; 3903 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 3904 _ 55
        mov     ebp, esp                                ; 3905 _ 89. E5
        sub     esp, 40                                 ; 3907 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 390A _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3910 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3915 _ 8B. 10
        mov     eax, edx                                ; 3917 _ 89. D0
        shl     eax, 2                                  ; 3919 _ C1. E0, 02
        add     eax, edx                                ; 391C _ 01. D0
        shl     eax, 2                                  ; 391E _ C1. E0, 02
        add     eax, ecx                                ; 3921 _ 01. C8
        add     eax, 8                                  ; 3923 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 3926 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3929 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 392C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 392F _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 3932 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3936 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3939 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 393C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 393F _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 3942 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 3945 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3948 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 394B _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 394E _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3951 _ 8B. 00
        cmp     edx, eax                                ; 3953 _ 39. C2
        jnz     ?_189                                   ; 3955 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 3957 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 395A _ C7. 40, 04, 00000000
?_189:  mov     eax, dword [_taskctl]                   ; 3961 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 3966 _ 8B. 40, 04
        test    eax, eax                                ; 3969 _ 85. C0
        jz      ?_190                                   ; 396B _ 74, 24
        call    _task_switchsub                         ; 396D _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 3972 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3978 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 397D _ 8B. 10
        mov     eax, edx                                ; 397F _ 89. D0
        shl     eax, 2                                  ; 3981 _ C1. E0, 02
        add     eax, edx                                ; 3984 _ 01. D0
        shl     eax, 2                                  ; 3986 _ C1. E0, 02
        add     eax, ecx                                ; 3989 _ 01. C8
        add     eax, 8                                  ; 398B _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 398E _ 89. 45, F4
?_190:  mov     eax, dword [ebp-0CH]                    ; 3991 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 3994 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3997 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 399A _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 399E _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 39A1 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 39A4 _ 8B. 40, 08
        mov     edx, eax                                ; 39A7 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 39A9 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 39AE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 39B2 _ 89. 04 24
        call    _timer_settime                          ; 39B5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 39BA _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 39BD _ 3B. 45, F0
        jz      ?_191                                   ; 39C0 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 39C2 _ 83. 7D, EC, 00
        jz      ?_191                                   ; 39C6 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 39C8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 39CB _ 8B. 00
        mov     dword [esp+4H], eax                     ; 39CD _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 39D1 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 39D8 _ E8, 00000000(rel)
        nop                                             ; 39DD _ 90
?_191:  nop                                             ; 39DE _ 90
        leave                                           ; 39DF _ C9
        ret                                             ; 39E0 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 39E1 _ 55
        mov     ebp, esp                                ; 39E2 _ 89. E5
        sub     esp, 40                                 ; 39E4 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 39E7 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 39EE _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 39F5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 39F8 _ 8B. 40, 04
        cmp     eax, 2                                  ; 39FB _ 83. F8, 02
        jnz     ?_192                                   ; 39FE _ 75, 51
        call    _task_now                               ; 3A00 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 3A05 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3A08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A0B _ 89. 04 24
        call    _task_remove                            ; 3A0E _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 3A13 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 3A1A _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 3A1D _ 3B. 45, F0
        jnz     ?_192                                   ; 3A20 _ 75, 2F
        call    _task_switchsub                         ; 3A22 _ E8, 0000002F
        call    _task_now                               ; 3A27 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 3A2C _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 3A2F _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 3A36 _ 83. 7D, F0, 00
        jz      ?_192                                   ; 3A3A _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 3A3C _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3A3F _ 8B. 00
        mov     dword [esp+4H], eax                     ; 3A41 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3A45 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3A4C _ E8, 00000000(rel)
?_192:  mov     eax, dword [ebp-0CH]                    ; 3A51 _ 8B. 45, F4
        leave                                           ; 3A54 _ C9
        ret                                             ; 3A55 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 3A56 _ 55
        mov     ebp, esp                                ; 3A57 _ 89. E5
        sub     esp, 16                                 ; 3A59 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3A5C _ C7. 45, FC, 00000000
        jmp     ?_194                                   ; 3A63 _ EB, 22

?_193:  mov     ecx, dword [_taskctl]                   ; 3A65 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3A6B _ 8B. 55, FC
        mov     eax, edx                                ; 3A6E _ 89. D0
        shl     eax, 2                                  ; 3A70 _ C1. E0, 02
        add     eax, edx                                ; 3A73 _ 01. D0
        shl     eax, 2                                  ; 3A75 _ C1. E0, 02
        add     eax, ecx                                ; 3A78 _ 01. C8
        add     eax, 8                                  ; 3A7A _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3A7D _ 8B. 00
        test    eax, eax                                ; 3A7F _ 85. C0
        jg      ?_195                                   ; 3A81 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3A83 _ 83. 45, FC, 01
?_194:  cmp     dword [ebp-4H], 2                       ; 3A87 _ 83. 7D, FC, 02
        jle     ?_193                                   ; 3A8B _ 7E, D8
        jmp     ?_196                                   ; 3A8D _ EB, 01

?_195:  nop                                             ; 3A8F _ 90
?_196:  mov     eax, dword [_taskctl]                   ; 3A90 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3A95 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3A98 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 3A9A _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3A9F _ C7. 40, 04, 00000000
        nop                                             ; 3AA6 _ 90
        leave                                           ; 3AA7 _ C9
        ret                                             ; 3AA8 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 3AA9 _ 55
        mov     ebp, esp                                ; 3AAA _ 89. E5
        sub     esp, 16                                 ; 3AAC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3AAF _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3AB5 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3ABA _ 8B. 10
        mov     eax, edx                                ; 3ABC _ 89. D0
        shl     eax, 2                                  ; 3ABE _ C1. E0, 02
        add     eax, edx                                ; 3AC1 _ 01. D0
        shl     eax, 2                                  ; 3AC3 _ C1. E0, 02
        add     eax, ecx                                ; 3AC6 _ 01. C8
        add     eax, 8                                  ; 3AC8 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3ACB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3ACE _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3AD1 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3AD4 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3AD7 _ 8B. 44 90, 08
        leave                                           ; 3ADB _ C9
        ret                                             ; 3ADC _ C3
; _task_now End of function

        nop                                             ; 3ADD _ 90
        nop                                             ; 3ADE _ 90
        nop                                             ; 3ADF _ 90



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
        db 32H, 33H, 30H, 2EH                           ; 0070 _ 230.

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0074 _ 0X

?_197:  db 00H                                          ; 0076 _ .

?_198:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2333:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2380:                                           ; byte
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

_closebtn.2490:                                         ; byte
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



?_199:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_200:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_201:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_202:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_203:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_204:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_205:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_206:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_207:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0042 _ lengthLo
        db 77H, 3AH, 20H, 00H, 00H, 00H                 ; 004A _ w: ...



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..

_bootInfo:                                              
        resd    1                                       ; 0000

?_208:  resw    1                                       ; 0004

?_209:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

?_210:  resd    1                                       ; 0020

_mouseinfo:                                             ; byte
        resb    28                                      ; 0024

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    12                                      ; 00E0

?_211:  resd    1                                       ; 00EC

_timerinfo:                                             ; byte
        resb    28                                      ; 00F0

_timerbuf:                                              ; byte
        resb    8                                       ; 010C

_mx:    resd    1                                       ; 0114

_my:    resd    1                                       ; 0118

_xsize: resd    1                                       ; 011C

_ysize: resd    1                                       ; 0120

_buf_back:                                              ; dword
        resd    7                                       ; 0124

_buf_mouse:                                             ; byte
        resb    256                                     ; 0140

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0240

_shtctl: resd   1                                       ; 0244

_sht_back:                                              ; dword
        resd    1                                       ; 0248

_sht_mouse:                                             ; dword
        resd    1                                       ; 024C

_task_b:                                                ; byte
        resb    4                                       ; 0250

_g_timer_b:                                             ; byte
        resb    16                                      ; 0254

_task_a.2274:                                           ; dword
        resd    7                                       ; 0264

_tss_a.2273:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2272:                                            ; byte
        resb    104                                     ; 0300

_str.2428:                                              ; byte
        resb    1                                       ; 0368

?_212:  resb    9                                       ; 0369

?_213:  resb    2                                       ; 0372

_task_b.2516:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


