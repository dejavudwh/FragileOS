; Disassembly of file: ckernel.o
; Fri Aug  9 22:33:35 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        add     esp, -128                               ; 0005 _ 83. C4, 80
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000F _ E8, 0000110C
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_195]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000011C(d)
        movzx   eax, word [?_196]                       ; 0029 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 00000120(d)
        call    _init_pit                               ; 0036 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0043 _ C7. 44 24, 08, 0000010C(d)
        mov     dword [esp+4H], 8                       ; 004B _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0053 _ C7. 04 24, 000000F0(d)
        call    _fifo8_init                             ; 005A _ E8, 00000000(rel)
        call    _timer_alloc                            ; 005F _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 0064 _ 89. 45, D8
        mov     dword [esp+8H], 10                      ; 0067 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006F _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-28H]                    ; 0077 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 007A _ 89. 04 24
        call    _timer_init                             ; 007D _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0082 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 008A _ 8B. 45, D8
        mov     dword [esp], eax                        ; 008D _ 89. 04 24
        call    _timer_settime                          ; 0090 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0095 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 009A _ 89. 45, D4
        mov     dword [esp+8H], 2                       ; 009D _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A5 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 00AD _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00B0 _ 89. 04 24
        call    _timer_init                             ; 00B3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00B8 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-2CH]                    ; 00C0 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00C3 _ 89. 04 24
        call    _timer_settime                          ; 00C6 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CB _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 00D0 _ 89. 45, D0
        mov     dword [esp+8H], 1                       ; 00D3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DB _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 00E3 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00E6 _ 89. 04 24
        call    _timer_init                             ; 00E9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00EE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 00F6 _ 8B. 45, D0
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
        call    _init_palette                           ; 0149 _ E8, 00001095
        call    _init_keyboard                          ; 014E _ E8, 000015FE
        call    _get_memory_block_count                 ; 0153 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 0158 _ 89. 45, CC
        call    _get_addr_buffer                        ; 015B _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0160 _ 89. 45, C8
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
        mov     edx, dword [ebp-24H]                    ; 01A6 _ 8B. 55, DC
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
        call    _init_screen8                           ; 027F _ E8, 000009D4
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 000011E7
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
        mov     dword [esp+4H], ?_186                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 00001843
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
        call    _enable_mouse                           ; 0388 _ E8, 000013FF
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 0392 _ 89. 45, C4
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 039A _ 89. 45, C0
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2259], eax               ; 03AA _ A3, 00000264(d)
        mov     eax, dword [_task_a.2259]               ; 03AF _ A1, 00000264(d)
        mov     dword [?_197], eax                      ; 03B4 _ A3, 00000020(d)
        mov     byte [ebp-62H], 116                     ; 03B9 _ C6. 45, 9E, 74
        mov     byte [ebp-61H], 97                      ; 03BD _ C6. 45, 9F, 61
        mov     byte [ebp-60H], 115                     ; 03C1 _ C6. 45, A0, 73
        mov     byte [ebp-5FH], 107                     ; 03C5 _ C6. 45, A1, 6B
        mov     byte [ebp-5EH], 0                       ; 03C9 _ C6. 45, A2, 00
        mov     byte [ebp-5DH], 0                       ; 03CD _ C6. 45, A3, 00
        mov     dword [ebp-14H], 0                      ; 03D1 _ C7. 45, EC, 00000000
        mov     dword [ebp-14H], 0                      ; 03D8 _ C7. 45, EC, 00000000
        jmp     ?_002                                   ; 03DF _ E9, 00000189

?_001:  mov     eax, dword [_shtctl]                    ; 03E4 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 03E9 _ 89. 04 24
        call    _sheet_alloc                            ; 03EC _ E8, 00000000(rel)
        mov     edx, eax                                ; 03F1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 03F3 _ 8B. 45, EC
        mov     dword [ebp+eax*4-5CH], edx              ; 03F6 _ 89. 54 85, A4
        mov     eax, dword [_memman]                    ; 03FA _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 03FF _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 0407 _ 89. 04 24
        call    _memman_alloc_4k                        ; 040A _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 040F _ 89. 45, BC
        mov     eax, dword [ebp-14H]                    ; 0412 _ 8B. 45, EC
        add     eax, 98                                 ; 0415 _ 83. C0, 62
        mov     byte [ebp-45H], al                      ; 0418 _ 88. 45, BB
        movzx   eax, byte [ebp-45H]                     ; 041B _ 0F B6. 45, BB
        mov     byte [ebp-5EH], al                      ; 041F _ 88. 45, A2
        mov     eax, dword [ebp-14H]                    ; 0422 _ 8B. 45, EC
        mov     eax, dword [ebp+eax*4-5CH]              ; 0425 _ 8B. 44 85, A4
        mov     dword [esp+10H], -1                     ; 0429 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 0431 _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 0439 _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-44H]                    ; 0441 _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 0444 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0448 _ 89. 04 24
        call    _sheet_setbuf                           ; 044B _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 0450 _ 8B. 45, EC
        mov     ecx, dword [ebp+eax*4-5CH]              ; 0453 _ 8B. 4C 85, A4
        mov     edx, dword [_shtctl]                    ; 0457 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-62H]                          ; 045D _ 8D. 45, 9E
        mov     dword [esp+8H], eax                     ; 0460 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0464 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0468 _ 89. 14 24
        call    _make_window8                           ; 046B _ E8, 000017EF
        call    _task_alloc                             ; 0470 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0475 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0477 _ 8B. 45, EC
        mov     dword [_task_b.2262+eax*4], edx         ; 047A _ 89. 14 85, 00000268(d)
        mov     eax, dword [ebp-14H]                    ; 0481 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0484 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+68H], 0                      ; 048B _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-14H]                    ; 0492 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0495 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+6CH], 1073741824             ; 049C _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-3CH]                    ; 04A3 _ 8B. 45, C4
        neg     eax                                     ; 04A6 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 04A8 _ 8D. 90, 00000A6C(d)
        mov     eax, dword [ebp-14H]                    ; 04AE _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 04B1 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+28H], edx                    ; 04B8 _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 04BB _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 04BE _ 8B. 04 85, 00000268(d)
        mov     dword [eax+50H], 0                      ; 04C5 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-14H]                    ; 04CC _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 04CF _ 8B. 04 85, 00000268(d)
        mov     dword [eax+54H], 8                      ; 04D6 _ C7. 40, 54, 00000008
        mov     eax, dword [ebp-14H]                    ; 04DD _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 04E0 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+58H], 32                     ; 04E7 _ C7. 40, 58, 00000020
        mov     eax, dword [ebp-14H]                    ; 04EE _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 04F1 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+5CH], 24                     ; 04F8 _ C7. 40, 5C, 00000018
        mov     eax, dword [ebp-14H]                    ; 04FF _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0502 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+60H], 0                      ; 0509 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-14H]                    ; 0510 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0513 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+64H], 16                     ; 051A _ C7. 40, 64, 00000010
        mov     eax, dword [ebp-14H]                    ; 0521 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0524 _ 8B. 04 85, 00000268(d)
        mov     edx, dword [eax+40H]                    ; 052B _ 8B. 50, 40
        mov     eax, dword [ebp-14H]                    ; 052E _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0531 _ 8B. 04 85, 00000268(d)
        sub     edx, 8                                  ; 0538 _ 83. EA, 08
        mov     dword [eax+40H], edx                    ; 053B _ 89. 50, 40
        mov     eax, dword [ebp-14H]                    ; 053E _ 8B. 45, EC
        mov     edx, dword [ebp+eax*4-5CH]              ; 0541 _ 8B. 54 85, A4
        mov     eax, dword [ebp-14H]                    ; 0545 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 0548 _ 8B. 04 85, 00000268(d)
        mov     eax, dword [eax+40H]                    ; 054F _ 8B. 40, 40
        add     eax, 4                                  ; 0552 _ 83. C0, 04
        mov     dword [eax], edx                        ; 0555 _ 89. 10
        mov     eax, dword [ebp-14H]                    ; 0557 _ 8B. 45, EC
        mov     eax, dword [_task_b.2262+eax*4]         ; 055A _ 8B. 04 85, 00000268(d)
        mov     dword [esp], eax                        ; 0561 _ 89. 04 24
        call    _task_run                               ; 0564 _ E8, 00000000(rel)
        add     dword [ebp-14H], 1                      ; 0569 _ 83. 45, EC, 01
?_002:  cmp     dword [ebp-14H], 1                      ; 056D _ 83. 7D, EC, 01
        jle     ?_001                                   ; 0571 _ 0F 8E, FFFFFE6D
        mov     edx, dword [ebp-5CH]                    ; 0577 _ 8B. 55, A4
        mov     eax, dword [_shtctl]                    ; 057A _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 057F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 0587 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 058F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0593 _ 89. 04 24
        call    _sheet_slide                            ; 0596 _ E8, 00000000(rel)
        mov     edx, dword [ebp-5CH]                    ; 059B _ 8B. 55, A4
        mov     eax, dword [_shtctl]                    ; 059E _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 05A3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 05AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05AF _ 89. 04 24
        call    _sheet_updown                           ; 05B2 _ E8, 00000000(rel)
        mov     edx, dword [ebp-58H]                    ; 05B7 _ 8B. 55, A8
        mov     eax, dword [_shtctl]                    ; 05BA _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 05BF _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 05C7 _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 05CF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05D3 _ 89. 04 24
        call    _sheet_slide                            ; 05D6 _ E8, 00000000(rel)
        mov     edx, dword [ebp-58H]                    ; 05DB _ 8B. 55, A8
        mov     eax, dword [_shtctl]                    ; 05DE _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 05E3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 05EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05EF _ 89. 04 24
        call    _sheet_updown                           ; 05F2 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], 0                      ; 05F7 _ C7. 45, B4, 00000000
        mov     dword [ebp-18H], 0                      ; 05FE _ C7. 45, E8, 00000000
        mov     dword [ebp-14H], 0                      ; 0605 _ C7. 45, EC, 00000000
        mov     dword [ebp-1CH], 0                      ; 060C _ C7. 45, E4, 00000000
        mov     dword [ebp-20H], 0                      ; 0613 _ C7. 45, E0, 00000000
?_003:  call    _io_cli                                 ; 061A _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 061F _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0626 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 062B _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 062D _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0634 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0639 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 063B _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0642 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0647 _ 01. D8
        test    eax, eax                                ; 0649 _ 85. C0
        jnz     ?_004                                   ; 064B _ 75, 07
        call    _io_sti                                 ; 064D _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0652 _ EB, C6

?_004:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0654 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 065B _ E8, 00000000(rel)
        test    eax, eax                                ; 0660 _ 85. C0
        je      ?_006                                   ; 0662 _ 0F 84, 000001FD
        call    _io_sti                                 ; 0668 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 066D _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 0674 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], eax                    ; 0679 _ 89. 45, B4
        cmp     dword [ebp-4CH], 28                     ; 067C _ 83. 7D, B4, 1C
        jnz     ?_005                                   ; 0680 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 0682 _ 8B. 35, 0000011C(d)
        mov     ebx, dword [_buf_back]                  ; 0688 _ 8B. 1D, 00000124(d)
        mov     edx, dword [ebp-18H]                    ; 068E _ 8B. 55, E8
        mov     eax, edx                                ; 0691 _ 89. D0
        shl     eax, 2                                  ; 0693 _ C1. E0, 02
        add     eax, edx                                ; 0696 _ 01. D0
        shl     eax, 2                                  ; 0698 _ C1. E0, 02
        mov     edx, eax                                ; 069B _ 89. C2
        mov     eax, dword [ebp-38H]                    ; 069D _ 8B. 45, C8
        lea     ecx, [edx+eax]                          ; 06A0 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 06A3 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 06A9 _ A1, 00000244(d)
        mov     dword [esp+18H], 7                      ; 06AE _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 06B6 _ 89. 74 24, 14
        mov     esi, dword [ebp-18H]                    ; 06BA _ 8B. 75, E8
        mov     dword [esp+10H], esi                    ; 06BD _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 06C1 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 06C5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06CD _ 89. 04 24
        call    _showMemoryInfo                         ; 06D0 _ E8, 0000128C
        add     dword [ebp-18H], 1                      ; 06D5 _ 83. 45, E8, 01
        mov     eax, dword [ebp-18H]                    ; 06D9 _ 8B. 45, E8
        cmp     eax, dword [ebp-34H]                    ; 06DC _ 3B. 45, CC
        jle     ?_003                                   ; 06DF _ 0F 8E, FFFFFF35
        mov     dword [ebp-18H], 0                      ; 06E5 _ C7. 45, E8, 00000000
        jmp     ?_003                                   ; 06EC _ E9, FFFFFF29

?_005:  mov     eax, dword [ebp-4CH]                    ; 06F1 _ 8B. 45, B4
        add     eax, _keytable                          ; 06F4 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 06F9 _ 0F B6. 00
        test    al, al                                  ; 06FC _ 84. C0
        je      ?_003                                   ; 06FE _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 0704 _ 81. 7D, F4, 0000008F
        jg      ?_003                                   ; 070B _ 0F 8F, FFFFFF09
        mov     eax, dword [ebp-0CH]                    ; 0711 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0714 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0717 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 071C _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 071F _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0724 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0726 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 072E _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0732 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 073A _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 073D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0741 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0749 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 074D _ 89. 04 24
        call    _boxfill8                               ; 0750 _ E8, 00000B59
        mov     eax, dword [ebp-0CH]                    ; 0755 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0758 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 075B _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0761 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0766 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 076E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0772 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 077A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 077D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0781 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0785 _ 89. 04 24
        call    _sheet_refresh                          ; 0788 _ E8, 00000000(rel)
        mov     eax, dword [ebp-4CH]                    ; 078D _ 8B. 45, B4
        add     eax, _keytable                          ; 0790 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0795 _ 0F B6. 00
        mov     byte [ebp-64H], al                      ; 0798 _ 88. 45, 9C
        mov     byte [ebp-63H], 0                       ; 079B _ C6. 45, 9D, 00
        mov     ecx, dword [_shtMsgBox]                 ; 079F _ 8B. 0D, 00000240(d)
        mov     edx, dword [_shtctl]                    ; 07A5 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-64H]                          ; 07AB _ 8D. 45, 9C
        mov     dword [esp+14H], eax                    ; 07AE _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07B2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 07BA _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 07C2 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 07C5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 07C9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 07CD _ 89. 14 24
        call    _showString                             ; 07D0 _ E8, 0000096C
        add     dword [ebp-0CH], 8                      ; 07D5 _ 83. 45, F4, 08
        mov     dword [ebp-20H], 1                      ; 07D9 _ C7. 45, E0, 00000001
        mov     eax, dword [ebp-0CH]                    ; 07E0 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 07E3 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 07E6 _ 8B. 45, F0
        movzx   eax, al                                 ; 07E9 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 07EC _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 07F2 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 07F5 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 07FB _ 8B. 12
        mov     dword [esp+18H], 43                     ; 07FD _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0805 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0809 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0811 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0814 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0818 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 081C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0820 _ 89. 14 24
        call    _boxfill8                               ; 0823 _ E8, 00000A86
        mov     eax, dword [ebp-0CH]                    ; 0828 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 082B _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 082E _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0834 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0839 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0841 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0845 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 084D _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0850 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0854 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0858 _ 89. 04 24
        call    _sheet_refresh                          ; 085B _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0860 _ E9, FFFFFDB5

?_006:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0865 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 086C _ E8, 00000000(rel)
        test    eax, eax                                ; 0871 _ 85. C0
        jz      ?_007                                   ; 0873 _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0875 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [_sht_back]                  ; 087B _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0881 _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 0886 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 088A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 088E _ 89. 04 24
        call    _show_mouse_info                        ; 0891 _ E8, 000007D2
        jmp     ?_003                                   ; 0896 _ E9, FFFFFD7F

?_007:  ; Local function
        mov     dword [esp], _timerinfo                 ; 089B _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 08A2 _ E8, 00000000(rel)
        test    eax, eax                                ; 08A7 _ 85. C0
        je      ?_003                                   ; 08A9 _ 0F 84, FFFFFD6B
        call    _io_sti                                 ; 08AF _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 08B4 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 08BB _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 08C0 _ 89. 45, B0
        cmp     dword [ebp-50H], 10                     ; 08C3 _ 83. 7D, B0, 0A
        jnz     ?_008                                   ; 08C7 _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 08C9 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 08CF _ A1, 00000244(d)
        mov     dword [esp+14H], ?_187                  ; 08D4 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 08DC _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 08E4 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-1CH]                    ; 08EC _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 08EF _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08F3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08F7 _ 89. 04 24
        call    _showString                             ; 08FA _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 08FF _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 0907 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 090A _ 89. 04 24
        call    _timer_settime                          ; 090D _ E8, 00000000(rel)
        add     dword [ebp-1CH], 8                      ; 0912 _ 83. 45, E4, 08
        cmp     dword [ebp-1CH], 40                     ; 0916 _ 83. 7D, E4, 28
        jle     ?_003                                   ; 091A _ 0F 8E, FFFFFCFA
        cmp     dword [ebp-20H], 0                      ; 0920 _ 83. 7D, E0, 00
        jne     ?_003                                   ; 0924 _ 0F 85, FFFFFCF0
        call    _io_cli                                 ; 092A _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2259]               ; 092F _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0934 _ 89. 04 24
        call    _task_sleep                             ; 0937 _ E8, 00000000(rel)
        call    _io_sti                                 ; 093C _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0941 _ E9, FFFFFCD4

?_008:  ; Local function
        cmp     dword [ebp-50H], 2                      ; 0946 _ 83. 7D, B0, 02
        jnz     ?_009                                   ; 094A _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 094C _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0952 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_188                  ; 0957 _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 095F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 0967 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 096F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0977 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 097B _ 89. 04 24
        call    _showString                             ; 097E _ E8, 000007BE
        jmp     ?_003                                   ; 0983 _ E9, FFFFFC92

?_009:  ; Local function
        cmp     dword [ebp-50H], 0                      ; 0988 _ 83. 7D, B0, 00
        jz      ?_010                                   ; 098C _ 74, 24
        mov     dword [esp+8H], 0                       ; 098E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0996 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 099E _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09A1 _ 89. 04 24
        call    _timer_init                             ; 09A4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 09A9 _ C7. 45, F0, 00000000
        jmp     ?_011                                   ; 09B0 _ EB, 22

?_010:  mov     dword [esp+8H], 1                       ; 09B2 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 09BA _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 09C2 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09C5 _ 89. 04 24
        call    _timer_init                             ; 09C8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 09CD _ C7. 45, F0, 00000007
?_011:  mov     dword [esp+4H], 50                      ; 09D4 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 09DC _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09DF _ 89. 04 24
        call    _timer_settime                          ; 09E2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 09E7 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 09EA _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 09ED _ 8B. 45, F0
        movzx   eax, al                                 ; 09F0 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 09F3 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 09F9 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 09FC _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 0A02 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0A04 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0A0C _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0A10 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0A18 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0A1B _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0A1F _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0A23 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0A27 _ 89. 14 24
        call    _boxfill8                               ; 0A2A _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 0A2F _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0A32 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0A35 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0A3B _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0A40 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0A48 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0A4C _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0A54 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0A57 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A5B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A5F _ 89. 04 24
        call    _sheet_refresh                          ; 0A62 _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0A67 _ E9, FFFFFBAE

_task_b_main:; Function begin
        push    ebp                                     ; 0A6C _ 55
        mov     ebp, esp                                ; 0A6D _ 89. E5
        sub     esp, 104                                ; 0A6F _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 0A72 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0A78 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_189                  ; 0A7D _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 0A85 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 0A8D _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0A95 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0A9D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AA1 _ 89. 04 24
        call    _showString                             ; 0AA4 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 0AA9 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 0AB0 _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0AB7 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 0ABF _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 0AC2 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0AC6 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 0ACE _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0AD1 _ 89. 04 24
        call    _fifo8_init                             ; 0AD4 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0AD9 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0ADE _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 0AE1 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0AE9 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0AEC _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0AF0 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0AF3 _ 89. 04 24
        call    _timer_init                             ; 0AF6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0AFB _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0B03 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0B06 _ 89. 04 24
        call    _timer_settime                          ; 0B09 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0B0E _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0B15 _ C7. 45, F0, 00000000
?_012:  add     dword [ebp-0CH], 1                      ; 0B1C _ 83. 45, F4, 01
        call    _io_cli                                 ; 0B20 _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0B25 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0B28 _ 89. 04 24
        call    _fifo8_status                           ; 0B2B _ E8, 00000000(rel)
        test    eax, eax                                ; 0B30 _ 85. C0
        jnz     ?_013                                   ; 0B32 _ 75, 07
        call    _io_sti                                 ; 0B34 _ E8, 00000000(rel)
        jmp     ?_012                                   ; 0B39 _ EB, E1
; _task_b_main End of function

?_013:  ; Local function
        lea     eax, [ebp-38H]                          ; 0B3B _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0B3E _ 89. 04 24
        call    _fifo8_get                              ; 0B41 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B46 _ 89. 45, E8
        call    _io_sti                                 ; 0B49 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0B4E _ 83. 7D, E8, 7B
        jnz     ?_012                                   ; 0B52 _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0B54 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0B5A _ A1, 00000244(d)
        mov     dword [esp+14H], ?_190                  ; 0B5F _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 0B67 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0B6F _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0B77 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0B7A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0B7E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B82 _ 89. 04 24
        call    _showString                             ; 0B85 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0B8A _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0B92 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0B95 _ 89. 04 24
        call    _timer_settime                          ; 0B98 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0B9D _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0BA1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0BA4 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0BA6 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0BAE _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0BB6 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0BBE _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0BC6 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0BCE _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0BD6 _ 89. 04 24
        call    _boxfill8                               ; 0BD9 _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0BDE _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0BE3 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0BEB _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0BF3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0BFB _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0C03 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0C06 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C0A _ 89. 04 24
        call    _sheet_refresh                          ; 0C0D _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0C12 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C15 _ 89. 04 24
        call    _intToHexStr                            ; 0C18 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0C1D _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0C20 _ A1, 00000244(d)
        mov     edx, dword [ebp-1CH]                    ; 0C25 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0C28 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0C2C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0C34 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0C3C _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0C44 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0C47 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C4B _ 89. 04 24
        call    _showString                             ; 0C4E _ E8, 000004EE
        jmp     ?_012                                   ; 0C53 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0C58 _ 55
        mov     ebp, esp                                ; 0C59 _ 89. E5
        push    ebx                                     ; 0C5B _ 53
        sub     esp, 36                                 ; 0C5C _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0C5F _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0C62 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0C65 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0C68 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0C6B _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0C6F _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0C73 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0C7B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0C83 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0C8B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C8E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C95 _ 89. 04 24
        call    _boxfill8                               ; 0C98 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0C9D _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0CA0 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0CA3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0CA6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0CA9 _ 8B. 45, 10
        sub     eax, 28                                 ; 0CAC _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0CAF _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0CB3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CB7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0CBB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0CC3 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0CCB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CCE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CD2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CD5 _ 89. 04 24
        call    _boxfill8                               ; 0CD8 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0CDD _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0CE0 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0CE3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0CE6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0CE9 _ 8B. 45, 10
        sub     eax, 27                                 ; 0CEC _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0CEF _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0CF3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CF7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0CFB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0D03 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D0B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D0E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D12 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D15 _ 89. 04 24
        call    _boxfill8                               ; 0D18 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0D1D _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0D20 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0D23 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0D26 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0D29 _ 8B. 45, 10
        sub     eax, 26                                 ; 0D2C _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0D2F _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0D33 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0D37 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0D3B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0D43 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0D4B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D4E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D55 _ 89. 04 24
        call    _boxfill8                               ; 0D58 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0D5D _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D60 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0D63 _ 8B. 45, 10
        sub     eax, 24                                 ; 0D66 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0D69 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D6D _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D75 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D79 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0D81 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D89 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D8C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D90 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D93 _ 89. 04 24
        call    _boxfill8                               ; 0D96 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0D9B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D9E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0DA1 _ 8B. 45, 10
        sub     eax, 24                                 ; 0DA4 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0DA7 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0DAB _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0DB3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0DB7 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0DBF _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DC7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DCA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DCE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DD1 _ 89. 04 24
        call    _boxfill8                               ; 0DD4 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0DD9 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0DDC _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0DDF _ 8B. 45, 10
        sub     eax, 4                                  ; 0DE2 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0DE5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DE9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0DF1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0DF5 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0DFD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E05 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E0F _ 89. 04 24
        call    _boxfill8                               ; 0E12 _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0E17 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0E1A _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0E1D _ 8B. 45, 10
        sub     eax, 23                                 ; 0E20 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0E23 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0E27 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0E2F _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0E33 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0E3B _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E43 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E4D _ 89. 04 24
        call    _boxfill8                               ; 0E50 _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0E55 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E58 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0E5B _ 8B. 45, 10
        sub     eax, 3                                  ; 0E5E _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0E61 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0E65 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0E6D _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0E71 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0E79 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E81 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E84 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E88 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E8B _ 89. 04 24
        call    _boxfill8                               ; 0E8E _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0E93 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E96 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0E99 _ 8B. 45, 10
        sub     eax, 24                                 ; 0E9C _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0E9F _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0EA3 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0EAB _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0EAF _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0EB7 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0EBF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EC2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EC6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EC9 _ 89. 04 24
        call    _boxfill8                               ; 0ECC _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0ED1 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0ED4 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0ED7 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0EDA _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0EDD _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0EE0 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0EE3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0EE6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0EE9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EED _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0EF1 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0EF5 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0EF9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0F01 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F04 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F0B _ 89. 04 24
        call    _boxfill8                               ; 0F0E _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0F13 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0F16 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0F19 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0F1C _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0F1F _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0F22 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0F25 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F28 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0F2B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F2F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F33 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F37 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0F3B _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0F43 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F4D _ 89. 04 24
        call    _boxfill8                               ; 0F50 _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0F55 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F58 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F5B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0F5E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0F61 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F64 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0F67 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F6A _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0F6D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F71 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F75 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F79 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F7D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F85 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F88 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F8C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F8F _ 89. 04 24
        call    _boxfill8                               ; 0F92 _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0F97 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F9A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F9D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FA0 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0FA3 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0FA6 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0FA9 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0FAC _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0FAF _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0FB3 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0FB7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0FBB _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0FBF _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0FC7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FCA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FCE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FD1 _ 89. 04 24
        call    _boxfill8                               ; 0FD4 _ E8, 000002D5
        nop                                             ; 0FD9 _ 90
        add     esp, 36                                 ; 0FDA _ 83. C4, 24
        pop     ebx                                     ; 0FDD _ 5B
        pop     ebp                                     ; 0FDE _ 5D
        ret                                             ; 0FDF _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0FE0 _ 55
        mov     ebp, esp                                ; 0FE1 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0FE3 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0FE6 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0FE9 _ A1, 00000114(d)
        add     eax, edx                                ; 0FEE _ 01. D0
        mov     dword [_mx], eax                        ; 0FF0 _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 0FF5 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0FF8 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0FFB _ A1, 00000118(d)
        add     eax, edx                                ; 1000 _ 01. D0
        mov     dword [_my], eax                        ; 1002 _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 1007 _ A1, 00000114(d)
        test    eax, eax                                ; 100C _ 85. C0
        jns     ?_014                                   ; 100E _ 79, 0A
        mov     dword [_mx], 0                          ; 1010 _ C7. 05, 00000114(d), 00000000
?_014:  mov     eax, dword [_my]                        ; 101A _ A1, 00000118(d)
        test    eax, eax                                ; 101F _ 85. C0
        jns     ?_015                                   ; 1021 _ 79, 0A
        mov     dword [_my], 0                          ; 1023 _ C7. 05, 00000118(d), 00000000
?_015:  mov     edx, dword [_xsize]                     ; 102D _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 1033 _ A1, 00000114(d)
        cmp     edx, eax                                ; 1038 _ 39. C2
        jg      ?_016                                   ; 103A _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 103C _ A1, 0000011C(d)
        sub     eax, 1                                  ; 1041 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1044 _ A3, 00000114(d)
?_016:  mov     edx, dword [_ysize]                     ; 1049 _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 104F _ A1, 00000118(d)
        cmp     edx, eax                                ; 1054 _ 39. C2
        jg      ?_017                                   ; 1056 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1058 _ A1, 00000120(d)
        sub     eax, 1                                  ; 105D _ 83. E8, 01
        mov     dword [_my], eax                        ; 1060 _ A3, 00000118(d)
?_017:  nop                                             ; 1065 _ 90
        pop     ebp                                     ; 1066 _ 5D
        ret                                             ; 1067 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1068 _ 55
        mov     ebp, esp                                ; 1069 _ 89. E5
        sub     esp, 40                                 ; 106B _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 106E _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 1073 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1076 _ C6. 45, F3, 00
        call    _io_sti                                 ; 107A _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 107F _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 1086 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 108B _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 108E _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1092 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1096 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 109D _ E8, 00000780
        test    eax, eax                                ; 10A2 _ 85. C0
        jz      ?_018                                   ; 10A4 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 10A6 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 10AE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 10B1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10B5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _computeMousePosition                   ; 10BB _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 10C0 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 10C6 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 10CB _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 10CF _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 10D3 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 10D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10DD _ 89. 04 24
        call    _sheet_slide                            ; 10E0 _ E8, 00000000(rel)
        mov     eax, dword [?_198]                      ; 10E5 _ A1, 000000EC(d)
        and     eax, 01H                                ; 10EA _ 83. E0, 01
        test    eax, eax                                ; 10ED _ 85. C0
        jz      ?_018                                   ; 10EF _ 74, 2C
        mov     eax, dword [_my]                        ; 10F1 _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 10F6 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 10F9 _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 10FE _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1101 _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 1106 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 110A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 110E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1112 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1115 _ 89. 04 24
        call    _sheet_slide                            ; 1118 _ E8, 00000000(rel)
?_018:  nop                                             ; 111D _ 90
        leave                                           ; 111E _ C9
        ret                                             ; 111F _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1120 _ 55
        mov     ebp, esp                                ; 1121 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1123 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1126 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 112C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 112F _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1135 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1138 _ 66: C7. 40, 06, 01E0
        nop                                             ; 113E _ 90
        pop     ebp                                     ; 113F _ 5D
        ret                                             ; 1140 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1141 _ 55
        mov     ebp, esp                                ; 1142 _ 89. E5
        push    ebx                                     ; 1144 _ 53
        sub     esp, 68                                 ; 1145 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1148 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 114B _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 114E _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1151 _ 89. 45, F4
        jmp     ?_020                                   ; 1154 _ EB, 4B

?_019:  mov     eax, dword [ebp+1CH]                    ; 1156 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1159 _ 0F B6. 00
        movzx   eax, al                                 ; 115C _ 0F B6. C0
        shl     eax, 4                                  ; 115F _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 1162 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1168 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 116C _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 116F _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1172 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1175 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1177 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 117B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 117F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1182 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1186 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1189 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 118D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1191 _ 89. 14 24
        call    _showFont8                              ; 1194 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1199 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 119D _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 11A1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 11A4 _ 0F B6. 00
        test    al, al                                  ; 11A7 _ 84. C0
        jnz     ?_019                                   ; 11A9 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 11AB _ 8B. 45, 14
        add     eax, 16                                 ; 11AE _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 11B1 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 11B5 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 11B8 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 11BC _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 11BF _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 11C3 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 11C6 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11CA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11CD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11D1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11D4 _ 89. 04 24
        call    _sheet_refresh                          ; 11D7 _ E8, 00000000(rel)
        nop                                             ; 11DC _ 90
        add     esp, 68                                 ; 11DD _ 83. C4, 44
        pop     ebx                                     ; 11E0 _ 5B
        pop     ebp                                     ; 11E1 _ 5D
        ret                                             ; 11E2 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 11E3 _ 55
        mov     ebp, esp                                ; 11E4 _ 89. E5
        sub     esp, 24                                 ; 11E6 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2325         ; 11E9 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 11F1 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 11F9 _ C7. 04 24, 00000000
        call    _set_palette                            ; 1200 _ E8, 00000003
        nop                                             ; 1205 _ 90
        leave                                           ; 1206 _ C9
        ret                                             ; 1207 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1208 _ 55
        mov     ebp, esp                                ; 1209 _ 89. E5
        sub     esp, 40                                 ; 120B _ 83. EC, 28
        call    _io_load_eflags                         ; 120E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1213 _ 89. 45, F0
        call    _io_cli                                 ; 1216 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 121B _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 121E _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 1222 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1229 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 122E _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 1231 _ 89. 45, F4
        jmp     ?_022                                   ; 1234 _ EB, 62

?_021:  mov     eax, dword [ebp+10H]                    ; 1236 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1239 _ 0F B6. 00
        shr     al, 2                                   ; 123C _ C0. E8, 02
        movzx   eax, al                                 ; 123F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1242 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1246 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 124D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1252 _ 8B. 45, 10
        add     eax, 1                                  ; 1255 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1258 _ 0F B6. 00
        shr     al, 2                                   ; 125B _ C0. E8, 02
        movzx   eax, al                                 ; 125E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1261 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1265 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 126C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1271 _ 8B. 45, 10
        add     eax, 2                                  ; 1274 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1277 _ 0F B6. 00
        shr     al, 2                                   ; 127A _ C0. E8, 02
        movzx   eax, al                                 ; 127D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1280 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1284 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 128B _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 1290 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 1294 _ 83. 45, F4, 01
?_022:  mov     eax, dword [ebp-0CH]                    ; 1298 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 129B _ 3B. 45, 0C
        jle     ?_021                                   ; 129E _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 12A0 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 12A3 _ 89. 04 24
        call    _io_store_eflags                        ; 12A6 _ E8, 00000000(rel)
        nop                                             ; 12AB _ 90
        leave                                           ; 12AC _ C9
        ret                                             ; 12AD _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 12AE _ 55
        mov     ebp, esp                                ; 12AF _ 89. E5
        sub     esp, 20                                 ; 12B1 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 12B4 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 12B7 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 12BA _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 12BD _ 89. 45, F8
        jmp     ?_026                                   ; 12C0 _ EB, 31

?_023:  mov     eax, dword [ebp+14H]                    ; 12C2 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 12C5 _ 89. 45, FC
        jmp     ?_025                                   ; 12C8 _ EB, 1D

?_024:  mov     eax, dword [ebp-8H]                     ; 12CA _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 12CD _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 12D1 _ 8B. 55, FC
        add     eax, edx                                ; 12D4 _ 01. D0
        mov     edx, eax                                ; 12D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12D8 _ 8B. 45, 08
        add     edx, eax                                ; 12DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12E1 _ 88. 02
        add     dword [ebp-4H], 1                       ; 12E3 _ 83. 45, FC, 01
?_025:  mov     eax, dword [ebp-4H]                     ; 12E7 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 12EA _ 3B. 45, 1C
        jle     ?_024                                   ; 12ED _ 7E, DB
        add     dword [ebp-8H], 1                       ; 12EF _ 83. 45, F8, 01
?_026:  mov     eax, dword [ebp-8H]                     ; 12F3 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 12F6 _ 3B. 45, 20
        jle     ?_023                                   ; 12F9 _ 7E, C7
        nop                                             ; 12FB _ 90
        leave                                           ; 12FC _ C9
        ret                                             ; 12FD _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 12FE _ 55
        mov     ebp, esp                                ; 12FF _ 89. E5
        sub     esp, 20                                 ; 1301 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1304 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1307 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 130A _ C7. 45, FC, 00000000
        jmp     ?_036                                   ; 1311 _ E9, 0000015C

?_027:  mov     edx, dword [ebp-4H]                     ; 1316 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1319 _ 8B. 45, 1C
        add     eax, edx                                ; 131C _ 01. D0
        movzx   eax, byte [eax]                         ; 131E _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1321 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1324 _ 80. 7D, FB, 00
        jns     ?_028                                   ; 1328 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 132A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 132D _ 8B. 45, FC
        add     eax, edx                                ; 1330 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1332 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1336 _ 8B. 55, 10
        add     eax, edx                                ; 1339 _ 01. D0
        mov     edx, eax                                ; 133B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 133D _ 8B. 45, 08
        add     edx, eax                                ; 1340 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1342 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1346 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1348 _ 0F BE. 45, FB
        and     eax, 40H                                ; 134C _ 83. E0, 40
        test    eax, eax                                ; 134F _ 85. C0
        jz      ?_029                                   ; 1351 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1353 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1356 _ 8B. 45, FC
        add     eax, edx                                ; 1359 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 135B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 135F _ 8B. 55, 10
        add     eax, edx                                ; 1362 _ 01. D0
        lea     edx, [eax+1H]                           ; 1364 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1367 _ 8B. 45, 08
        add     edx, eax                                ; 136A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 136C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1370 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1372 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1376 _ 83. E0, 20
        test    eax, eax                                ; 1379 _ 85. C0
        jz      ?_030                                   ; 137B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 137D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1380 _ 8B. 45, FC
        add     eax, edx                                ; 1383 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1385 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1389 _ 8B. 55, 10
        add     eax, edx                                ; 138C _ 01. D0
        lea     edx, [eax+2H]                           ; 138E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1391 _ 8B. 45, 08
        add     edx, eax                                ; 1394 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1396 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 139A _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 139C _ 0F BE. 45, FB
        and     eax, 10H                                ; 13A0 _ 83. E0, 10
        test    eax, eax                                ; 13A3 _ 85. C0
        jz      ?_031                                   ; 13A5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13AA _ 8B. 45, FC
        add     eax, edx                                ; 13AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13AF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13B3 _ 8B. 55, 10
        add     eax, edx                                ; 13B6 _ 01. D0
        lea     edx, [eax+3H]                           ; 13B8 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 13BB _ 8B. 45, 08
        add     edx, eax                                ; 13BE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13C0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13C4 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 13C6 _ 0F BE. 45, FB
        and     eax, 08H                                ; 13CA _ 83. E0, 08
        test    eax, eax                                ; 13CD _ 85. C0
        jz      ?_032                                   ; 13CF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13D1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13D4 _ 8B. 45, FC
        add     eax, edx                                ; 13D7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13D9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13DD _ 8B. 55, 10
        add     eax, edx                                ; 13E0 _ 01. D0
        lea     edx, [eax+4H]                           ; 13E2 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13E5 _ 8B. 45, 08
        add     edx, eax                                ; 13E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13EE _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 13F0 _ 0F BE. 45, FB
        and     eax, 04H                                ; 13F4 _ 83. E0, 04
        test    eax, eax                                ; 13F7 _ 85. C0
        jz      ?_033                                   ; 13F9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13FE _ 8B. 45, FC
        add     eax, edx                                ; 1401 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1403 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1407 _ 8B. 55, 10
        add     eax, edx                                ; 140A _ 01. D0
        lea     edx, [eax+5H]                           ; 140C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 140F _ 8B. 45, 08
        add     edx, eax                                ; 1412 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1414 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1418 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 141A _ 0F BE. 45, FB
        and     eax, 02H                                ; 141E _ 83. E0, 02
        test    eax, eax                                ; 1421 _ 85. C0
        jz      ?_034                                   ; 1423 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1425 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1428 _ 8B. 45, FC
        add     eax, edx                                ; 142B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 142D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1431 _ 8B. 55, 10
        add     eax, edx                                ; 1434 _ 01. D0
        lea     edx, [eax+6H]                           ; 1436 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1439 _ 8B. 45, 08
        add     edx, eax                                ; 143C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 143E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1442 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1444 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1448 _ 83. E0, 01
        test    eax, eax                                ; 144B _ 85. C0
        jz      ?_035                                   ; 144D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 144F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1452 _ 8B. 45, FC
        add     eax, edx                                ; 1455 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1457 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 145B _ 8B. 55, 10
        add     eax, edx                                ; 145E _ 01. D0
        lea     edx, [eax+7H]                           ; 1460 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1463 _ 8B. 45, 08
        add     edx, eax                                ; 1466 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1468 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 146C _ 88. 02
?_035:  add     dword [ebp-4H], 1                       ; 146E _ 83. 45, FC, 01
?_036:  cmp     dword [ebp-4H], 15                      ; 1472 _ 83. 7D, FC, 0F
        jle     ?_027                                   ; 1476 _ 0F 8E, FFFFFE9A
        nop                                             ; 147C _ 90
        leave                                           ; 147D _ C9
        ret                                             ; 147E _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 147F _ 55
        mov     ebp, esp                                ; 1480 _ 89. E5
        sub     esp, 20                                 ; 1482 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1485 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1488 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 148B _ C7. 45, F8, 00000000
        jmp     ?_043                                   ; 1492 _ E9, 000000B1

?_037:  mov     dword [ebp-4H], 0                       ; 1497 _ C7. 45, FC, 00000000
        jmp     ?_042                                   ; 149E _ E9, 00000097

?_038:  mov     eax, dword [ebp-8H]                     ; 14A3 _ 8B. 45, F8
        shl     eax, 4                                  ; 14A6 _ C1. E0, 04
        mov     edx, eax                                ; 14A9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14AB _ 8B. 45, FC
        add     eax, edx                                ; 14AE _ 01. D0
        add     eax, _cursor.2372                       ; 14B0 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 14B5 _ 0F B6. 00
        cmp     al, 42                                  ; 14B8 _ 3C, 2A
        jnz     ?_039                                   ; 14BA _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 14BC _ 8B. 45, F8
        shl     eax, 4                                  ; 14BF _ C1. E0, 04
        mov     edx, eax                                ; 14C2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14C4 _ 8B. 45, FC
        add     eax, edx                                ; 14C7 _ 01. D0
        mov     edx, eax                                ; 14C9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14CB _ 8B. 45, 08
        add     eax, edx                                ; 14CE _ 01. D0
        mov     byte [eax], 0                           ; 14D0 _ C6. 00, 00
?_039:  mov     eax, dword [ebp-8H]                     ; 14D3 _ 8B. 45, F8
        shl     eax, 4                                  ; 14D6 _ C1. E0, 04
        mov     edx, eax                                ; 14D9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14DB _ 8B. 45, FC
        add     eax, edx                                ; 14DE _ 01. D0
        add     eax, _cursor.2372                       ; 14E0 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 14E5 _ 0F B6. 00
        cmp     al, 79                                  ; 14E8 _ 3C, 4F
        jnz     ?_040                                   ; 14EA _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 14EC _ 8B. 45, F8
        shl     eax, 4                                  ; 14EF _ C1. E0, 04
        mov     edx, eax                                ; 14F2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14F4 _ 8B. 45, FC
        add     eax, edx                                ; 14F7 _ 01. D0
        mov     edx, eax                                ; 14F9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14FB _ 8B. 45, 08
        add     eax, edx                                ; 14FE _ 01. D0
        mov     byte [eax], 7                           ; 1500 _ C6. 00, 07
?_040:  mov     eax, dword [ebp-8H]                     ; 1503 _ 8B. 45, F8
        shl     eax, 4                                  ; 1506 _ C1. E0, 04
        mov     edx, eax                                ; 1509 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 150B _ 8B. 45, FC
        add     eax, edx                                ; 150E _ 01. D0
        add     eax, _cursor.2372                       ; 1510 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1515 _ 0F B6. 00
        cmp     al, 46                                  ; 1518 _ 3C, 2E
        jnz     ?_041                                   ; 151A _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 151C _ 8B. 45, F8
        shl     eax, 4                                  ; 151F _ C1. E0, 04
        mov     edx, eax                                ; 1522 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1524 _ 8B. 45, FC
        add     eax, edx                                ; 1527 _ 01. D0
        mov     edx, eax                                ; 1529 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 152B _ 8B. 45, 08
        add     edx, eax                                ; 152E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1530 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1534 _ 88. 02
?_041:  add     dword [ebp-4H], 1                       ; 1536 _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 15                      ; 153A _ 83. 7D, FC, 0F
        jle     ?_038                                   ; 153E _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1544 _ 83. 45, F8, 01
?_043:  cmp     dword [ebp-8H], 15                      ; 1548 _ 83. 7D, F8, 0F
        jle     ?_037                                   ; 154C _ 0F 8E, FFFFFF45
        nop                                             ; 1552 _ 90
        leave                                           ; 1553 _ C9
        ret                                             ; 1554 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1555 _ 55
        mov     ebp, esp                                ; 1556 _ 89. E5
        push    ebx                                     ; 1558 _ 53
        sub     esp, 16                                 ; 1559 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 155C _ C7. 45, F4, 00000000
        jmp     ?_047                                   ; 1563 _ EB, 4E

?_044:  mov     dword [ebp-8H], 0                       ; 1565 _ C7. 45, F8, 00000000
        jmp     ?_046                                   ; 156C _ EB, 39

?_045:  mov     eax, dword [ebp-0CH]                    ; 156E _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 1571 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1575 _ 8B. 55, F8
        add     eax, edx                                ; 1578 _ 01. D0
        mov     edx, eax                                ; 157A _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 157C _ 8B. 45, 20
        add     eax, edx                                ; 157F _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1581 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1584 _ 8B. 55, F4
        add     edx, ecx                                ; 1587 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1589 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 158D _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 1590 _ 8B. 4D, F8
        add     ecx, ebx                                ; 1593 _ 01. D9
        add     edx, ecx                                ; 1595 _ 01. CA
        mov     ecx, edx                                ; 1597 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1599 _ 8B. 55, 08
        add     edx, ecx                                ; 159C _ 01. CA
        movzx   eax, byte [eax]                         ; 159E _ 0F B6. 00
        mov     byte [edx], al                          ; 15A1 _ 88. 02
        add     dword [ebp-8H], 1                       ; 15A3 _ 83. 45, F8, 01
?_046:  mov     eax, dword [ebp-8H]                     ; 15A7 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 15AA _ 3B. 45, 10
        jl      ?_045                                   ; 15AD _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 15AF _ 83. 45, F4, 01
?_047:  mov     eax, dword [ebp-0CH]                    ; 15B3 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 15B6 _ 3B. 45, 14
        jl      ?_044                                   ; 15B9 _ 7C, AA
        nop                                             ; 15BB _ 90
        add     esp, 16                                 ; 15BC _ 83. C4, 10
        pop     ebx                                     ; 15BF _ 5B
        pop     ebp                                     ; 15C0 _ 5D
        ret                                             ; 15C1 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 15C2 _ 55
        mov     ebp, esp                                ; 15C3 _ 89. E5
        sub     esp, 40                                 ; 15C5 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 15C8 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 15CD _ 89. 45, F4
        movzx   eax, word [?_195]                       ; 15D0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 15D7 _ 98
        mov     dword [ebp-10H], eax                    ; 15D8 _ 89. 45, F0
        movzx   eax, word [?_196]                       ; 15DB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 15E2 _ 98
        mov     dword [ebp-14H], eax                    ; 15E3 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 15E6 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 15EE _ C7. 04 24, 00000020
        call    _io_out8                                ; 15F5 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 15FA _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 15FE _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1605 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 160A _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 160D _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1611 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1615 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 161C _ E8, 00000000(rel)
        nop                                             ; 1621 _ 90
        leave                                           ; 1622 _ C9
        ret                                             ; 1623 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1624 _ 55
        mov     ebp, esp                                ; 1625 _ 89. E5
        sub     esp, 4                                  ; 1627 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 162A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 162D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1630 _ 80. 7D, FC, 09
        jle     ?_048                                   ; 1634 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1636 _ 0F B6. 45, FC
        add     eax, 55                                 ; 163A _ 83. C0, 37
        jmp     ?_049                                   ; 163D _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 163F _ 0F B6. 45, FC
        add     eax, 48                                 ; 1643 _ 83. C0, 30
?_049:  leave                                           ; 1646 _ C9
        ret                                             ; 1647 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1648 _ 55
        mov     ebp, esp                                ; 1649 _ 89. E5
        sub     esp, 24                                 ; 164B _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 164E _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 1651 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1654 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 165B _ 0F B6. 45, EC
        and     eax, 0FH                                ; 165F _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 1662 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1665 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1669 _ 89. 04 24
        call    _charToHexVal                           ; 166C _ E8, FFFFFFB3
        mov     byte [?_185], al                        ; 1671 _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 1676 _ 0F B6. 45, EC
        shr     al, 4                                   ; 167A _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 167D _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 1680 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1684 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1687 _ 89. 04 24
        call    _charToHexVal                           ; 168A _ E8, FFFFFF95
        mov     byte [?_184], al                        ; 168F _ A2, 00000076(d)
        mov     eax, _keyval                            ; 1694 _ B8, 00000074(d)
        leave                                           ; 1699 _ C9
        ret                                             ; 169A _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 169B _ 55
        mov     ebp, esp                                ; 169C _ 89. E5
        sub     esp, 16                                 ; 169E _ 83. EC, 10
        mov     byte [_str.2420], 48                    ; 16A1 _ C6. 05, 00000368(d), 30
        mov     byte [?_199], 88                        ; 16A8 _ C6. 05, 00000369(d), 58
        mov     byte [?_200], 0                         ; 16AF _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 16B6 _ C7. 45, FC, 00000002
        jmp     ?_051                                   ; 16BD _ EB, 0F

?_050:  mov     eax, dword [ebp-4H]                     ; 16BF _ 8B. 45, FC
        add     eax, _str.2420                          ; 16C2 _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 16C7 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 16CA _ 83. 45, FC, 01
?_051:  cmp     dword [ebp-4H], 9                       ; 16CE _ 83. 7D, FC, 09
        jle     ?_050                                   ; 16D2 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 16D4 _ C7. 45, F8, 00000009
        jmp     ?_055                                   ; 16DB _ EB, 42

?_052:  mov     eax, dword [ebp+8H]                     ; 16DD _ 8B. 45, 08
        and     eax, 0FH                                ; 16E0 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 16E3 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 16E6 _ 8B. 45, 08
        shr     eax, 4                                  ; 16E9 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 16EC _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 16EF _ 83. 7D, F4, 09
        jle     ?_053                                   ; 16F3 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 16F5 _ 8B. 45, F4
        add     eax, 55                                 ; 16F8 _ 83. C0, 37
        mov     edx, eax                                ; 16FB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16FD _ 8B. 45, F8
        add     eax, _str.2420                          ; 1700 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1705 _ 88. 10
        jmp     ?_054                                   ; 1707 _ EB, 12

?_053:  mov     eax, dword [ebp-0CH]                    ; 1709 _ 8B. 45, F4
        add     eax, 48                                 ; 170C _ 83. C0, 30
        mov     edx, eax                                ; 170F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1711 _ 8B. 45, F8
        add     eax, _str.2420                          ; 1714 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1719 _ 88. 10
?_054:  sub     dword [ebp-8H], 1                       ; 171B _ 83. 6D, F8, 01
?_055:  cmp     dword [ebp-8H], 1                       ; 171F _ 83. 7D, F8, 01
        jle     ?_056                                   ; 1723 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1725 _ 83. 7D, 08, 00
        jnz     ?_052                                   ; 1729 _ 75, B2
?_056:  mov     eax, _str.2420                          ; 172B _ B8, 00000368(d)
        leave                                           ; 1730 _ C9
        ret                                             ; 1731 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1732 _ 55
        mov     ebp, esp                                ; 1733 _ 89. E5
        sub     esp, 24                                 ; 1735 _ 83. EC, 18
?_057:  mov     dword [esp], 100                        ; 1738 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 173F _ E8, 00000000(rel)
        and     eax, 02H                                ; 1744 _ 83. E0, 02
        test    eax, eax                                ; 1747 _ 85. C0
        jz      ?_058                                   ; 1749 _ 74, 02
        jmp     ?_057                                   ; 174B _ EB, EB
; _wait_KBC_sendready End of function

?_058:  ; Local function
        nop                                             ; 174D _ 90
        nop                                             ; 174E _ 90
        leave                                           ; 174F _ C9
        ret                                             ; 1750 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 1751 _ 55
        mov     ebp, esp                                ; 1752 _ 89. E5
        sub     esp, 24                                 ; 1754 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1757 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 175C _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1764 _ C7. 04 24, 00000064
        call    _io_out8                                ; 176B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1770 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1775 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 177D _ C7. 04 24, 00000060
        call    _io_out8                                ; 1784 _ E8, 00000000(rel)
        nop                                             ; 1789 _ 90
        leave                                           ; 178A _ C9
        ret                                             ; 178B _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 178C _ 55
        mov     ebp, esp                                ; 178D _ 89. E5
        sub     esp, 24                                 ; 178F _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1792 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1797 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 179F _ C7. 04 24, 00000064
        call    _io_out8                                ; 17A6 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 17AB _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 17B0 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 17B8 _ C7. 04 24, 00000060
        call    _io_out8                                ; 17BF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 17C4 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 17C7 _ C6. 40, 03, 00
        nop                                             ; 17CB _ 90
        leave                                           ; 17CC _ C9
        ret                                             ; 17CD _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 17CE _ 55
        mov     ebp, esp                                ; 17CF _ 89. E5
        sub     esp, 40                                 ; 17D1 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 17D4 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 17DC _ C7. 04 24, 000000A0
        call    _io_out8                                ; 17E3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 17E8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 17F0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 17F7 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 17FC _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1803 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1808 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 180B _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 180F _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1813 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 181A _ E8, 00000000(rel)
        nop                                             ; 181F _ 90
        leave                                           ; 1820 _ C9
        ret                                             ; 1821 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1822 _ 55
        mov     ebp, esp                                ; 1823 _ 89. E5
        sub     esp, 4                                  ; 1825 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1828 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 182B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 182E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1831 _ 0F B6. 40, 03
        test    al, al                                  ; 1835 _ 84. C0
        jnz     ?_060                                   ; 1837 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1839 _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 183D _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1842 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1846 _ B8, 00000000
        jmp     ?_067                                   ; 184B _ E9, 0000010F

?_060:  mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1853 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1857 _ 3C, 01
        jnz     ?_062                                   ; 1859 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 185B _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 185F _ 25, 000000C8
        cmp     eax, 8                                  ; 1864 _ 83. F8, 08
        jnz     ?_061                                   ; 1867 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1869 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 186C _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1870 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1872 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1875 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1879 _ B8, 00000000
        jmp     ?_067                                   ; 187E _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1883 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1886 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 188A _ 3C, 02
        jnz     ?_063                                   ; 188C _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 188E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1891 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1895 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1898 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 189B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 189F _ B8, 00000000
        jmp     ?_067                                   ; 18A4 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 18A9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 18AC _ 0F B6. 40, 03
        cmp     al, 3                                   ; 18B0 _ 3C, 03
        jne     ?_066                                   ; 18B2 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 18B8 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 18BB _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 18BF _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 18C2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 18C5 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 18C9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18CC _ 0F B6. 00
        movzx   eax, al                                 ; 18CF _ 0F B6. C0
        and     eax, 07H                                ; 18D2 _ 83. E0, 07
        mov     edx, eax                                ; 18D5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18D7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 18DA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 18DD _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 18E0 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 18E4 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 18E7 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 18EA _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 18ED _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 18F0 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 18F4 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 18F7 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 18FA _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 18FD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1900 _ 0F B6. 00
        movzx   eax, al                                 ; 1903 _ 0F B6. C0
        and     eax, 10H                                ; 1906 _ 83. E0, 10
        test    eax, eax                                ; 1909 _ 85. C0
        jz      ?_064                                   ; 190B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 190D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1910 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1913 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1918 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 191A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 191D _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1920 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1923 _ 0F B6. 00
        movzx   eax, al                                 ; 1926 _ 0F B6. C0
        and     eax, 20H                                ; 1929 _ 83. E0, 20
        test    eax, eax                                ; 192C _ 85. C0
        jz      ?_065                                   ; 192E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1930 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1933 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1936 _ 0D, FFFFFF00
        mov     edx, eax                                ; 193B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 193D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1940 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1943 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1946 _ 8B. 40, 08
        neg     eax                                     ; 1949 _ F7. D8
        mov     edx, eax                                ; 194B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 194D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1950 _ 89. 50, 08
        mov     eax, 1                                  ; 1953 _ B8, 00000001
        jmp     ?_067                                   ; 1958 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 195A _ B8, FFFFFFFF
?_067:  leave                                           ; 195F _ C9
        ret                                             ; 1960 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1961 _ 55
        mov     ebp, esp                                ; 1962 _ 89. E5
        sub     esp, 72                                 ; 1964 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 1967 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 196E _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1975 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 197C _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1983 _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 1989 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 198C _ 8B. 00
        mov     dword [esp+8H], edx                     ; 198E _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1992 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1995 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1999 _ 89. 04 24
        call    _init_screen8                           ; 199C _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 19A1 _ 8B. 45, 20
        movsx   eax, al                                 ; 19A4 _ 0F BE. C0
        mov     dword [esp+14H], ?_191                  ; 19A7 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 19AF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19B3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19B6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19BA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19BD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19C1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19C4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19C8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19CB _ 89. 04 24
        call    _showString                             ; 19CE _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 19D3 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 19D6 _ 89. 04 24
        call    _intToHexStr                            ; 19D9 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 19DE _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 19E1 _ 8B. 45, 20
        movsx   eax, al                                 ; 19E4 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 19E7 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 19EA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19EE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19F2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19F5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 19F9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 19FC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A00 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A03 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A07 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A0A _ 89. 04 24
        call    _showString                             ; 1A0D _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1A12 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A16 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A19 _ 0F BE. C0
        mov     dword [esp+14H], ?_192                  ; 1A1C _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 1A24 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A28 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A2B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A2F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1A32 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A36 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A39 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A3D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A40 _ 89. 04 24
        call    _showString                             ; 1A43 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1A48 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A4B _ 8B. 00
        mov     dword [esp], eax                        ; 1A4D _ 89. 04 24
        call    _intToHexStr                            ; 1A50 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1A55 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1A58 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A5B _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1A5E _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1A61 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A65 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A69 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A6C _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A70 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A73 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A77 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A7A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A81 _ 89. 04 24
        call    _showString                             ; 1A84 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1A89 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A8D _ 8B. 45, 20
        movsx   eax, al                                 ; 1A90 _ 0F BE. C0
        mov     dword [esp+14H], ?_193                  ; 1A93 _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 1A9B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A9F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AA2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1AA6 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1AA9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AAD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AB0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AB4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AB7 _ 89. 04 24
        call    _showString                             ; 1ABA _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1ABF _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1AC2 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1AC5 _ 89. 04 24
        call    _intToHexStr                            ; 1AC8 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1ACD _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1AD0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AD3 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1AD6 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1AD9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1ADD _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AE1 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AE4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1AE8 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1AEB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AEF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AF2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AF9 _ 89. 04 24
        call    _showString                             ; 1AFC _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1B01 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1B05 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B08 _ 0F BE. C0
        mov     dword [esp+14H], ?_194                  ; 1B0B _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 1B13 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B17 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B1A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1B1E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1B21 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B25 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B28 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B2C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B2F _ 89. 04 24
        call    _showString                             ; 1B32 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1B37 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1B3A _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1B3D _ 89. 04 24
        call    _intToHexStr                            ; 1B40 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1B45 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1B48 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B4B _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1B4E _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1B51 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B55 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B59 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B5C _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1B60 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1B63 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B67 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B6A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B6E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B71 _ 89. 04 24
        call    _showString                             ; 1B74 _ E8, FFFFF5C8
        nop                                             ; 1B79 _ 90
        leave                                           ; 1B7A _ C9
        ret                                             ; 1B7B _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1B7C _ 55
        mov     ebp, esp                                ; 1B7D _ 89. E5
        sub     esp, 56                                 ; 1B7F _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1B82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B85 _ 89. 04 24
        call    _sheet_alloc                            ; 1B88 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1B8D _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1B90 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1B95 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1B9D _ 89. 04 24
        call    _memman_alloc_4k                        ; 1BA0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1BA5 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1BA8 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1BB0 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1BB8 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1BC0 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1BC3 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1BC7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BCA _ 89. 04 24
        call    _sheet_setbuf                           ; 1BCD _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1BD2 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1BD5 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1BD9 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1BDC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BE0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BE3 _ 89. 04 24
        call    _make_window8                           ; 1BE6 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1BEB _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1BF3 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1BFB _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1C03 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1C0B _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1C13 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1C16 _ 89. 04 24
        call    _make_textbox8                          ; 1C19 _ E8, 000003AA
        mov     dword [esp+0CH], 172                    ; 1C1E _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1C26 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1C2E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1C31 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C35 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C38 _ 89. 04 24
        call    _sheet_slide                            ; 1C3B _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1C40 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1C48 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1C4B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C4F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C52 _ 89. 04 24
        call    _sheet_updown                           ; 1C55 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1C5A _ 8B. 45, F4
        leave                                           ; 1C5D _ C9
        ret                                             ; 1C5E _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1C5F _ 55
        mov     ebp, esp                                ; 1C60 _ 89. E5
        push    ebx                                     ; 1C62 _ 53
        sub     esp, 68                                 ; 1C63 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1C66 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C69 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1C6C _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1C6F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C72 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1C75 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1C78 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1C7B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C7E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C81 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1C83 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1C8B _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1C8F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1C97 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1C9F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1CA7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CAA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CAE _ 89. 04 24
        call    _boxfill8                               ; 1CB1 _ E8, FFFFF5F8
        mov     eax, dword [ebp-18H]                    ; 1CB6 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1CB9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CBC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CBF _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1CC1 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1CC9 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1CCD _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1CD5 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1CDD _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1CE5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CE8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CEC _ 89. 04 24
        call    _boxfill8                               ; 1CEF _ E8, FFFFF5BA
        mov     eax, dword [ebp-1CH]                    ; 1CF4 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1CF7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CFA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CFD _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1CFF _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1D03 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1D0B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1D13 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1D1B _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1D23 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D26 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D2A _ 89. 04 24
        call    _boxfill8                               ; 1D2D _ E8, FFFFF57C
        mov     eax, dword [ebp-1CH]                    ; 1D32 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1D35 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D38 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D3B _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1D3D _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1D41 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1D49 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1D51 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1D59 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1D61 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D64 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D68 _ 89. 04 24
        call    _boxfill8                               ; 1D6B _ E8, FFFFF53E
        mov     eax, dword [ebp-1CH]                    ; 1D70 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1D73 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1D76 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1D79 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1D7C _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1D7F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D82 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D85 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D87 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D8B _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1D8F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1D97 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1D9B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1DA3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1DA6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DAA _ 89. 04 24
        call    _boxfill8                               ; 1DAD _ E8, FFFFF4FC
        mov     eax, dword [ebp-1CH]                    ; 1DB2 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1DB5 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1DB8 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1DBB _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1DBE _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1DC1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1DC4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DC7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1DC9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DCD _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1DD1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1DD9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1DDD _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1DE5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1DE8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DEC _ 89. 04 24
        call    _boxfill8                               ; 1DEF _ E8, FFFFF4BA
        mov     eax, dword [ebp-1CH]                    ; 1DF4 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1DF7 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1DFA _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1DFD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1E00 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E03 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1E05 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1E09 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1E0D _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1E15 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1E1D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1E25 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E28 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E2C _ 89. 04 24
        call    _boxfill8                               ; 1E2F _ E8, FFFFF47A
        mov     eax, dword [ebp-18H]                    ; 1E34 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1E37 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1E3A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E3D _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1E3F _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1E47 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1E4B _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1E53 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1E5B _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1E63 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E66 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E6A _ 89. 04 24
        call    _boxfill8                               ; 1E6D _ E8, FFFFF43C
        mov     eax, dword [ebp-1CH]                    ; 1E72 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1E75 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1E78 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1E7B _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1E7E _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1E81 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E84 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E87 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1E89 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E8D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E91 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1E95 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1E9D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1EA5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1EA8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EAC _ 89. 04 24
        call    _boxfill8                               ; 1EAF _ E8, FFFFF3FA
        mov     eax, dword [ebp-1CH]                    ; 1EB4 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1EB7 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1EBA _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1EBD _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1EC0 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1EC3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EC6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EC9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1ECB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1ECF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1ED3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1ED7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1EDF _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1EE7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1EEA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EEE _ 89. 04 24
        call    _boxfill8                               ; 1EF1 _ E8, FFFFF3B8
        mov     eax, dword [ebp+10H]                    ; 1EF6 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1EF9 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1EFD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1F05 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1F0D _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1F15 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F18 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F1C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F1F _ 89. 04 24
        call    _showString                             ; 1F22 _ E8, FFFFF21A
        mov     dword [ebp-10H], 0                      ; 1F27 _ C7. 45, F0, 00000000
        jmp     ?_075                                   ; 1F2E _ E9, 00000084

?_068:  mov     dword [ebp-0CH], 0                      ; 1F33 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 1F3A _ EB, 71

?_069:  mov     eax, dword [ebp-10H]                    ; 1F3C _ 8B. 45, F0
        shl     eax, 4                                  ; 1F3F _ C1. E0, 04
        mov     edx, eax                                ; 1F42 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F44 _ 8B. 45, F4
        add     eax, edx                                ; 1F47 _ 01. D0
        add     eax, _closebtn.2482                     ; 1F49 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1F4E _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1F51 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1F54 _ 80. 7D, EF, 40
        jnz     ?_070                                   ; 1F58 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1F5A _ C6. 45, EF, 00
        jmp     ?_073                                   ; 1F5E _ EB, 1C

?_070:  cmp     byte [ebp-11H], 36                      ; 1F60 _ 80. 7D, EF, 24
        jnz     ?_071                                   ; 1F64 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1F66 _ C6. 45, EF, 0F
        jmp     ?_073                                   ; 1F6A _ EB, 10

?_071:  cmp     byte [ebp-11H], 81                      ; 1F6C _ 80. 7D, EF, 51
        jnz     ?_072                                   ; 1F70 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1F72 _ C6. 45, EF, 08
        jmp     ?_073                                   ; 1F76 _ EB, 04

?_072:  mov     byte [ebp-11H], 7                       ; 1F78 _ C6. 45, EF, 07
?_073:  mov     eax, dword [ebp+0CH]                    ; 1F7C _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1F7F _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1F81 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1F84 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1F87 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F8A _ 8B. 40, 04
        imul    eax, edx                                ; 1F8D _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1F90 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1F93 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1F96 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1F99 _ 8B. 55, F4
        add     edx, ebx                                ; 1F9C _ 01. DA
        add     eax, edx                                ; 1F9E _ 01. D0
        lea     edx, [ecx+eax]                          ; 1FA0 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1FA3 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1FA7 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1FA9 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 15                     ; 1FAD _ 83. 7D, F4, 0F
        jle     ?_069                                   ; 1FB1 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1FB3 _ 83. 45, F0, 01
?_075:  cmp     dword [ebp-10H], 13                     ; 1FB7 _ 83. 7D, F0, 0D
        jle     ?_068                                   ; 1FBB _ 0F 8E, FFFFFF72
        nop                                             ; 1FC1 _ 90
        add     esp, 68                                 ; 1FC2 _ 83. C4, 44
        pop     ebx                                     ; 1FC5 _ 5B
        pop     ebp                                     ; 1FC6 _ 5D
        ret                                             ; 1FC7 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1FC8 _ 55
        mov     ebp, esp                                ; 1FC9 _ 89. E5
        push    edi                                     ; 1FCB _ 57
        push    esi                                     ; 1FCC _ 56
        push    ebx                                     ; 1FCD _ 53
        sub     esp, 44                                 ; 1FCE _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1FD1 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1FD4 _ 8B. 45, 14
        add     eax, edx                                ; 1FD7 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1FD9 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1FDC _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1FDF _ 8B. 45, 18
        add     eax, edx                                ; 1FE2 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1FE4 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1FE7 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1FEA _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1FED _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1FF0 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1FF3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1FF6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1FF9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FFC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FFF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2002 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2008 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 200A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 200E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2012 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2016 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 201A _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2022 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2026 _ 89. 04 24
        call    _boxfill8                               ; 2029 _ E8, FFFFF280
        mov     eax, dword [ebp-14H]                    ; 202E _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2031 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2034 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2037 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 203A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 203D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2040 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2043 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2046 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2049 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 204C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 204F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2051 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2055 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2059 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 205D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2061 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2069 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 206D _ 89. 04 24
        call    _boxfill8                               ; 2070 _ E8, FFFFF239
        mov     eax, dword [ebp-14H]                    ; 2075 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2078 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 207B _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 207E _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2081 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2084 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2087 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 208A _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 208D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2090 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2093 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2096 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2098 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 209C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20A0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20A4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20A8 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20B0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20B4 _ 89. 04 24
        call    _boxfill8                               ; 20B7 _ E8, FFFFF1F2
        mov     eax, dword [ebp-14H]                    ; 20BC _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 20BF _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 20C2 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 20C5 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 20C8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 20CB _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 20CE _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 20D1 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 20D4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20D7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20DA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20DD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20DF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20E3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20E7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20EB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20EF _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20F7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20FB _ 89. 04 24
        call    _boxfill8                               ; 20FE _ E8, FFFFF1AB
        mov     eax, dword [ebp+10H]                    ; 2103 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2106 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2109 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 210C _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 210F _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2112 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2115 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2118 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 211B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 211E _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2120 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2124 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2127 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 212B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 212F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2133 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 213B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 213F _ 89. 04 24
        call    _boxfill8                               ; 2142 _ E8, FFFFF167
        mov     eax, dword [ebp+0CH]                    ; 2147 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 214A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 214D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2150 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2153 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2156 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2159 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 215C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 215F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2162 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2164 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2167 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 216B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 216F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2173 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2177 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 217F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2183 _ 89. 04 24
        call    _boxfill8                               ; 2186 _ E8, FFFFF123
        mov     eax, dword [ebp-14H]                    ; 218B _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 218E _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2191 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 2194 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2197 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 219A _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 219D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21A0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21A6 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 21A8 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 21AC _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 21AF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21B3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21B7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21BB _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 21C3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21C7 _ 89. 04 24
        call    _boxfill8                               ; 21CA _ E8, FFFFF0DF
        mov     eax, dword [ebp-14H]                    ; 21CF _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 21D2 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 21D5 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 21D8 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 21DB _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 21DE _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 21E1 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 21E4 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 21E7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21EA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21F0 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 21F2 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 21F6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21FA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21FE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2202 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 220A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 220E _ 89. 04 24
        call    _boxfill8                               ; 2211 _ E8, FFFFF098
        mov     eax, dword [ebp+10H]                    ; 2216 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 2219 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 221C _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 221F _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 2222 _ 8B. 45, 1C
        movzx   eax, al                                 ; 2225 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2228 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 222B _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 222E _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 2231 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2233 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2236 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 223A _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 223D _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 2241 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2245 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2249 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 224D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2251 _ 89. 14 24
        call    _boxfill8                               ; 2254 _ E8, FFFFF055
        nop                                             ; 2259 _ 90
        add     esp, 44                                 ; 225A _ 83. C4, 2C
        pop     ebx                                     ; 225D _ 5B
        pop     esi                                     ; 225E _ 5E
        pop     edi                                     ; 225F _ 5F
        pop     ebp                                     ; 2260 _ 5D
        ret                                             ; 2261 _ C3
; _make_textbox8 End of function

        nop                                             ; 2262 _ 90
        nop                                             ; 2263 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2264 _ 55
        mov     ebp, esp                                ; 2265 _ 89. E5
        sub     esp, 40                                 ; 2267 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 226A _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2272 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2275 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2278 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 227D _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2280 _ 83. 7D, F0, 00
        jnz     ?_076                                   ; 2284 _ 75, 0A
        mov     eax, 0                                  ; 2286 _ B8, 00000000
        jmp     ?_080                                   ; 228B _ E9, 0000009D

?_076:  mov     eax, dword [ebp+10H]                    ; 2290 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2293 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2297 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 229B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 229E _ 89. 04 24
        call    _memman_alloc_4k                        ; 22A1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 22A6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 22A8 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 22AB _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 22AE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 22B1 _ 8B. 40, 04
        test    eax, eax                                ; 22B4 _ 85. C0
        jnz     ?_077                                   ; 22B6 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 22B8 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 22BB _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 22C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22CA _ 89. 04 24
        call    _memman_free_4k                         ; 22CD _ E8, 00000000(rel)
        mov     eax, 0                                  ; 22D2 _ B8, 00000000
        jmp     ?_080                                   ; 22D7 _ EB, 54

?_077:  mov     eax, dword [ebp-10H]                    ; 22D9 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 22DC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 22DF _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 22E1 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 22E4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 22E7 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 22EA _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 22ED _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 22F0 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 22F3 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 22F6 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 22FD _ C7. 45, F4, 00000000
        jmp     ?_079                                   ; 2304 _ EB, 1B

?_078:  mov     edx, dword [ebp-10H]                    ; 2306 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2309 _ 8B. 45, F4
        add     eax, 33                                 ; 230C _ 83. C0, 21
        shl     eax, 5                                  ; 230F _ C1. E0, 05
        add     eax, edx                                ; 2312 _ 01. D0
        add     eax, 16                                 ; 2314 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2317 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 231D _ 83. 45, F4, 01
?_079:  cmp     dword [ebp-0CH], 255                    ; 2321 _ 81. 7D, F4, 000000FF
        jle     ?_078                                   ; 2328 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 232A _ 8B. 45, F0
?_080:  leave                                           ; 232D _ C9
        ret                                             ; 232E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 232F _ 55
        mov     ebp, esp                                ; 2330 _ 89. E5
        sub     esp, 16                                 ; 2332 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2335 _ C7. 45, FC, 00000000
        jmp     ?_083                                   ; 233C _ EB, 5B

?_081:  mov     edx, dword [ebp+8H]                     ; 233E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2341 _ 8B. 45, FC
        add     eax, 33                                 ; 2344 _ 83. C0, 21
        shl     eax, 5                                  ; 2347 _ C1. E0, 05
        add     eax, edx                                ; 234A _ 01. D0
        add     eax, 16                                 ; 234C _ 83. C0, 10
        mov     eax, dword [eax]                        ; 234F _ 8B. 00
        test    eax, eax                                ; 2351 _ 85. C0
        jnz     ?_082                                   ; 2353 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2355 _ 8B. 45, FC
        shl     eax, 5                                  ; 2358 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 235B _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2361 _ 8B. 45, 08
        add     eax, edx                                ; 2364 _ 01. D0
        add     eax, 4                                  ; 2366 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2369 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 236C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 236F _ 8B. 55, FC
        add     edx, 4                                  ; 2372 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2375 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2378 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 237C _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 237F _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2386 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2389 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 2390 _ 8B. 45, F8
        jmp     ?_084                                   ; 2393 _ EB, 12

?_082:  add     dword [ebp-4H], 1                       ; 2395 _ 83. 45, FC, 01
?_083:  cmp     dword [ebp-4H], 255                     ; 2399 _ 81. 7D, FC, 000000FF
        jle     ?_081                                   ; 23A0 _ 7E, 9C
        mov     eax, 0                                  ; 23A2 _ B8, 00000000
?_084:  leave                                           ; 23A7 _ C9
        ret                                             ; 23A8 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 23A9 _ 55
        mov     ebp, esp                                ; 23AA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 23AC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 23AF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 23B2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 23B4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 23B7 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 23BA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 23BD _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 23C0 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 23C3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 23C6 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 23C9 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 23CC _ 89. 50, 14
        nop                                             ; 23CF _ 90
        pop     ebp                                     ; 23D0 _ 5D
        ret                                             ; 23D1 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 23D2 _ 55
        mov     ebp, esp                                ; 23D3 _ 89. E5
        push    edi                                     ; 23D5 _ 57
        push    esi                                     ; 23D6 _ 56
        push    ebx                                     ; 23D7 _ 53
        sub     esp, 60                                 ; 23D8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 23DB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 23DE _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 23E1 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 23E4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23E7 _ 8B. 40, 10
        add     eax, 1                                  ; 23EA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 23ED _ 39. 45, 10
        jle     ?_085                                   ; 23F0 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 23F2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23F5 _ 8B. 40, 10
        add     eax, 1                                  ; 23F8 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 23FB _ 89. 45, 10
?_085:  cmp     dword [ebp+10H], -1                     ; 23FE _ 83. 7D, 10, FF
        jge     ?_086                                   ; 2402 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2404 _ C7. 45, 10, FFFFFFFF
?_086:  mov     eax, dword [ebp+0CH]                    ; 240B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 240E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2411 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2414 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2417 _ 3B. 45, 10
        jle     ?_093                                   ; 241A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2420 _ 83. 7D, 10, 00
        js      ?_089                                   ; 2424 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 242A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 242D _ 89. 45, E4
        jmp     ?_088                                   ; 2430 _ EB, 34

?_087:  mov     eax, dword [ebp-1CH]                    ; 2432 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2435 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2438 _ 8B. 45, 08
        add     edx, 4                                  ; 243B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 243E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2442 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2445 _ 8B. 55, E4
        add     edx, 4                                  ; 2448 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 244B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 244F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2452 _ 8B. 55, E4
        add     edx, 4                                  ; 2455 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2458 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 245C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 245F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2462 _ 83. 6D, E4, 01
?_088:  mov     eax, dword [ebp-1CH]                    ; 2466 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2469 _ 3B. 45, 10
        jg      ?_087                                   ; 246C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 246E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2471 _ 8B. 55, 10
        add     edx, 4                                  ; 2474 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2477 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 247A _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 247E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2481 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2484 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2487 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 248A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 248D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2490 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2493 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2496 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2499 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 249C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 249F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24A2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24A5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24A8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24AB _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 24AE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 24B2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 24B6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24BA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 24BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24C5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 24C8 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 24CD _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 24D0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 24D3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24D6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24D9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 24DC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 24DF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 24E2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24E5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24E8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24EB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24EE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24F1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24F4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24F7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24FA _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 24FD _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2500 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2504 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2508 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 250C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2510 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2514 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2518 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 251B _ 89. 04 24
        call    _sheet_refreshsub                       ; 251E _ E8, 00000465
        jmp     ?_100                                   ; 2523 _ E9, 0000027D

?_089:  mov     eax, dword [ebp+8H]                     ; 2528 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 252B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 252E _ 39. 45, E0
        jge     ?_092                                   ; 2531 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2533 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2536 _ 89. 45, E4
        jmp     ?_091                                   ; 2539 _ EB, 34

?_090:  mov     eax, dword [ebp-1CH]                    ; 253B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 253E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2541 _ 8B. 45, 08
        add     edx, 4                                  ; 2544 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2547 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 254B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 254E _ 8B. 55, E4
        add     edx, 4                                  ; 2551 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2554 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2558 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 255B _ 8B. 55, E4
        add     edx, 4                                  ; 255E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2561 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2565 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2568 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 256B _ 83. 45, E4, 01
?_091:  mov     eax, dword [ebp+8H]                     ; 256F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2572 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2575 _ 39. 45, E4
        jl      ?_090                                   ; 2578 _ 7C, C1
?_092:  mov     eax, dword [ebp+8H]                     ; 257A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 257D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2580 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2586 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2589 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 258C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 258F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2592 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2595 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2598 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 259B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 259E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25A1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25A4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25A7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25AA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25AD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25B0 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 25B3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 25BB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 25BF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25C3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25C7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25CB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25CE _ 89. 04 24
        call    _sheet_refreshmap                       ; 25D1 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 25D6 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 25D9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 25DC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25DF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25E2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25E5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25E8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25EB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25EE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25F1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25F4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25F7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25FA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25FD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2600 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2603 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2606 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 260A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2612 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2616 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 261A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 261E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2622 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2625 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2628 _ E8, 0000035B
        jmp     ?_100                                   ; 262D _ E9, 00000173

?_093:  mov     eax, dword [ebp-20H]                    ; 2632 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2635 _ 3B. 45, 10
        jge     ?_100                                   ; 2638 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 263E _ 83. 7D, E0, 00
        js      ?_096                                   ; 2642 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2644 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2647 _ 89. 45, E4
        jmp     ?_095                                   ; 264A _ EB, 34

?_094:  mov     eax, dword [ebp-1CH]                    ; 264C _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 264F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2652 _ 8B. 45, 08
        add     edx, 4                                  ; 2655 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2658 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 265C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 265F _ 8B. 55, E4
        add     edx, 4                                  ; 2662 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2665 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2669 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 266C _ 8B. 55, E4
        add     edx, 4                                  ; 266F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2672 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2676 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2679 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 267C _ 83. 45, E4, 01
?_095:  mov     eax, dword [ebp-1CH]                    ; 2680 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2683 _ 3B. 45, 10
        jl      ?_094                                   ; 2686 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2688 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 268B _ 8B. 55, 10
        add     edx, 4                                  ; 268E _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2691 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2694 _ 89. 4C 90, 04
        jmp     ?_099                                   ; 2698 _ EB, 6C

?_096:  mov     eax, dword [ebp+8H]                     ; 269A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 269D _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 26A0 _ 89. 45, E4
        jmp     ?_098                                   ; 26A3 _ EB, 3A

?_097:  mov     eax, dword [ebp-1CH]                    ; 26A5 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 26A8 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 26AB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 26AE _ 8B. 55, E4
        add     edx, 4                                  ; 26B1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 26B4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26B8 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 26BB _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 26BE _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 26C2 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 26C5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 26C8 _ 8B. 45, 08
        add     edx, 4                                  ; 26CB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 26CE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 26D2 _ 8B. 55, E4
        add     edx, 1                                  ; 26D5 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 26D8 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 26DB _ 83. 6D, E4, 01
?_098:  mov     eax, dword [ebp-1CH]                    ; 26DF _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 26E2 _ 3B. 45, 10
        jge     ?_097                                   ; 26E5 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 26E7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26EA _ 8B. 55, 10
        add     edx, 4                                  ; 26ED _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 26F0 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 26F3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26FA _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 26FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2700 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2703 _ 89. 50, 10
?_099:  mov     eax, dword [ebp+0CH]                    ; 2706 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2709 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 270C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 270F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2712 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2715 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2718 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 271B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 271E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2721 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2724 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2727 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 272A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 272D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2730 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2733 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2737 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 273B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 273F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2743 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2747 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 274A _ 89. 04 24
        call    _sheet_refreshmap                       ; 274D _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2752 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2755 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2758 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 275B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 275E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2761 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2764 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2767 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 276A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 276D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2770 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2773 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2776 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2779 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 277C _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 277F _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 2783 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2786 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 278A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 278E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2792 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2796 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 279A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 279D _ 89. 04 24
        call    _sheet_refreshsub                       ; 27A0 _ E8, 000001E3
?_100:  nop                                             ; 27A5 _ 90
        add     esp, 60                                 ; 27A6 _ 83. C4, 3C
        pop     ebx                                     ; 27A9 _ 5B
        pop     esi                                     ; 27AA _ 5E
        pop     edi                                     ; 27AB _ 5F
        pop     ebp                                     ; 27AC _ 5D
        ret                                             ; 27AD _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 27AE _ 55
        mov     ebp, esp                                ; 27AF _ 89. E5
        push    edi                                     ; 27B1 _ 57
        push    esi                                     ; 27B2 _ 56
        push    ebx                                     ; 27B3 _ 53
        sub     esp, 60                                 ; 27B4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 27B7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27BA _ 8B. 40, 18
        test    eax, eax                                ; 27BD _ 85. C0
        js      ?_101                                   ; 27BF _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 27C1 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 27C4 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 27C7 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 27CA _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 27CD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27D0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 27D3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 27D6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27D9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27DC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 27DF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 27E2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27E5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27E8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 27EB _ 8B. 45, 14
        add     edx, eax                                ; 27EE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 27F0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27F3 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 27F6 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 27F9 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 27FC _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 27FF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2803 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2807 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 280B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 280F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2813 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2817 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 281A _ 89. 04 24
        call    _sheet_refreshsub                       ; 281D _ E8, 00000166
?_101:  mov     eax, 0                                  ; 2822 _ B8, 00000000
        add     esp, 60                                 ; 2827 _ 83. C4, 3C
        pop     ebx                                     ; 282A _ 5B
        pop     esi                                     ; 282B _ 5E
        pop     edi                                     ; 282C _ 5F
        pop     ebp                                     ; 282D _ 5D
        ret                                             ; 282E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 282F _ 55
        mov     ebp, esp                                ; 2830 _ 89. E5
        push    esi                                     ; 2832 _ 56
        push    ebx                                     ; 2833 _ 53
        sub     esp, 48                                 ; 2834 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2837 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 283A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 283D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2840 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2843 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2846 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2849 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 284C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 284F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2852 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2855 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2858 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 285B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 285E _ 8B. 40, 18
        test    eax, eax                                ; 2861 _ 85. C0
        js      ?_102                                   ; 2863 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2869 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 286C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 286F _ 8B. 45, F0
        add     edx, eax                                ; 2872 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2874 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2877 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 287A _ 8B. 45, F4
        add     eax, ecx                                ; 287D _ 01. C8
        mov     dword [esp+14H], 0                      ; 287F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2887 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 288B _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 288F _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2892 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2896 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2899 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 289D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28A0 _ 89. 04 24
        call    _sheet_refreshmap                       ; 28A3 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 28A8 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 28AB _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 28AE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 28B1 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 28B4 _ 8B. 45, 14
        add     edx, eax                                ; 28B7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28B9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 28BC _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 28BF _ 8B. 45, 10
        add     eax, ebx                                ; 28C2 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 28C4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 28C8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 28CC _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 28D0 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 28D3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 28D7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 28DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28E1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 28E4 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 28E9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 28EC _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 28EF _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 28F2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 28F5 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 28F8 _ 8B. 45, F0
        add     edx, eax                                ; 28FB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28FD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2900 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2903 _ 8B. 45, F4
        add     eax, ebx                                ; 2906 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2908 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 290C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2914 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2918 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 291C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 291F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2923 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2926 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 292A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 292D _ 89. 04 24
        call    _sheet_refreshsub                       ; 2930 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2935 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2938 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 293B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 293E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2941 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2944 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2947 _ 8B. 45, 14
        add     edx, eax                                ; 294A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 294C _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 294F _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2952 _ 8B. 45, 10
        add     eax, esi                                ; 2955 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2957 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 295B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 295F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2963 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2967 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 296A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 296E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2971 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2975 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2978 _ 89. 04 24
        call    _sheet_refreshsub                       ; 297B _ E8, 00000008
?_102:  nop                                             ; 2980 _ 90
        add     esp, 48                                 ; 2981 _ 83. C4, 30
        pop     ebx                                     ; 2984 _ 5B
        pop     esi                                     ; 2985 _ 5E
        pop     ebp                                     ; 2986 _ 5D
        ret                                             ; 2987 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2988 _ 55
        mov     ebp, esp                                ; 2989 _ 89. E5
        sub     esp, 48                                 ; 298B _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 298E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2991 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 2993 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2996 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2999 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 299C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 299F _ 83. 7D, 0C, 00
        jns     ?_103                                   ; 29A3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 29A5 _ C7. 45, 0C, 00000000
?_103:  cmp     dword [ebp+10H], 8                      ; 29AC _ 83. 7D, 10, 08
        jg      ?_104                                   ; 29B0 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 29B2 _ C7. 45, 10, 00000000
?_104:  mov     eax, dword [ebp+8H]                     ; 29B9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29BC _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 29BF _ 39. 45, 14
        jle     ?_105                                   ; 29C2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29C7 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 29CA _ 89. 45, 14
?_105:  mov     eax, dword [ebp+8H]                     ; 29CD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29D0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 29D3 _ 39. 45, 18
        jle     ?_106                                   ; 29D6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29D8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29DB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 29DE _ 89. 45, 18
?_106:  mov     eax, dword [ebp+1CH]                    ; 29E1 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 29E4 _ 89. 45, FC
        jmp     ?_113                                   ; 29E7 _ E9, 0000010F

?_107:  mov     eax, dword [ebp+8H]                     ; 29EC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 29EF _ 8B. 55, FC
        add     edx, 4                                  ; 29F2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29F5 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 29F9 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 29FC _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 29FF _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2A01 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2A04 _ 8B. 45, 08
        add     eax, 1044                               ; 2A07 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2A0C _ 8B. 55, E8
        sub     edx, eax                                ; 2A0F _ 29. C2
        mov     eax, edx                                ; 2A11 _ 89. D0
        sar     eax, 5                                  ; 2A13 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2A16 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2A19 _ C7. 45, F4, 00000000
        jmp     ?_112                                   ; 2A20 _ E9, 000000C3

?_108:  mov     eax, dword [ebp-18H]                    ; 2A25 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2A28 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2A2B _ 8B. 45, F4
        add     eax, edx                                ; 2A2E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2A30 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2A33 _ C7. 45, F8, 00000000
        jmp     ?_111                                   ; 2A3A _ E9, 00000096

?_109:  mov     eax, dword [ebp-18H]                    ; 2A3F _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2A42 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2A45 _ 8B. 45, F8
        add     eax, edx                                ; 2A48 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2A4A _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2A4D _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2A50 _ 3B. 45, D8
        jg      ?_110                                   ; 2A53 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2A55 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2A58 _ 3B. 45, 14
        jge     ?_110                                   ; 2A5B _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2A5D _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2A60 _ 3B. 45, DC
        jg      ?_110                                   ; 2A63 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2A65 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2A68 _ 3B. 45, 18
        jge     ?_110                                   ; 2A6B _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2A6D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2A70 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2A73 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2A77 _ 8B. 55, F8
        add     eax, edx                                ; 2A7A _ 01. D0
        mov     edx, eax                                ; 2A7C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2A7E _ 8B. 45, E4
        add     eax, edx                                ; 2A81 _ 01. D0
        movzx   eax, byte [eax]                         ; 2A83 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2A86 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2A89 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A8C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2A8F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2A93 _ 8B. 55, D8
        add     eax, edx                                ; 2A96 _ 01. D0
        mov     edx, eax                                ; 2A98 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2A9A _ 8B. 45, EC
        add     eax, edx                                ; 2A9D _ 01. D0
        movzx   eax, byte [eax]                         ; 2A9F _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 2AA2 _ 38. 45, E3
        jnz     ?_110                                   ; 2AA5 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2AA7 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2AAB _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2AAE _ 8B. 52, 14
        cmp     eax, edx                                ; 2AB1 _ 39. D0
        jz      ?_110                                   ; 2AB3 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2AB5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AB8 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2ABB _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2ABF _ 8B. 55, D8
        add     eax, edx                                ; 2AC2 _ 01. D0
        mov     edx, eax                                ; 2AC4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2AC6 _ 8B. 45, F0
        add     edx, eax                                ; 2AC9 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2ACB _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2ACF _ 88. 02
?_110:  add     dword [ebp-8H], 1                       ; 2AD1 _ 83. 45, F8, 01
?_111:  mov     eax, dword [ebp-18H]                    ; 2AD5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2AD8 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2ADB _ 39. 45, F8
        jl      ?_109                                   ; 2ADE _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2AE4 _ 83. 45, F4, 01
?_112:  mov     eax, dword [ebp-18H]                    ; 2AE8 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2AEB _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2AEE _ 39. 45, F4
        jl      ?_108                                   ; 2AF1 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2AF7 _ 83. 45, FC, 01
?_113:  mov     eax, dword [ebp-4H]                     ; 2AFB _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2AFE _ 3B. 45, 20
        jle     ?_107                                   ; 2B01 _ 0F 8E, FFFFFEE5
        nop                                             ; 2B07 _ 90
        leave                                           ; 2B08 _ C9
        ret                                             ; 2B09 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B0A _ 55
        mov     ebp, esp                                ; 2B0B _ 89. E5
        sub     esp, 64                                 ; 2B0D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B10 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B13 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2B16 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2B19 _ 83. 7D, 0C, 00
        jns     ?_114                                   ; 2B1D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B1F _ C7. 45, 0C, 00000000
?_114:  cmp     dword [ebp+10H], 0                      ; 2B26 _ 83. 7D, 10, 00
        jns     ?_115                                   ; 2B2A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2B2C _ C7. 45, 10, 00000000
?_115:  mov     eax, dword [ebp+8H]                     ; 2B33 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B36 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2B39 _ 39. 45, 14
        jle     ?_116                                   ; 2B3C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B3E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B41 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2B44 _ 89. 45, 14
?_116:  mov     eax, dword [ebp+8H]                     ; 2B47 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B4A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2B4D _ 39. 45, 18
        jle     ?_117                                   ; 2B50 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B52 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B55 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2B58 _ 89. 45, 18
?_117:  mov     eax, dword [ebp+1CH]                    ; 2B5B _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2B5E _ 89. 45, FC
        jmp     ?_128                                   ; 2B61 _ E9, 00000139

?_118:  mov     eax, dword [ebp+8H]                     ; 2B66 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B69 _ 8B. 55, FC
        add     edx, 4                                  ; 2B6C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2B6F _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 2B73 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2B76 _ 8B. 45, 08
        add     eax, 1044                               ; 2B79 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2B7E _ 8B. 55, DC
        sub     edx, eax                                ; 2B81 _ 29. C2
        mov     eax, edx                                ; 2B83 _ 89. D0
        sar     eax, 5                                  ; 2B85 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2B88 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2B8B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2B8E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2B90 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2B93 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2B96 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2B99 _ 8B. 55, 0C
        sub     edx, eax                                ; 2B9C _ 29. C2
        mov     eax, edx                                ; 2B9E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2BA0 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 2BA3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2BA6 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2BA9 _ 8B. 55, 10
        sub     edx, eax                                ; 2BAC _ 29. C2
        mov     eax, edx                                ; 2BAE _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2BB0 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 2BB3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2BB6 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2BB9 _ 8B. 55, 14
        sub     edx, eax                                ; 2BBC _ 29. C2
        mov     eax, edx                                ; 2BBE _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2BC0 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2BC3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2BC6 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2BC9 _ 8B. 55, 18
        sub     edx, eax                                ; 2BCC _ 29. C2
        mov     eax, edx                                ; 2BCE _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2BD0 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2BD3 _ 83. 7D, F0, 00
        jns     ?_119                                   ; 2BD7 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2BD9 _ C7. 45, F0, 00000000
?_119:  cmp     dword [ebp-14H], 0                      ; 2BE0 _ 83. 7D, EC, 00
        jns     ?_120                                   ; 2BE4 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2BE6 _ C7. 45, EC, 00000000
?_120:  mov     eax, dword [ebp-24H]                    ; 2BED _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2BF0 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2BF3 _ 39. 45, E8
        jle     ?_121                                   ; 2BF6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2BF8 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2BFB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2BFE _ 89. 45, E8
?_121:  mov     eax, dword [ebp-24H]                    ; 2C01 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C04 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2C07 _ 39. 45, E4
        jle     ?_122                                   ; 2C0A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2C0C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C0F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2C12 _ 89. 45, E4
?_122:  mov     eax, dword [ebp-14H]                    ; 2C15 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2C18 _ 89. 45, F4
        jmp     ?_127                                   ; 2C1B _ EB, 76

?_123:  mov     eax, dword [ebp-24H]                    ; 2C1D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2C20 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2C23 _ 8B. 45, F4
        add     eax, edx                                ; 2C26 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2C28 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C2B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2C2E _ 89. 45, F8
        jmp     ?_126                                   ; 2C31 _ EB, 54

?_124:  mov     eax, dword [ebp-24H]                    ; 2C33 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2C36 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2C39 _ 8B. 45, F8
        add     eax, edx                                ; 2C3C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2C3E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2C41 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C44 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2C47 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2C4B _ 8B. 55, F8
        add     eax, edx                                ; 2C4E _ 01. D0
        mov     edx, eax                                ; 2C50 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2C52 _ 8B. 45, D4
        add     eax, edx                                ; 2C55 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C57 _ 0F B6. 00
        movzx   eax, al                                 ; 2C5A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2C5D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2C60 _ 8B. 52, 14
        cmp     eax, edx                                ; 2C63 _ 39. D0
        jz      ?_125                                   ; 2C65 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2C67 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C6A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2C6D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2C71 _ 8B. 55, CC
        add     eax, edx                                ; 2C74 _ 01. D0
        mov     edx, eax                                ; 2C76 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2C78 _ 8B. 45, E0
        add     edx, eax                                ; 2C7B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2C7D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2C81 _ 88. 02
?_125:  add     dword [ebp-8H], 1                       ; 2C83 _ 83. 45, F8, 01
?_126:  mov     eax, dword [ebp-8H]                     ; 2C87 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2C8A _ 3B. 45, E8
        jl      ?_124                                   ; 2C8D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2C8F _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp-0CH]                    ; 2C93 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2C96 _ 3B. 45, E4
        jl      ?_123                                   ; 2C99 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2C9B _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2C9F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CA2 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2CA5 _ 39. 45, FC
        jle     ?_118                                   ; 2CA8 _ 0F 8E, FFFFFEB8
        nop                                             ; 2CAE _ 90
        leave                                           ; 2CAF _ C9
        ret                                             ; 2CB0 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2CB1 _ 90
        nop                                             ; 2CB2 _ 90
        nop                                             ; 2CB3 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2CB4 _ 55
        mov     ebp, esp                                ; 2CB5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CB7 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2CBA _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CC0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2CC3 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CCA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2CCD _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CD4 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2CD7 _ C7. 40, 0C, 00000000
        nop                                             ; 2CDE _ 90
        pop     ebp                                     ; 2CDF _ 5D
        ret                                             ; 2CE0 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2CE1 _ 55
        mov     ebp, esp                                ; 2CE2 _ 89. E5
        sub     esp, 16                                 ; 2CE4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2CE7 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2CEE _ C7. 45, FC, 00000000
        jmp     ?_130                                   ; 2CF5 _ EB, 14

?_129:  mov     eax, dword [ebp+8H]                     ; 2CF7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2CFA _ 8B. 55, FC
        add     edx, 2                                  ; 2CFD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D00 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2D04 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2D07 _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp+8H]                     ; 2D0B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D0E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2D10 _ 39. 45, FC
        jc      ?_129                                   ; 2D13 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2D15 _ 8B. 45, F8
        leave                                           ; 2D18 _ C9
        ret                                             ; 2D19 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2D1A _ 55
        mov     ebp, esp                                ; 2D1B _ 89. E5
        sub     esp, 16                                 ; 2D1D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2D20 _ C7. 45, FC, 00000000
        jmp     ?_134                                   ; 2D27 _ E9, 00000083

?_131:  mov     eax, dword [ebp+8H]                     ; 2D2C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D2F _ 8B. 55, FC
        add     edx, 2                                  ; 2D32 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D35 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2D39 _ 39. 45, 0C
        ja      ?_133                                   ; 2D3C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2D3E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D41 _ 8B. 55, FC
        add     edx, 2                                  ; 2D44 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D47 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2D4A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2D4D _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D50 _ 8B. 55, FC
        add     edx, 2                                  ; 2D53 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2D56 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2D59 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2D5C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D5F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D62 _ 8B. 55, FC
        add     edx, 2                                  ; 2D65 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2D68 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2D6B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D6E _ 8B. 55, FC
        add     edx, 2                                  ; 2D71 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D74 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2D78 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2D7B _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2D7E _ 8B. 4D, FC
        add     ecx, 2                                  ; 2D81 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2D84 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2D88 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D8B _ 8B. 55, FC
        add     edx, 2                                  ; 2D8E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D91 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2D95 _ 85. C0
        jnz     ?_132                                   ; 2D97 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2D99 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D9C _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D9E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DA1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DA4 _ 89. 10
?_132:  mov     eax, dword [ebp-8H]                     ; 2DA6 _ 8B. 45, F8
        jmp     ?_135                                   ; 2DA9 _ EB, 17

?_133:  add     dword [ebp-4H], 1                       ; 2DAB _ 83. 45, FC, 01
?_134:  mov     eax, dword [ebp+8H]                     ; 2DAF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DB2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2DB4 _ 39. 45, FC
        jc      ?_131                                   ; 2DB7 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2DBD _ B8, 00000000
?_135:  leave                                           ; 2DC2 _ C9
        ret                                             ; 2DC3 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2DC4 _ 55
        mov     ebp, esp                                ; 2DC5 _ 89. E5
        push    ebx                                     ; 2DC7 _ 53
        sub     esp, 16                                 ; 2DC8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2DCB _ C7. 45, F8, 00000000
        jmp     ?_137                                   ; 2DD2 _ EB, 15

?_136:  mov     eax, dword [ebp+8H]                     ; 2DD4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DD7 _ 8B. 55, F8
        add     edx, 2                                  ; 2DDA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2DDD _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2DE0 _ 39. 45, 0C
        jc      ?_138                                   ; 2DE3 _ 72, 10
        add     dword [ebp-8H], 1                       ; 2DE5 _ 83. 45, F8, 01
?_137:  mov     eax, dword [ebp+8H]                     ; 2DE9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DEC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2DEE _ 39. 45, F8
        jl      ?_136                                   ; 2DF1 _ 7C, E1
        jmp     ?_139                                   ; 2DF3 _ EB, 01

?_138:  nop                                             ; 2DF5 _ 90
?_139:  cmp     dword [ebp-8H], 0                       ; 2DF6 _ 83. 7D, F8, 00
        jle     ?_141                                   ; 2DFA _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2E00 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E03 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E06 _ 8B. 45, 08
        add     edx, 2                                  ; 2E09 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2E0C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2E0F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E12 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E15 _ 8B. 45, 08
        add     edx, 2                                  ; 2E18 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E1B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2E1F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2E21 _ 39. 45, 0C
        jne     ?_141                                   ; 2E24 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2E2A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E2D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        add     edx, 2                                  ; 2E33 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2E36 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2E3A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E3D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E40 _ 8B. 45, 10
        add     ecx, eax                                ; 2E43 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2E45 _ 8B. 45, 08
        add     edx, 2                                  ; 2E48 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E4B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E52 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2E54 _ 39. 45, F8
        jge     ?_140                                   ; 2E57 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2E59 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2E5C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2E5F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E62 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E65 _ 8B. 55, F8
        add     edx, 2                                  ; 2E68 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E6B _ 8B. 04 D0
        cmp     ecx, eax                                ; 2E6E _ 39. C1
        jnz     ?_140                                   ; 2E70 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2E72 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E75 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E78 _ 8B. 45, 08
        add     edx, 2                                  ; 2E7B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2E7E _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E82 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E85 _ 8B. 55, F8
        add     edx, 2                                  ; 2E88 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E8B _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2E8F _ 8B. 55, F8
        sub     edx, 1                                  ; 2E92 _ 83. EA, 01
        add     ecx, eax                                ; 2E95 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2E97 _ 8B. 45, 08
        add     edx, 2                                  ; 2E9A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E9D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EA1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EA4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EA6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EA9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2EAC _ 89. 10
?_140:  mov     eax, 0                                  ; 2EAE _ B8, 00000000
        jmp     ?_147                                   ; 2EB3 _ E9, 0000011C

?_141:  mov     eax, dword [ebp+8H]                     ; 2EB8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EBB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2EBD _ 39. 45, F8
        jge     ?_142                                   ; 2EC0 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2EC2 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2EC5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EC8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2ECB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2ECE _ 8B. 55, F8
        add     edx, 2                                  ; 2ED1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2ED4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2ED7 _ 39. C1
        jnz     ?_142                                   ; 2ED9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EDE _ 8B. 55, F8
        add     edx, 2                                  ; 2EE1 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2EE4 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2EE7 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2EEA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EED _ 8B. 55, F8
        add     edx, 2                                  ; 2EF0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2EF3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2EF7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EFA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EFD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F00 _ 8B. 55, F8
        add     edx, 2                                  ; 2F03 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F06 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2F0A _ B8, 00000000
        jmp     ?_147                                   ; 2F0F _ E9, 000000C0

?_142:  mov     eax, dword [ebp+8H]                     ; 2F14 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F17 _ 8B. 00
        cmp     eax, 4095                               ; 2F19 _ 3D, 00000FFF
        jg      ?_146                                   ; 2F1E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F27 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2F29 _ 89. 45, F4
        jmp     ?_144                                   ; 2F2C _ EB, 28

?_143:  mov     eax, dword [ebp-0CH]                    ; 2F2E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F31 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2F34 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2F37 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2F3A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2F3D _ 8B. 45, 08
        add     edx, 2                                  ; 2F40 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2F43 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2F46 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2F48 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2F4B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2F4E _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2F52 _ 83. 6D, F4, 01
?_144:  mov     eax, dword [ebp-0CH]                    ; 2F56 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2F59 _ 3B. 45, F8
        jg      ?_143                                   ; 2F5C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2F5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F61 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2F63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F66 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F69 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F6B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F6E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F74 _ 8B. 00
        cmp     edx, eax                                ; 2F76 _ 39. C2
        jge     ?_145                                   ; 2F78 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2F7A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F7D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F7F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F82 _ 89. 50, 04
?_145:  mov     eax, dword [ebp+8H]                     ; 2F85 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F88 _ 8B. 55, F8
        add     edx, 2                                  ; 2F8B _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2F8E _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2F91 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2F94 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F97 _ 8B. 55, F8
        add     edx, 2                                  ; 2F9A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2F9D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2FA0 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2FA4 _ B8, 00000000
        jmp     ?_147                                   ; 2FA9 _ EB, 29

?_146:  mov     eax, dword [ebp+8H]                     ; 2FAB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2FAE _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2FB1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FB4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2FB7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FBA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FBD _ 8B. 40, 08
        mov     edx, eax                                ; 2FC0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2FC2 _ 8B. 45, 10
        add     eax, edx                                ; 2FC5 _ 01. D0
        mov     edx, eax                                ; 2FC7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FC9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2FCC _ 89. 50, 08
        mov     eax, 4294967295                         ; 2FCF _ B8, FFFFFFFF
?_147:  add     esp, 16                                 ; 2FD4 _ 83. C4, 10
        pop     ebx                                     ; 2FD7 _ 5B
        pop     ebp                                     ; 2FD8 _ 5D
        ret                                             ; 2FD9 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2FDA _ 55
        mov     ebp, esp                                ; 2FDB _ 89. E5
        sub     esp, 24                                 ; 2FDD _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FE0 _ 8B. 45, 0C
        add     eax, 4095                               ; 2FE3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2FE8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2FED _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2FF0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FFA _ 89. 04 24
        call    _memman_alloc                           ; 2FFD _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 3002 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3005 _ 8B. 45, FC
        leave                                           ; 3008 _ C9
        ret                                             ; 3009 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 300A _ 55
        mov     ebp, esp                                ; 300B _ 89. E5
        sub     esp, 28                                 ; 300D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3010 _ 8B. 45, 10
        add     eax, 4095                               ; 3013 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3018 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 301D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3020 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3023 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3027 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 302A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 302E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3031 _ 89. 04 24
        call    _memman_free                            ; 3034 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 3039 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 303C _ 8B. 45, FC
        leave                                           ; 303F _ C9
        ret                                             ; 3040 _ C3
; _memman_free_4k End of function

        nop                                             ; 3041 _ 90
        nop                                             ; 3042 _ 90
        nop                                             ; 3043 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3044 _ 55
        mov     ebp, esp                                ; 3045 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3047 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 304A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 304D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3050 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3053 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3056 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3058 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 305B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 305E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3061 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3064 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 306B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 306E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3075 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3078 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 307F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3082 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3085 _ 89. 50, 18
        nop                                             ; 3088 _ 90
        pop     ebp                                     ; 3089 _ 5D
        ret                                             ; 308A _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 308B _ 55
        mov     ebp, esp                                ; 308C _ 89. E5
        sub     esp, 40                                 ; 308E _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 3091 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3094 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3097 _ 83. 7D, 08, 00
        jnz     ?_148                                   ; 309B _ 75, 0A
        mov     eax, 4294967295                         ; 309D _ B8, FFFFFFFF
        jmp     ?_152                                   ; 30A2 _ E9, 00000098

?_148:  mov     eax, dword [ebp+8H]                     ; 30A7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30AA _ 8B. 40, 10
        test    eax, eax                                ; 30AD _ 85. C0
        jnz     ?_149                                   ; 30AF _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 30B1 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 30B4 _ 8B. 40, 14
        or      eax, 01H                                ; 30B7 _ 83. C8, 01
        mov     edx, eax                                ; 30BA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 30BC _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 30BF _ 89. 50, 14
        mov     eax, 4294967295                         ; 30C2 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 30C7 _ EB, 76

?_149:  mov     eax, dword [ebp+8H]                     ; 30C9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 30CC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 30CE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30D1 _ 8B. 40, 04
        add     edx, eax                                ; 30D4 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 30D6 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 30DA _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 30DC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30DF _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 30E2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30E5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30E8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30EB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30EE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30F1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30F4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 30F7 _ 39. C2
        jnz     ?_150                                   ; 30F9 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 30FB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30FE _ C7. 40, 04, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 3105 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3108 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 310B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 310E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3111 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3114 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3117 _ 8B. 40, 18
        test    eax, eax                                ; 311A _ 85. C0
        jz      ?_151                                   ; 311C _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 311E _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3121 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3124 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3127 _ 83. F8, 02
        jz      ?_151                                   ; 312A _ 74, 0E
        mov     eax, dword [ebp+8H]                     ; 312C _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 312F _ 8B. 40, 18
        mov     dword [esp], eax                        ; 3132 _ 89. 04 24
        call    _task_run                               ; 3135 _ E8, 00000000(rel)
?_151:  mov     eax, 0                                  ; 313A _ B8, 00000000
?_152:  leave                                           ; 313F _ C9
        ret                                             ; 3140 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3141 _ 55
        mov     ebp, esp                                ; 3142 _ 89. E5
        sub     esp, 16                                 ; 3144 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3147 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 314A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 314D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3150 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3153 _ 39. C2
        jnz     ?_153                                   ; 3155 _ 75, 07
        mov     eax, 4294967295                         ; 3157 _ B8, FFFFFFFF
        jmp     ?_155                                   ; 315C _ EB, 51

?_153:  mov     eax, dword [ebp+8H]                     ; 315E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3161 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3163 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3166 _ 8B. 40, 08
        add     eax, edx                                ; 3169 _ 01. D0
        movzx   eax, byte [eax]                         ; 316B _ 0F B6. 00
        movzx   eax, al                                 ; 316E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3171 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3174 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3177 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 317A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 317D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3180 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3183 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3186 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3189 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 318C _ 8B. 40, 0C
        cmp     edx, eax                                ; 318F _ 39. C2
        jnz     ?_154                                   ; 3191 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3193 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3196 _ C7. 40, 08, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 319D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31A0 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 31A3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31A6 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 31A9 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 31AC _ 8B. 45, FC
?_155:  leave                                           ; 31AF _ C9
        ret                                             ; 31B0 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 31B1 _ 55
        mov     ebp, esp                                ; 31B2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31B4 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 31B7 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 31BA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31BD _ 8B. 40, 10
        sub     edx, eax                                ; 31C0 _ 29. C2
        mov     eax, edx                                ; 31C2 _ 89. D0
        pop     ebp                                     ; 31C4 _ 5D
        ret                                             ; 31C5 _ C3
; _fifo8_status End of function

        nop                                             ; 31C6 _ 90
        nop                                             ; 31C7 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 31C8 _ 55
        mov     ebp, esp                                ; 31C9 _ 89. E5
        sub     esp, 40                                 ; 31CB _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 31CE _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 31D6 _ C7. 04 24, 00000043
        call    _io_out8                                ; 31DD _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 31E2 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 31EA _ C7. 04 24, 00000040
        call    _io_out8                                ; 31F1 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 31F6 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 31FE _ C7. 04 24, 00000040
        call    _io_out8                                ; 3205 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 320A _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3214 _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 321B _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 321D _ 8B. 45, F4
        shl     eax, 4                                  ; 3220 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3223 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3228 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 322E _ 8B. 45, F4
        shl     eax, 4                                  ; 3231 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 3234 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3239 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 323F _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 3243 _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 324A _ 7E, D1
        nop                                             ; 324C _ 90
        leave                                           ; 324D _ C9
        ret                                             ; 324E _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 324F _ 55
        mov     ebp, esp                                ; 3250 _ 89. E5
        sub     esp, 16                                 ; 3252 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3255 _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 325C _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 325E _ 8B. 45, FC
        shl     eax, 4                                  ; 3261 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3264 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3269 _ 8B. 00
        test    eax, eax                                ; 326B _ 85. C0
        jnz     ?_159                                   ; 326D _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 326F _ 8B. 45, FC
        shl     eax, 4                                  ; 3272 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3275 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 327A _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3280 _ 8B. 45, FC
        shl     eax, 4                                  ; 3283 _ C1. E0, 04
        add     eax, _timerctl                               ; 3286 _ 05, 00000000(d)
        add     eax, 4                                  ; 328B _ 83. C0, 04
        jmp     ?_161                                   ; 328E _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 3290 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 3294 _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 329B _ 7E, C1
        mov     eax, 0                                  ; 329D _ B8, 00000000
?_161:  leave                                           ; 32A2 _ C9
        ret                                             ; 32A3 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 32A4 _ 55
        mov     ebp, esp                                ; 32A5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32A7 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 32AA _ C7. 40, 04, 00000000
        nop                                             ; 32B1 _ 90
        pop     ebp                                     ; 32B2 _ 5D
        ret                                             ; 32B3 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 32B4 _ 55
        mov     ebp, esp                                ; 32B5 _ 89. E5
        sub     esp, 4                                  ; 32B7 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 32BA _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 32BD _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 32C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 32C3 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 32C6 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 32C9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 32CC _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 32D0 _ 88. 42, 0C
        nop                                             ; 32D3 _ 90
        leave                                           ; 32D4 _ C9
        ret                                             ; 32D5 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 32D6 _ 55
        mov     ebp, esp                                ; 32D7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32D9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 32DC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 32DF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 32E1 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 32E4 _ C7. 40, 04, 00000002
        nop                                             ; 32EB _ 90
        pop     ebp                                     ; 32EC _ 5D
        ret                                             ; 32ED _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 32EE _ 55
        mov     ebp, esp                                ; 32EF _ 89. E5
        sub     esp, 40                                 ; 32F1 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 32F4 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 32FC _ C7. 04 24, 00000020
        call    _io_out8                                ; 3303 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3308 _ A1, 00000000(d)
        add     eax, 1                                  ; 330D _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3310 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 3315 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3319 _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3320 _ E9, 000000AA

?_162:  mov     eax, dword [ebp-0CH]                    ; 3325 _ 8B. 45, F4
        shl     eax, 4                                  ; 3328 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 332B _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3330 _ 8B. 00
        cmp     eax, 2                                  ; 3332 _ 83. F8, 02
        jne     ?_163                                   ; 3335 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 333B _ 8B. 45, F4
        shl     eax, 4                                  ; 333E _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3341 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3346 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3348 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 334B _ 8B. 45, F4
        shl     eax, 4                                  ; 334E _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3351 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 3356 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3358 _ 8B. 45, F4
        shl     eax, 4                                  ; 335B _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 335E _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3363 _ 8B. 00
        test    eax, eax                                ; 3365 _ 85. C0
        jnz     ?_163                                   ; 3367 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 3369 _ 8B. 45, F4
        shl     eax, 4                                  ; 336C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 336F _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3374 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 337A _ 8B. 45, F4
        shl     eax, 4                                  ; 337D _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3380 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3385 _ 0F B6. 00
        movzx   eax, al                                 ; 3388 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 338B _ 8B. 55, F4
        shl     edx, 4                                  ; 338E _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3391 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 3397 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3399 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 339D _ 89. 14 24
        call    _fifo8_put                              ; 33A0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 33A5 _ 8B. 45, F4
        shl     eax, 4                                  ; 33A8 _ C1. E0, 04
        add     eax, _timerctl                               ; 33AB _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 33B0 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 33B3 _ A1, 00000000(d)
        cmp     edx, eax                                ; 33B8 _ 39. C2
        jnz     ?_163                                   ; 33BA _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 33BC _ C6. 45, F3, 01
?_163:  cmp     byte [ebp-0DH], 0                       ; 33C0 _ 80. 7D, F3, 00
        jz      ?_164                                   ; 33C4 _ 74, 05
        call    _task_switch                            ; 33C6 _ E8, 00000000(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 33CB _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 33CF _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 33D6 _ 0F 8E, FFFFFF49
        nop                                             ; 33DC _ 90
        leave                                           ; 33DD _ C9
        ret                                             ; 33DE _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 33DF _ B8, 00000000(d)
        ret                                             ; 33E4 _ C3
; _getTimerController End of function

        nop                                             ; 33E5 _ 90
        nop                                             ; 33E6 _ 90
        nop                                             ; 33E7 _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 33E8 _ 55
        mov     ebp, esp                                ; 33E9 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 33EB _ 81. 7D, 0C, 000FFFFF
        jbe     ?_166                                   ; 33F2 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 33F4 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 33FB _ 8B. 45, 0C
        shr     eax, 12                                 ; 33FE _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3401 _ 89. 45, 0C
?_166:  mov     eax, dword [ebp+0CH]                    ; 3404 _ 8B. 45, 0C
        mov     edx, eax                                ; 3407 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3409 _ 8B. 45, 08
        mov     word [eax], dx                          ; 340C _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 340F _ 8B. 45, 10
        mov     edx, eax                                ; 3412 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3414 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3417 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 341B _ 8B. 45, 10
        sar     eax, 16                                 ; 341E _ C1. F8, 10
        mov     edx, eax                                ; 3421 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3423 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3426 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3429 _ 8B. 45, 14
        mov     edx, eax                                ; 342C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 342E _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3431 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3434 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3437 _ C1. E8, 10
        and     eax, 0FH                                ; 343A _ 83. E0, 0F
        mov     edx, eax                                ; 343D _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 343F _ 8B. 45, 14
        sar     eax, 8                                  ; 3442 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3445 _ 83. E0, F0
        or      eax, edx                                ; 3448 _ 09. D0
        mov     edx, eax                                ; 344A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 344C _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 344F _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3452 _ 8B. 45, 10
        shr     eax, 24                                 ; 3455 _ C1. E8, 18
        mov     edx, eax                                ; 3458 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 345A _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 345D _ 88. 50, 07
        nop                                             ; 3460 _ 90
        pop     ebp                                     ; 3461 _ 5D
        ret                                             ; 3462 _ C3

_task_init:; Function begin
        push    ebp                                     ; 3463 _ 55
        mov     ebp, esp                                ; 3464 _ 89. E5
        sub     esp, 40                                 ; 3466 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3469 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 346E _ 89. 45, F0
        mov     dword [esp+4H], 588                     ; 3471 _ C7. 44 24, 04, 0000024C
        mov     eax, dword [ebp+8H]                     ; 3479 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 347C _ 89. 04 24
        call    _memman_alloc_4k                        ; 347F _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3484 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3489 _ C7. 45, F4, 00000000
        jmp     ?_168                                   ; 3490 _ EB, 7F

?_167:  mov     edx, dword [_taskctl]                   ; 3492 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3498 _ 8B. 45, F4
        imul    eax, eax, 112                           ; 349B _ 6B. C0, 70
        add     eax, edx                                ; 349E _ 01. D0
        add     eax, 32                                 ; 34A0 _ 83. C0, 20
        mov     dword [eax], 0                          ; 34A3 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 34A9 _ 8B. 45, F4
        add     eax, 7                                  ; 34AC _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 34AF _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 34B5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 34BC _ 8B. 45, F4
        imul    eax, eax, 112                           ; 34BF _ 6B. C0, 70
        add     eax, ecx                                ; 34C2 _ 01. C8
        add     eax, 28                                 ; 34C4 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 34C7 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 34C9 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 34CF _ 8B. 45, F4
        imul    eax, eax, 112                           ; 34D2 _ 6B. C0, 70
        add     eax, 16                                 ; 34D5 _ 83. C0, 10
        add     eax, edx                                ; 34D8 _ 01. D0
        add     eax, 20                                 ; 34DA _ 83. C0, 14
        mov     ecx, eax                                ; 34DD _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 34DF _ 8B. 45, F4
        add     eax, 7                                  ; 34E2 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 34E5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 34EC _ 8B. 45, F0
        add     eax, edx                                ; 34EF _ 01. D0
        mov     dword [esp+0CH], 137                    ; 34F1 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 34F9 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 34FD _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3505 _ 89. 04 24
        call    _set_segmdesc                           ; 3508 _ E8, FFFFFEDB
        add     dword [ebp-0CH], 1                      ; 350D _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 4                      ; 3511 _ 83. 7D, F4, 04
        jle     ?_167                                   ; 3515 _ 0F 8E, FFFFFF77
        call    _task_alloc                             ; 351B _ E8, 00000060
        mov     dword [ebp-14H], eax                    ; 3520 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3523 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3526 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 352D _ A1, 00000004(d)
        mov     dword [eax], 1                          ; 3532 _ C7. 00, 00000001
        mov     eax, dword [_taskctl]                   ; 3538 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 353D _ C7. 40, 04, 00000000
        mov     eax, dword [_taskctl]                   ; 3544 _ A1, 00000004(d)
        mov     edx, dword [ebp-14H]                    ; 3549 _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 354C _ 89. 50, 08
        mov     eax, dword [ebp-14H]                    ; 354F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3552 _ 8B. 00
        mov     dword [esp], eax                        ; 3554 _ 89. 04 24
        call    _load_tr                                ; 3557 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 355C _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3561 _ A3, 00000000(d)
        mov     eax, dword [_task_timer]                       ; 3566 _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 356B _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 3573 _ 89. 04 24
        call    _timer_settime                          ; 3576 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 357B _ 8B. 45, EC
        leave                                           ; 357E _ C9
        ret                                             ; 357F _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 3580 _ 55
        mov     ebp, esp                                ; 3581 _ 89. E5
        sub     esp, 16                                 ; 3583 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3586 _ C7. 45, FC, 00000000
        jmp     ?_171                                   ; 358D _ E9, 000000E2

?_169:  mov     edx, dword [_taskctl]                   ; 3592 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3598 _ 8B. 45, FC
        imul    eax, eax, 112                           ; 359B _ 6B. C0, 70
        add     eax, edx                                ; 359E _ 01. D0
        add     eax, 32                                 ; 35A0 _ 83. C0, 20
        mov     eax, dword [eax]                        ; 35A3 _ 8B. 00
        test    eax, eax                                ; 35A5 _ 85. C0
        jne     ?_170                                   ; 35A7 _ 0F 85, 000000C3
        mov     edx, dword [_taskctl]                   ; 35AD _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 35B3 _ 8B. 45, FC
        imul    eax, eax, 112                           ; 35B6 _ 6B. C0, 70
        add     eax, 16                                 ; 35B9 _ 83. C0, 10
        add     eax, edx                                ; 35BC _ 01. D0
        add     eax, 12                                 ; 35BE _ 83. C0, 0C
        mov     dword [ebp-8H], eax                     ; 35C1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 35C4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 35C7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 35CE _ 8B. 45, F8
        mov     dword [eax+2CH], 514                    ; 35D1 _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-8H]                     ; 35D8 _ 8B. 45, F8
        mov     dword [eax+30H], 0                      ; 35DB _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-8H]                     ; 35E2 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 35E5 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 35EC _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 35EF _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 35F6 _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 35F9 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3600 _ 8B. 45, F8
        mov     dword [eax+44H], 0                      ; 3603 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 360A _ 8B. 45, FC
        add     eax, 1                                  ; 360D _ 83. C0, 01
        shl     eax, 9                                  ; 3610 _ C1. E0, 09
        mov     edx, eax                                ; 3613 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3615 _ 8B. 45, F8
        mov     dword [eax+40H], edx                    ; 3618 _ 89. 50, 40
        mov     eax, dword [ebp-8H]                     ; 361B _ 8B. 45, F8
        mov     dword [eax+48H], 0                      ; 361E _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-8H]                     ; 3625 _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 3628 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 362F _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 3632 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3639 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 363C _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3643 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 3646 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 364D _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 3650 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 3657 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 365A _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 3661 _ 8B. 45, F8
        mov     dword [eax+6CH], 1073741824             ; 3664 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-8H]                     ; 366B _ 8B. 45, F8
        jmp     ?_172                                   ; 366E _ EB, 13

?_170:  add     dword [ebp-4H], 1                       ; 3670 _ 83. 45, FC, 01
?_171:  cmp     dword [ebp-4H], 4                       ; 3674 _ 83. 7D, FC, 04
        jle     ?_169                                   ; 3678 _ 0F 8E, FFFFFF14
        mov     eax, 0                                  ; 367E _ B8, 00000000
?_172:  leave                                           ; 3683 _ C9
        ret                                             ; 3684 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 3685 _ 55
        mov     ebp, esp                                ; 3686 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3688 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 368B _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 3692 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3697 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx]                        ; 369D _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 369F _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 36A2 _ 89. 4C 90, 08
        mov     eax, dword [_taskctl]                   ; 36A6 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 36AB _ 8B. 10
        add     edx, 1                                  ; 36AD _ 83. C2, 01
        mov     dword [eax], edx                        ; 36B0 _ 89. 10
        nop                                             ; 36B2 _ 90
        pop     ebp                                     ; 36B3 _ 5D
        ret                                             ; 36B4 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 36B5 _ 55
        mov     ebp, esp                                ; 36B6 _ 89. E5
        sub     esp, 24                                 ; 36B8 _ 83. EC, 18
        mov     eax, dword [_task_timer]                       ; 36BB _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 36C0 _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 36C8 _ 89. 04 24
        call    _timer_settime                          ; 36CB _ E8, 00000000(rel)
        mov     eax, dword [_taskctl]                   ; 36D0 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 36D5 _ 8B. 00
        cmp     eax, 1                                  ; 36D7 _ 83. F8, 01
        jle     ?_174                                   ; 36DA _ 7E, 52
        mov     eax, dword [_taskctl]                   ; 36DC _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 36E1 _ 8B. 50, 04
        add     edx, 1                                  ; 36E4 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 36E7 _ 89. 50, 04
        mov     eax, dword [_taskctl]                   ; 36EA _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 36EF _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 36F2 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 36F7 _ 8B. 00
        cmp     edx, eax                                ; 36F9 _ 39. C2
        jnz     ?_173                                   ; 36FB _ 75, 0C
        mov     eax, dword [_taskctl]                   ; 36FD _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3702 _ C7. 40, 04, 00000000
?_173:  mov     eax, dword [_taskctl]                   ; 3709 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 370E _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3714 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3717 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 371B _ 8B. 00
        mov     dword [esp+4H], eax                     ; 371D _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3721 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3728 _ E8, 00000000(rel)
        nop                                             ; 372D _ 90
?_174:  nop                                             ; 372E _ 90
        leave                                           ; 372F _ C9
        ret                                             ; 3730 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 3731 _ 55
        mov     ebp, esp                                ; 3732 _ 89. E5
        sub     esp, 40                                 ; 3734 _ 83. EC, 28
        mov     byte [ebp-0DH], 0                       ; 3737 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 373B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 373E _ 8B. 40, 04
        cmp     eax, 2                                  ; 3741 _ 83. F8, 02
        jne     ?_183                                   ; 3744 _ 0F 85, 000000F1
        mov     eax, dword [_taskctl]                   ; 374A _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 374F _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3755 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3758 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 375C _ 39. 45, 08
        jnz     ?_175                                   ; 375F _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3761 _ C6. 45, F3, 01
?_175:  mov     dword [ebp-0CH], 0                      ; 3765 _ C7. 45, F4, 00000000
        jmp     ?_177                                   ; 376C _ EB, 15

?_176:  mov     eax, dword [_taskctl]                   ; 376E _ A1, 00000004(d)
        mov     edx, dword [ebp-0CH]                    ; 3773 _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 3776 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 377A _ 39. 45, 08
        jz      ?_178                                   ; 377D _ 74, 12
        add     dword [ebp-0CH], 1                      ; 377F _ 83. 45, F4, 01
?_177:  mov     eax, dword [_taskctl]                   ; 3783 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3788 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 378A _ 39. 45, F4
        jl      ?_176                                   ; 378D _ 7C, DF
        jmp     ?_179                                   ; 378F _ EB, 01

?_178:  nop                                             ; 3791 _ 90
?_179:  mov     eax, dword [_taskctl]                   ; 3792 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3797 _ 8B. 10
        sub     edx, 1                                  ; 3799 _ 83. EA, 01
        mov     dword [eax], edx                        ; 379C _ 89. 10
        mov     eax, dword [_taskctl]                   ; 379E _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 37A3 _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 37A6 _ 39. 45, F4
        jge     ?_181                                   ; 37A9 _ 7D, 30
        mov     eax, dword [_taskctl]                   ; 37AB _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 37B0 _ 8B. 50, 04
        sub     edx, 1                                  ; 37B3 _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 37B6 _ 89. 50, 04
        jmp     ?_181                                   ; 37B9 _ EB, 20

?_180:  mov     edx, dword [_taskctl]                   ; 37BB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 37C1 _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 37C4 _ 8D. 48, 01
        mov     eax, dword [_taskctl]                   ; 37C7 _ A1, 00000004(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 37CC _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 37D0 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 37D3 _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 37D7 _ 83. 45, F4, 01
?_181:  mov     eax, dword [_taskctl]                   ; 37DB _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 37E0 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 37E2 _ 39. 45, F4
        jl      ?_180                                   ; 37E5 _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 37E7 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 37EA _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 37F1 _ 80. 7D, F3, 00
        jz      ?_183                                   ; 37F5 _ 74, 44
        mov     eax, dword [_taskctl]                   ; 37F7 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 37FC _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 37FF _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3804 _ 8B. 00
        cmp     edx, eax                                ; 3806 _ 39. C2
        jl      ?_182                                   ; 3808 _ 7C, 0C
        mov     eax, dword [_taskctl]                   ; 380A _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 380F _ C7. 40, 04, 00000000
?_182:  mov     eax, dword [_taskctl]                   ; 3816 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 381B _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3821 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3824 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3828 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 382A _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 382E _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3835 _ E8, 00000000(rel)
        nop                                             ; 383A _ 90
?_183:  nop                                             ; 383B _ 90
        leave                                           ; 383C _ C9
        ret                                             ; 383D _ C3
; _task_sleep End of function

        nop                                             ; 383E _ 90
        nop                                             ; 383F _ 90



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

?_184:  db 00H                                          ; 0076 _ .

?_185:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2325:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2372:                                           ; byte
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

_closebtn.2482:                                         ; byte
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



?_186:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_187:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_188:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_189:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_190:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_191:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_192:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_193:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_194:                                                  ; byte
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

?_195:  resw    1                                       ; 0004

?_196:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

?_197:  resd    1                                       ; 0020

_mouseinfo:                                             ; byte
        resb    28                                      ; 0024

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    12                                      ; 00E0

?_198:  resd    1                                       ; 00EC

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

_task_a.2259:                                           ; dword
        resd    1                                       ; 0264

_task_b.2262:                                           ; dword
        resd    6                                       ; 0268

_tss_a.2258:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2257:                                            ; byte
        resb    104                                     ; 0300

_str.2420:                                              ; byte
        resb    1                                       ; 0368

?_199:  resb    9                                       ; 0369

?_200:  resb    14                                      ; 0372

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


