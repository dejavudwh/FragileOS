; Disassembly of file: ckernel.o
; Fri Aug  9 22:58:39 2019
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
        call    _initBootInfo                           ; 000F _ E8, 0000111D
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_196]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000011C(d)
        movzx   eax, word [?_197]                       ; 0029 _ 0F B7. 05, 00000006(d)
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
        call    _init_palette                           ; 0149 _ E8, 000010A6
        call    _init_keyboard                          ; 014E _ E8, 0000160F
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
        call    _init_screen8                           ; 027F _ E8, 000009E5
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 000011F8
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
        mov     dword [esp+4H], ?_187                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 00001854
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
        call    _enable_mouse                           ; 0388 _ E8, 00001410
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 0392 _ 89. 45, C4
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 039A _ 89. 45, C0
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2260], eax               ; 03AA _ A3, 00000264(d)
        mov     eax, dword [_task_a.2260]               ; 03AF _ A1, 00000264(d)
        mov     dword [?_198], eax                      ; 03B4 _ A3, 00000020(d)
        mov     byte [ebp-62H], 116                     ; 03B9 _ C6. 45, 9E, 74
        mov     byte [ebp-61H], 97                      ; 03BD _ C6. 45, 9F, 61
        mov     byte [ebp-60H], 115                     ; 03C1 _ C6. 45, A0, 73
        mov     byte [ebp-5FH], 107                     ; 03C5 _ C6. 45, A1, 6B
        mov     byte [ebp-5EH], 0                       ; 03C9 _ C6. 45, A2, 00
        mov     byte [ebp-5DH], 0                       ; 03CD _ C6. 45, A3, 00
        mov     dword [ebp-14H], 0                      ; 03D1 _ C7. 45, EC, 00000000
        mov     dword [ebp-14H], 0                      ; 03D8 _ C7. 45, EC, 00000000
        jmp     ?_002                                   ; 03DF _ E9, 0000019A

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
        call    _make_window8                           ; 046B _ E8, 00001800
        call    _task_alloc                             ; 0470 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0475 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0477 _ 8B. 45, EC
        mov     dword [_task_b.2263+eax*4], edx         ; 047A _ 89. 14 85, 00000268(d)
        mov     eax, dword [ebp-14H]                    ; 0481 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0484 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+6CH], 0                      ; 048B _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0492 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0495 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+70H], 1073741824             ; 049C _ C7. 40, 70, 40000000
        mov     eax, dword [ebp-3CH]                    ; 04A3 _ 8B. 45, C4
        neg     eax                                     ; 04A6 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 04A8 _ 8D. 90, 00000A7D(d)
        mov     eax, dword [ebp-14H]                    ; 04AE _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 04B1 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+2CH], edx                    ; 04B8 _ 89. 50, 2C
        mov     eax, dword [ebp-14H]                    ; 04BB _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 04BE _ 8B. 04 85, 00000268(d)
        mov     dword [eax+54H], 0                      ; 04C5 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-14H]                    ; 04CC _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 04CF _ 8B. 04 85, 00000268(d)
        mov     dword [eax+58H], 8                      ; 04D6 _ C7. 40, 58, 00000008
        mov     eax, dword [ebp-14H]                    ; 04DD _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 04E0 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+5CH], 32                     ; 04E7 _ C7. 40, 5C, 00000020
        mov     eax, dword [ebp-14H]                    ; 04EE _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 04F1 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+60H], 24                     ; 04F8 _ C7. 40, 60, 00000018
        mov     eax, dword [ebp-14H]                    ; 04FF _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0502 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+64H], 0                      ; 0509 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-14H]                    ; 0510 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0513 _ 8B. 04 85, 00000268(d)
        mov     dword [eax+68H], 16                     ; 051A _ C7. 40, 68, 00000010
        mov     eax, dword [ebp-14H]                    ; 0521 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0524 _ 8B. 04 85, 00000268(d)
        mov     edx, dword [eax+44H]                    ; 052B _ 8B. 50, 44
        mov     eax, dword [ebp-14H]                    ; 052E _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0531 _ 8B. 04 85, 00000268(d)
        sub     edx, 8                                  ; 0538 _ 83. EA, 08
        mov     dword [eax+44H], edx                    ; 053B _ 89. 50, 44
        mov     eax, dword [ebp-14H]                    ; 053E _ 8B. 45, EC
        mov     edx, dword [ebp+eax*4-5CH]              ; 0541 _ 8B. 54 85, A4
        mov     eax, dword [ebp-14H]                    ; 0545 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0548 _ 8B. 04 85, 00000268(d)
        mov     eax, dword [eax+44H]                    ; 054F _ 8B. 40, 44
        add     eax, 4                                  ; 0552 _ 83. C0, 04
        mov     dword [eax], edx                        ; 0555 _ 89. 10
        mov     eax, dword [ebp-14H]                    ; 0557 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 055A _ 8D. 50, 01
        mov     eax, edx                                ; 055D _ 89. D0
        shl     eax, 2                                  ; 055F _ C1. E0, 02
        add     edx, eax                                ; 0562 _ 01. C2
        mov     eax, dword [ebp-14H]                    ; 0564 _ 8B. 45, EC
        mov     eax, dword [_task_b.2263+eax*4]         ; 0567 _ 8B. 04 85, 00000268(d)
        mov     dword [esp+4H], edx                     ; 056E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0572 _ 89. 04 24
        call    _task_run                               ; 0575 _ E8, 00000000(rel)
        add     dword [ebp-14H], 1                      ; 057A _ 83. 45, EC, 01
?_002:  cmp     dword [ebp-14H], 1                      ; 057E _ 83. 7D, EC, 01
        jle     ?_001                                   ; 0582 _ 0F 8E, FFFFFE5C
        mov     edx, dword [ebp-5CH]                    ; 0588 _ 8B. 55, A4
        mov     eax, dword [_shtctl]                    ; 058B _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 0590 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 0598 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 05A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05A4 _ 89. 04 24
        call    _sheet_slide                            ; 05A7 _ E8, 00000000(rel)
        mov     edx, dword [ebp-5CH]                    ; 05AC _ 8B. 55, A4
        mov     eax, dword [_shtctl]                    ; 05AF _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 05B4 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 05BC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05C0 _ 89. 04 24
        call    _sheet_updown                           ; 05C3 _ E8, 00000000(rel)
        mov     edx, dword [ebp-58H]                    ; 05C8 _ 8B. 55, A8
        mov     eax, dword [_shtctl]                    ; 05CB _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 05D0 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 05D8 _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 05E0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05E4 _ 89. 04 24
        call    _sheet_slide                            ; 05E7 _ E8, 00000000(rel)
        mov     edx, dword [ebp-58H]                    ; 05EC _ 8B. 55, A8
        mov     eax, dword [_shtctl]                    ; 05EF _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 05F4 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 05FC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0600 _ 89. 04 24
        call    _sheet_updown                           ; 0603 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], 0                      ; 0608 _ C7. 45, B4, 00000000
        mov     dword [ebp-18H], 0                      ; 060F _ C7. 45, E8, 00000000
        mov     dword [ebp-14H], 0                      ; 0616 _ C7. 45, EC, 00000000
        mov     dword [ebp-1CH], 0                      ; 061D _ C7. 45, E4, 00000000
        mov     dword [ebp-20H], 0                      ; 0624 _ C7. 45, E0, 00000000
?_003:  call    _io_cli                                 ; 062B _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0630 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0637 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 063C _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 063E _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0645 _ E8, 00000000(rel)
        add     ebx, eax                                ; 064A _ 01. C3
        mov     dword [esp], _timerinfo                 ; 064C _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0653 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0658 _ 01. D8
        test    eax, eax                                ; 065A _ 85. C0
        jnz     ?_004                                   ; 065C _ 75, 07
        call    _io_sti                                 ; 065E _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0663 _ EB, C6

?_004:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0665 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 066C _ E8, 00000000(rel)
        test    eax, eax                                ; 0671 _ 85. C0
        je      ?_006                                   ; 0673 _ 0F 84, 000001FD
        call    _io_sti                                 ; 0679 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 067E _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 0685 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], eax                    ; 068A _ 89. 45, B4
        cmp     dword [ebp-4CH], 28                     ; 068D _ 83. 7D, B4, 1C
        jnz     ?_005                                   ; 0691 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 0693 _ 8B. 35, 0000011C(d)
        mov     ebx, dword [_buf_back]                  ; 0699 _ 8B. 1D, 00000124(d)
        mov     edx, dword [ebp-18H]                    ; 069F _ 8B. 55, E8
        mov     eax, edx                                ; 06A2 _ 89. D0
        shl     eax, 2                                  ; 06A4 _ C1. E0, 02
        add     eax, edx                                ; 06A7 _ 01. D0
        shl     eax, 2                                  ; 06A9 _ C1. E0, 02
        mov     edx, eax                                ; 06AC _ 89. C2
        mov     eax, dword [ebp-38H]                    ; 06AE _ 8B. 45, C8
        lea     ecx, [edx+eax]                          ; 06B1 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 06B4 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 06BA _ A1, 00000244(d)
        mov     dword [esp+18H], 7                      ; 06BF _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 06C7 _ 89. 74 24, 14
        mov     esi, dword [ebp-18H]                    ; 06CB _ 8B. 75, E8
        mov     dword [esp+10H], esi                    ; 06CE _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 06D2 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 06D6 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06DE _ 89. 04 24
        call    _showMemoryInfo                         ; 06E1 _ E8, 0000128C
        add     dword [ebp-18H], 1                      ; 06E6 _ 83. 45, E8, 01
        mov     eax, dword [ebp-18H]                    ; 06EA _ 8B. 45, E8
        cmp     eax, dword [ebp-34H]                    ; 06ED _ 3B. 45, CC
        jle     ?_003                                   ; 06F0 _ 0F 8E, FFFFFF35
        mov     dword [ebp-18H], 0                      ; 06F6 _ C7. 45, E8, 00000000
        jmp     ?_003                                   ; 06FD _ E9, FFFFFF29

?_005:  mov     eax, dword [ebp-4CH]                    ; 0702 _ 8B. 45, B4
        add     eax, _keytable                          ; 0705 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 070A _ 0F B6. 00
        test    al, al                                  ; 070D _ 84. C0
        je      ?_003                                   ; 070F _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 0715 _ 81. 7D, F4, 0000008F
        jg      ?_003                                   ; 071C _ 0F 8F, FFFFFF09
        mov     eax, dword [ebp-0CH]                    ; 0722 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0725 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0728 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 072D _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 0730 _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0735 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0737 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 073F _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0743 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 074B _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 074E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0752 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 075A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 075E _ 89. 04 24
        call    _boxfill8                               ; 0761 _ E8, 00000B59
        mov     eax, dword [ebp-0CH]                    ; 0766 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0769 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 076C _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0772 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0777 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 077F _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0783 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 078B _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 078E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0792 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0796 _ 89. 04 24
        call    _sheet_refresh                          ; 0799 _ E8, 00000000(rel)
        mov     eax, dword [ebp-4CH]                    ; 079E _ 8B. 45, B4
        add     eax, _keytable                          ; 07A1 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 07A6 _ 0F B6. 00
        mov     byte [ebp-64H], al                      ; 07A9 _ 88. 45, 9C
        mov     byte [ebp-63H], 0                       ; 07AC _ C6. 45, 9D, 00
        mov     ecx, dword [_shtMsgBox]                 ; 07B0 _ 8B. 0D, 00000240(d)
        mov     edx, dword [_shtctl]                    ; 07B6 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-64H]                          ; 07BC _ 8D. 45, 9C
        mov     dword [esp+14H], eax                    ; 07BF _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07C3 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 07CB _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 07D3 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 07D6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 07DA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 07DE _ 89. 14 24
        call    _showString                             ; 07E1 _ E8, 0000096C
        add     dword [ebp-0CH], 8                      ; 07E6 _ 83. 45, F4, 08
        mov     dword [ebp-20H], 1                      ; 07EA _ C7. 45, E0, 00000001
        mov     eax, dword [ebp-0CH]                    ; 07F1 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 07F4 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 07F7 _ 8B. 45, F0
        movzx   eax, al                                 ; 07FA _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 07FD _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 0803 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0806 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 080C _ 8B. 12
        mov     dword [esp+18H], 43                     ; 080E _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0816 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 081A _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0822 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0825 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0829 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 082D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0831 _ 89. 14 24
        call    _boxfill8                               ; 0834 _ E8, 00000A86
        mov     eax, dword [ebp-0CH]                    ; 0839 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 083C _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 083F _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0845 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 084A _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0852 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0856 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 085E _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0861 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0865 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0869 _ 89. 04 24
        call    _sheet_refresh                          ; 086C _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0871 _ E9, FFFFFDB5

?_006:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0876 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 087D _ E8, 00000000(rel)
        test    eax, eax                                ; 0882 _ 85. C0
        jz      ?_007                                   ; 0884 _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0886 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [_sht_back]                  ; 088C _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0892 _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 0897 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 089B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 089F _ 89. 04 24
        call    _show_mouse_info                        ; 08A2 _ E8, 000007D2
        jmp     ?_003                                   ; 08A7 _ E9, FFFFFD7F

?_007:  ; Local function
        mov     dword [esp], _timerinfo                 ; 08AC _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 08B3 _ E8, 00000000(rel)
        test    eax, eax                                ; 08B8 _ 85. C0
        je      ?_003                                   ; 08BA _ 0F 84, FFFFFD6B
        call    _io_sti                                 ; 08C0 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 08C5 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 08CC _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 08D1 _ 89. 45, B0
        cmp     dword [ebp-50H], 10                     ; 08D4 _ 83. 7D, B0, 0A
        jnz     ?_008                                   ; 08D8 _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 08DA _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 08E0 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_188                  ; 08E5 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 08ED _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 08F5 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-1CH]                    ; 08FD _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0900 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0904 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0908 _ 89. 04 24
        call    _showString                             ; 090B _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 0910 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 0918 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 091B _ 89. 04 24
        call    _timer_settime                          ; 091E _ E8, 00000000(rel)
        add     dword [ebp-1CH], 8                      ; 0923 _ 83. 45, E4, 08
        cmp     dword [ebp-1CH], 40                     ; 0927 _ 83. 7D, E4, 28
        jle     ?_003                                   ; 092B _ 0F 8E, FFFFFCFA
        cmp     dword [ebp-20H], 0                      ; 0931 _ 83. 7D, E0, 00
        jne     ?_003                                   ; 0935 _ 0F 85, FFFFFCF0
        call    _io_cli                                 ; 093B _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2260]               ; 0940 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0945 _ 89. 04 24
        call    _task_sleep                             ; 0948 _ E8, 00000000(rel)
        call    _io_sti                                 ; 094D _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0952 _ E9, FFFFFCD4

?_008:  ; Local function
        cmp     dword [ebp-50H], 2                      ; 0957 _ 83. 7D, B0, 02
        jnz     ?_009                                   ; 095B _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 095D _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0963 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_189                  ; 0968 _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 0970 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 0978 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 0980 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0988 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 098C _ 89. 04 24
        call    _showString                             ; 098F _ E8, 000007BE
        jmp     ?_003                                   ; 0994 _ E9, FFFFFC92

?_009:  ; Local function
        cmp     dword [ebp-50H], 0                      ; 0999 _ 83. 7D, B0, 00
        jz      ?_010                                   ; 099D _ 74, 24
        mov     dword [esp+8H], 0                       ; 099F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 09A7 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 09AF _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09B2 _ 89. 04 24
        call    _timer_init                             ; 09B5 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 09BA _ C7. 45, F0, 00000000
        jmp     ?_011                                   ; 09C1 _ EB, 22

?_010:  mov     dword [esp+8H], 1                       ; 09C3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 09CB _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 09D3 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09D6 _ 89. 04 24
        call    _timer_init                             ; 09D9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 09DE _ C7. 45, F0, 00000007
?_011:  mov     dword [esp+4H], 50                      ; 09E5 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 09ED _ 8B. 45, D0
        mov     dword [esp], eax                        ; 09F0 _ 89. 04 24
        call    _timer_settime                          ; 09F3 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 09F8 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 09FB _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 09FE _ 8B. 45, F0
        movzx   eax, al                                 ; 0A01 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0A04 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 0A0A _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0A0D _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 0A13 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0A15 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0A1D _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0A21 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0A29 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0A2C _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0A30 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0A34 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0A38 _ 89. 14 24
        call    _boxfill8                               ; 0A3B _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 0A40 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0A43 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0A46 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0A4C _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0A51 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0A59 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0A5D _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0A65 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0A68 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A6C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A70 _ 89. 04 24
        call    _sheet_refresh                          ; 0A73 _ E8, 00000000(rel)
        jmp     ?_003                                   ; 0A78 _ E9, FFFFFBAE

_task_b_main:; Function begin
        push    ebp                                     ; 0A7D _ 55
        mov     ebp, esp                                ; 0A7E _ 89. E5
        sub     esp, 104                                ; 0A80 _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 0A83 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0A89 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_190                  ; 0A8E _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 0A96 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 0A9E _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0AA6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0AAE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AB2 _ 89. 04 24
        call    _showString                             ; 0AB5 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 0ABA _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 0AC1 _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0AC8 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 0AD0 _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 0AD3 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0AD7 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 0ADF _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0AE2 _ 89. 04 24
        call    _fifo8_init                             ; 0AE5 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0AEA _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0AEF _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 0AF2 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0AFA _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0AFD _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0B01 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0B04 _ 89. 04 24
        call    _timer_init                             ; 0B07 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0B0C _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0B14 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0B17 _ 89. 04 24
        call    _timer_settime                          ; 0B1A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0B1F _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0B26 _ C7. 45, F0, 00000000
?_012:  add     dword [ebp-0CH], 1                      ; 0B2D _ 83. 45, F4, 01
        call    _io_cli                                 ; 0B31 _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0B36 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0B39 _ 89. 04 24
        call    _fifo8_status                           ; 0B3C _ E8, 00000000(rel)
        test    eax, eax                                ; 0B41 _ 85. C0
        jnz     ?_013                                   ; 0B43 _ 75, 07
        call    _io_sti                                 ; 0B45 _ E8, 00000000(rel)
        jmp     ?_012                                   ; 0B4A _ EB, E1
; _task_b_main End of function

?_013:  ; Local function
        lea     eax, [ebp-38H]                          ; 0B4C _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0B4F _ 89. 04 24
        call    _fifo8_get                              ; 0B52 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B57 _ 89. 45, E8
        call    _io_sti                                 ; 0B5A _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0B5F _ 83. 7D, E8, 7B
        jnz     ?_012                                   ; 0B63 _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0B65 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0B6B _ A1, 00000244(d)
        mov     dword [esp+14H], ?_191                  ; 0B70 _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 0B78 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0B80 _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0B88 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0B8B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0B8F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B93 _ 89. 04 24
        call    _showString                             ; 0B96 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0B9B _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0BA3 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0BA6 _ 89. 04 24
        call    _timer_settime                          ; 0BA9 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0BAE _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0BB2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0BB5 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0BB7 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0BBF _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0BC7 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0BCF _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0BD7 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0BDF _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0BE7 _ 89. 04 24
        call    _boxfill8                               ; 0BEA _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0BEF _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0BF4 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0BFC _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0C04 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0C0C _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0C14 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0C17 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C1B _ 89. 04 24
        call    _sheet_refresh                          ; 0C1E _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0C23 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C26 _ 89. 04 24
        call    _intToHexStr                            ; 0C29 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0C2E _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0C31 _ A1, 00000244(d)
        mov     edx, dword [ebp-1CH]                    ; 0C36 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0C39 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0C3D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0C45 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0C4D _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0C55 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0C58 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C5C _ 89. 04 24
        call    _showString                             ; 0C5F _ E8, 000004EE
        jmp     ?_012                                   ; 0C64 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0C69 _ 55
        mov     ebp, esp                                ; 0C6A _ 89. E5
        push    ebx                                     ; 0C6C _ 53
        sub     esp, 36                                 ; 0C6D _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0C70 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0C73 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0C76 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0C79 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0C7C _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0C80 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0C84 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0C8C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0C94 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0C9C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C9F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CA3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CA6 _ 89. 04 24
        call    _boxfill8                               ; 0CA9 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0CAE _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0CB1 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0CB4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0CB7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0CBA _ 8B. 45, 10
        sub     eax, 28                                 ; 0CBD _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0CC0 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0CC4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CC8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0CCC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0CD4 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0CDC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CDF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CE3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CE6 _ 89. 04 24
        call    _boxfill8                               ; 0CE9 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0CEE _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0CF1 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0CF4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0CF7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0CFA _ 8B. 45, 10
        sub     eax, 27                                 ; 0CFD _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0D00 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0D04 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0D08 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0D0C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0D14 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D1C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D26 _ 89. 04 24
        call    _boxfill8                               ; 0D29 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0D2E _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0D31 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0D34 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0D37 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0D3A _ 8B. 45, 10
        sub     eax, 26                                 ; 0D3D _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0D40 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0D44 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0D48 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0D4C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0D54 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0D5C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D5F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D63 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D66 _ 89. 04 24
        call    _boxfill8                               ; 0D69 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0D6E _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D71 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0D74 _ 8B. 45, 10
        sub     eax, 24                                 ; 0D77 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0D7A _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D7E _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D86 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D8A _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0D92 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D9A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D9D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DA1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DA4 _ 89. 04 24
        call    _boxfill8                               ; 0DA7 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0DAC _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0DAF _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0DB2 _ 8B. 45, 10
        sub     eax, 24                                 ; 0DB5 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0DB8 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0DBC _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0DC4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0DC8 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0DD0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DD8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DDB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DDF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DE2 _ 89. 04 24
        call    _boxfill8                               ; 0DE5 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0DEA _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0DED _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0DF0 _ 8B. 45, 10
        sub     eax, 4                                  ; 0DF3 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0DF6 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DFA _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0E02 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0E06 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0E0E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E16 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E19 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E20 _ 89. 04 24
        call    _boxfill8                               ; 0E23 _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0E28 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0E2B _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0E2E _ 8B. 45, 10
        sub     eax, 23                                 ; 0E31 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0E34 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0E38 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0E40 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0E44 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0E4C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E5E _ 89. 04 24
        call    _boxfill8                               ; 0E61 _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0E66 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E69 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0E6C _ 8B. 45, 10
        sub     eax, 3                                  ; 0E6F _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0E72 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0E76 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0E7E _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0E82 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0E8A _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E92 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E95 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E99 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E9C _ 89. 04 24
        call    _boxfill8                               ; 0E9F _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0EA4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0EA7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0EAA _ 8B. 45, 10
        sub     eax, 24                                 ; 0EAD _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0EB0 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0EB4 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0EBC _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0EC0 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0EC8 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0ED0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0ED3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0ED7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EDA _ 89. 04 24
        call    _boxfill8                               ; 0EDD _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0EE2 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0EE5 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0EE8 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0EEB _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0EEE _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0EF1 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0EF4 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0EF7 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0EFA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EFE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F02 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F06 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0F0A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0F12 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F1C _ 89. 04 24
        call    _boxfill8                               ; 0F1F _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0F24 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0F27 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0F2A _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0F2D _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0F30 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0F33 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0F36 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F39 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0F3C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F40 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F44 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F48 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0F4C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0F54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F5E _ 89. 04 24
        call    _boxfill8                               ; 0F61 _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0F66 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F69 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F6C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0F6F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0F72 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F75 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0F78 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F7B _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0F7E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F82 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F86 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F8A _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F8E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F96 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F99 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F9D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FA0 _ 89. 04 24
        call    _boxfill8                               ; 0FA3 _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0FA8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FAB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FAE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FB1 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0FB4 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0FB7 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0FBA _ 8B. 45, 0C
        sub     eax, 3                                  ; 0FBD _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0FC0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0FC4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0FC8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0FCC _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0FD0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0FD8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FDB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FDF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FE2 _ 89. 04 24
        call    _boxfill8                               ; 0FE5 _ E8, 000002D5
        nop                                             ; 0FEA _ 90
        add     esp, 36                                 ; 0FEB _ 83. C4, 24
        pop     ebx                                     ; 0FEE _ 5B
        pop     ebp                                     ; 0FEF _ 5D
        ret                                             ; 0FF0 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0FF1 _ 55
        mov     ebp, esp                                ; 0FF2 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0FF4 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0FF7 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0FFA _ A1, 00000114(d)
        add     eax, edx                                ; 0FFF _ 01. D0
        mov     dword [_mx], eax                        ; 1001 _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 1006 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1009 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 100C _ A1, 00000118(d)
        add     eax, edx                                ; 1011 _ 01. D0
        mov     dword [_my], eax                        ; 1013 _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 1018 _ A1, 00000114(d)
        test    eax, eax                                ; 101D _ 85. C0
        jns     ?_014                                   ; 101F _ 79, 0A
        mov     dword [_mx], 0                          ; 1021 _ C7. 05, 00000114(d), 00000000
?_014:  mov     eax, dword [_my]                        ; 102B _ A1, 00000118(d)
        test    eax, eax                                ; 1030 _ 85. C0
        jns     ?_015                                   ; 1032 _ 79, 0A
        mov     dword [_my], 0                          ; 1034 _ C7. 05, 00000118(d), 00000000
?_015:  mov     edx, dword [_xsize]                     ; 103E _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 1044 _ A1, 00000114(d)
        cmp     edx, eax                                ; 1049 _ 39. C2
        jg      ?_016                                   ; 104B _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 104D _ A1, 0000011C(d)
        sub     eax, 1                                  ; 1052 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1055 _ A3, 00000114(d)
?_016:  mov     edx, dword [_ysize]                     ; 105A _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 1060 _ A1, 00000118(d)
        cmp     edx, eax                                ; 1065 _ 39. C2
        jg      ?_017                                   ; 1067 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1069 _ A1, 00000120(d)
        sub     eax, 1                                  ; 106E _ 83. E8, 01
        mov     dword [_my], eax                        ; 1071 _ A3, 00000118(d)
?_017:  nop                                             ; 1076 _ 90
        pop     ebp                                     ; 1077 _ 5D
        ret                                             ; 1078 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1079 _ 55
        mov     ebp, esp                                ; 107A _ 89. E5
        sub     esp, 40                                 ; 107C _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 107F _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 1084 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1087 _ C6. 45, F3, 00
        call    _io_sti                                 ; 108B _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1090 _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 1097 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 109C _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 109F _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 10A3 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 10A7 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 10AE _ E8, 00000780
        test    eax, eax                                ; 10B3 _ 85. C0
        jz      ?_018                                   ; 10B5 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 10B7 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 10BF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 10C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10C9 _ 89. 04 24
        call    _computeMousePosition                   ; 10CC _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 10D1 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 10D7 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 10DC _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 10E0 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 10E4 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 10E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10EE _ 89. 04 24
        call    _sheet_slide                            ; 10F1 _ E8, 00000000(rel)
        mov     eax, dword [?_199]                      ; 10F6 _ A1, 000000EC(d)
        and     eax, 01H                                ; 10FB _ 83. E0, 01
        test    eax, eax                                ; 10FE _ 85. C0
        jz      ?_018                                   ; 1100 _ 74, 2C
        mov     eax, dword [_my]                        ; 1102 _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 1107 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 110A _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 110F _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1112 _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 1117 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 111B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 111F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1123 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1126 _ 89. 04 24
        call    _sheet_slide                            ; 1129 _ E8, 00000000(rel)
?_018:  nop                                             ; 112E _ 90
        leave                                           ; 112F _ C9
        ret                                             ; 1130 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1131 _ 55
        mov     ebp, esp                                ; 1132 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1134 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1137 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 113D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1140 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1146 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1149 _ 66: C7. 40, 06, 01E0
        nop                                             ; 114F _ 90
        pop     ebp                                     ; 1150 _ 5D
        ret                                             ; 1151 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1152 _ 55
        mov     ebp, esp                                ; 1153 _ 89. E5
        push    ebx                                     ; 1155 _ 53
        sub     esp, 68                                 ; 1156 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1159 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 115C _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 115F _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1162 _ 89. 45, F4
        jmp     ?_020                                   ; 1165 _ EB, 4B

?_019:  mov     eax, dword [ebp+1CH]                    ; 1167 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 116A _ 0F B6. 00
        movzx   eax, al                                 ; 116D _ 0F B6. C0
        shl     eax, 4                                  ; 1170 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 1173 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1179 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 117D _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1180 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1183 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1186 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1188 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 118C _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1190 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1193 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1197 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 119A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 119E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 11A2 _ 89. 14 24
        call    _showFont8                              ; 11A5 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 11AA _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 11AE _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 11B2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 11B5 _ 0F B6. 00
        test    al, al                                  ; 11B8 _ 84. C0
        jnz     ?_019                                   ; 11BA _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 11BC _ 8B. 45, 14
        add     eax, 16                                 ; 11BF _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 11C2 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 11C6 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 11C9 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 11CD _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 11D0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 11D4 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 11D7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11DB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11DE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11E2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11E5 _ 89. 04 24
        call    _sheet_refresh                          ; 11E8 _ E8, 00000000(rel)
        nop                                             ; 11ED _ 90
        add     esp, 68                                 ; 11EE _ 83. C4, 44
        pop     ebx                                     ; 11F1 _ 5B
        pop     ebp                                     ; 11F2 _ 5D
        ret                                             ; 11F3 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 11F4 _ 55
        mov     ebp, esp                                ; 11F5 _ 89. E5
        sub     esp, 24                                 ; 11F7 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2326         ; 11FA _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 1202 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 120A _ C7. 04 24, 00000000
        call    _set_palette                            ; 1211 _ E8, 00000003
        nop                                             ; 1216 _ 90
        leave                                           ; 1217 _ C9
        ret                                             ; 1218 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1219 _ 55
        mov     ebp, esp                                ; 121A _ 89. E5
        sub     esp, 40                                 ; 121C _ 83. EC, 28
        call    _io_load_eflags                         ; 121F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1224 _ 89. 45, F0
        call    _io_cli                                 ; 1227 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 122C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 122F _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 1233 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 123A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 123F _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 1242 _ 89. 45, F4
        jmp     ?_022                                   ; 1245 _ EB, 62

?_021:  mov     eax, dword [ebp+10H]                    ; 1247 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 124A _ 0F B6. 00
        shr     al, 2                                   ; 124D _ C0. E8, 02
        movzx   eax, al                                 ; 1250 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1253 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1257 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 125E _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1263 _ 8B. 45, 10
        add     eax, 1                                  ; 1266 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1269 _ 0F B6. 00
        shr     al, 2                                   ; 126C _ C0. E8, 02
        movzx   eax, al                                 ; 126F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1272 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1276 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 127D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1282 _ 8B. 45, 10
        add     eax, 2                                  ; 1285 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1288 _ 0F B6. 00
        shr     al, 2                                   ; 128B _ C0. E8, 02
        movzx   eax, al                                 ; 128E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1291 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1295 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 129C _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 12A1 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 12A5 _ 83. 45, F4, 01
?_022:  mov     eax, dword [ebp-0CH]                    ; 12A9 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 12AC _ 3B. 45, 0C
        jle     ?_021                                   ; 12AF _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 12B1 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 12B4 _ 89. 04 24
        call    _io_store_eflags                        ; 12B7 _ E8, 00000000(rel)
        nop                                             ; 12BC _ 90
        leave                                           ; 12BD _ C9
        ret                                             ; 12BE _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 12BF _ 55
        mov     ebp, esp                                ; 12C0 _ 89. E5
        sub     esp, 20                                 ; 12C2 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 12C5 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 12C8 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 12CB _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 12CE _ 89. 45, F8
        jmp     ?_026                                   ; 12D1 _ EB, 31

?_023:  mov     eax, dword [ebp+14H]                    ; 12D3 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 12D6 _ 89. 45, FC
        jmp     ?_025                                   ; 12D9 _ EB, 1D

?_024:  mov     eax, dword [ebp-8H]                     ; 12DB _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 12DE _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 12E2 _ 8B. 55, FC
        add     eax, edx                                ; 12E5 _ 01. D0
        mov     edx, eax                                ; 12E7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12E9 _ 8B. 45, 08
        add     edx, eax                                ; 12EC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12EE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12F2 _ 88. 02
        add     dword [ebp-4H], 1                       ; 12F4 _ 83. 45, FC, 01
?_025:  mov     eax, dword [ebp-4H]                     ; 12F8 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 12FB _ 3B. 45, 1C
        jle     ?_024                                   ; 12FE _ 7E, DB
        add     dword [ebp-8H], 1                       ; 1300 _ 83. 45, F8, 01
?_026:  mov     eax, dword [ebp-8H]                     ; 1304 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 1307 _ 3B. 45, 20
        jle     ?_023                                   ; 130A _ 7E, C7
        nop                                             ; 130C _ 90
        leave                                           ; 130D _ C9
        ret                                             ; 130E _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 130F _ 55
        mov     ebp, esp                                ; 1310 _ 89. E5
        sub     esp, 20                                 ; 1312 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1315 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1318 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 131B _ C7. 45, FC, 00000000
        jmp     ?_036                                   ; 1322 _ E9, 0000015C

?_027:  mov     edx, dword [ebp-4H]                     ; 1327 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 132A _ 8B. 45, 1C
        add     eax, edx                                ; 132D _ 01. D0
        movzx   eax, byte [eax]                         ; 132F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1332 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1335 _ 80. 7D, FB, 00
        jns     ?_028                                   ; 1339 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 133B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 133E _ 8B. 45, FC
        add     eax, edx                                ; 1341 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1343 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1347 _ 8B. 55, 10
        add     eax, edx                                ; 134A _ 01. D0
        mov     edx, eax                                ; 134C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 134E _ 8B. 45, 08
        add     edx, eax                                ; 1351 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1353 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1357 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1359 _ 0F BE. 45, FB
        and     eax, 40H                                ; 135D _ 83. E0, 40
        test    eax, eax                                ; 1360 _ 85. C0
        jz      ?_029                                   ; 1362 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1364 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1367 _ 8B. 45, FC
        add     eax, edx                                ; 136A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 136C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1370 _ 8B. 55, 10
        add     eax, edx                                ; 1373 _ 01. D0
        lea     edx, [eax+1H]                           ; 1375 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1378 _ 8B. 45, 08
        add     edx, eax                                ; 137B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 137D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1381 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1383 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1387 _ 83. E0, 20
        test    eax, eax                                ; 138A _ 85. C0
        jz      ?_030                                   ; 138C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 138E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1391 _ 8B. 45, FC
        add     eax, edx                                ; 1394 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1396 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 139A _ 8B. 55, 10
        add     eax, edx                                ; 139D _ 01. D0
        lea     edx, [eax+2H]                           ; 139F _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 13A2 _ 8B. 45, 08
        add     edx, eax                                ; 13A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13AB _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 13AD _ 0F BE. 45, FB
        and     eax, 10H                                ; 13B1 _ 83. E0, 10
        test    eax, eax                                ; 13B4 _ 85. C0
        jz      ?_031                                   ; 13B6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13B8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13BB _ 8B. 45, FC
        add     eax, edx                                ; 13BE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13C0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13C4 _ 8B. 55, 10
        add     eax, edx                                ; 13C7 _ 01. D0
        lea     edx, [eax+3H]                           ; 13C9 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 13CC _ 8B. 45, 08
        add     edx, eax                                ; 13CF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13D1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13D5 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 13D7 _ 0F BE. 45, FB
        and     eax, 08H                                ; 13DB _ 83. E0, 08
        test    eax, eax                                ; 13DE _ 85. C0
        jz      ?_032                                   ; 13E0 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13E2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13E5 _ 8B. 45, FC
        add     eax, edx                                ; 13E8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13EA _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13EE _ 8B. 55, 10
        add     eax, edx                                ; 13F1 _ 01. D0
        lea     edx, [eax+4H]                           ; 13F3 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13F6 _ 8B. 45, 08
        add     edx, eax                                ; 13F9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13FB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13FF _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1401 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1405 _ 83. E0, 04
        test    eax, eax                                ; 1408 _ 85. C0
        jz      ?_033                                   ; 140A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 140C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 140F _ 8B. 45, FC
        add     eax, edx                                ; 1412 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1414 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1418 _ 8B. 55, 10
        add     eax, edx                                ; 141B _ 01. D0
        lea     edx, [eax+5H]                           ; 141D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1420 _ 8B. 45, 08
        add     edx, eax                                ; 1423 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1425 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1429 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 142B _ 0F BE. 45, FB
        and     eax, 02H                                ; 142F _ 83. E0, 02
        test    eax, eax                                ; 1432 _ 85. C0
        jz      ?_034                                   ; 1434 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1436 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1439 _ 8B. 45, FC
        add     eax, edx                                ; 143C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 143E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1442 _ 8B. 55, 10
        add     eax, edx                                ; 1445 _ 01. D0
        lea     edx, [eax+6H]                           ; 1447 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 144A _ 8B. 45, 08
        add     edx, eax                                ; 144D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 144F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1453 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1455 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1459 _ 83. E0, 01
        test    eax, eax                                ; 145C _ 85. C0
        jz      ?_035                                   ; 145E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1460 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1463 _ 8B. 45, FC
        add     eax, edx                                ; 1466 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1468 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 146C _ 8B. 55, 10
        add     eax, edx                                ; 146F _ 01. D0
        lea     edx, [eax+7H]                           ; 1471 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1474 _ 8B. 45, 08
        add     edx, eax                                ; 1477 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1479 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 147D _ 88. 02
?_035:  add     dword [ebp-4H], 1                       ; 147F _ 83. 45, FC, 01
?_036:  cmp     dword [ebp-4H], 15                      ; 1483 _ 83. 7D, FC, 0F
        jle     ?_027                                   ; 1487 _ 0F 8E, FFFFFE9A
        nop                                             ; 148D _ 90
        leave                                           ; 148E _ C9
        ret                                             ; 148F _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 20                                 ; 1493 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1496 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1499 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 149C _ C7. 45, F8, 00000000
        jmp     ?_043                                   ; 14A3 _ E9, 000000B1

?_037:  mov     dword [ebp-4H], 0                       ; 14A8 _ C7. 45, FC, 00000000
        jmp     ?_042                                   ; 14AF _ E9, 00000097

?_038:  mov     eax, dword [ebp-8H]                     ; 14B4 _ 8B. 45, F8
        shl     eax, 4                                  ; 14B7 _ C1. E0, 04
        mov     edx, eax                                ; 14BA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14BC _ 8B. 45, FC
        add     eax, edx                                ; 14BF _ 01. D0
        add     eax, _cursor.2373                       ; 14C1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 14C6 _ 0F B6. 00
        cmp     al, 42                                  ; 14C9 _ 3C, 2A
        jnz     ?_039                                   ; 14CB _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 14CD _ 8B. 45, F8
        shl     eax, 4                                  ; 14D0 _ C1. E0, 04
        mov     edx, eax                                ; 14D3 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14D5 _ 8B. 45, FC
        add     eax, edx                                ; 14D8 _ 01. D0
        mov     edx, eax                                ; 14DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14DC _ 8B. 45, 08
        add     eax, edx                                ; 14DF _ 01. D0
        mov     byte [eax], 0                           ; 14E1 _ C6. 00, 00
?_039:  mov     eax, dword [ebp-8H]                     ; 14E4 _ 8B. 45, F8
        shl     eax, 4                                  ; 14E7 _ C1. E0, 04
        mov     edx, eax                                ; 14EA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14EC _ 8B. 45, FC
        add     eax, edx                                ; 14EF _ 01. D0
        add     eax, _cursor.2373                       ; 14F1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 14F6 _ 0F B6. 00
        cmp     al, 79                                  ; 14F9 _ 3C, 4F
        jnz     ?_040                                   ; 14FB _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 14FD _ 8B. 45, F8
        shl     eax, 4                                  ; 1500 _ C1. E0, 04
        mov     edx, eax                                ; 1503 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1505 _ 8B. 45, FC
        add     eax, edx                                ; 1508 _ 01. D0
        mov     edx, eax                                ; 150A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 150C _ 8B. 45, 08
        add     eax, edx                                ; 150F _ 01. D0
        mov     byte [eax], 7                           ; 1511 _ C6. 00, 07
?_040:  mov     eax, dword [ebp-8H]                     ; 1514 _ 8B. 45, F8
        shl     eax, 4                                  ; 1517 _ C1. E0, 04
        mov     edx, eax                                ; 151A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 151C _ 8B. 45, FC
        add     eax, edx                                ; 151F _ 01. D0
        add     eax, _cursor.2373                       ; 1521 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1526 _ 0F B6. 00
        cmp     al, 46                                  ; 1529 _ 3C, 2E
        jnz     ?_041                                   ; 152B _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 152D _ 8B. 45, F8
        shl     eax, 4                                  ; 1530 _ C1. E0, 04
        mov     edx, eax                                ; 1533 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1535 _ 8B. 45, FC
        add     eax, edx                                ; 1538 _ 01. D0
        mov     edx, eax                                ; 153A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 153C _ 8B. 45, 08
        add     edx, eax                                ; 153F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1541 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1545 _ 88. 02
?_041:  add     dword [ebp-4H], 1                       ; 1547 _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 15                      ; 154B _ 83. 7D, FC, 0F
        jle     ?_038                                   ; 154F _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1555 _ 83. 45, F8, 01
?_043:  cmp     dword [ebp-8H], 15                      ; 1559 _ 83. 7D, F8, 0F
        jle     ?_037                                   ; 155D _ 0F 8E, FFFFFF45
        nop                                             ; 1563 _ 90
        leave                                           ; 1564 _ C9
        ret                                             ; 1565 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1566 _ 55
        mov     ebp, esp                                ; 1567 _ 89. E5
        push    ebx                                     ; 1569 _ 53
        sub     esp, 16                                 ; 156A _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 156D _ C7. 45, F4, 00000000
        jmp     ?_047                                   ; 1574 _ EB, 4E

?_044:  mov     dword [ebp-8H], 0                       ; 1576 _ C7. 45, F8, 00000000
        jmp     ?_046                                   ; 157D _ EB, 39

?_045:  mov     eax, dword [ebp-0CH]                    ; 157F _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 1582 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1586 _ 8B. 55, F8
        add     eax, edx                                ; 1589 _ 01. D0
        mov     edx, eax                                ; 158B _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 158D _ 8B. 45, 20
        add     eax, edx                                ; 1590 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1592 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1595 _ 8B. 55, F4
        add     edx, ecx                                ; 1598 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 159A _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 159E _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 15A1 _ 8B. 4D, F8
        add     ecx, ebx                                ; 15A4 _ 01. D9
        add     edx, ecx                                ; 15A6 _ 01. CA
        mov     ecx, edx                                ; 15A8 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 15AA _ 8B. 55, 08
        add     edx, ecx                                ; 15AD _ 01. CA
        movzx   eax, byte [eax]                         ; 15AF _ 0F B6. 00
        mov     byte [edx], al                          ; 15B2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 15B4 _ 83. 45, F8, 01
?_046:  mov     eax, dword [ebp-8H]                     ; 15B8 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 15BB _ 3B. 45, 10
        jl      ?_045                                   ; 15BE _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 15C0 _ 83. 45, F4, 01
?_047:  mov     eax, dword [ebp-0CH]                    ; 15C4 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 15C7 _ 3B. 45, 14
        jl      ?_044                                   ; 15CA _ 7C, AA
        nop                                             ; 15CC _ 90
        add     esp, 16                                 ; 15CD _ 83. C4, 10
        pop     ebx                                     ; 15D0 _ 5B
        pop     ebp                                     ; 15D1 _ 5D
        ret                                             ; 15D2 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 15D3 _ 55
        mov     ebp, esp                                ; 15D4 _ 89. E5
        sub     esp, 40                                 ; 15D6 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 15D9 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 15DE _ 89. 45, F4
        movzx   eax, word [?_196]                       ; 15E1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 15E8 _ 98
        mov     dword [ebp-10H], eax                    ; 15E9 _ 89. 45, F0
        movzx   eax, word [?_197]                       ; 15EC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 15F3 _ 98
        mov     dword [ebp-14H], eax                    ; 15F4 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 15F7 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 15FF _ C7. 04 24, 00000020
        call    _io_out8                                ; 1606 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 160B _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 160F _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1616 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 161B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 161E _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1622 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1626 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 162D _ E8, 00000000(rel)
        nop                                             ; 1632 _ 90
        leave                                           ; 1633 _ C9
        ret                                             ; 1634 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1635 _ 55
        mov     ebp, esp                                ; 1636 _ 89. E5
        sub     esp, 4                                  ; 1638 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 163B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 163E _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1641 _ 80. 7D, FC, 09
        jle     ?_048                                   ; 1645 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1647 _ 0F B6. 45, FC
        add     eax, 55                                 ; 164B _ 83. C0, 37
        jmp     ?_049                                   ; 164E _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 1650 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1654 _ 83. C0, 30
?_049:  leave                                           ; 1657 _ C9
        ret                                             ; 1658 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1659 _ 55
        mov     ebp, esp                                ; 165A _ 89. E5
        sub     esp, 24                                 ; 165C _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 165F _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 1662 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1665 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 166C _ 0F B6. 45, EC
        and     eax, 0FH                                ; 1670 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 1673 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1676 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 167A _ 89. 04 24
        call    _charToHexVal                           ; 167D _ E8, FFFFFFB3
        mov     byte [?_186], al                        ; 1682 _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 1687 _ 0F B6. 45, EC
        shr     al, 4                                   ; 168B _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 168E _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 1691 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1695 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1698 _ 89. 04 24
        call    _charToHexVal                           ; 169B _ E8, FFFFFF95
        mov     byte [?_185], al                        ; 16A0 _ A2, 00000076(d)
        mov     eax, _keyval                            ; 16A5 _ B8, 00000074(d)
        leave                                           ; 16AA _ C9
        ret                                             ; 16AB _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 16AC _ 55
        mov     ebp, esp                                ; 16AD _ 89. E5
        sub     esp, 16                                 ; 16AF _ 83. EC, 10
        mov     byte [_str.2421], 48                    ; 16B2 _ C6. 05, 00000368(d), 30
        mov     byte [?_200], 88                        ; 16B9 _ C6. 05, 00000369(d), 58
        mov     byte [?_201], 0                         ; 16C0 _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 16C7 _ C7. 45, FC, 00000002
        jmp     ?_051                                   ; 16CE _ EB, 0F

?_050:  mov     eax, dword [ebp-4H]                     ; 16D0 _ 8B. 45, FC
        add     eax, _str.2421                          ; 16D3 _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 16D8 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 16DB _ 83. 45, FC, 01
?_051:  cmp     dword [ebp-4H], 9                       ; 16DF _ 83. 7D, FC, 09
        jle     ?_050                                   ; 16E3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 16E5 _ C7. 45, F8, 00000009
        jmp     ?_055                                   ; 16EC _ EB, 42

?_052:  mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        and     eax, 0FH                                ; 16F1 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 16F4 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 16F7 _ 8B. 45, 08
        shr     eax, 4                                  ; 16FA _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 16FD _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 1700 _ 83. 7D, F4, 09
        jle     ?_053                                   ; 1704 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1706 _ 8B. 45, F4
        add     eax, 55                                 ; 1709 _ 83. C0, 37
        mov     edx, eax                                ; 170C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 170E _ 8B. 45, F8
        add     eax, _str.2421                          ; 1711 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1716 _ 88. 10
        jmp     ?_054                                   ; 1718 _ EB, 12

?_053:  mov     eax, dword [ebp-0CH]                    ; 171A _ 8B. 45, F4
        add     eax, 48                                 ; 171D _ 83. C0, 30
        mov     edx, eax                                ; 1720 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1722 _ 8B. 45, F8
        add     eax, _str.2421                          ; 1725 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 172A _ 88. 10
?_054:  sub     dword [ebp-8H], 1                       ; 172C _ 83. 6D, F8, 01
?_055:  cmp     dword [ebp-8H], 1                       ; 1730 _ 83. 7D, F8, 01
        jle     ?_056                                   ; 1734 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1736 _ 83. 7D, 08, 00
        jnz     ?_052                                   ; 173A _ 75, B2
?_056:  mov     eax, _str.2421                          ; 173C _ B8, 00000368(d)
        leave                                           ; 1741 _ C9
        ret                                             ; 1742 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1743 _ 55
        mov     ebp, esp                                ; 1744 _ 89. E5
        sub     esp, 24                                 ; 1746 _ 83. EC, 18
?_057:  mov     dword [esp], 100                        ; 1749 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 1750 _ E8, 00000000(rel)
        and     eax, 02H                                ; 1755 _ 83. E0, 02
        test    eax, eax                                ; 1758 _ 85. C0
        jz      ?_058                                   ; 175A _ 74, 02
        jmp     ?_057                                   ; 175C _ EB, EB
; _wait_KBC_sendready End of function

?_058:  ; Local function
        nop                                             ; 175E _ 90
        nop                                             ; 175F _ 90
        leave                                           ; 1760 _ C9
        ret                                             ; 1761 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 1762 _ 55
        mov     ebp, esp                                ; 1763 _ 89. E5
        sub     esp, 24                                 ; 1765 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1768 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 176D _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1775 _ C7. 04 24, 00000064
        call    _io_out8                                ; 177C _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1781 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1786 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 178E _ C7. 04 24, 00000060
        call    _io_out8                                ; 1795 _ E8, 00000000(rel)
        nop                                             ; 179A _ 90
        leave                                           ; 179B _ C9
        ret                                             ; 179C _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 179D _ 55
        mov     ebp, esp                                ; 179E _ 89. E5
        sub     esp, 24                                 ; 17A0 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 17A3 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 17A8 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 17B0 _ C7. 04 24, 00000064
        call    _io_out8                                ; 17B7 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 17BC _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 17C1 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 17C9 _ C7. 04 24, 00000060
        call    _io_out8                                ; 17D0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 17D5 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 17D8 _ C6. 40, 03, 00
        nop                                             ; 17DC _ 90
        leave                                           ; 17DD _ C9
        ret                                             ; 17DE _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 17DF _ 55
        mov     ebp, esp                                ; 17E0 _ 89. E5
        sub     esp, 40                                 ; 17E2 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 17E5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 17ED _ C7. 04 24, 000000A0
        call    _io_out8                                ; 17F4 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 17F9 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1801 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1808 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 180D _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1814 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1819 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 181C _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1820 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1824 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 182B _ E8, 00000000(rel)
        nop                                             ; 1830 _ 90
        leave                                           ; 1831 _ C9
        ret                                             ; 1832 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1833 _ 55
        mov     ebp, esp                                ; 1834 _ 89. E5
        sub     esp, 4                                  ; 1836 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1839 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 183C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1842 _ 0F B6. 40, 03
        test    al, al                                  ; 1846 _ 84. C0
        jnz     ?_060                                   ; 1848 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 184A _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 184E _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1853 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1857 _ B8, 00000000
        jmp     ?_067                                   ; 185C _ E9, 0000010F

?_060:  mov     eax, dword [ebp+8H]                     ; 1861 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1864 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1868 _ 3C, 01
        jnz     ?_062                                   ; 186A _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 186C _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1870 _ 25, 000000C8
        cmp     eax, 8                                  ; 1875 _ 83. F8, 08
        jnz     ?_061                                   ; 1878 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 187A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 187D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1881 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1883 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1886 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 188A _ B8, 00000000
        jmp     ?_067                                   ; 188F _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1894 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1897 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 189B _ 3C, 02
        jnz     ?_063                                   ; 189D _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 189F _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 18A2 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 18A6 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 18A9 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 18AC _ C6. 40, 03, 03
        mov     eax, 0                                  ; 18B0 _ B8, 00000000
        jmp     ?_067                                   ; 18B5 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 18BA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 18BD _ 0F B6. 40, 03
        cmp     al, 3                                   ; 18C1 _ 3C, 03
        jne     ?_066                                   ; 18C3 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 18C9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 18CC _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 18D0 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 18D3 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 18D6 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 18DA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18DD _ 0F B6. 00
        movzx   eax, al                                 ; 18E0 _ 0F B6. C0
        and     eax, 07H                                ; 18E3 _ 83. E0, 07
        mov     edx, eax                                ; 18E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18E8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 18EB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 18EE _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 18F1 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 18F5 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 18F8 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 18FB _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 18FE _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1901 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1905 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1908 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 190B _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 190E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1911 _ 0F B6. 00
        movzx   eax, al                                 ; 1914 _ 0F B6. C0
        and     eax, 10H                                ; 1917 _ 83. E0, 10
        test    eax, eax                                ; 191A _ 85. C0
        jz      ?_064                                   ; 191C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 191E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1921 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1924 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1929 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 192B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 192E _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1931 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1934 _ 0F B6. 00
        movzx   eax, al                                 ; 1937 _ 0F B6. C0
        and     eax, 20H                                ; 193A _ 83. E0, 20
        test    eax, eax                                ; 193D _ 85. C0
        jz      ?_065                                   ; 193F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1941 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1944 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1947 _ 0D, FFFFFF00
        mov     edx, eax                                ; 194C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 194E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1951 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1954 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1957 _ 8B. 40, 08
        neg     eax                                     ; 195A _ F7. D8
        mov     edx, eax                                ; 195C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 195E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1961 _ 89. 50, 08
        mov     eax, 1                                  ; 1964 _ B8, 00000001
        jmp     ?_067                                   ; 1969 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 196B _ B8, FFFFFFFF
?_067:  leave                                           ; 1970 _ C9
        ret                                             ; 1971 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1972 _ 55
        mov     ebp, esp                                ; 1973 _ 89. E5
        sub     esp, 72                                 ; 1975 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 1978 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 197F _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1986 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 198D _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1994 _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 199A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 199D _ 8B. 00
        mov     dword [esp+8H], edx                     ; 199F _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 19A3 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 19A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19AA _ 89. 04 24
        call    _init_screen8                           ; 19AD _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 19B2 _ 8B. 45, 20
        movsx   eax, al                                 ; 19B5 _ 0F BE. C0
        mov     dword [esp+14H], ?_192                  ; 19B8 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 19C0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19C4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19C7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19CB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19CE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19D2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19D5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19D9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19DC _ 89. 04 24
        call    _showString                             ; 19DF _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 19E4 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 19E7 _ 89. 04 24
        call    _intToHexStr                            ; 19EA _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 19EF _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 19F2 _ 8B. 45, 20
        movsx   eax, al                                 ; 19F5 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 19F8 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 19FB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19FF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A03 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A06 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A0A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A0D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A11 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A14 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A18 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A1B _ 89. 04 24
        call    _showString                             ; 1A1E _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1A23 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A27 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A2A _ 0F BE. C0
        mov     dword [esp+14H], ?_193                  ; 1A2D _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 1A35 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A39 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A3C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A40 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1A43 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A47 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A51 _ 89. 04 24
        call    _showString                             ; 1A54 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1A59 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A5C _ 8B. 00
        mov     dword [esp], eax                        ; 1A5E _ 89. 04 24
        call    _intToHexStr                            ; 1A61 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1A66 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1A69 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A6C _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1A6F _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1A72 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A76 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A7A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A7D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A81 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A84 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A88 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A8B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A8F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A92 _ 89. 04 24
        call    _showString                             ; 1A95 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1A9A _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A9E _ 8B. 45, 20
        movsx   eax, al                                 ; 1AA1 _ 0F BE. C0
        mov     dword [esp+14H], ?_194                  ; 1AA4 _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 1AAC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AB0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AB3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1AB7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1ABA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1ABE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AC1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AC5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AC8 _ 89. 04 24
        call    _showString                             ; 1ACB _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1AD0 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1AD3 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1AD6 _ 89. 04 24
        call    _intToHexStr                            ; 1AD9 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1ADE _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1AE1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AE4 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1AE7 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1AEA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AEE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AF2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AF5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1AF9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1AFC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B00 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B03 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B07 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B0A _ 89. 04 24
        call    _showString                             ; 1B0D _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1B12 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1B16 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B19 _ 0F BE. C0
        mov     dword [esp+14H], ?_195                  ; 1B1C _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 1B24 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B28 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B2B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1B2F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1B32 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B36 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B39 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B40 _ 89. 04 24
        call    _showString                             ; 1B43 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1B48 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1B4B _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1B4E _ 89. 04 24
        call    _intToHexStr                            ; 1B51 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1B56 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1B59 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B5C _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1B5F _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1B62 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B66 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1B6A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1B6D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1B71 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1B74 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1B78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B82 _ 89. 04 24
        call    _showString                             ; 1B85 _ E8, FFFFF5C8
        nop                                             ; 1B8A _ 90
        leave                                           ; 1B8B _ C9
        ret                                             ; 1B8C _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1B8D _ 55
        mov     ebp, esp                                ; 1B8E _ 89. E5
        sub     esp, 56                                 ; 1B90 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1B93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B96 _ 89. 04 24
        call    _sheet_alloc                            ; 1B99 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1B9E _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1BA1 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1BA6 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1BAE _ 89. 04 24
        call    _memman_alloc_4k                        ; 1BB1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1BB6 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1BB9 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1BC1 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1BC9 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1BD1 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1BD4 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1BD8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BDB _ 89. 04 24
        call    _sheet_setbuf                           ; 1BDE _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1BE3 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1BE6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1BEA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1BED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BF1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BF4 _ 89. 04 24
        call    _make_window8                           ; 1BF7 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1BFC _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1C04 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1C0C _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1C14 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1C1C _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1C24 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1C27 _ 89. 04 24
        call    _make_textbox8                          ; 1C2A _ E8, 000003AA
        mov     dword [esp+0CH], 172                    ; 1C2F _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1C37 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1C3F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1C42 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C46 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C49 _ 89. 04 24
        call    _sheet_slide                            ; 1C4C _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1C51 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1C59 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1C5C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C60 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C63 _ 89. 04 24
        call    _sheet_updown                           ; 1C66 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1C6B _ 8B. 45, F4
        leave                                           ; 1C6E _ C9
        ret                                             ; 1C6F _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1C70 _ 55
        mov     ebp, esp                                ; 1C71 _ 89. E5
        push    ebx                                     ; 1C73 _ 53
        sub     esp, 68                                 ; 1C74 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1C77 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C7A _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1C7D _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1C80 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C83 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1C86 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1C89 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1C8C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C8F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C92 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1C94 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1C9C _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1CA0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1CA8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1CB0 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1CB8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CBB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CBF _ 89. 04 24
        call    _boxfill8                               ; 1CC2 _ E8, FFFFF5F8
        mov     eax, dword [ebp-18H]                    ; 1CC7 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1CCA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CCD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CD0 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1CD2 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1CDA _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1CDE _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1CE6 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1CEE _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1CF6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CF9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CFD _ 89. 04 24
        call    _boxfill8                               ; 1D00 _ E8, FFFFF5BA
        mov     eax, dword [ebp-1CH]                    ; 1D05 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1D08 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D0B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D0E _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1D10 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1D14 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1D1C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1D24 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1D2C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1D34 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D37 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D3B _ 89. 04 24
        call    _boxfill8                               ; 1D3E _ E8, FFFFF57C
        mov     eax, dword [ebp-1CH]                    ; 1D43 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1D46 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D49 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D4C _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1D4E _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1D52 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1D5A _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1D62 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1D6A _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1D72 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D75 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D79 _ 89. 04 24
        call    _boxfill8                               ; 1D7C _ E8, FFFFF53E
        mov     eax, dword [ebp-1CH]                    ; 1D81 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1D84 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1D87 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1D8A _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1D8D _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1D90 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D93 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D96 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D98 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D9C _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1DA0 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1DA8 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1DAC _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1DB4 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1DB7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DBB _ 89. 04 24
        call    _boxfill8                               ; 1DBE _ E8, FFFFF4FC
        mov     eax, dword [ebp-1CH]                    ; 1DC3 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1DC6 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1DC9 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1DCC _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1DCF _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1DD2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1DD5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DD8 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1DDA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DDE _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1DE2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1DEA _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1DEE _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1DF6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1DF9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DFD _ 89. 04 24
        call    _boxfill8                               ; 1E00 _ E8, FFFFF4BA
        mov     eax, dword [ebp-1CH]                    ; 1E05 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1E08 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1E0B _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1E0E _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1E11 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E14 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1E16 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1E1A _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1E1E _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1E26 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1E2E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1E36 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E39 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E3D _ 89. 04 24
        call    _boxfill8                               ; 1E40 _ E8, FFFFF47A
        mov     eax, dword [ebp-18H]                    ; 1E45 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1E48 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1E4B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E4E _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1E50 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1E58 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1E5C _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1E64 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1E6C _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1E74 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1E77 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E7B _ 89. 04 24
        call    _boxfill8                               ; 1E7E _ E8, FFFFF43C
        mov     eax, dword [ebp-1CH]                    ; 1E83 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1E86 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1E89 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1E8C _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1E8F _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1E92 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E95 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E98 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1E9A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E9E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1EA2 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1EA6 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1EAE _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1EB6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1EB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EBD _ 89. 04 24
        call    _boxfill8                               ; 1EC0 _ E8, FFFFF3FA
        mov     eax, dword [ebp-1CH]                    ; 1EC5 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1EC8 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1ECB _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1ECE _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1ED1 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1ED4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1ED7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EDA _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1EDC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1EE0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1EE4 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1EE8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1EF0 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1EF8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1EFB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EFF _ 89. 04 24
        call    _boxfill8                               ; 1F02 _ E8, FFFFF3B8
        mov     eax, dword [ebp+10H]                    ; 1F07 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1F0A _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1F0E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1F16 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1F1E _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1F26 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F29 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F2D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F30 _ 89. 04 24
        call    _showString                             ; 1F33 _ E8, FFFFF21A
        mov     dword [ebp-10H], 0                      ; 1F38 _ C7. 45, F0, 00000000
        jmp     ?_075                                   ; 1F3F _ E9, 00000084

?_068:  mov     dword [ebp-0CH], 0                      ; 1F44 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 1F4B _ EB, 71

?_069:  mov     eax, dword [ebp-10H]                    ; 1F4D _ 8B. 45, F0
        shl     eax, 4                                  ; 1F50 _ C1. E0, 04
        mov     edx, eax                                ; 1F53 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F55 _ 8B. 45, F4
        add     eax, edx                                ; 1F58 _ 01. D0
        add     eax, _closebtn.2483                     ; 1F5A _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1F5F _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1F62 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1F65 _ 80. 7D, EF, 40
        jnz     ?_070                                   ; 1F69 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1F6B _ C6. 45, EF, 00
        jmp     ?_073                                   ; 1F6F _ EB, 1C

?_070:  cmp     byte [ebp-11H], 36                      ; 1F71 _ 80. 7D, EF, 24
        jnz     ?_071                                   ; 1F75 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1F77 _ C6. 45, EF, 0F
        jmp     ?_073                                   ; 1F7B _ EB, 10

?_071:  cmp     byte [ebp-11H], 81                      ; 1F7D _ 80. 7D, EF, 51
        jnz     ?_072                                   ; 1F81 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1F83 _ C6. 45, EF, 08
        jmp     ?_073                                   ; 1F87 _ EB, 04

?_072:  mov     byte [ebp-11H], 7                       ; 1F89 _ C6. 45, EF, 07
?_073:  mov     eax, dword [ebp+0CH]                    ; 1F8D _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1F90 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1F92 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1F95 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1F98 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F9B _ 8B. 40, 04
        imul    eax, edx                                ; 1F9E _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1FA1 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1FA4 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1FA7 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1FAA _ 8B. 55, F4
        add     edx, ebx                                ; 1FAD _ 01. DA
        add     eax, edx                                ; 1FAF _ 01. D0
        lea     edx, [ecx+eax]                          ; 1FB1 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1FB4 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1FB8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1FBA _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 15                     ; 1FBE _ 83. 7D, F4, 0F
        jle     ?_069                                   ; 1FC2 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1FC4 _ 83. 45, F0, 01
?_075:  cmp     dword [ebp-10H], 13                     ; 1FC8 _ 83. 7D, F0, 0D
        jle     ?_068                                   ; 1FCC _ 0F 8E, FFFFFF72
        nop                                             ; 1FD2 _ 90
        add     esp, 68                                 ; 1FD3 _ 83. C4, 44
        pop     ebx                                     ; 1FD6 _ 5B
        pop     ebp                                     ; 1FD7 _ 5D
        ret                                             ; 1FD8 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1FD9 _ 55
        mov     ebp, esp                                ; 1FDA _ 89. E5
        push    edi                                     ; 1FDC _ 57
        push    esi                                     ; 1FDD _ 56
        push    ebx                                     ; 1FDE _ 53
        sub     esp, 44                                 ; 1FDF _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1FE2 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1FE5 _ 8B. 45, 14
        add     eax, edx                                ; 1FE8 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1FEA _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1FED _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1FF0 _ 8B. 45, 18
        add     eax, edx                                ; 1FF3 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1FF5 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1FF8 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1FFB _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1FFE _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2001 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2004 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2007 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 200A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 200D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2010 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2013 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2016 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2019 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 201B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 201F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2023 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2027 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 202B _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2033 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2037 _ 89. 04 24
        call    _boxfill8                               ; 203A _ E8, FFFFF280
        mov     eax, dword [ebp-14H]                    ; 203F _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2042 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2045 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2048 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 204B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 204E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2051 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2054 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2057 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 205A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 205D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2060 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2062 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2066 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 206A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 206E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2072 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 207A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 207E _ 89. 04 24
        call    _boxfill8                               ; 2081 _ E8, FFFFF239
        mov     eax, dword [ebp-14H]                    ; 2086 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2089 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 208C _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 208F _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2092 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2095 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2098 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 209B _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 209E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20A1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20A4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20A7 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20A9 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20AD _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20B1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20B5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20B9 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20C5 _ 89. 04 24
        call    _boxfill8                               ; 20C8 _ E8, FFFFF1F2
        mov     eax, dword [ebp-14H]                    ; 20CD _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 20D0 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 20D3 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 20D6 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 20D9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 20DC _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 20DF _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 20E2 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 20E5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20E8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20EB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20EE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20F0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20F4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20F8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20FC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2100 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2108 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 210C _ 89. 04 24
        call    _boxfill8                               ; 210F _ E8, FFFFF1AB
        mov     eax, dword [ebp+10H]                    ; 2114 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2117 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 211A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 211D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2120 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2123 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2126 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2129 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 212C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 212F _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2131 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2135 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2138 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 213C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2140 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2144 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 214C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2150 _ 89. 04 24
        call    _boxfill8                               ; 2153 _ E8, FFFFF167
        mov     eax, dword [ebp+0CH]                    ; 2158 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 215B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 215E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2161 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2164 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2167 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 216A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 216D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2170 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2173 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2175 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2178 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 217C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2180 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2184 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2188 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2190 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2194 _ 89. 04 24
        call    _boxfill8                               ; 2197 _ E8, FFFFF123
        mov     eax, dword [ebp-14H]                    ; 219C _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 219F _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 21A2 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 21A5 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 21A8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 21AB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 21AE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21B1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21B4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21B7 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 21B9 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 21BD _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 21C0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21C4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21C8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21CC _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 21D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21D8 _ 89. 04 24
        call    _boxfill8                               ; 21DB _ E8, FFFFF0DF
        mov     eax, dword [ebp-14H]                    ; 21E0 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 21E3 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 21E6 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 21E9 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 21EC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 21EF _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 21F2 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 21F5 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 21F8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21FB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21FE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2201 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2203 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2207 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 220B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 220F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2213 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 221B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 221F _ 89. 04 24
        call    _boxfill8                               ; 2222 _ E8, FFFFF098
        mov     eax, dword [ebp+10H]                    ; 2227 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 222A _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 222D _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 2230 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 2233 _ 8B. 45, 1C
        movzx   eax, al                                 ; 2236 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2239 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 223C _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 223F _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 2242 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2244 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2247 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 224B _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 224E _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 2252 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2256 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 225A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 225E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2262 _ 89. 14 24
        call    _boxfill8                               ; 2265 _ E8, FFFFF055
        nop                                             ; 226A _ 90
        add     esp, 44                                 ; 226B _ 83. C4, 2C
        pop     ebx                                     ; 226E _ 5B
        pop     esi                                     ; 226F _ 5E
        pop     edi                                     ; 2270 _ 5F
        pop     ebp                                     ; 2271 _ 5D
        ret                                             ; 2272 _ C3
; _make_textbox8 End of function

        nop                                             ; 2273 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2274 _ 55
        mov     ebp, esp                                ; 2275 _ 89. E5
        sub     esp, 40                                 ; 2277 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 227A _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2282 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2285 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2288 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 228D _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2290 _ 83. 7D, F0, 00
        jnz     ?_076                                   ; 2294 _ 75, 0A
        mov     eax, 0                                  ; 2296 _ B8, 00000000
        jmp     ?_080                                   ; 229B _ E9, 0000009D

?_076:  mov     eax, dword [ebp+10H]                    ; 22A0 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 22A3 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 22A7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22AB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22AE _ 89. 04 24
        call    _memman_alloc_4k                        ; 22B1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 22B6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 22B8 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 22BB _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 22BE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 22C1 _ 8B. 40, 04
        test    eax, eax                                ; 22C4 _ 85. C0
        jnz     ?_077                                   ; 22C6 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 22C8 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 22CB _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 22D3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22D7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22DA _ 89. 04 24
        call    _memman_free_4k                         ; 22DD _ E8, 00000000(rel)
        mov     eax, 0                                  ; 22E2 _ B8, 00000000
        jmp     ?_080                                   ; 22E7 _ EB, 54

?_077:  mov     eax, dword [ebp-10H]                    ; 22E9 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 22EC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 22EF _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 22F1 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 22F4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 22F7 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 22FA _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 22FD _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2300 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2303 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 2306 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 230D _ C7. 45, F4, 00000000
        jmp     ?_079                                   ; 2314 _ EB, 1B

?_078:  mov     edx, dword [ebp-10H]                    ; 2316 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2319 _ 8B. 45, F4
        add     eax, 33                                 ; 231C _ 83. C0, 21
        shl     eax, 5                                  ; 231F _ C1. E0, 05
        add     eax, edx                                ; 2322 _ 01. D0
        add     eax, 16                                 ; 2324 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2327 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 232D _ 83. 45, F4, 01
?_079:  cmp     dword [ebp-0CH], 255                    ; 2331 _ 81. 7D, F4, 000000FF
        jle     ?_078                                   ; 2338 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 233A _ 8B. 45, F0
?_080:  leave                                           ; 233D _ C9
        ret                                             ; 233E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 233F _ 55
        mov     ebp, esp                                ; 2340 _ 89. E5
        sub     esp, 16                                 ; 2342 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2345 _ C7. 45, FC, 00000000
        jmp     ?_083                                   ; 234C _ EB, 5B

?_081:  mov     edx, dword [ebp+8H]                     ; 234E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2351 _ 8B. 45, FC
        add     eax, 33                                 ; 2354 _ 83. C0, 21
        shl     eax, 5                                  ; 2357 _ C1. E0, 05
        add     eax, edx                                ; 235A _ 01. D0
        add     eax, 16                                 ; 235C _ 83. C0, 10
        mov     eax, dword [eax]                        ; 235F _ 8B. 00
        test    eax, eax                                ; 2361 _ 85. C0
        jnz     ?_082                                   ; 2363 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2365 _ 8B. 45, FC
        shl     eax, 5                                  ; 2368 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 236B _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2371 _ 8B. 45, 08
        add     eax, edx                                ; 2374 _ 01. D0
        add     eax, 4                                  ; 2376 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2379 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 237C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 237F _ 8B. 55, FC
        add     edx, 4                                  ; 2382 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2385 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2388 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 238C _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 238F _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2396 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2399 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 23A0 _ 8B. 45, F8
        jmp     ?_084                                   ; 23A3 _ EB, 12

?_082:  add     dword [ebp-4H], 1                       ; 23A5 _ 83. 45, FC, 01
?_083:  cmp     dword [ebp-4H], 255                     ; 23A9 _ 81. 7D, FC, 000000FF
        jle     ?_081                                   ; 23B0 _ 7E, 9C
        mov     eax, 0                                  ; 23B2 _ B8, 00000000
?_084:  leave                                           ; 23B7 _ C9
        ret                                             ; 23B8 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 23B9 _ 55
        mov     ebp, esp                                ; 23BA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 23BC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 23BF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 23C2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 23C4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 23C7 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 23CA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 23CD _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 23D0 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 23D3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 23D6 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 23D9 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 23DC _ 89. 50, 14
        nop                                             ; 23DF _ 90
        pop     ebp                                     ; 23E0 _ 5D
        ret                                             ; 23E1 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 23E2 _ 55
        mov     ebp, esp                                ; 23E3 _ 89. E5
        push    edi                                     ; 23E5 _ 57
        push    esi                                     ; 23E6 _ 56
        push    ebx                                     ; 23E7 _ 53
        sub     esp, 60                                 ; 23E8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 23EB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 23EE _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 23F1 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 23F4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23F7 _ 8B. 40, 10
        add     eax, 1                                  ; 23FA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 23FD _ 39. 45, 10
        jle     ?_085                                   ; 2400 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2402 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2405 _ 8B. 40, 10
        add     eax, 1                                  ; 2408 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 240B _ 89. 45, 10
?_085:  cmp     dword [ebp+10H], -1                     ; 240E _ 83. 7D, 10, FF
        jge     ?_086                                   ; 2412 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2414 _ C7. 45, 10, FFFFFFFF
?_086:  mov     eax, dword [ebp+0CH]                    ; 241B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 241E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2421 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2424 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2427 _ 3B. 45, 10
        jle     ?_093                                   ; 242A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2430 _ 83. 7D, 10, 00
        js      ?_089                                   ; 2434 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 243A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 243D _ 89. 45, E4
        jmp     ?_088                                   ; 2440 _ EB, 34

?_087:  mov     eax, dword [ebp-1CH]                    ; 2442 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2445 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2448 _ 8B. 45, 08
        add     edx, 4                                  ; 244B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 244E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2452 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2455 _ 8B. 55, E4
        add     edx, 4                                  ; 2458 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 245B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 245F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2462 _ 8B. 55, E4
        add     edx, 4                                  ; 2465 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2468 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 246C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 246F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2472 _ 83. 6D, E4, 01
?_088:  mov     eax, dword [ebp-1CH]                    ; 2476 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2479 _ 3B. 45, 10
        jg      ?_087                                   ; 247C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 247E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2481 _ 8B. 55, 10
        add     edx, 4                                  ; 2484 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2487 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 248A _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 248E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2491 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2494 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2497 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 249A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 249D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 24A0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 24A3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24A6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24A9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24AC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24AF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24B2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24B5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24B8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24BB _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 24BE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 24C2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 24C6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24CA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 24CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24D5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 24D8 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 24DD _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 24E0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 24E3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24E6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24E9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 24EC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 24EF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 24F2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24F5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24F8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24FB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24FE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2501 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2504 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2507 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 250A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 250D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2510 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2514 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2518 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 251C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2520 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2524 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2528 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 252B _ 89. 04 24
        call    _sheet_refreshsub                       ; 252E _ E8, 00000465
        jmp     ?_100                                   ; 2533 _ E9, 0000027D

?_089:  mov     eax, dword [ebp+8H]                     ; 2538 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 253B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 253E _ 39. 45, E0
        jge     ?_092                                   ; 2541 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2543 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2546 _ 89. 45, E4
        jmp     ?_091                                   ; 2549 _ EB, 34

?_090:  mov     eax, dword [ebp-1CH]                    ; 254B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 254E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2551 _ 8B. 45, 08
        add     edx, 4                                  ; 2554 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2557 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 255B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 255E _ 8B. 55, E4
        add     edx, 4                                  ; 2561 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2564 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2568 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 256B _ 8B. 55, E4
        add     edx, 4                                  ; 256E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2571 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2575 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2578 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 257B _ 83. 45, E4, 01
?_091:  mov     eax, dword [ebp+8H]                     ; 257F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2582 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2585 _ 39. 45, E4
        jl      ?_090                                   ; 2588 _ 7C, C1
?_092:  mov     eax, dword [ebp+8H]                     ; 258A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 258D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2590 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2593 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2596 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2599 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 259C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 259F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25A2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25A5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25A8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25AB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25AE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25B1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25B4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25B7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25BA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25BD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25C0 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 25C3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 25CB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 25CF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25D3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25DE _ 89. 04 24
        call    _sheet_refreshmap                       ; 25E1 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 25E6 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 25E9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 25EC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25EF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25F2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25F5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25F8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25FB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25FE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2601 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2604 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2607 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 260A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 260D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2610 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2613 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2616 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 261A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2622 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2626 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 262A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 262E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2632 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2635 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2638 _ E8, 0000035B
        jmp     ?_100                                   ; 263D _ E9, 00000173

?_093:  mov     eax, dword [ebp-20H]                    ; 2642 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2645 _ 3B. 45, 10
        jge     ?_100                                   ; 2648 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 264E _ 83. 7D, E0, 00
        js      ?_096                                   ; 2652 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2654 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2657 _ 89. 45, E4
        jmp     ?_095                                   ; 265A _ EB, 34

?_094:  mov     eax, dword [ebp-1CH]                    ; 265C _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 265F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2662 _ 8B. 45, 08
        add     edx, 4                                  ; 2665 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2668 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 266C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 266F _ 8B. 55, E4
        add     edx, 4                                  ; 2672 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2675 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2679 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 267C _ 8B. 55, E4
        add     edx, 4                                  ; 267F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2682 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2686 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2689 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 268C _ 83. 45, E4, 01
?_095:  mov     eax, dword [ebp-1CH]                    ; 2690 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2693 _ 3B. 45, 10
        jl      ?_094                                   ; 2696 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2698 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 269B _ 8B. 55, 10
        add     edx, 4                                  ; 269E _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 26A1 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 26A4 _ 89. 4C 90, 04
        jmp     ?_099                                   ; 26A8 _ EB, 6C

?_096:  mov     eax, dword [ebp+8H]                     ; 26AA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26AD _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 26B0 _ 89. 45, E4
        jmp     ?_098                                   ; 26B3 _ EB, 3A

?_097:  mov     eax, dword [ebp-1CH]                    ; 26B5 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 26B8 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 26BB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 26BE _ 8B. 55, E4
        add     edx, 4                                  ; 26C1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 26C4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 26C8 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 26CB _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 26CE _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 26D2 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 26D5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 26D8 _ 8B. 45, 08
        add     edx, 4                                  ; 26DB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 26DE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 26E2 _ 8B. 55, E4
        add     edx, 1                                  ; 26E5 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 26E8 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 26EB _ 83. 6D, E4, 01
?_098:  mov     eax, dword [ebp-1CH]                    ; 26EF _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 26F2 _ 3B. 45, 10
        jge     ?_097                                   ; 26F5 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26FA _ 8B. 55, 10
        add     edx, 4                                  ; 26FD _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2700 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2703 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2707 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 270A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 270D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2710 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2713 _ 89. 50, 10
?_099:  mov     eax, dword [ebp+0CH]                    ; 2716 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2719 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 271C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 271F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2722 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2725 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2728 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 272B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 272E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2731 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2734 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2737 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 273A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 273D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2740 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2743 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2747 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 274B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 274F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2753 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2757 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 275A _ 89. 04 24
        call    _sheet_refreshmap                       ; 275D _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2762 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2765 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2768 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 276B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 276E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2771 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2774 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2777 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 277A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 277D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2780 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2783 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2786 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2789 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 278C _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 278F _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 2793 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2796 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 279A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 279E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27A2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27A6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27AD _ 89. 04 24
        call    _sheet_refreshsub                       ; 27B0 _ E8, 000001E3
?_100:  nop                                             ; 27B5 _ 90
        add     esp, 60                                 ; 27B6 _ 83. C4, 3C
        pop     ebx                                     ; 27B9 _ 5B
        pop     esi                                     ; 27BA _ 5E
        pop     edi                                     ; 27BB _ 5F
        pop     ebp                                     ; 27BC _ 5D
        ret                                             ; 27BD _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 27BE _ 55
        mov     ebp, esp                                ; 27BF _ 89. E5
        push    edi                                     ; 27C1 _ 57
        push    esi                                     ; 27C2 _ 56
        push    ebx                                     ; 27C3 _ 53
        sub     esp, 60                                 ; 27C4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 27C7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27CA _ 8B. 40, 18
        test    eax, eax                                ; 27CD _ 85. C0
        js      ?_101                                   ; 27CF _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 27D1 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 27D4 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 27D7 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 27DA _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 27DD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27E0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 27E3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 27E6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27E9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27EC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 27EF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 27F2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27F5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27F8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 27FB _ 8B. 45, 14
        add     edx, eax                                ; 27FE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2800 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2803 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2806 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2809 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 280C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 280F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2813 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2817 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 281B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 281F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2823 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2827 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 282A _ 89. 04 24
        call    _sheet_refreshsub                       ; 282D _ E8, 00000166
?_101:  mov     eax, 0                                  ; 2832 _ B8, 00000000
        add     esp, 60                                 ; 2837 _ 83. C4, 3C
        pop     ebx                                     ; 283A _ 5B
        pop     esi                                     ; 283B _ 5E
        pop     edi                                     ; 283C _ 5F
        pop     ebp                                     ; 283D _ 5D
        ret                                             ; 283E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 283F _ 55
        mov     ebp, esp                                ; 2840 _ 89. E5
        push    esi                                     ; 2842 _ 56
        push    ebx                                     ; 2843 _ 53
        sub     esp, 48                                 ; 2844 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2847 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 284A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 284D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2850 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2853 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2856 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2859 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 285C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 285F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2862 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2865 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2868 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 286B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 286E _ 8B. 40, 18
        test    eax, eax                                ; 2871 _ 85. C0
        js      ?_102                                   ; 2873 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2879 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 287C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 287F _ 8B. 45, F0
        add     edx, eax                                ; 2882 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2884 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2887 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 288A _ 8B. 45, F4
        add     eax, ecx                                ; 288D _ 01. C8
        mov     dword [esp+14H], 0                      ; 288F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2897 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 289B _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 289F _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 28A2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 28A6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 28A9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28AD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28B0 _ 89. 04 24
        call    _sheet_refreshmap                       ; 28B3 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 28B8 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 28BB _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 28BE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 28C1 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 28C4 _ 8B. 45, 14
        add     edx, eax                                ; 28C7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28C9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 28CC _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 28CF _ 8B. 45, 10
        add     eax, ebx                                ; 28D2 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 28D4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 28D8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 28DC _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 28E0 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 28E3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 28E7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 28EA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28F1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 28F4 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 28F9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 28FC _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 28FF _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2902 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2905 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2908 _ 8B. 45, F0
        add     edx, eax                                ; 290B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 290D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2910 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2913 _ 8B. 45, F4
        add     eax, ebx                                ; 2916 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2918 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 291C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2924 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2928 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 292C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 292F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2933 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2936 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 293A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 293D _ 89. 04 24
        call    _sheet_refreshsub                       ; 2940 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2945 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2948 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 294B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 294E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2951 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2954 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2957 _ 8B. 45, 14
        add     edx, eax                                ; 295A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 295C _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 295F _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2962 _ 8B. 45, 10
        add     eax, esi                                ; 2965 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2967 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 296B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 296F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2973 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2977 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 297A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 297E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2981 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2985 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2988 _ 89. 04 24
        call    _sheet_refreshsub                       ; 298B _ E8, 00000008
?_102:  nop                                             ; 2990 _ 90
        add     esp, 48                                 ; 2991 _ 83. C4, 30
        pop     ebx                                     ; 2994 _ 5B
        pop     esi                                     ; 2995 _ 5E
        pop     ebp                                     ; 2996 _ 5D
        ret                                             ; 2997 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2998 _ 55
        mov     ebp, esp                                ; 2999 _ 89. E5
        sub     esp, 48                                 ; 299B _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 299E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29A1 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 29A3 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 29A6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 29A9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 29AC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 29AF _ 83. 7D, 0C, 00
        jns     ?_103                                   ; 29B3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 29B5 _ C7. 45, 0C, 00000000
?_103:  cmp     dword [ebp+10H], 8                      ; 29BC _ 83. 7D, 10, 08
        jg      ?_104                                   ; 29C0 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 29C2 _ C7. 45, 10, 00000000
?_104:  mov     eax, dword [ebp+8H]                     ; 29C9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29CC _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 29CF _ 39. 45, 14
        jle     ?_105                                   ; 29D2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29D4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29D7 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 29DA _ 89. 45, 14
?_105:  mov     eax, dword [ebp+8H]                     ; 29DD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29E0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 29E3 _ 39. 45, 18
        jle     ?_106                                   ; 29E6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29E8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29EB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 29EE _ 89. 45, 18
?_106:  mov     eax, dword [ebp+1CH]                    ; 29F1 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 29F4 _ 89. 45, FC
        jmp     ?_113                                   ; 29F7 _ E9, 0000010F

?_107:  mov     eax, dword [ebp+8H]                     ; 29FC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 29FF _ 8B. 55, FC
        add     edx, 4                                  ; 2A02 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A05 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2A09 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2A0C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2A0F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2A11 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2A14 _ 8B. 45, 08
        add     eax, 1044                               ; 2A17 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2A1C _ 8B. 55, E8
        sub     edx, eax                                ; 2A1F _ 29. C2
        mov     eax, edx                                ; 2A21 _ 89. D0
        sar     eax, 5                                  ; 2A23 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2A26 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2A29 _ C7. 45, F4, 00000000
        jmp     ?_112                                   ; 2A30 _ E9, 000000C3

?_108:  mov     eax, dword [ebp-18H]                    ; 2A35 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2A38 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2A3B _ 8B. 45, F4
        add     eax, edx                                ; 2A3E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2A40 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2A43 _ C7. 45, F8, 00000000
        jmp     ?_111                                   ; 2A4A _ E9, 00000096

?_109:  mov     eax, dword [ebp-18H]                    ; 2A4F _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2A52 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2A55 _ 8B. 45, F8
        add     eax, edx                                ; 2A58 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2A5A _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2A5D _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2A60 _ 3B. 45, D8
        jg      ?_110                                   ; 2A63 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2A65 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2A68 _ 3B. 45, 14
        jge     ?_110                                   ; 2A6B _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2A6D _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2A70 _ 3B. 45, DC
        jg      ?_110                                   ; 2A73 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2A75 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2A78 _ 3B. 45, 18
        jge     ?_110                                   ; 2A7B _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2A7D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2A80 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2A83 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2A87 _ 8B. 55, F8
        add     eax, edx                                ; 2A8A _ 01. D0
        mov     edx, eax                                ; 2A8C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2A8E _ 8B. 45, E4
        add     eax, edx                                ; 2A91 _ 01. D0
        movzx   eax, byte [eax]                         ; 2A93 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2A96 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2A99 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A9C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2A9F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2AA3 _ 8B. 55, D8
        add     eax, edx                                ; 2AA6 _ 01. D0
        mov     edx, eax                                ; 2AA8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2AAA _ 8B. 45, EC
        add     eax, edx                                ; 2AAD _ 01. D0
        movzx   eax, byte [eax]                         ; 2AAF _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 2AB2 _ 38. 45, E3
        jnz     ?_110                                   ; 2AB5 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2AB7 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2ABB _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2ABE _ 8B. 52, 14
        cmp     eax, edx                                ; 2AC1 _ 39. D0
        jz      ?_110                                   ; 2AC3 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2AC5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AC8 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2ACB _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2ACF _ 8B. 55, D8
        add     eax, edx                                ; 2AD2 _ 01. D0
        mov     edx, eax                                ; 2AD4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2AD6 _ 8B. 45, F0
        add     edx, eax                                ; 2AD9 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2ADB _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2ADF _ 88. 02
?_110:  add     dword [ebp-8H], 1                       ; 2AE1 _ 83. 45, F8, 01
?_111:  mov     eax, dword [ebp-18H]                    ; 2AE5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2AE8 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2AEB _ 39. 45, F8
        jl      ?_109                                   ; 2AEE _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2AF4 _ 83. 45, F4, 01
?_112:  mov     eax, dword [ebp-18H]                    ; 2AF8 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2AFB _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2AFE _ 39. 45, F4
        jl      ?_108                                   ; 2B01 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2B07 _ 83. 45, FC, 01
?_113:  mov     eax, dword [ebp-4H]                     ; 2B0B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2B0E _ 3B. 45, 20
        jle     ?_107                                   ; 2B11 _ 0F 8E, FFFFFEE5
        nop                                             ; 2B17 _ 90
        leave                                           ; 2B18 _ C9
        ret                                             ; 2B19 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B1A _ 55
        mov     ebp, esp                                ; 2B1B _ 89. E5
        sub     esp, 64                                 ; 2B1D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B20 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B23 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2B26 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2B29 _ 83. 7D, 0C, 00
        jns     ?_114                                   ; 2B2D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B2F _ C7. 45, 0C, 00000000
?_114:  cmp     dword [ebp+10H], 0                      ; 2B36 _ 83. 7D, 10, 00
        jns     ?_115                                   ; 2B3A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2B3C _ C7. 45, 10, 00000000
?_115:  mov     eax, dword [ebp+8H]                     ; 2B43 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B46 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2B49 _ 39. 45, 14
        jle     ?_116                                   ; 2B4C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B4E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B51 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2B54 _ 89. 45, 14
?_116:  mov     eax, dword [ebp+8H]                     ; 2B57 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B5A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2B5D _ 39. 45, 18
        jle     ?_117                                   ; 2B60 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B62 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B65 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2B68 _ 89. 45, 18
?_117:  mov     eax, dword [ebp+1CH]                    ; 2B6B _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2B6E _ 89. 45, FC
        jmp     ?_128                                   ; 2B71 _ E9, 00000139

?_118:  mov     eax, dword [ebp+8H]                     ; 2B76 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B79 _ 8B. 55, FC
        add     edx, 4                                  ; 2B7C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2B7F _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 2B83 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        add     eax, 1044                               ; 2B89 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2B8E _ 8B. 55, DC
        sub     edx, eax                                ; 2B91 _ 29. C2
        mov     eax, edx                                ; 2B93 _ 89. D0
        sar     eax, 5                                  ; 2B95 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2B98 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2B9B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2B9E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2BA0 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2BA3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2BA6 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2BA9 _ 8B. 55, 0C
        sub     edx, eax                                ; 2BAC _ 29. C2
        mov     eax, edx                                ; 2BAE _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2BB0 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 2BB3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2BB6 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2BB9 _ 8B. 55, 10
        sub     edx, eax                                ; 2BBC _ 29. C2
        mov     eax, edx                                ; 2BBE _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2BC0 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 2BC3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2BC6 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2BC9 _ 8B. 55, 14
        sub     edx, eax                                ; 2BCC _ 29. C2
        mov     eax, edx                                ; 2BCE _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2BD0 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2BD3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2BD6 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2BD9 _ 8B. 55, 18
        sub     edx, eax                                ; 2BDC _ 29. C2
        mov     eax, edx                                ; 2BDE _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2BE0 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2BE3 _ 83. 7D, F0, 00
        jns     ?_119                                   ; 2BE7 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2BE9 _ C7. 45, F0, 00000000
?_119:  cmp     dword [ebp-14H], 0                      ; 2BF0 _ 83. 7D, EC, 00
        jns     ?_120                                   ; 2BF4 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2BF6 _ C7. 45, EC, 00000000
?_120:  mov     eax, dword [ebp-24H]                    ; 2BFD _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C00 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2C03 _ 39. 45, E8
        jle     ?_121                                   ; 2C06 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2C08 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C0B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2C0E _ 89. 45, E8
?_121:  mov     eax, dword [ebp-24H]                    ; 2C11 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C14 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2C17 _ 39. 45, E4
        jle     ?_122                                   ; 2C1A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2C1C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2C1F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2C22 _ 89. 45, E4
?_122:  mov     eax, dword [ebp-14H]                    ; 2C25 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2C28 _ 89. 45, F4
        jmp     ?_127                                   ; 2C2B _ EB, 76

?_123:  mov     eax, dword [ebp-24H]                    ; 2C2D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2C30 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2C33 _ 8B. 45, F4
        add     eax, edx                                ; 2C36 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2C38 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C3B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2C3E _ 89. 45, F8
        jmp     ?_126                                   ; 2C41 _ EB, 54

?_124:  mov     eax, dword [ebp-24H]                    ; 2C43 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2C46 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2C49 _ 8B. 45, F8
        add     eax, edx                                ; 2C4C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2C4E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2C51 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2C54 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2C57 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2C5B _ 8B. 55, F8
        add     eax, edx                                ; 2C5E _ 01. D0
        mov     edx, eax                                ; 2C60 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2C62 _ 8B. 45, D4
        add     eax, edx                                ; 2C65 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C67 _ 0F B6. 00
        movzx   eax, al                                 ; 2C6A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2C6D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2C70 _ 8B. 52, 14
        cmp     eax, edx                                ; 2C73 _ 39. D0
        jz      ?_125                                   ; 2C75 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2C77 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C7A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2C7D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2C81 _ 8B. 55, CC
        add     eax, edx                                ; 2C84 _ 01. D0
        mov     edx, eax                                ; 2C86 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2C88 _ 8B. 45, E0
        add     edx, eax                                ; 2C8B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2C8D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2C91 _ 88. 02
?_125:  add     dword [ebp-8H], 1                       ; 2C93 _ 83. 45, F8, 01
?_126:  mov     eax, dword [ebp-8H]                     ; 2C97 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2C9A _ 3B. 45, E8
        jl      ?_124                                   ; 2C9D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2C9F _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp-0CH]                    ; 2CA3 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2CA6 _ 3B. 45, E4
        jl      ?_123                                   ; 2CA9 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2CAB _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2CAF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CB2 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2CB5 _ 39. 45, FC
        jle     ?_118                                   ; 2CB8 _ 0F 8E, FFFFFEB8
        nop                                             ; 2CBE _ 90
        leave                                           ; 2CBF _ C9
        ret                                             ; 2CC0 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2CC1 _ 90
        nop                                             ; 2CC2 _ 90
        nop                                             ; 2CC3 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2CC4 _ 55
        mov     ebp, esp                                ; 2CC5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CC7 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2CCA _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CD0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2CD3 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CDA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2CDD _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CE4 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2CE7 _ C7. 40, 0C, 00000000
        nop                                             ; 2CEE _ 90
        pop     ebp                                     ; 2CEF _ 5D
        ret                                             ; 2CF0 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2CF1 _ 55
        mov     ebp, esp                                ; 2CF2 _ 89. E5
        sub     esp, 16                                 ; 2CF4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2CF7 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2CFE _ C7. 45, FC, 00000000
        jmp     ?_130                                   ; 2D05 _ EB, 14

?_129:  mov     eax, dword [ebp+8H]                     ; 2D07 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D0A _ 8B. 55, FC
        add     edx, 2                                  ; 2D0D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D10 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2D14 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2D17 _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp+8H]                     ; 2D1B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D1E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2D20 _ 39. 45, FC
        jc      ?_129                                   ; 2D23 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2D25 _ 8B. 45, F8
        leave                                           ; 2D28 _ C9
        ret                                             ; 2D29 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2D2A _ 55
        mov     ebp, esp                                ; 2D2B _ 89. E5
        sub     esp, 16                                 ; 2D2D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2D30 _ C7. 45, FC, 00000000
        jmp     ?_134                                   ; 2D37 _ E9, 00000083

?_131:  mov     eax, dword [ebp+8H]                     ; 2D3C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D3F _ 8B. 55, FC
        add     edx, 2                                  ; 2D42 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D45 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2D49 _ 39. 45, 0C
        ja      ?_133                                   ; 2D4C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2D4E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D51 _ 8B. 55, FC
        add     edx, 2                                  ; 2D54 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D57 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2D5A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2D5D _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D60 _ 8B. 55, FC
        add     edx, 2                                  ; 2D63 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2D66 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2D69 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2D6C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D6F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D72 _ 8B. 55, FC
        add     edx, 2                                  ; 2D75 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2D78 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2D7B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D7E _ 8B. 55, FC
        add     edx, 2                                  ; 2D81 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D84 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2D88 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2D8B _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2D8E _ 8B. 4D, FC
        add     ecx, 2                                  ; 2D91 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2D94 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2D98 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D9B _ 8B. 55, FC
        add     edx, 2                                  ; 2D9E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2DA1 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2DA5 _ 85. C0
        jnz     ?_132                                   ; 2DA7 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2DA9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DAC _ 8B. 00
        lea     edx, [eax-1H]                           ; 2DAE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DB1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DB4 _ 89. 10
?_132:  mov     eax, dword [ebp-8H]                     ; 2DB6 _ 8B. 45, F8
        jmp     ?_135                                   ; 2DB9 _ EB, 17

?_133:  add     dword [ebp-4H], 1                       ; 2DBB _ 83. 45, FC, 01
?_134:  mov     eax, dword [ebp+8H]                     ; 2DBF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DC2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2DC4 _ 39. 45, FC
        jc      ?_131                                   ; 2DC7 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2DCD _ B8, 00000000
?_135:  leave                                           ; 2DD2 _ C9
        ret                                             ; 2DD3 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2DD4 _ 55
        mov     ebp, esp                                ; 2DD5 _ 89. E5
        push    ebx                                     ; 2DD7 _ 53
        sub     esp, 16                                 ; 2DD8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2DDB _ C7. 45, F8, 00000000
        jmp     ?_137                                   ; 2DE2 _ EB, 15

?_136:  mov     eax, dword [ebp+8H]                     ; 2DE4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DE7 _ 8B. 55, F8
        add     edx, 2                                  ; 2DEA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2DED _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2DF0 _ 39. 45, 0C
        jc      ?_138                                   ; 2DF3 _ 72, 10
        add     dword [ebp-8H], 1                       ; 2DF5 _ 83. 45, F8, 01
?_137:  mov     eax, dword [ebp+8H]                     ; 2DF9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DFC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2DFE _ 39. 45, F8
        jl      ?_136                                   ; 2E01 _ 7C, E1
        jmp     ?_139                                   ; 2E03 _ EB, 01

?_138:  nop                                             ; 2E05 _ 90
?_139:  cmp     dword [ebp-8H], 0                       ; 2E06 _ 83. 7D, F8, 00
        jle     ?_141                                   ; 2E0A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2E10 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E13 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E16 _ 8B. 45, 08
        add     edx, 2                                  ; 2E19 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2E1C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2E1F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E22 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E25 _ 8B. 45, 08
        add     edx, 2                                  ; 2E28 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E2B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2E2F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2E31 _ 39. 45, 0C
        jne     ?_141                                   ; 2E34 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2E3A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E3D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E40 _ 8B. 45, 08
        add     edx, 2                                  ; 2E43 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2E46 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2E4A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E4D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E50 _ 8B. 45, 10
        add     ecx, eax                                ; 2E53 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2E55 _ 8B. 45, 08
        add     edx, 2                                  ; 2E58 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E5B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E5F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E62 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2E64 _ 39. 45, F8
        jge     ?_140                                   ; 2E67 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2E69 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2E6C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2E6F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E72 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E75 _ 8B. 55, F8
        add     edx, 2                                  ; 2E78 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E7B _ 8B. 04 D0
        cmp     ecx, eax                                ; 2E7E _ 39. C1
        jnz     ?_140                                   ; 2E80 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2E82 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2E85 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E88 _ 8B. 45, 08
        add     edx, 2                                  ; 2E8B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2E8E _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E92 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E95 _ 8B. 55, F8
        add     edx, 2                                  ; 2E98 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E9B _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2E9F _ 8B. 55, F8
        sub     edx, 1                                  ; 2EA2 _ 83. EA, 01
        add     ecx, eax                                ; 2EA5 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2EA7 _ 8B. 45, 08
        add     edx, 2                                  ; 2EAA _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2EAD _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EB1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EB4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EB6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EB9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2EBC _ 89. 10
?_140:  mov     eax, 0                                  ; 2EBE _ B8, 00000000
        jmp     ?_147                                   ; 2EC3 _ E9, 0000011C

?_141:  mov     eax, dword [ebp+8H]                     ; 2EC8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2ECB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2ECD _ 39. 45, F8
        jge     ?_142                                   ; 2ED0 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2ED2 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2ED5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2ED8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EDE _ 8B. 55, F8
        add     edx, 2                                  ; 2EE1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2EE4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2EE7 _ 39. C1
        jnz     ?_142                                   ; 2EE9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2EEB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EEE _ 8B. 55, F8
        add     edx, 2                                  ; 2EF1 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2EF4 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2EF7 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2EFA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EFD _ 8B. 55, F8
        add     edx, 2                                  ; 2F00 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2F03 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2F07 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2F0A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F0D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F10 _ 8B. 55, F8
        add     edx, 2                                  ; 2F13 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F16 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2F1A _ B8, 00000000
        jmp     ?_147                                   ; 2F1F _ E9, 000000C0

?_142:  mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F27 _ 8B. 00
        cmp     eax, 4095                               ; 2F29 _ 3D, 00000FFF
        jg      ?_146                                   ; 2F2E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2F34 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F37 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2F39 _ 89. 45, F4
        jmp     ?_144                                   ; 2F3C _ EB, 28

?_143:  mov     eax, dword [ebp-0CH]                    ; 2F3E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F41 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2F44 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2F47 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2F4A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2F4D _ 8B. 45, 08
        add     edx, 2                                  ; 2F50 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2F53 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2F56 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2F58 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2F5B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2F5E _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2F62 _ 83. 6D, F4, 01
?_144:  mov     eax, dword [ebp-0CH]                    ; 2F66 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2F69 _ 3B. 45, F8
        jg      ?_143                                   ; 2F6C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2F6E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F71 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2F73 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F76 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F79 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F7B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F7E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F81 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F84 _ 8B. 00
        cmp     edx, eax                                ; 2F86 _ 39. C2
        jge     ?_145                                   ; 2F88 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2F8A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F8D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F8F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F92 _ 89. 50, 04
?_145:  mov     eax, dword [ebp+8H]                     ; 2F95 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2F98 _ 8B. 55, F8
        add     edx, 2                                  ; 2F9B _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2F9E _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2FA1 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2FA4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2FA7 _ 8B. 55, F8
        add     edx, 2                                  ; 2FAA _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2FAD _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2FB0 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2FB4 _ B8, 00000000
        jmp     ?_147                                   ; 2FB9 _ EB, 29

?_146:  mov     eax, dword [ebp+8H]                     ; 2FBB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2FBE _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2FC1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FC4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2FC7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FCA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FCD _ 8B. 40, 08
        mov     edx, eax                                ; 2FD0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2FD2 _ 8B. 45, 10
        add     eax, edx                                ; 2FD5 _ 01. D0
        mov     edx, eax                                ; 2FD7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FD9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2FDC _ 89. 50, 08
        mov     eax, 4294967295                         ; 2FDF _ B8, FFFFFFFF
?_147:  add     esp, 16                                 ; 2FE4 _ 83. C4, 10
        pop     ebx                                     ; 2FE7 _ 5B
        pop     ebp                                     ; 2FE8 _ 5D
        ret                                             ; 2FE9 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2FEA _ 55
        mov     ebp, esp                                ; 2FEB _ 89. E5
        sub     esp, 24                                 ; 2FED _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FF0 _ 8B. 45, 0C
        add     eax, 4095                               ; 2FF3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2FF8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2FFD _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3000 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3003 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3007 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 300A _ 89. 04 24
        call    _memman_alloc                           ; 300D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 3012 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3015 _ 8B. 45, FC
        leave                                           ; 3018 _ C9
        ret                                             ; 3019 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 301A _ 55
        mov     ebp, esp                                ; 301B _ 89. E5
        sub     esp, 28                                 ; 301D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3020 _ 8B. 45, 10
        add     eax, 4095                               ; 3023 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3028 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 302D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3030 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3033 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3037 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 303A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 303E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3041 _ 89. 04 24
        call    _memman_free                            ; 3044 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 3049 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 304C _ 8B. 45, FC
        leave                                           ; 304F _ C9
        ret                                             ; 3050 _ C3
; _memman_free_4k End of function

        nop                                             ; 3051 _ 90
        nop                                             ; 3052 _ 90
        nop                                             ; 3053 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3054 _ 55
        mov     ebp, esp                                ; 3055 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3057 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 305A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 305D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3060 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3063 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3066 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3068 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 306B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 306E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3071 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3074 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 307B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 307E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3085 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3088 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 308F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3092 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3095 _ 89. 50, 18
        nop                                             ; 3098 _ 90
        pop     ebp                                     ; 3099 _ 5D
        ret                                             ; 309A _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 309B _ 55
        mov     ebp, esp                                ; 309C _ 89. E5
        sub     esp, 40                                 ; 309E _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 30A1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 30A4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 30A7 _ 83. 7D, 08, 00
        jnz     ?_148                                   ; 30AB _ 75, 0A
        mov     eax, 4294967295                         ; 30AD _ B8, FFFFFFFF
        jmp     ?_152                                   ; 30B2 _ E9, 000000A0

?_148:  mov     eax, dword [ebp+8H]                     ; 30B7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30BA _ 8B. 40, 10
        test    eax, eax                                ; 30BD _ 85. C0
        jnz     ?_149                                   ; 30BF _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 30C1 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 30C4 _ 8B. 40, 14
        or      eax, 01H                                ; 30C7 _ 83. C8, 01
        mov     edx, eax                                ; 30CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 30CC _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 30CF _ 89. 50, 14
        mov     eax, 4294967295                         ; 30D2 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 30D7 _ EB, 7E

?_149:  mov     eax, dword [ebp+8H]                     ; 30D9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 30DC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 30DE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30E1 _ 8B. 40, 04
        add     edx, eax                                ; 30E4 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 30E6 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 30EA _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 30EC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30EF _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 30F2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30F5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30F8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30FB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30FE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3101 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3104 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3107 _ 39. C2
        jnz     ?_150                                   ; 3109 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 310B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 310E _ C7. 40, 04, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 3115 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3118 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 311B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 311E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3121 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3124 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3127 _ 8B. 40, 18
        test    eax, eax                                ; 312A _ 85. C0
        jz      ?_151                                   ; 312C _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 312E _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3131 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3134 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3137 _ 83. F8, 02
        jz      ?_151                                   ; 313A _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 313C _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 313F _ 8B. 40, 18
        mov     dword [esp+4H], 0                       ; 3142 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 314A _ 89. 04 24
        call    _task_run                               ; 314D _ E8, 00000000(rel)
?_151:  mov     eax, 0                                  ; 3152 _ B8, 00000000
?_152:  leave                                           ; 3157 _ C9
        ret                                             ; 3158 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3159 _ 55
        mov     ebp, esp                                ; 315A _ 89. E5
        sub     esp, 16                                 ; 315C _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 315F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3162 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3165 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3168 _ 8B. 40, 0C
        cmp     edx, eax                                ; 316B _ 39. C2
        jnz     ?_153                                   ; 316D _ 75, 07
        mov     eax, 4294967295                         ; 316F _ B8, FFFFFFFF
        jmp     ?_155                                   ; 3174 _ EB, 51

?_153:  mov     eax, dword [ebp+8H]                     ; 3176 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3179 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 317B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 317E _ 8B. 40, 08
        add     eax, edx                                ; 3181 _ 01. D0
        movzx   eax, byte [eax]                         ; 3183 _ 0F B6. 00
        movzx   eax, al                                 ; 3186 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3189 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 318C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 318F _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3192 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3195 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3198 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 319B _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 319E _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31A1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31A4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31A7 _ 39. C2
        jnz     ?_154                                   ; 31A9 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 31AB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31AE _ C7. 40, 08, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 31B5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31B8 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 31BB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31BE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 31C1 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 31C4 _ 8B. 45, FC
?_155:  leave                                           ; 31C7 _ C9
        ret                                             ; 31C8 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 31C9 _ 55
        mov     ebp, esp                                ; 31CA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31CC _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 31CF _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 31D2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31D5 _ 8B. 40, 10
        sub     edx, eax                                ; 31D8 _ 29. C2
        mov     eax, edx                                ; 31DA _ 89. D0
        pop     ebp                                     ; 31DC _ 5D
        ret                                             ; 31DD _ C3
; _fifo8_status End of function

        nop                                             ; 31DE _ 90
        nop                                             ; 31DF _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 31E0 _ 55
        mov     ebp, esp                                ; 31E1 _ 89. E5
        sub     esp, 40                                 ; 31E3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 31E6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 31EE _ C7. 04 24, 00000043
        call    _io_out8                                ; 31F5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 31FA _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3202 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3209 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 320E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3216 _ C7. 04 24, 00000040
        call    _io_out8                                ; 321D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3222 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 322C _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 3233 _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 3235 _ 8B. 45, F4
        shl     eax, 4                                  ; 3238 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 323B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3240 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3246 _ 8B. 45, F4
        shl     eax, 4                                  ; 3249 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 324C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3251 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3257 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 325B _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 3262 _ 7E, D1
        nop                                             ; 3264 _ 90
        leave                                           ; 3265 _ C9
        ret                                             ; 3266 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3267 _ 55
        mov     ebp, esp                                ; 3268 _ 89. E5
        sub     esp, 16                                 ; 326A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 326D _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 3274 _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 3276 _ 8B. 45, FC
        shl     eax, 4                                  ; 3279 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 327C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3281 _ 8B. 00
        test    eax, eax                                ; 3283 _ 85. C0
        jnz     ?_159                                   ; 3285 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3287 _ 8B. 45, FC
        shl     eax, 4                                  ; 328A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 328D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3292 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3298 _ 8B. 45, FC
        shl     eax, 4                                  ; 329B _ C1. E0, 04
        add     eax, _timerctl                               ; 329E _ 05, 00000000(d)
        add     eax, 4                                  ; 32A3 _ 83. C0, 04
        jmp     ?_161                                   ; 32A6 _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 32A8 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 32AC _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 32B3 _ 7E, C1
        mov     eax, 0                                  ; 32B5 _ B8, 00000000
?_161:  leave                                           ; 32BA _ C9
        ret                                             ; 32BB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 32BC _ 55
        mov     ebp, esp                                ; 32BD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32BF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 32C2 _ C7. 40, 04, 00000000
        nop                                             ; 32C9 _ 90
        pop     ebp                                     ; 32CA _ 5D
        ret                                             ; 32CB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 32CC _ 55
        mov     ebp, esp                                ; 32CD _ 89. E5
        sub     esp, 4                                  ; 32CF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 32D2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 32D5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 32D8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 32DB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 32DE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 32E1 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 32E4 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 32E8 _ 88. 42, 0C
        nop                                             ; 32EB _ 90
        leave                                           ; 32EC _ C9
        ret                                             ; 32ED _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 32EE _ 55
        mov     ebp, esp                                ; 32EF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32F1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 32F4 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 32F7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 32F9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 32FC _ C7. 40, 04, 00000002
        nop                                             ; 3303 _ 90
        pop     ebp                                     ; 3304 _ 5D
        ret                                             ; 3305 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3306 _ 55
        mov     ebp, esp                                ; 3307 _ 89. E5
        sub     esp, 40                                 ; 3309 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 330C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3314 _ C7. 04 24, 00000020
        call    _io_out8                                ; 331B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3320 _ A1, 00000000(d)
        add     eax, 1                                  ; 3325 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3328 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 332D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3331 _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3338 _ E9, 000000AA

?_162:  mov     eax, dword [ebp-0CH]                    ; 333D _ 8B. 45, F4
        shl     eax, 4                                  ; 3340 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3343 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3348 _ 8B. 00
        cmp     eax, 2                                  ; 334A _ 83. F8, 02
        jne     ?_163                                   ; 334D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3353 _ 8B. 45, F4
        shl     eax, 4                                  ; 3356 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3359 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 335E _ 8B. 00
        lea     edx, [eax-1H]                           ; 3360 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3363 _ 8B. 45, F4
        shl     eax, 4                                  ; 3366 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3369 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 336E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3370 _ 8B. 45, F4
        shl     eax, 4                                  ; 3373 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3376 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 337B _ 8B. 00
        test    eax, eax                                ; 337D _ 85. C0
        jnz     ?_163                                   ; 337F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 3381 _ 8B. 45, F4
        shl     eax, 4                                  ; 3384 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3387 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 338C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3392 _ 8B. 45, F4
        shl     eax, 4                                  ; 3395 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3398 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 339D _ 0F B6. 00
        movzx   eax, al                                 ; 33A0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 33A3 _ 8B. 55, F4
        shl     edx, 4                                  ; 33A6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 33A9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 33AF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 33B1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 33B5 _ 89. 14 24
        call    _fifo8_put                              ; 33B8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 33BD _ 8B. 45, F4
        shl     eax, 4                                  ; 33C0 _ C1. E0, 04
        add     eax, _timerctl                               ; 33C3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 33C8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 33CB _ A1, 00000000(d)
        cmp     edx, eax                                ; 33D0 _ 39. C2
        jnz     ?_163                                   ; 33D2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 33D4 _ C6. 45, F3, 01
?_163:  cmp     byte [ebp-0DH], 0                       ; 33D8 _ 80. 7D, F3, 00
        jz      ?_164                                   ; 33DC _ 74, 05
        call    _task_switch                            ; 33DE _ E8, 00000000(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 33E3 _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 33E7 _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 33EE _ 0F 8E, FFFFFF49
        nop                                             ; 33F4 _ 90
        leave                                           ; 33F5 _ C9
        ret                                             ; 33F6 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 33F7 _ B8, 00000000(d)
        ret                                             ; 33FC _ C3
; _getTimerController End of function

        nop                                             ; 33FD _ 90
        nop                                             ; 33FE _ 90
        nop                                             ; 33FF _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3400 _ 55
        mov     ebp, esp                                ; 3401 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3403 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_166                                   ; 340A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 340C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3413 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3416 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3419 _ 89. 45, 0C
?_166:  mov     eax, dword [ebp+0CH]                    ; 341C _ 8B. 45, 0C
        mov     edx, eax                                ; 341F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3421 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3424 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3427 _ 8B. 45, 10
        mov     edx, eax                                ; 342A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 342C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 342F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3433 _ 8B. 45, 10
        sar     eax, 16                                 ; 3436 _ C1. F8, 10
        mov     edx, eax                                ; 3439 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 343B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 343E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3441 _ 8B. 45, 14
        mov     edx, eax                                ; 3444 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3446 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3449 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 344C _ 8B. 45, 0C
        shr     eax, 16                                 ; 344F _ C1. E8, 10
        and     eax, 0FH                                ; 3452 _ 83. E0, 0F
        mov     edx, eax                                ; 3455 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3457 _ 8B. 45, 14
        sar     eax, 8                                  ; 345A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 345D _ 83. E0, F0
        or      eax, edx                                ; 3460 _ 09. D0
        mov     edx, eax                                ; 3462 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3464 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3467 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 346A _ 8B. 45, 10
        shr     eax, 24                                 ; 346D _ C1. E8, 18
        mov     edx, eax                                ; 3470 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3472 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3475 _ 88. 50, 07
        nop                                             ; 3478 _ 90
        pop     ebp                                     ; 3479 _ 5D
        ret                                             ; 347A _ C3

_task_init:; Function begin
        push    ebp                                     ; 347B _ 55
        mov     ebp, esp                                ; 347C _ 89. E5
        sub     esp, 40                                 ; 347E _ 83. EC, 28
        call    _get_addr_gdt                           ; 3481 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3486 _ 89. 45, F0
        mov     dword [esp+4H], 588                     ; 3489 _ C7. 44 24, 04, 0000024C
        mov     eax, dword [ebp+8H]                     ; 3491 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3494 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3497 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 349C _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 34A1 _ C7. 45, F4, 00000000
        jmp     ?_168                                   ; 34A8 _ EB, 7F

?_167:  mov     edx, dword [_taskctl]                   ; 34AA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 34B0 _ 8B. 45, F4
        imul    eax, eax, 116                           ; 34B3 _ 6B. C0, 74
        add     eax, edx                                ; 34B6 _ 01. D0
        add     eax, 32                                 ; 34B8 _ 83. C0, 20
        mov     dword [eax], 0                          ; 34BB _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 34C1 _ 8B. 45, F4
        add     eax, 7                                  ; 34C4 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 34C7 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 34CD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 34D4 _ 8B. 45, F4
        imul    eax, eax, 116                           ; 34D7 _ 6B. C0, 74
        add     eax, ecx                                ; 34DA _ 01. C8
        add     eax, 28                                 ; 34DC _ 83. C0, 1C
        mov     dword [eax], edx                        ; 34DF _ 89. 10
        mov     edx, dword [_taskctl]                   ; 34E1 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 34E7 _ 8B. 45, F4
        imul    eax, eax, 116                           ; 34EA _ 6B. C0, 74
        add     eax, 16                                 ; 34ED _ 83. C0, 10
        add     eax, edx                                ; 34F0 _ 01. D0
        add     eax, 24                                 ; 34F2 _ 83. C0, 18
        mov     ecx, eax                                ; 34F5 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 34F7 _ 8B. 45, F4
        add     eax, 7                                  ; 34FA _ 83. C0, 07
        lea     edx, [eax*8]                            ; 34FD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3504 _ 8B. 45, F0
        add     eax, edx                                ; 3507 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 3509 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3511 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3515 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 351D _ 89. 04 24
        call    _set_segmdesc                           ; 3520 _ E8, FFFFFEDB
        add     dword [ebp-0CH], 1                      ; 3525 _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 4                      ; 3529 _ 83. 7D, F4, 04
        jle     ?_167                                   ; 352D _ 0F 8E, FFFFFF77
        call    _task_alloc                             ; 3533 _ E8, 0000006E
        mov     dword [ebp-14H], eax                    ; 3538 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 353B _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 353E _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3545 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 3548 _ C7. 40, 08, 00000064
        mov     eax, dword [_taskctl]                   ; 354F _ A1, 00000004(d)
        mov     dword [eax], 1                          ; 3554 _ C7. 00, 00000001
        mov     eax, dword [_taskctl]                   ; 355A _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 355F _ C7. 40, 04, 00000000
        mov     eax, dword [_taskctl]                   ; 3566 _ A1, 00000004(d)
        mov     edx, dword [ebp-14H]                    ; 356B _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 356E _ 89. 50, 08
        mov     eax, dword [ebp-14H]                    ; 3571 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3574 _ 8B. 00
        mov     dword [esp], eax                        ; 3576 _ 89. 04 24
        call    _load_tr                                ; 3579 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 357E _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3583 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3588 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 358B _ 8B. 40, 08
        mov     edx, eax                                ; 358E _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3590 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3595 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3599 _ 89. 04 24
        call    _timer_settime                          ; 359C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 35A1 _ 8B. 45, EC
        leave                                           ; 35A4 _ C9
        ret                                             ; 35A5 _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 35A6 _ 55
        mov     ebp, esp                                ; 35A7 _ 89. E5
        sub     esp, 16                                 ; 35A9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 35AC _ C7. 45, FC, 00000000
        jmp     ?_171                                   ; 35B3 _ E9, 000000E2

?_169:  mov     edx, dword [_taskctl]                   ; 35B8 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 35BE _ 8B. 45, FC
        imul    eax, eax, 116                           ; 35C1 _ 6B. C0, 74
        add     eax, edx                                ; 35C4 _ 01. D0
        add     eax, 32                                 ; 35C6 _ 83. C0, 20
        mov     eax, dword [eax]                        ; 35C9 _ 8B. 00
        test    eax, eax                                ; 35CB _ 85. C0
        jne     ?_170                                   ; 35CD _ 0F 85, 000000C3
        mov     edx, dword [_taskctl]                   ; 35D3 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 35D9 _ 8B. 45, FC
        imul    eax, eax, 116                           ; 35DC _ 6B. C0, 74
        add     eax, 16                                 ; 35DF _ 83. C0, 10
        add     eax, edx                                ; 35E2 _ 01. D0
        add     eax, 12                                 ; 35E4 _ 83. C0, 0C
        mov     dword [ebp-8H], eax                     ; 35E7 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 35EA _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 35ED _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 35F4 _ 8B. 45, F8
        mov     dword [eax+30H], 514                    ; 35F7 _ C7. 40, 30, 00000202
        mov     eax, dword [ebp-8H]                     ; 35FE _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 3601 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 3608 _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 360B _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 3612 _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 3615 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 361C _ 8B. 45, F8
        mov     dword [eax+40H], 0                      ; 361F _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-8H]                     ; 3626 _ 8B. 45, F8
        mov     dword [eax+48H], 0                      ; 3629 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3630 _ 8B. 45, FC
        add     eax, 1                                  ; 3633 _ 83. C0, 01
        shl     eax, 9                                  ; 3636 _ C1. E0, 09
        mov     edx, eax                                ; 3639 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 363B _ 8B. 45, F8
        mov     dword [eax+44H], edx                    ; 363E _ 89. 50, 44
        mov     eax, dword [ebp-8H]                     ; 3641 _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 3644 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 364B _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 364E _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3655 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 3658 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 365F _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 3662 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 3669 _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 366C _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 3673 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3676 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 367D _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 3680 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3687 _ 8B. 45, F8
        mov     dword [eax+70H], 1073741824             ; 368A _ C7. 40, 70, 40000000
        mov     eax, dword [ebp-8H]                     ; 3691 _ 8B. 45, F8
        jmp     ?_172                                   ; 3694 _ EB, 13

?_170:  add     dword [ebp-4H], 1                       ; 3696 _ 83. 45, FC, 01
?_171:  cmp     dword [ebp-4H], 4                       ; 369A _ 83. 7D, FC, 04
        jle     ?_169                                   ; 369E _ 0F 8E, FFFFFF14
        mov     eax, 0                                  ; 36A4 _ B8, 00000000
?_172:  leave                                           ; 36A9 _ C9
        ret                                             ; 36AA _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 36AB _ 55
        mov     ebp, esp                                ; 36AC _ 89. E5
        cmp     dword [ebp+0CH], 0                      ; 36AE _ 83. 7D, 0C, 00
        jle     ?_173                                   ; 36B2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 36B4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 36B7 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 36BA _ 89. 50, 08
?_173:  mov     eax, dword [ebp+8H]                     ; 36BD _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 36C0 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 36C7 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 36CC _ 8B. 15, 00000004(d)
        mov     edx, dword [edx]                        ; 36D2 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 36D4 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 36D7 _ 89. 4C 90, 08
        mov     eax, dword [_taskctl]                   ; 36DB _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 36E0 _ 8B. 10
        add     edx, 1                                  ; 36E2 _ 83. C2, 01
        mov     dword [eax], edx                        ; 36E5 _ 89. 10
        nop                                             ; 36E7 _ 90
        pop     ebp                                     ; 36E8 _ 5D
        ret                                             ; 36E9 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 36EA _ 55
        mov     ebp, esp                                ; 36EB _ 89. E5
        sub     esp, 40                                 ; 36ED _ 83. EC, 28
        mov     eax, dword [_taskctl]                   ; 36F0 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 36F5 _ 8B. 00
        cmp     eax, 1                                  ; 36F7 _ 83. F8, 01
        jle     ?_175                                   ; 36FA _ 0F 8E, 00000080
        mov     eax, dword [_taskctl]                   ; 3700 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3705 _ 8B. 50, 04
        add     edx, 1                                  ; 3708 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 370B _ 89. 50, 04
        mov     eax, dword [_taskctl]                   ; 370E _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3713 _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 3716 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 371B _ 8B. 00
        cmp     edx, eax                                ; 371D _ 39. C2
        jnz     ?_174                                   ; 371F _ 75, 0C
        mov     eax, dword [_taskctl]                   ; 3721 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3726 _ C7. 40, 04, 00000000
?_174:  mov     eax, dword [_taskctl]                   ; 372D _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3732 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3738 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 373B _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 373F _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3742 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3745 _ 8B. 40, 08
        mov     edx, eax                                ; 3748 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 374A _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 374F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3753 _ 89. 04 24
        call    _timer_settime                          ; 3756 _ E8, 00000000(rel)
        mov     eax, dword [_taskctl]                   ; 375B _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3760 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3766 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3769 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 376D _ 8B. 00
        mov     dword [esp+4H], eax                     ; 376F _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3773 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 377A _ E8, 00000000(rel)
        nop                                             ; 377F _ 90
?_175:  nop                                             ; 3780 _ 90
        leave                                           ; 3781 _ C9
        ret                                             ; 3782 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 3783 _ 55
        mov     ebp, esp                                ; 3784 _ 89. E5
        sub     esp, 40                                 ; 3786 _ 83. EC, 28
        mov     byte [ebp-0DH], 0                       ; 3789 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 378D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3790 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3793 _ 83. F8, 02
        jne     ?_184                                   ; 3796 _ 0F 85, 000000F1
        mov     eax, dword [_taskctl]                   ; 379C _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 37A1 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 37A7 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 37AA _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 37AE _ 39. 45, 08
        jnz     ?_176                                   ; 37B1 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 37B3 _ C6. 45, F3, 01
?_176:  mov     dword [ebp-0CH], 0                      ; 37B7 _ C7. 45, F4, 00000000
        jmp     ?_178                                   ; 37BE _ EB, 15

?_177:  mov     eax, dword [_taskctl]                   ; 37C0 _ A1, 00000004(d)
        mov     edx, dword [ebp-0CH]                    ; 37C5 _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 37C8 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 37CC _ 39. 45, 08
        jz      ?_179                                   ; 37CF _ 74, 12
        add     dword [ebp-0CH], 1                      ; 37D1 _ 83. 45, F4, 01
?_178:  mov     eax, dword [_taskctl]                   ; 37D5 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 37DA _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 37DC _ 39. 45, F4
        jl      ?_177                                   ; 37DF _ 7C, DF
        jmp     ?_180                                   ; 37E1 _ EB, 01

?_179:  nop                                             ; 37E3 _ 90
?_180:  mov     eax, dword [_taskctl]                   ; 37E4 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 37E9 _ 8B. 10
        sub     edx, 1                                  ; 37EB _ 83. EA, 01
        mov     dword [eax], edx                        ; 37EE _ 89. 10
        mov     eax, dword [_taskctl]                   ; 37F0 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 37F5 _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 37F8 _ 39. 45, F4
        jge     ?_182                                   ; 37FB _ 7D, 30
        mov     eax, dword [_taskctl]                   ; 37FD _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3802 _ 8B. 50, 04
        sub     edx, 1                                  ; 3805 _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 3808 _ 89. 50, 04
        jmp     ?_182                                   ; 380B _ EB, 20

?_181:  mov     edx, dword [_taskctl]                   ; 380D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3813 _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 3816 _ 8D. 48, 01
        mov     eax, dword [_taskctl]                   ; 3819 _ A1, 00000004(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 381E _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 3822 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 3825 _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 3829 _ 83. 45, F4, 01
?_182:  mov     eax, dword [_taskctl]                   ; 382D _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3832 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3834 _ 39. 45, F4
        jl      ?_181                                   ; 3837 _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 3839 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 383C _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 3843 _ 80. 7D, F3, 00
        jz      ?_184                                   ; 3847 _ 74, 44
        mov     eax, dword [_taskctl]                   ; 3849 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 384E _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 3851 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3856 _ 8B. 00
        cmp     edx, eax                                ; 3858 _ 39. C2
        jl      ?_183                                   ; 385A _ 7C, 0C
        mov     eax, dword [_taskctl]                   ; 385C _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3861 _ C7. 40, 04, 00000000
?_183:  mov     eax, dword [_taskctl]                   ; 3868 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 386D _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3873 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3876 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 387A _ 8B. 00
        mov     dword [esp+4H], eax                     ; 387C _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3880 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3887 _ E8, 00000000(rel)
        nop                                             ; 388C _ 90
?_184:  nop                                             ; 388D _ 90
        leave                                           ; 388E _ C9
        ret                                             ; 388F _ C3
; _task_sleep End of function



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

?_185:  db 00H                                          ; 0076 _ .

?_186:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2326:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2373:                                           ; byte
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

_closebtn.2483:                                         ; byte
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



?_187:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_188:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_189:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_190:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_191:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_192:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_193:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_194:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_195:                                                  ; byte
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

?_196:  resw    1                                       ; 0004

?_197:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

?_198:  resd    1                                       ; 0020

_mouseinfo:                                             ; byte
        resb    28                                      ; 0024

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    12                                      ; 00E0

?_199:  resd    1                                       ; 00EC

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

_task_a.2260:                                           ; dword
        resd    1                                       ; 0264

_task_b.2263:                                           ; dword
        resd    6                                       ; 0268

_tss_a.2259:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2258:                                            ; byte
        resb    104                                     ; 0300

_str.2421:                                              ; byte
        resb    1                                       ; 0368

?_200:  resb    9                                       ; 0369

?_201:  resb    14                                      ; 0372

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


