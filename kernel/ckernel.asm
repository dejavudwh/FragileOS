; Disassembly of file: ckernel.o
; Sat Aug 10 20:28:32 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 112                                ; 0005 _ 83. EC, 70
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000F _ E8, 00001060
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_223]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000011C(d)
        movzx   eax, word [?_224]                       ; 0029 _ 0F B7. 05, 00000006(d)
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
        call    _init_palette                           ; 0149 _ E8, 00000FE9
        call    _init_keyboard                          ; 014E _ E8, 00001552
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
        call    _init_screen8                           ; 027F _ E8, 00000928
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 0000113B
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
        mov     dword [esp+4H], ?_211                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 00001797
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
        call    _enable_mouse                           ; 0388 _ E8, 00001353
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 0392 _ 89. 45, C4
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 039A _ 89. 45, C0
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2279], eax               ; 03AA _ A3, 00000258(d)
        mov     eax, dword [_task_a.2279]               ; 03AF _ A1, 00000258(d)
        mov     dword [?_225], eax                      ; 03B4 _ A3, 00000020(d)
        mov     eax, dword [_task_a.2279]               ; 03B9 _ A1, 00000258(d)
        mov     dword [esp+8H], 0                       ; 03BE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C6 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CE _ 89. 04 24
        call    _task_run                               ; 03D1 _ E8, 00000000(rel)
        call    _launch_console                         ; 03D6 _ E8, 000020FC
        mov     dword [ebp-44H], eax                    ; 03DB _ 89. 45, BC
        mov     dword [ebp-48H], 0                      ; 03DE _ C7. 45, B8, 00000000
        mov     dword [ebp-14H], 0                      ; 03E5 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 03EC _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 03F3 _ C7. 45, E4, 00000000
        mov     dword [ebp-20H], 0                      ; 03FA _ C7. 45, E0, 00000000
?_001:  call    _io_cli                                 ; 0401 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0406 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 040D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0412 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0414 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 041B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0420 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0422 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0429 _ E8, 00000000(rel)
        add     eax, ebx                                ; 042E _ 01. D8
        test    eax, eax                                ; 0430 _ 85. C0
        jnz     ?_002                                   ; 0432 _ 75, 07
        call    _io_sti                                 ; 0434 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0439 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 043B _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0442 _ E8, 00000000(rel)
        test    eax, eax                                ; 0447 _ 85. C0
        je      ?_008                                   ; 0449 _ 0F 84, 0000036A
        call    _io_sti                                 ; 044F _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0454 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 045B _ E8, 00000000(rel)
        mov     dword [ebp-48H], eax                    ; 0460 _ 89. 45, B8
        cmp     dword [ebp-48H], 28                     ; 0463 _ 83. 7D, B8, 1C
        jnz     ?_003                                   ; 0467 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 0469 _ 8B. 35, 0000011C(d)
        mov     ebx, dword [_buf_back]                  ; 046F _ 8B. 1D, 00000124(d)
        mov     edx, dword [ebp-14H]                    ; 0475 _ 8B. 55, EC
        mov     eax, edx                                ; 0478 _ 89. D0
        shl     eax, 2                                  ; 047A _ C1. E0, 02
        add     eax, edx                                ; 047D _ 01. D0
        shl     eax, 2                                  ; 047F _ C1. E0, 02
        mov     edx, eax                                ; 0482 _ 89. C2
        mov     eax, dword [ebp-38H]                    ; 0484 _ 8B. 45, C8
        lea     ecx, [edx+eax]                          ; 0487 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 048A _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0490 _ A1, 00000244(d)
        mov     dword [esp+18H], 7                      ; 0495 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 049D _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 04A1 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 04A4 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 04A8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 04AC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04B0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04B4 _ 89. 04 24
        call    _showMemoryInfo                         ; 04B7 _ E8, 000013F9
        add     dword [ebp-14H], 1                      ; 04BC _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 04C0 _ 8B. 45, EC
        cmp     eax, dword [ebp-34H]                    ; 04C3 _ 3B. 45, CC
        jle     ?_001                                   ; 04C6 _ 0F 8E, FFFFFF35
        mov     dword [ebp-14H], 0                      ; 04CC _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 04D3 _ E9, FFFFFF29

?_003:  cmp     dword [ebp-48H], 15                     ; 04D8 _ 83. 7D, B8, 0F
        jne     ?_006                                   ; 04DC _ 0F 85, 00000122
        cmp     dword [ebp-20H], 0                      ; 04E2 _ 83. 7D, E0, 00
        jnz     ?_004                                   ; 04E6 _ 75, 54
        mov     dword [ebp-20H], 1                      ; 04E8 _ C7. 45, E0, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 04EF _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 04F5 _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 04FA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_212                   ; 0502 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 050A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 050E _ 89. 04 24
        call    _make_wtitle8                           ; 0511 _ E8, 0000196A
        mov     eax, dword [_shtctl]                    ; 0516 _ A1, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 051B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_213                   ; 0523 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 052B _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 052E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0532 _ 89. 04 24
        call    _make_wtitle8                           ; 0535 _ E8, 00001946
        jmp     ?_005                                   ; 053A _ EB, 52

?_004:  mov     dword [ebp-20H], 0                      ; 053C _ C7. 45, E0, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0543 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0549 _ A1, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 054E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_212                   ; 0556 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 055E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0562 _ 89. 04 24
        call    _make_wtitle8                           ; 0565 _ E8, 00001916
        mov     eax, dword [_shtctl]                    ; 056A _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 056F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_213                   ; 0577 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 057F _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 0582 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0586 _ 89. 04 24
        call    _make_wtitle8                           ; 0589 _ E8, 000018F2
?_005:  mov     eax, dword [_shtMsgBox]                 ; 058E _ A1, 00000240(d)
        mov     ecx, dword [eax+4H]                     ; 0593 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 0596 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 059C _ A1, 00000244(d)
        mov     dword [esp+14H], 21                     ; 05A1 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 05A9 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 05AD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05B5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 05BD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05C1 _ 89. 04 24
        call    _sheet_refresh                          ; 05C4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-44H]                    ; 05C9 _ 8B. 45, BC
        mov     edx, dword [eax+4H]                     ; 05CC _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 05CF _ A1, 00000244(d)
        mov     dword [esp+14H], 21                     ; 05D4 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 05DC _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 05E0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05E8 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-44H]                    ; 05F0 _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 05F3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F7 _ 89. 04 24
        call    _sheet_refresh                          ; 05FA _ E8, 00000000(rel)
        jmp     ?_001                                   ; 05FF _ E9, FFFFFDFD

?_006:  cmp     dword [ebp-20H], 0                      ; 0604 _ 83. 7D, E0, 00
        jne     ?_007                                   ; 0608 _ 0F 85, 0000017E
        cmp     dword [ebp-48H], 83                     ; 060E _ 83. 7D, B8, 53
        jg      ?_001                                   ; 0612 _ 0F 8F, FFFFFDE9
        mov     eax, dword [ebp-48H]                    ; 0618 _ 8B. 45, B8
        add     eax, _keytable                          ; 061B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0620 _ 0F B6. 00
        test    al, al                                  ; 0623 _ 84. C0
        je      ?_001                                   ; 0625 _ 0F 84, FFFFFDD6
        cmp     dword [ebp-0CH], 143                    ; 062B _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 0632 _ 0F 8F, FFFFFDC9
        mov     eax, dword [ebp-0CH]                    ; 0638 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 063B _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 063E _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 0643 _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 0646 _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 064B _ 8B. 00
        mov     dword [esp+18H], 43                     ; 064D _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 0655 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0659 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0661 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 0664 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0668 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0670 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0674 _ 89. 04 24
        call    _boxfill8                               ; 0677 _ E8, 00000B86
        mov     eax, dword [ebp-0CH]                    ; 067C _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 067F _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0682 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0688 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 068D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0695 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0699 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06A1 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06A4 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06AC _ 89. 04 24
        call    _sheet_refresh                          ; 06AF _ E8, 00000000(rel)
        mov     eax, dword [ebp-48H]                    ; 06B4 _ 8B. 45, B8
        add     eax, _keytable                          ; 06B7 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 06BC _ 0F B6. 00
        mov     byte [ebp-4EH], al                      ; 06BF _ 88. 45, B2
        mov     byte [ebp-4DH], 0                       ; 06C2 _ C6. 45, B3, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06C6 _ 8B. 0D, 00000240(d)
        mov     edx, dword [_shtctl]                    ; 06CC _ 8B. 15, 00000244(d)
        lea     eax, [ebp-4EH]                          ; 06D2 _ 8D. 45, B2
        mov     dword [esp+14H], eax                    ; 06D5 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 06D9 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06E1 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06E9 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06EC _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 06F0 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 06F4 _ 89. 14 24
        call    _showString                             ; 06F7 _ E8, 00000999
        add     dword [ebp-0CH], 8                      ; 06FC _ 83. 45, F4, 08
        mov     dword [ebp-1CH], 1                      ; 0700 _ C7. 45, E4, 00000001
        mov     eax, dword [ebp-0CH]                    ; 0707 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 070A _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 070D _ 8B. 45, F0
        movzx   eax, al                                 ; 0710 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0713 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 0719 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 071C _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 0722 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0724 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 072C _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0730 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0738 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 073B _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 073F _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0743 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0747 _ 89. 14 24
        call    _boxfill8                               ; 074A _ E8, 00000AB3
        mov     eax, dword [ebp-0CH]                    ; 074F _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0752 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0755 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 075B _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0760 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0768 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 076C _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0774 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0777 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 077B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 077F _ 89. 04 24
        call    _sheet_refresh                          ; 0782 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0787 _ E9, FFFFFC75

?_007:  mov     eax, dword [_task_a.2279]               ; 078C _ A1, 00000258(d)
        mov     dword [esp], eax                        ; 0791 _ 89. 04 24
        call    _task_sleep                             ; 0794 _ E8, 00000000(rel)
        mov     eax, dword [ebp-48H]                    ; 0799 _ 8B. 45, B8
        movzx   eax, al                                 ; 079C _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 079F _ 8B. 15, 00000254(d)
        add     edx, 16                                 ; 07A5 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 07A8 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 07AC _ 89. 14 24
        call    _fifo8_put                              ; 07AF _ E8, 00000000(rel)
        jmp     ?_001                                   ; 07B4 _ E9, FFFFFC48

?_008:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 07B9 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 07C0 _ E8, 00000000(rel)
        test    eax, eax                                ; 07C5 _ 85. C0
        jz      ?_009                                   ; 07C7 _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 07C9 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [_sht_back]                  ; 07CF _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 07D5 _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 07DA _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07DE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07E2 _ 89. 04 24
        call    _show_mouse_info                        ; 07E5 _ E8, 000007D2
        jmp     ?_001                                   ; 07EA _ E9, FFFFFC12

?_009:  ; Local function
        mov     dword [esp], _timerinfo                 ; 07EF _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 07F6 _ E8, 00000000(rel)
        test    eax, eax                                ; 07FB _ 85. C0
        je      ?_001                                   ; 07FD _ 0F 84, FFFFFBFE
        call    _io_sti                                 ; 0803 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0808 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 080F _ E8, 00000000(rel)
        mov     dword [ebp-4CH], eax                    ; 0814 _ 89. 45, B4
        cmp     dword [ebp-4CH], 10                     ; 0817 _ 83. 7D, B4, 0A
        jnz     ?_010                                   ; 081B _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 081D _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0823 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_214                  ; 0828 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 0830 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 0838 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 0840 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0843 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0847 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 084B _ 89. 04 24
        call    _showString                             ; 084E _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 0853 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 085B _ 8B. 45, D8
        mov     dword [esp], eax                        ; 085E _ 89. 04 24
        call    _timer_settime                          ; 0861 _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 0866 _ 83. 45, E8, 08
        cmp     dword [ebp-18H], 40                     ; 086A _ 83. 7D, E8, 28
        jle     ?_001                                   ; 086E _ 0F 8E, FFFFFB8D
        cmp     dword [ebp-1CH], 0                      ; 0874 _ 83. 7D, E4, 00
        jne     ?_001                                   ; 0878 _ 0F 85, FFFFFB83
        call    _io_cli                                 ; 087E _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2279]               ; 0883 _ A1, 00000258(d)
        mov     dword [esp], eax                        ; 0888 _ 89. 04 24
        call    _task_sleep                             ; 088B _ E8, 00000000(rel)
        call    _io_sti                                 ; 0890 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0895 _ E9, FFFFFB67

?_010:  ; Local function
        cmp     dword [ebp-4CH], 2                      ; 089A _ 83. 7D, B4, 02
        jnz     ?_011                                   ; 089E _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 08A0 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 08A6 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_215                  ; 08AB _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 08B3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 08BB _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 08C3 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 08CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08CF _ 89. 04 24
        call    _showString                             ; 08D2 _ E8, 000007BE
        jmp     ?_001                                   ; 08D7 _ E9, FFFFFB25

?_011:  ; Local function
        cmp     dword [ebp-4CH], 0                      ; 08DC _ 83. 7D, B4, 00
        jz      ?_012                                   ; 08E0 _ 74, 24
        mov     dword [esp+8H], 0                       ; 08E2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 08EA _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 08F2 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08F5 _ 89. 04 24
        call    _timer_init                             ; 08F8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 08FD _ C7. 45, F0, 00000000
        jmp     ?_013                                   ; 0904 _ EB, 22

?_012:  mov     dword [esp+8H], 1                       ; 0906 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 090E _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 0916 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0919 _ 89. 04 24
        call    _timer_init                             ; 091C _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0921 _ C7. 45, F0, 00000007
?_013:  mov     dword [esp+4H], 50                      ; 0928 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 0930 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0933 _ 89. 04 24
        call    _timer_settime                          ; 0936 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 093B _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 093E _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0941 _ 8B. 45, F0
        movzx   eax, al                                 ; 0944 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0947 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 094D _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0950 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 0956 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0958 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0960 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0964 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 096C _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 096F _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0973 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0977 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 097B _ 89. 14 24
        call    _boxfill8                               ; 097E _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 0983 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0986 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0989 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 098F _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0994 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 099C _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 09A0 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 09A8 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 09AB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 09AF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09B3 _ 89. 04 24
        call    _sheet_refresh                          ; 09B6 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 09BB _ E9, FFFFFA41

_task_b_main:; Function begin
        push    ebp                                     ; 09C0 _ 55
        mov     ebp, esp                                ; 09C1 _ 89. E5
        sub     esp, 104                                ; 09C3 _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 09C6 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 09CC _ A1, 00000244(d)
        mov     dword [esp+14H], ?_216                  ; 09D1 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], 7                      ; 09D9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 09E1 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 09E9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 09F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09F5 _ 89. 04 24
        call    _showString                             ; 09F8 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 09FD _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 0A04 _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0A0B _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 0A13 _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 0A16 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0A1A _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 0A22 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A25 _ 89. 04 24
        call    _fifo8_init                             ; 0A28 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0A2D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0A32 _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 0A35 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0A3D _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0A40 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0A44 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A47 _ 89. 04 24
        call    _timer_init                             ; 0A4A _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0A4F _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0A57 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A5A _ 89. 04 24
        call    _timer_settime                          ; 0A5D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0A62 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0A69 _ C7. 45, F0, 00000000
?_014:  add     dword [ebp-0CH], 1                      ; 0A70 _ 83. 45, F4, 01
        call    _io_cli                                 ; 0A74 _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0A79 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A7C _ 89. 04 24
        call    _fifo8_status                           ; 0A7F _ E8, 00000000(rel)
        test    eax, eax                                ; 0A84 _ 85. C0
        jnz     ?_015                                   ; 0A86 _ 75, 07
        call    _io_sti                                 ; 0A88 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0A8D _ EB, E1
; _task_b_main End of function

?_015:  ; Local function
        lea     eax, [ebp-38H]                          ; 0A8F _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A92 _ 89. 04 24
        call    _fifo8_get                              ; 0A95 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0A9A _ 89. 45, E8
        call    _io_sti                                 ; 0A9D _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0AA2 _ 83. 7D, E8, 7B
        jnz     ?_014                                   ; 0AA6 _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0AA8 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0AAE _ A1, 00000244(d)
        mov     dword [esp+14H], ?_217                  ; 0AB3 _ C7. 44 24, 14, 0000002D(d)
        mov     dword [esp+10H], 7                      ; 0ABB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0AC3 _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0ACB _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0ACE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0AD2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AD6 _ 89. 04 24
        call    _showString                             ; 0AD9 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0ADE _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0AE6 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0AE9 _ 89. 04 24
        call    _timer_settime                          ; 0AEC _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0AF1 _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0AF5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0AF8 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0AFA _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0B02 _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0B0A _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0B12 _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0B1A _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0B22 _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0B2A _ 89. 04 24
        call    _boxfill8                               ; 0B2D _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0B32 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0B37 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0B3F _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0B47 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0B4F _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0B57 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0B5A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B5E _ 89. 04 24
        call    _sheet_refresh                          ; 0B61 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0B66 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B69 _ 89. 04 24
        call    _intToHexStr                            ; 0B6C _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0B71 _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0B74 _ A1, 00000244(d)
        mov     edx, dword [ebp-1CH]                    ; 0B79 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0B7C _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0B80 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0B88 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0B90 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0B98 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0B9B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B9F _ 89. 04 24
        call    _showString                             ; 0BA2 _ E8, 000004EE
        jmp     ?_014                                   ; 0BA7 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0BAC _ 55
        mov     ebp, esp                                ; 0BAD _ 89. E5
        push    ebx                                     ; 0BAF _ 53
        sub     esp, 36                                 ; 0BB0 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0BB3 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0BB6 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0BB9 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BBC _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0BBF _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0BC3 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0BC7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0BCF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0BD7 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0BDF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BE2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BE6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BE9 _ 89. 04 24
        call    _boxfill8                               ; 0BEC _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0BF1 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0BF4 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0BF7 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BFA _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BFD _ 8B. 45, 10
        sub     eax, 28                                 ; 0C00 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0C03 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C07 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C0B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C0F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0C17 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0C1F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C22 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C26 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C29 _ 89. 04 24
        call    _boxfill8                               ; 0C2C _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0C31 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0C34 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0C37 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C3A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C3D _ 8B. 45, 10
        sub     eax, 27                                 ; 0C40 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0C43 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C47 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C4B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C4F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0C57 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C5F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C62 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C66 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C69 _ 89. 04 24
        call    _boxfill8                               ; 0C6C _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0C71 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C74 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C77 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C7A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C7D _ 8B. 45, 10
        sub     eax, 26                                 ; 0C80 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0C83 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C87 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C8B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C8F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0C97 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0C9F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CA2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CA9 _ 89. 04 24
        call    _boxfill8                               ; 0CAC _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0CB1 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0CB4 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0CB7 _ 8B. 45, 10
        sub     eax, 24                                 ; 0CBA _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CBD _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0CC1 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0CC9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0CCD _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0CD5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0CDD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CE0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CE4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CE7 _ 89. 04 24
        call    _boxfill8                               ; 0CEA _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0CEF _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CF2 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CF5 _ 8B. 45, 10
        sub     eax, 24                                 ; 0CF8 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CFB _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0CFF _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0D07 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0D0B _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0D13 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D1B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D1E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D22 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D25 _ 89. 04 24
        call    _boxfill8                               ; 0D28 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0D2D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D30 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0D33 _ 8B. 45, 10
        sub     eax, 4                                  ; 0D36 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0D39 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D3D _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D45 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D49 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0D51 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D59 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D5C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D60 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D63 _ 89. 04 24
        call    _boxfill8                               ; 0D66 _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0D6B _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0D6E _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0D71 _ 8B. 45, 10
        sub     eax, 23                                 ; 0D74 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0D77 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D7B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D83 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0D87 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0D8F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D97 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DA1 _ 89. 04 24
        call    _boxfill8                               ; 0DA4 _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0DA9 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DAC _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0DAF _ 8B. 45, 10
        sub     eax, 3                                  ; 0DB2 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0DB5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DB9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0DC1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0DC5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0DCD _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0DD5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DD8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DDC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DDF _ 89. 04 24
        call    _boxfill8                               ; 0DE2 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0DE7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DEA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0DED _ 8B. 45, 10
        sub     eax, 24                                 ; 0DF0 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0DF3 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0DF7 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0DFF _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0E03 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0E0B _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E13 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E16 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E1A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E1D _ 89. 04 24
        call    _boxfill8                               ; 0E20 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0E25 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0E28 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0E2B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0E2E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0E31 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0E34 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0E37 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E3A _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E3D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E41 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E45 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E49 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0E4D _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E55 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E58 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E5C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E5F _ 89. 04 24
        call    _boxfill8                               ; 0E62 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0E67 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0E6A _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0E6D _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0E70 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0E73 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0E76 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0E79 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E7C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E7F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E83 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E87 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E8B _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0E8F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E97 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EA1 _ 89. 04 24
        call    _boxfill8                               ; 0EA4 _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0EA9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EAC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EAF _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0EB2 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0EB5 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0EB8 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0EBB _ 8B. 45, 0C
        sub     eax, 47                                 ; 0EBE _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0EC1 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EC5 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0EC9 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0ECD _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0ED1 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0ED9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EDC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EE0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EE3 _ 89. 04 24
        call    _boxfill8                               ; 0EE6 _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0EEB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EEE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EF1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0EF4 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0EF7 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0EFA _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0EFD _ 8B. 45, 0C
        sub     eax, 3                                  ; 0F00 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0F03 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F07 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F0B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F0F _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F13 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F1B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F1E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F22 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F25 _ 89. 04 24
        call    _boxfill8                               ; 0F28 _ E8, 000002D5
        nop                                             ; 0F2D _ 90
        add     esp, 36                                 ; 0F2E _ 83. C4, 24
        pop     ebx                                     ; 0F31 _ 5B
        pop     ebp                                     ; 0F32 _ 5D
        ret                                             ; 0F33 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0F34 _ 55
        mov     ebp, esp                                ; 0F35 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0F37 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0F3A _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0F3D _ A1, 00000114(d)
        add     eax, edx                                ; 0F42 _ 01. D0
        mov     dword [_mx], eax                        ; 0F44 _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 0F49 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0F4C _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0F4F _ A1, 00000118(d)
        add     eax, edx                                ; 0F54 _ 01. D0
        mov     dword [_my], eax                        ; 0F56 _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 0F5B _ A1, 00000114(d)
        test    eax, eax                                ; 0F60 _ 85. C0
        jns     ?_016                                   ; 0F62 _ 79, 0A
        mov     dword [_mx], 0                          ; 0F64 _ C7. 05, 00000114(d), 00000000
?_016:  mov     eax, dword [_my]                        ; 0F6E _ A1, 00000118(d)
        test    eax, eax                                ; 0F73 _ 85. C0
        jns     ?_017                                   ; 0F75 _ 79, 0A
        mov     dword [_my], 0                          ; 0F77 _ C7. 05, 00000118(d), 00000000
?_017:  mov     edx, dword [_xsize]                     ; 0F81 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 0F87 _ A1, 00000114(d)
        cmp     edx, eax                                ; 0F8C _ 39. C2
        jg      ?_018                                   ; 0F8E _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0F90 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0F95 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0F98 _ A3, 00000114(d)
?_018:  mov     edx, dword [_ysize]                     ; 0F9D _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 0FA3 _ A1, 00000118(d)
        cmp     edx, eax                                ; 0FA8 _ 39. C2
        jg      ?_019                                   ; 0FAA _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0FAC _ A1, 00000120(d)
        sub     eax, 1                                  ; 0FB1 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0FB4 _ A3, 00000118(d)
?_019:  nop                                             ; 0FB9 _ 90
        pop     ebp                                     ; 0FBA _ 5D
        ret                                             ; 0FBB _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0FBC _ 55
        mov     ebp, esp                                ; 0FBD _ 89. E5
        sub     esp, 40                                 ; 0FBF _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0FC2 _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 0FC7 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0FCA _ C6. 45, F3, 00
        call    _io_sti                                 ; 0FCE _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0FD3 _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 0FDA _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0FDF _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0FE2 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0FE6 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0FEA _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0FF1 _ E8, 00000780
        test    eax, eax                                ; 0FF6 _ 85. C0
        jz      ?_020                                   ; 0FF8 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0FFA _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 1002 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1005 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1009 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 100C _ 89. 04 24
        call    _computeMousePosition                   ; 100F _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1014 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 101A _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 101F _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1023 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1027 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 102A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 102E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1031 _ 89. 04 24
        call    _sheet_slide                            ; 1034 _ E8, 00000000(rel)
        mov     eax, dword [?_226]                      ; 1039 _ A1, 000000EC(d)
        and     eax, 01H                                ; 103E _ 83. E0, 01
        test    eax, eax                                ; 1041 _ 85. C0
        jz      ?_020                                   ; 1043 _ 74, 2C
        mov     eax, dword [_my]                        ; 1045 _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 104A _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 104D _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 1052 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1055 _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 105A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 105E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1062 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1066 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1069 _ 89. 04 24
        call    _sheet_slide                            ; 106C _ E8, 00000000(rel)
?_020:  nop                                             ; 1071 _ 90
        leave                                           ; 1072 _ C9
        ret                                             ; 1073 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1074 _ 55
        mov     ebp, esp                                ; 1075 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1077 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 107A _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1080 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1083 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1089 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 108C _ 66: C7. 40, 06, 01E0
        nop                                             ; 1092 _ 90
        pop     ebp                                     ; 1093 _ 5D
        ret                                             ; 1094 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1095 _ 55
        mov     ebp, esp                                ; 1096 _ 89. E5
        push    ebx                                     ; 1098 _ 53
        sub     esp, 68                                 ; 1099 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 109C _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 109F _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 10A2 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 10A5 _ 89. 45, F4
        jmp     ?_022                                   ; 10A8 _ EB, 4B

?_021:  mov     eax, dword [ebp+1CH]                    ; 10AA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 10AD _ 0F B6. 00
        movzx   eax, al                                 ; 10B0 _ 0F B6. C0
        shl     eax, 4                                  ; 10B3 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 10B6 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 10BC _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 10C0 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 10C3 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 10C6 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 10C9 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 10CB _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 10CF _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 10D3 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 10D6 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 10DA _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 10DD _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 10E1 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 10E5 _ 89. 14 24
        call    _showFont8                              ; 10E8 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 10ED _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 10F1 _ 83. 45, 1C, 01
?_022:  mov     eax, dword [ebp+1CH]                    ; 10F5 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 10F8 _ 0F B6. 00
        test    al, al                                  ; 10FB _ 84. C0
        jnz     ?_021                                   ; 10FD _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 10FF _ 8B. 45, 14
        add     eax, 16                                 ; 1102 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 1105 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1109 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 110C _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1110 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 1113 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1117 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 111A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 111E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1121 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1125 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1128 _ 89. 04 24
        call    _sheet_refresh                          ; 112B _ E8, 00000000(rel)
        nop                                             ; 1130 _ 90
        add     esp, 68                                 ; 1131 _ 83. C4, 44
        pop     ebx                                     ; 1134 _ 5B
        pop     ebp                                     ; 1135 _ 5D
        ret                                             ; 1136 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 1137 _ 55
        mov     ebp, esp                                ; 1138 _ 89. E5
        sub     esp, 24                                 ; 113A _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2341         ; 113D _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 1145 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 114D _ C7. 04 24, 00000000
        call    _set_palette                            ; 1154 _ E8, 00000003
        nop                                             ; 1159 _ 90
        leave                                           ; 115A _ C9
        ret                                             ; 115B _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 115C _ 55
        mov     ebp, esp                                ; 115D _ 89. E5
        sub     esp, 40                                 ; 115F _ 83. EC, 28
        call    _io_load_eflags                         ; 1162 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1167 _ 89. 45, F0
        call    _io_cli                                 ; 116A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 116F _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 1172 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 1176 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 117D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1182 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 1185 _ 89. 45, F4
        jmp     ?_024                                   ; 1188 _ EB, 62

?_023:  mov     eax, dword [ebp+10H]                    ; 118A _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 118D _ 0F B6. 00
        shr     al, 2                                   ; 1190 _ C0. E8, 02
        movzx   eax, al                                 ; 1193 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 1196 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 119A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11A1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 11A6 _ 8B. 45, 10
        add     eax, 1                                  ; 11A9 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 11AC _ 0F B6. 00
        shr     al, 2                                   ; 11AF _ C0. E8, 02
        movzx   eax, al                                 ; 11B2 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 11B5 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 11B9 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11C0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 11C5 _ 8B. 45, 10
        add     eax, 2                                  ; 11C8 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 11CB _ 0F B6. 00
        shr     al, 2                                   ; 11CE _ C0. E8, 02
        movzx   eax, al                                 ; 11D1 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 11D4 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 11D8 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11DF _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 11E4 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 11E8 _ 83. 45, F4, 01
?_024:  mov     eax, dword [ebp-0CH]                    ; 11EC _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 11EF _ 3B. 45, 0C
        jle     ?_023                                   ; 11F2 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 11F4 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 11F7 _ 89. 04 24
        call    _io_store_eflags                        ; 11FA _ E8, 00000000(rel)
        nop                                             ; 11FF _ 90
        leave                                           ; 1200 _ C9
        ret                                             ; 1201 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 1202 _ 55
        mov     ebp, esp                                ; 1203 _ 89. E5
        sub     esp, 20                                 ; 1205 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1208 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 120B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 120E _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 1211 _ 89. 45, F8
        jmp     ?_028                                   ; 1214 _ EB, 31

?_025:  mov     eax, dword [ebp+14H]                    ; 1216 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 1219 _ 89. 45, FC
        jmp     ?_027                                   ; 121C _ EB, 1D

?_026:  mov     eax, dword [ebp-8H]                     ; 121E _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 1221 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 1225 _ 8B. 55, FC
        add     eax, edx                                ; 1228 _ 01. D0
        mov     edx, eax                                ; 122A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 122C _ 8B. 45, 08
        add     edx, eax                                ; 122F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1231 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1235 _ 88. 02
        add     dword [ebp-4H], 1                       ; 1237 _ 83. 45, FC, 01
?_027:  mov     eax, dword [ebp-4H]                     ; 123B _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 123E _ 3B. 45, 1C
        jle     ?_026                                   ; 1241 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 1243 _ 83. 45, F8, 01
?_028:  mov     eax, dword [ebp-8H]                     ; 1247 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 124A _ 3B. 45, 20
        jle     ?_025                                   ; 124D _ 7E, C7
        nop                                             ; 124F _ 90
        leave                                           ; 1250 _ C9
        ret                                             ; 1251 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 1252 _ 55
        mov     ebp, esp                                ; 1253 _ 89. E5
        sub     esp, 20                                 ; 1255 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1258 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 125B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 125E _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 1265 _ E9, 0000015C

?_029:  mov     edx, dword [ebp-4H]                     ; 126A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 126D _ 8B. 45, 1C
        add     eax, edx                                ; 1270 _ 01. D0
        movzx   eax, byte [eax]                         ; 1272 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1275 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1278 _ 80. 7D, FB, 00
        jns     ?_030                                   ; 127C _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 127E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1281 _ 8B. 45, FC
        add     eax, edx                                ; 1284 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1286 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 128A _ 8B. 55, 10
        add     eax, edx                                ; 128D _ 01. D0
        mov     edx, eax                                ; 128F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1291 _ 8B. 45, 08
        add     edx, eax                                ; 1294 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1296 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 129A _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 129C _ 0F BE. 45, FB
        and     eax, 40H                                ; 12A0 _ 83. E0, 40
        test    eax, eax                                ; 12A3 _ 85. C0
        jz      ?_031                                   ; 12A5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12AA _ 8B. 45, FC
        add     eax, edx                                ; 12AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12AF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12B3 _ 8B. 55, 10
        add     eax, edx                                ; 12B6 _ 01. D0
        lea     edx, [eax+1H]                           ; 12B8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 12BB _ 8B. 45, 08
        add     edx, eax                                ; 12BE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12C0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12C4 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 12C6 _ 0F BE. 45, FB
        and     eax, 20H                                ; 12CA _ 83. E0, 20
        test    eax, eax                                ; 12CD _ 85. C0
        jz      ?_032                                   ; 12CF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12D1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12D4 _ 8B. 45, FC
        add     eax, edx                                ; 12D7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12D9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12DD _ 8B. 55, 10
        add     eax, edx                                ; 12E0 _ 01. D0
        lea     edx, [eax+2H]                           ; 12E2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 12E5 _ 8B. 45, 08
        add     edx, eax                                ; 12E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12EE _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 12F0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 12F4 _ 83. E0, 10
        test    eax, eax                                ; 12F7 _ 85. C0
        jz      ?_033                                   ; 12F9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12FE _ 8B. 45, FC
        add     eax, edx                                ; 1301 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1303 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1307 _ 8B. 55, 10
        add     eax, edx                                ; 130A _ 01. D0
        lea     edx, [eax+3H]                           ; 130C _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 130F _ 8B. 45, 08
        add     edx, eax                                ; 1312 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1314 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1318 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 131A _ 0F BE. 45, FB
        and     eax, 08H                                ; 131E _ 83. E0, 08
        test    eax, eax                                ; 1321 _ 85. C0
        jz      ?_034                                   ; 1323 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1325 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1328 _ 8B. 45, FC
        add     eax, edx                                ; 132B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 132D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1331 _ 8B. 55, 10
        add     eax, edx                                ; 1334 _ 01. D0
        lea     edx, [eax+4H]                           ; 1336 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1339 _ 8B. 45, 08
        add     edx, eax                                ; 133C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 133E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1342 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1344 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1348 _ 83. E0, 04
        test    eax, eax                                ; 134B _ 85. C0
        jz      ?_035                                   ; 134D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 134F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1352 _ 8B. 45, FC
        add     eax, edx                                ; 1355 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1357 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 135B _ 8B. 55, 10
        add     eax, edx                                ; 135E _ 01. D0
        lea     edx, [eax+5H]                           ; 1360 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1363 _ 8B. 45, 08
        add     edx, eax                                ; 1366 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1368 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 136C _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 136E _ 0F BE. 45, FB
        and     eax, 02H                                ; 1372 _ 83. E0, 02
        test    eax, eax                                ; 1375 _ 85. C0
        jz      ?_036                                   ; 1377 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1379 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 137C _ 8B. 45, FC
        add     eax, edx                                ; 137F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1381 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1385 _ 8B. 55, 10
        add     eax, edx                                ; 1388 _ 01. D0
        lea     edx, [eax+6H]                           ; 138A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 138D _ 8B. 45, 08
        add     edx, eax                                ; 1390 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1392 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1396 _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 1398 _ 0F BE. 45, FB
        and     eax, 01H                                ; 139C _ 83. E0, 01
        test    eax, eax                                ; 139F _ 85. C0
        jz      ?_037                                   ; 13A1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13A3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13A6 _ 8B. 45, FC
        add     eax, edx                                ; 13A9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13AB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13AF _ 8B. 55, 10
        add     eax, edx                                ; 13B2 _ 01. D0
        lea     edx, [eax+7H]                           ; 13B4 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 13B7 _ 8B. 45, 08
        add     edx, eax                                ; 13BA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13BC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13C0 _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 13C2 _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 13C6 _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 13CA _ 0F 8E, FFFFFE9A
        nop                                             ; 13D0 _ 90
        leave                                           ; 13D1 _ C9
        ret                                             ; 13D2 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 13D3 _ 55
        mov     ebp, esp                                ; 13D4 _ 89. E5
        sub     esp, 20                                 ; 13D6 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 13D9 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 13DC _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 13DF _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 13E6 _ E9, 000000B1

?_039:  mov     dword [ebp-4H], 0                       ; 13EB _ C7. 45, FC, 00000000
        jmp     ?_044                                   ; 13F2 _ E9, 00000097

?_040:  mov     eax, dword [ebp-8H]                     ; 13F7 _ 8B. 45, F8
        shl     eax, 4                                  ; 13FA _ C1. E0, 04
        mov     edx, eax                                ; 13FD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 13FF _ 8B. 45, FC
        add     eax, edx                                ; 1402 _ 01. D0
        add     eax, _cursor.2388                       ; 1404 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1409 _ 0F B6. 00
        cmp     al, 42                                  ; 140C _ 3C, 2A
        jnz     ?_041                                   ; 140E _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1410 _ 8B. 45, F8
        shl     eax, 4                                  ; 1413 _ C1. E0, 04
        mov     edx, eax                                ; 1416 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1418 _ 8B. 45, FC
        add     eax, edx                                ; 141B _ 01. D0
        mov     edx, eax                                ; 141D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 141F _ 8B. 45, 08
        add     eax, edx                                ; 1422 _ 01. D0
        mov     byte [eax], 0                           ; 1424 _ C6. 00, 00
?_041:  mov     eax, dword [ebp-8H]                     ; 1427 _ 8B. 45, F8
        shl     eax, 4                                  ; 142A _ C1. E0, 04
        mov     edx, eax                                ; 142D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 142F _ 8B. 45, FC
        add     eax, edx                                ; 1432 _ 01. D0
        add     eax, _cursor.2388                       ; 1434 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1439 _ 0F B6. 00
        cmp     al, 79                                  ; 143C _ 3C, 4F
        jnz     ?_042                                   ; 143E _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1440 _ 8B. 45, F8
        shl     eax, 4                                  ; 1443 _ C1. E0, 04
        mov     edx, eax                                ; 1446 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1448 _ 8B. 45, FC
        add     eax, edx                                ; 144B _ 01. D0
        mov     edx, eax                                ; 144D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 144F _ 8B. 45, 08
        add     eax, edx                                ; 1452 _ 01. D0
        mov     byte [eax], 7                           ; 1454 _ C6. 00, 07
?_042:  mov     eax, dword [ebp-8H]                     ; 1457 _ 8B. 45, F8
        shl     eax, 4                                  ; 145A _ C1. E0, 04
        mov     edx, eax                                ; 145D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 145F _ 8B. 45, FC
        add     eax, edx                                ; 1462 _ 01. D0
        add     eax, _cursor.2388                       ; 1464 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1469 _ 0F B6. 00
        cmp     al, 46                                  ; 146C _ 3C, 2E
        jnz     ?_043                                   ; 146E _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1470 _ 8B. 45, F8
        shl     eax, 4                                  ; 1473 _ C1. E0, 04
        mov     edx, eax                                ; 1476 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1478 _ 8B. 45, FC
        add     eax, edx                                ; 147B _ 01. D0
        mov     edx, eax                                ; 147D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 147F _ 8B. 45, 08
        add     edx, eax                                ; 1482 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1484 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1488 _ 88. 02
?_043:  add     dword [ebp-4H], 1                       ; 148A _ 83. 45, FC, 01
?_044:  cmp     dword [ebp-4H], 15                      ; 148E _ 83. 7D, FC, 0F
        jle     ?_040                                   ; 1492 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1498 _ 83. 45, F8, 01
?_045:  cmp     dword [ebp-8H], 15                      ; 149C _ 83. 7D, F8, 0F
        jle     ?_039                                   ; 14A0 _ 0F 8E, FFFFFF45
        nop                                             ; 14A6 _ 90
        leave                                           ; 14A7 _ C9
        ret                                             ; 14A8 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 14A9 _ 55
        mov     ebp, esp                                ; 14AA _ 89. E5
        push    ebx                                     ; 14AC _ 53
        sub     esp, 16                                 ; 14AD _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 14B0 _ C7. 45, F4, 00000000
        jmp     ?_049                                   ; 14B7 _ EB, 4E

?_046:  mov     dword [ebp-8H], 0                       ; 14B9 _ C7. 45, F8, 00000000
        jmp     ?_048                                   ; 14C0 _ EB, 39

?_047:  mov     eax, dword [ebp-0CH]                    ; 14C2 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 14C5 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 14C9 _ 8B. 55, F8
        add     eax, edx                                ; 14CC _ 01. D0
        mov     edx, eax                                ; 14CE _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 14D0 _ 8B. 45, 20
        add     eax, edx                                ; 14D3 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 14D5 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 14D8 _ 8B. 55, F4
        add     edx, ecx                                ; 14DB _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 14DD _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 14E1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 14E4 _ 8B. 4D, F8
        add     ecx, ebx                                ; 14E7 _ 01. D9
        add     edx, ecx                                ; 14E9 _ 01. CA
        mov     ecx, edx                                ; 14EB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 14ED _ 8B. 55, 08
        add     edx, ecx                                ; 14F0 _ 01. CA
        movzx   eax, byte [eax]                         ; 14F2 _ 0F B6. 00
        mov     byte [edx], al                          ; 14F5 _ 88. 02
        add     dword [ebp-8H], 1                       ; 14F7 _ 83. 45, F8, 01
?_048:  mov     eax, dword [ebp-8H]                     ; 14FB _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 14FE _ 3B. 45, 10
        jl      ?_047                                   ; 1501 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 1503 _ 83. 45, F4, 01
?_049:  mov     eax, dword [ebp-0CH]                    ; 1507 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 150A _ 3B. 45, 14
        jl      ?_046                                   ; 150D _ 7C, AA
        nop                                             ; 150F _ 90
        add     esp, 16                                 ; 1510 _ 83. C4, 10
        pop     ebx                                     ; 1513 _ 5B
        pop     ebp                                     ; 1514 _ 5D
        ret                                             ; 1515 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 1516 _ 55
        mov     ebp, esp                                ; 1517 _ 89. E5
        sub     esp, 40                                 ; 1519 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 151C _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 1521 _ 89. 45, F4
        movzx   eax, word [?_223]                       ; 1524 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 152B _ 98
        mov     dword [ebp-10H], eax                    ; 152C _ 89. 45, F0
        movzx   eax, word [?_224]                       ; 152F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1536 _ 98
        mov     dword [ebp-14H], eax                    ; 1537 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 153A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1542 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1549 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 154E _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1552 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1559 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 155E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1561 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1565 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1569 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 1570 _ E8, 00000000(rel)
        nop                                             ; 1575 _ 90
        leave                                           ; 1576 _ C9
        ret                                             ; 1577 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1578 _ 55
        mov     ebp, esp                                ; 1579 _ 89. E5
        sub     esp, 4                                  ; 157B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 157E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1581 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1584 _ 80. 7D, FC, 09
        jle     ?_050                                   ; 1588 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 158A _ 0F B6. 45, FC
        add     eax, 55                                 ; 158E _ 83. C0, 37
        jmp     ?_051                                   ; 1591 _ EB, 07

?_050:  movzx   eax, byte [ebp-4H]                      ; 1593 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1597 _ 83. C0, 30
?_051:  leave                                           ; 159A _ C9
        ret                                             ; 159B _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 159C _ 55
        mov     ebp, esp                                ; 159D _ 89. E5
        sub     esp, 24                                 ; 159F _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 15A2 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 15A5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 15A8 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 15AF _ 0F B6. 45, EC
        and     eax, 0FH                                ; 15B3 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 15B6 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 15B9 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 15BD _ 89. 04 24
        call    _charToHexVal                           ; 15C0 _ E8, FFFFFFB3
        mov     byte [?_210], al                        ; 15C5 _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 15CA _ 0F B6. 45, EC
        shr     al, 4                                   ; 15CE _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 15D1 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 15D4 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 15D8 _ 0F BE. C0
        mov     dword [esp], eax                        ; 15DB _ 89. 04 24
        call    _charToHexVal                           ; 15DE _ E8, FFFFFF95
        mov     byte [?_209], al                        ; 15E3 _ A2, 00000076(d)
        mov     eax, _keyval                            ; 15E8 _ B8, 00000074(d)
        leave                                           ; 15ED _ C9
        ret                                             ; 15EE _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 15EF _ 55
        mov     ebp, esp                                ; 15F0 _ 89. E5
        sub     esp, 16                                 ; 15F2 _ 83. EC, 10
        mov     byte [_str.2436], 48                    ; 15F5 _ C6. 05, 00000348(d), 30
        mov     byte [?_227], 88                        ; 15FC _ C6. 05, 00000349(d), 58
        mov     byte [?_228], 0                         ; 1603 _ C6. 05, 00000352(d), 00
        mov     dword [ebp-4H], 2                       ; 160A _ C7. 45, FC, 00000002
        jmp     ?_053                                   ; 1611 _ EB, 0F

?_052:  mov     eax, dword [ebp-4H]                     ; 1613 _ 8B. 45, FC
        add     eax, _str.2436                          ; 1616 _ 05, 00000348(d)
        mov     byte [eax], 48                          ; 161B _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 161E _ 83. 45, FC, 01
?_053:  cmp     dword [ebp-4H], 9                       ; 1622 _ 83. 7D, FC, 09
        jle     ?_052                                   ; 1626 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1628 _ C7. 45, F8, 00000009
        jmp     ?_057                                   ; 162F _ EB, 42

?_054:  mov     eax, dword [ebp+8H]                     ; 1631 _ 8B. 45, 08
        and     eax, 0FH                                ; 1634 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 1637 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 163A _ 8B. 45, 08
        shr     eax, 4                                  ; 163D _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1640 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 1643 _ 83. 7D, F4, 09
        jle     ?_055                                   ; 1647 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1649 _ 8B. 45, F4
        add     eax, 55                                 ; 164C _ 83. C0, 37
        mov     edx, eax                                ; 164F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1651 _ 8B. 45, F8
        add     eax, _str.2436                          ; 1654 _ 05, 00000348(d)
        mov     byte [eax], dl                          ; 1659 _ 88. 10
        jmp     ?_056                                   ; 165B _ EB, 12

?_055:  mov     eax, dword [ebp-0CH]                    ; 165D _ 8B. 45, F4
        add     eax, 48                                 ; 1660 _ 83. C0, 30
        mov     edx, eax                                ; 1663 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1665 _ 8B. 45, F8
        add     eax, _str.2436                          ; 1668 _ 05, 00000348(d)
        mov     byte [eax], dl                          ; 166D _ 88. 10
?_056:  sub     dword [ebp-8H], 1                       ; 166F _ 83. 6D, F8, 01
?_057:  cmp     dword [ebp-8H], 1                       ; 1673 _ 83. 7D, F8, 01
        jle     ?_058                                   ; 1677 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1679 _ 83. 7D, 08, 00
        jnz     ?_054                                   ; 167D _ 75, B2
?_058:  mov     eax, _str.2436                          ; 167F _ B8, 00000348(d)
        leave                                           ; 1684 _ C9
        ret                                             ; 1685 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1686 _ 55
        mov     ebp, esp                                ; 1687 _ 89. E5
        sub     esp, 24                                 ; 1689 _ 83. EC, 18
?_059:  mov     dword [esp], 100                        ; 168C _ C7. 04 24, 00000064
        call    _io_in8                                 ; 1693 _ E8, 00000000(rel)
        and     eax, 02H                                ; 1698 _ 83. E0, 02
        test    eax, eax                                ; 169B _ 85. C0
        jz      ?_060                                   ; 169D _ 74, 02
        jmp     ?_059                                   ; 169F _ EB, EB
; _wait_KBC_sendready End of function

?_060:  ; Local function
        nop                                             ; 16A1 _ 90
        nop                                             ; 16A2 _ 90
        leave                                           ; 16A3 _ C9
        ret                                             ; 16A4 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 16A5 _ 55
        mov     ebp, esp                                ; 16A6 _ 89. E5
        sub     esp, 24                                 ; 16A8 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 16AB _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 16B0 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 16B8 _ C7. 04 24, 00000064
        call    _io_out8                                ; 16BF _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 16C4 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 16C9 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 16D1 _ C7. 04 24, 00000060
        call    _io_out8                                ; 16D8 _ E8, 00000000(rel)
        nop                                             ; 16DD _ 90
        leave                                           ; 16DE _ C9
        ret                                             ; 16DF _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 16E0 _ 55
        mov     ebp, esp                                ; 16E1 _ 89. E5
        sub     esp, 24                                 ; 16E3 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 16E6 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 16EB _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 16F3 _ C7. 04 24, 00000064
        call    _io_out8                                ; 16FA _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 16FF _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 1704 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 170C _ C7. 04 24, 00000060
        call    _io_out8                                ; 1713 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1718 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 171B _ C6. 40, 03, 00
        nop                                             ; 171F _ 90
        leave                                           ; 1720 _ C9
        ret                                             ; 1721 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1722 _ 55
        mov     ebp, esp                                ; 1723 _ 89. E5
        sub     esp, 40                                 ; 1725 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 1728 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1730 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1737 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 173C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1744 _ C7. 04 24, 00000020
        call    _io_out8                                ; 174B _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1750 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1757 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 175C _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 175F _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1763 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1767 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 176E _ E8, 00000000(rel)
        nop                                             ; 1773 _ 90
        leave                                           ; 1774 _ C9
        ret                                             ; 1775 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1776 _ 55
        mov     ebp, esp                                ; 1777 _ 89. E5
        sub     esp, 4                                  ; 1779 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 177C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 177F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1782 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1785 _ 0F B6. 40, 03
        test    al, al                                  ; 1789 _ 84. C0
        jnz     ?_062                                   ; 178B _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 178D _ 80. 7D, FC, FA
        jnz     ?_061                                   ; 1791 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1793 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1796 _ C6. 40, 03, 01
?_061:  mov     eax, 0                                  ; 179A _ B8, 00000000
        jmp     ?_069                                   ; 179F _ E9, 0000010F

?_062:  mov     eax, dword [ebp+8H]                     ; 17A4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17A7 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 17AB _ 3C, 01
        jnz     ?_064                                   ; 17AD _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 17AF _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 17B3 _ 25, 000000C8
        cmp     eax, 8                                  ; 17B8 _ 83. F8, 08
        jnz     ?_063                                   ; 17BB _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 17BD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 17C0 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 17C4 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 17C6 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 17C9 _ C6. 40, 03, 02
?_063:  mov     eax, 0                                  ; 17CD _ B8, 00000000
        jmp     ?_069                                   ; 17D2 _ E9, 000000DC

?_064:  mov     eax, dword [ebp+8H]                     ; 17D7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17DA _ 0F B6. 40, 03
        cmp     al, 2                                   ; 17DE _ 3C, 02
        jnz     ?_065                                   ; 17E0 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 17E2 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 17E5 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 17E9 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 17EC _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 17EF _ C6. 40, 03, 03
        mov     eax, 0                                  ; 17F3 _ B8, 00000000
        jmp     ?_069                                   ; 17F8 _ E9, 000000B6

?_065:  mov     eax, dword [ebp+8H]                     ; 17FD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1800 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1804 _ 3C, 03
        jne     ?_068                                   ; 1806 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 180C _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 180F _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1813 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1816 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1819 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 181D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1820 _ 0F B6. 00
        movzx   eax, al                                 ; 1823 _ 0F B6. C0
        and     eax, 07H                                ; 1826 _ 83. E0, 07
        mov     edx, eax                                ; 1829 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 182B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 182E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1831 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1834 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1838 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 183B _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 183E _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1841 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1844 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1848 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 184B _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 184E _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1851 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1854 _ 0F B6. 00
        movzx   eax, al                                 ; 1857 _ 0F B6. C0
        and     eax, 10H                                ; 185A _ 83. E0, 10
        test    eax, eax                                ; 185D _ 85. C0
        jz      ?_066                                   ; 185F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1861 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1864 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1867 _ 0D, FFFFFF00
        mov     edx, eax                                ; 186C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 186E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1871 _ 89. 50, 04
?_066:  mov     eax, dword [ebp+8H]                     ; 1874 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1877 _ 0F B6. 00
        movzx   eax, al                                 ; 187A _ 0F B6. C0
        and     eax, 20H                                ; 187D _ 83. E0, 20
        test    eax, eax                                ; 1880 _ 85. C0
        jz      ?_067                                   ; 1882 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1884 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1887 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 188A _ 0D, FFFFFF00
        mov     edx, eax                                ; 188F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1891 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1894 _ 89. 50, 08
?_067:  mov     eax, dword [ebp+8H]                     ; 1897 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 189A _ 8B. 40, 08
        neg     eax                                     ; 189D _ F7. D8
        mov     edx, eax                                ; 189F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18A1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18A4 _ 89. 50, 08
        mov     eax, 1                                  ; 18A7 _ B8, 00000001
        jmp     ?_069                                   ; 18AC _ EB, 05

?_068:  mov     eax, 4294967295                         ; 18AE _ B8, FFFFFFFF
?_069:  leave                                           ; 18B3 _ C9
        ret                                             ; 18B4 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 18B5 _ 55
        mov     ebp, esp                                ; 18B6 _ 89. E5
        sub     esp, 72                                 ; 18B8 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 18BB _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 18C2 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 18C9 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 18D0 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 18D7 _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 18DD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18E0 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 18E2 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 18E6 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 18E9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18ED _ 89. 04 24
        call    _init_screen8                           ; 18F0 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 18F5 _ 8B. 45, 20
        movsx   eax, al                                 ; 18F8 _ 0F BE. C0
        mov     dword [esp+14H], ?_218                  ; 18FB _ C7. 44 24, 14, 0000002F(d)
        mov     dword [esp+10H], eax                    ; 1903 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1907 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 190A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 190E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1911 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1915 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1918 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 191C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 191F _ 89. 04 24
        call    _showString                             ; 1922 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 1927 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 192A _ 89. 04 24
        call    _intToHexStr                            ; 192D _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1932 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1935 _ 8B. 45, 20
        movsx   eax, al                                 ; 1938 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 193B _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 193E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1942 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1946 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1949 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 194D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1950 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1954 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1957 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 195B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 195E _ 89. 04 24
        call    _showString                             ; 1961 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1966 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 196A _ 8B. 45, 20
        movsx   eax, al                                 ; 196D _ 0F BE. C0
        mov     dword [esp+14H], ?_219                  ; 1970 _ C7. 44 24, 14, 00000039(d)
        mov     dword [esp+10H], eax                    ; 1978 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 197C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 197F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1983 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1986 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 198A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 198D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1991 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1994 _ 89. 04 24
        call    _showString                             ; 1997 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 199C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 199F _ 8B. 00
        mov     dword [esp], eax                        ; 19A1 _ 89. 04 24
        call    _intToHexStr                            ; 19A4 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 19A9 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 19AC _ 8B. 45, 20
        movsx   eax, al                                 ; 19AF _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 19B2 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 19B5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19B9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19BD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19C0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 19C4 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 19C7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19D5 _ 89. 04 24
        call    _showString                             ; 19D8 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 19DD _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 19E1 _ 8B. 45, 20
        movsx   eax, al                                 ; 19E4 _ 0F BE. C0
        mov     dword [esp+14H], ?_220                  ; 19E7 _ C7. 44 24, 14, 00000045(d)
        mov     dword [esp+10H], eax                    ; 19EF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19F3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19F6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19FA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19FD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A01 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A04 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A0B _ 89. 04 24
        call    _showString                             ; 1A0E _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1A13 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1A16 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1A19 _ 89. 04 24
        call    _intToHexStr                            ; 1A1C _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1A21 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1A24 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A27 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1A2A _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1A2D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A31 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A35 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A38 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A3C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A3F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A43 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A4D _ 89. 04 24
        call    _showString                             ; 1A50 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1A55 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A59 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A5C _ 0F BE. C0
        mov     dword [esp+14H], ?_221                  ; 1A5F _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1A67 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A6B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A6E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A72 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1A75 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A79 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A7C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A80 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A83 _ 89. 04 24
        call    _showString                             ; 1A86 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1A8B _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1A8E _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1A91 _ 89. 04 24
        call    _intToHexStr                            ; 1A94 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1A99 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1A9C _ 8B. 45, 20
        movsx   eax, al                                 ; 1A9F _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1AA2 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1AA5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AA9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AAD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AB0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1AB4 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1AB7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1ABB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1ABE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AC2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AC5 _ 89. 04 24
        call    _showString                             ; 1AC8 _ E8, FFFFF5C8
        nop                                             ; 1ACD _ 90
        leave                                           ; 1ACE _ C9
        ret                                             ; 1ACF _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1AD0 _ 55
        mov     ebp, esp                                ; 1AD1 _ 89. E5
        sub     esp, 56                                 ; 1AD3 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1AD6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AD9 _ 89. 04 24
        call    _sheet_alloc                            ; 1ADC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1AE1 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1AE4 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1AE9 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1AF1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1AF4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1AF9 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1AFC _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1B04 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1B0C _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1B14 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1B17 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1B1B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1B1E _ 89. 04 24
        call    _sheet_setbuf                           ; 1B21 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 1B26 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 1B2E _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1B31 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1B35 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B38 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B3C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B3F _ 89. 04 24
        call    _make_window8                           ; 1B42 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1B47 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1B4F _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1B57 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1B5F _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1B67 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1B6F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1B72 _ 89. 04 24
        call    _make_textbox8                          ; 1B75 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 1B7A _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1B82 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1B8A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B8D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B91 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B94 _ 89. 04 24
        call    _sheet_slide                            ; 1B97 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1B9C _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1BA4 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1BA7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BAB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BAE _ 89. 04 24
        call    _sheet_updown                           ; 1BB1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BB6 _ 8B. 45, F4
        leave                                           ; 1BB9 _ C9
        ret                                             ; 1BBA _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1BBB _ 55
        mov     ebp, esp                                ; 1BBC _ 89. E5
        push    ebx                                     ; 1BBE _ 53
        sub     esp, 68                                 ; 1BBF _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1BC2 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1BC5 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1BC8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BCB _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1BCE _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1BD1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BD4 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 1BD7 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 1BDA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BDD _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BE0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BE3 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1BE5 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1BED _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1BF1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1BF9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1C01 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C09 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C0C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C10 _ 89. 04 24
        call    _boxfill8                               ; 1C13 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 1C18 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1C1B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C1E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C21 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1C23 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1C2B _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1C2F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1C37 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1C3F _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1C47 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C4A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C4E _ 89. 04 24
        call    _boxfill8                               ; 1C51 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 1C56 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C59 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C5C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C5F _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1C61 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1C65 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1C6D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1C75 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1C7D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C85 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C88 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C8C _ 89. 04 24
        call    _boxfill8                               ; 1C8F _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 1C94 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C97 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C9A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C9D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1C9F _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1CA3 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1CAB _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1CB3 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1CBB _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1CC3 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CC6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CCA _ 89. 04 24
        call    _boxfill8                               ; 1CCD _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 1CD2 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1CD5 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1CD8 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1CDB _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1CDE _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1CE1 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CE4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CE7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CE9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CED _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1CF1 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1CF9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1CFD _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1D05 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D08 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D0C _ 89. 04 24
        call    _boxfill8                               ; 1D0F _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 1D14 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1D17 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1D1A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1D1D _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D20 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D23 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D26 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D29 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D2B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D2F _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1D33 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1D3B _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1D3F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1D47 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D4A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D4E _ 89. 04 24
        call    _boxfill8                               ; 1D51 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 1D56 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 1D59 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 1D5C _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 1D5F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D62 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D65 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1D67 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1D6B _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1D6F _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1D77 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1D7F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1D87 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D8A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D8E _ 89. 04 24
        call    _boxfill8                               ; 1D91 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 1D96 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 1D99 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1D9C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D9F _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1DA1 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1DA9 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1DAD _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1DB5 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1DBD _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 1DC5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1DC8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DCC _ 89. 04 24
        call    _boxfill8                               ; 1DCF _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 1DD4 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1DD7 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1DDA _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1DDD _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1DE0 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1DE3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1DE6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DE9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1DEB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DEF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DF3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1DF7 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1DFF _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1E07 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E0A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E0E _ 89. 04 24
        call    _boxfill8                               ; 1E11 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 1E16 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1E19 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1E1C _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1E1F _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1E22 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1E25 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E28 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E2B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1E2D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E31 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E35 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1E39 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1E41 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1E49 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E4C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E50 _ 89. 04 24
        call    _boxfill8                               ; 1E53 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 1E58 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1E5C _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1E60 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1E63 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1E67 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E6A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E6E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E71 _ 89. 04 24
        call    _make_wtitle8                           ; 1E74 _ E8, 00000007
        nop                                             ; 1E79 _ 90
        add     esp, 68                                 ; 1E7A _ 83. C4, 44
        pop     ebx                                     ; 1E7D _ 5B
        pop     ebp                                     ; 1E7E _ 5D
        ret                                             ; 1E7F _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 1E80 _ 55
        mov     ebp, esp                                ; 1E81 _ 89. E5
        push    ebx                                     ; 1E83 _ 53
        sub     esp, 68                                 ; 1E84 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1E87 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1E8A _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1E8D _ 80. 7D, E4, 00
        jz      ?_070                                   ; 1E91 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1E93 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 1E97 _ C6. 45, ED, 0C
        jmp     ?_071                                   ; 1E9B _ EB, 08

?_070:  mov     byte [ebp-12H], 8                       ; 1E9D _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 1EA1 _ C6. 45, ED, 0F
?_071:  mov     eax, dword [ebp+0CH]                    ; 1EA5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EA8 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1EAB _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 1EAE _ 0F B6. 45, ED
        movzx   eax, al                                 ; 1EB2 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 1EB5 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1EB8 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1EBB _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1EBE _ 8B. 12
        mov     dword [esp+18H], 20                     ; 1EC0 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1EC8 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1ECC _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1ED4 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 1EDC _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1EE0 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1EE4 _ 89. 14 24
        call    _boxfill8                               ; 1EE7 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 1EEC _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 1EF0 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1EF3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1EF7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1EFB _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1F03 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1F0B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F0E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F12 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F15 _ 89. 04 24
        call    _showString                             ; 1F18 _ E8, FFFFF178
        mov     dword [ebp-10H], 0                      ; 1F1D _ C7. 45, F0, 00000000
        jmp     ?_079                                   ; 1F24 _ E9, 00000084

?_072:  mov     dword [ebp-0CH], 0                      ; 1F29 _ C7. 45, F4, 00000000
        jmp     ?_078                                   ; 1F30 _ EB, 71

?_073:  mov     eax, dword [ebp-10H]                    ; 1F32 _ 8B. 45, F0
        shl     eax, 4                                  ; 1F35 _ C1. E0, 04
        mov     edx, eax                                ; 1F38 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F3A _ 8B. 45, F4
        add     eax, edx                                ; 1F3D _ 01. D0
        add     eax, _closebtn.2508                     ; 1F3F _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1F44 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1F47 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1F4A _ 80. 7D, EF, 40
        jnz     ?_074                                   ; 1F4E _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1F50 _ C6. 45, EF, 00
        jmp     ?_077                                   ; 1F54 _ EB, 1C

?_074:  cmp     byte [ebp-11H], 36                      ; 1F56 _ 80. 7D, EF, 24
        jnz     ?_075                                   ; 1F5A _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1F5C _ C6. 45, EF, 0F
        jmp     ?_077                                   ; 1F60 _ EB, 10

?_075:  cmp     byte [ebp-11H], 81                      ; 1F62 _ 80. 7D, EF, 51
        jnz     ?_076                                   ; 1F66 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1F68 _ C6. 45, EF, 08
        jmp     ?_077                                   ; 1F6C _ EB, 04

?_076:  mov     byte [ebp-11H], 7                       ; 1F6E _ C6. 45, EF, 07
?_077:  mov     eax, dword [ebp+0CH]                    ; 1F72 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1F75 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1F77 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1F7A _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1F7D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F80 _ 8B. 40, 04
        imul    eax, edx                                ; 1F83 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1F86 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1F89 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1F8C _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1F8F _ 8B. 55, F4
        add     edx, ebx                                ; 1F92 _ 01. DA
        add     eax, edx                                ; 1F94 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1F96 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1F99 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1F9D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1F9F _ 83. 45, F4, 01
?_078:  cmp     dword [ebp-0CH], 15                     ; 1FA3 _ 83. 7D, F4, 0F
        jle     ?_073                                   ; 1FA7 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1FA9 _ 83. 45, F0, 01
?_079:  cmp     dword [ebp-10H], 13                     ; 1FAD _ 83. 7D, F0, 0D
        jle     ?_072                                   ; 1FB1 _ 0F 8E, FFFFFF72
        nop                                             ; 1FB7 _ 90
        add     esp, 68                                 ; 1FB8 _ 83. C4, 44
        pop     ebx                                     ; 1FBB _ 5B
        pop     ebp                                     ; 1FBC _ 5D
        ret                                             ; 1FBD _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1FBE _ 55
        mov     ebp, esp                                ; 1FBF _ 89. E5
        push    edi                                     ; 1FC1 _ 57
        push    esi                                     ; 1FC2 _ 56
        push    ebx                                     ; 1FC3 _ 53
        sub     esp, 44                                 ; 1FC4 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1FC7 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1FCA _ 8B. 45, 14
        add     eax, edx                                ; 1FCD _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1FCF _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1FD2 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1FD5 _ 8B. 45, 18
        add     eax, edx                                ; 1FD8 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1FDA _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1FDD _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1FE0 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1FE3 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1FE6 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1FE9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1FEC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1FEF _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FF2 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FF5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FF8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FFB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FFE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2000 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2004 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2008 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 200C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2010 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2018 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 201C _ 89. 04 24
        call    _boxfill8                               ; 201F _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2024 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2027 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 202A _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 202D _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2030 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2033 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2036 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2039 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 203C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 203F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2042 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2045 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2047 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 204B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 204F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2053 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2057 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 205F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2063 _ 89. 04 24
        call    _boxfill8                               ; 2066 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 206B _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 206E _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2071 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2074 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2077 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 207A _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 207D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2080 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2083 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2086 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2089 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 208C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 208E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2092 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2096 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 209A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 209E _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20AA _ 89. 04 24
        call    _boxfill8                               ; 20AD _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 20B2 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 20B5 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 20B8 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 20BB _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 20BE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 20C1 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 20C4 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 20C7 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 20CA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20CD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20D0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20D3 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20D5 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20D9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20DD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20E1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20E5 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20F1 _ 89. 04 24
        call    _boxfill8                               ; 20F4 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 20F9 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 20FC _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 20FF _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2102 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2105 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2108 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 210B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 210E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2111 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2114 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2116 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 211A _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 211D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2121 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2125 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2129 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2131 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2135 _ 89. 04 24
        call    _boxfill8                               ; 2138 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 213D _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2140 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2143 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2146 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2149 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 214C _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 214F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2152 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2155 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2158 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 215A _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 215D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2161 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2165 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2169 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 216D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2175 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2179 _ 89. 04 24
        call    _boxfill8                               ; 217C _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 2181 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 2184 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2187 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 218A _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 218D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2190 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2193 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2196 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2199 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 219C _ 8B. 00
        mov     dword [esp+18H], esi                    ; 219E _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 21A2 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 21A5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21A9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21AD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21B1 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 21B9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21BD _ 89. 04 24
        call    _boxfill8                               ; 21C0 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 21C5 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 21C8 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 21CB _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 21CE _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 21D1 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 21D4 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 21D7 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 21DA _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 21DD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21E0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21E3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21E6 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 21E8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 21EC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21F0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21F4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21F8 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2200 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2204 _ 89. 04 24
        call    _boxfill8                               ; 2207 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 220C _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 220F _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2212 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 2215 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 2218 _ 8B. 45, 1C
        movzx   eax, al                                 ; 221B _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 221E _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2221 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 2224 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 2227 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2229 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 222C _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2230 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 2233 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 2237 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 223B _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 223F _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2243 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2247 _ 89. 14 24
        call    _boxfill8                               ; 224A _ E8, FFFFEFB3
        nop                                             ; 224F _ 90
        add     esp, 44                                 ; 2250 _ 83. C4, 2C
        pop     ebx                                     ; 2253 _ 5B
        pop     esi                                     ; 2254 _ 5E
        pop     edi                                     ; 2255 _ 5F
        pop     ebp                                     ; 2256 _ 5D
        ret                                             ; 2257 _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 2258 _ 55
        mov     ebp, esp                                ; 2259 _ 89. E5
        sub     esp, 88                                 ; 225B _ 83. EC, 58
        call    _get_addr_code32                        ; 225E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2263 _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 2266 _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 226A _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 226E _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 2272 _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 2276 _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 227A _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 227E _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 2285 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 228C _ E9, 000001B9

?_080:  mov     eax, dword [_shtctl]                    ; 2291 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 2296 _ 89. 04 24
        call    _sheet_alloc                            ; 2299 _ E8, 00000000(rel)
        mov     edx, eax                                ; 229E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22A0 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 22A3 _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 22A7 _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 22AC _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 22B4 _ 89. 04 24
        call    _memman_alloc_4k                        ; 22B7 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 22BC _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 22BF _ 8B. 45, F4
        add     eax, 98                                 ; 22C2 _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 22C5 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 22C8 _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 22CC _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 22CF _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 22D2 _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 22D6 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 22DE _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 22E6 _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 22EE _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 22F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22F5 _ 89. 04 24
        call    _sheet_setbuf                           ; 22F8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 22FD _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 2300 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 2304 _ 8B. 15, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 230A _ C7. 44 24, 0C, 00000001
        lea     eax, [ebp-2AH]                          ; 2312 _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 2315 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2319 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 231D _ 89. 14 24
        call    _make_window8                           ; 2320 _ E8, FFFFF896
        call    _task_alloc                             ; 2325 _ E8, 00000000(rel)
        mov     edx, eax                                ; 232A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 232C _ 8B. 45, F4
        mov     dword [_task_b.2534+eax*4], edx         ; 232F _ 89. 14 85, 00000354(d)
        mov     eax, dword [ebp-0CH]                    ; 2336 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 2339 _ 8B. 04 85, 00000354(d)
        mov     dword [eax+8CH], 0                      ; 2340 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 234A _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 234D _ 8B. 04 85, 00000354(d)
        mov     dword [eax+90H], 1073741824             ; 2354 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-10H]                    ; 235E _ 8B. 45, F0
        neg     eax                                     ; 2361 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 2363 _ 8D. 90, 000009C0(d)
        mov     eax, dword [ebp-0CH]                    ; 2369 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 236C _ 8B. 04 85, 00000354(d)
        mov     dword [eax+4CH], edx                    ; 2373 _ 89. 50, 4C
        mov     eax, dword [ebp-0CH]                    ; 2376 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 2379 _ 8B. 04 85, 00000354(d)
        mov     dword [eax+74H], 0                      ; 2380 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2387 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 238A _ 8B. 04 85, 00000354(d)
        mov     dword [eax+78H], 8                      ; 2391 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2398 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 239B _ 8B. 04 85, 00000354(d)
        mov     dword [eax+7CH], 32                     ; 23A2 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-0CH]                    ; 23A9 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 23AC _ 8B. 04 85, 00000354(d)
        mov     dword [eax+80H], 24                     ; 23B3 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-0CH]                    ; 23BD _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 23C0 _ 8B. 04 85, 00000354(d)
        mov     dword [eax+84H], 0                      ; 23C7 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-0CH]                    ; 23D1 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 23D4 _ 8B. 04 85, 00000354(d)
        mov     dword [eax+88H], 16                     ; 23DB _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-0CH]                    ; 23E5 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 23E8 _ 8B. 04 85, 00000354(d)
        mov     edx, dword [eax+64H]                    ; 23EF _ 8B. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 23F2 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 23F5 _ 8B. 04 85, 00000354(d)
        sub     edx, 8                                  ; 23FC _ 83. EA, 08
        mov     dword [eax+64H], edx                    ; 23FF _ 89. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 2402 _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 2405 _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 2409 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 240C _ 8B. 04 85, 00000354(d)
        mov     eax, dword [eax+64H]                    ; 2413 _ 8B. 40, 64
        add     eax, 4                                  ; 2416 _ 83. C0, 04
        mov     dword [eax], edx                        ; 2419 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 241B _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 241E _ 8D. 50, 01
        mov     eax, edx                                ; 2421 _ 89. D0
        shl     eax, 2                                  ; 2423 _ C1. E0, 02
        add     edx, eax                                ; 2426 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 2428 _ 8B. 45, F4
        mov     eax, dword [_task_b.2534+eax*4]         ; 242B _ 8B. 04 85, 00000354(d)
        mov     dword [esp+8H], edx                     ; 2432 _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 2436 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 243E _ 89. 04 24
        call    _task_run                               ; 2441 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 2446 _ 83. 45, F4, 01
?_081:  cmp     dword [ebp-0CH], 1                      ; 244A _ 83. 7D, F4, 01
        jle     ?_080                                   ; 244E _ 0F 8E, FFFFFE3D
        mov     edx, dword [ebp-24H]                    ; 2454 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 2457 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 245C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 2464 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 246C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2470 _ 89. 04 24
        call    _sheet_slide                            ; 2473 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 2478 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 247B _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 2480 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2488 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 248C _ 89. 04 24
        call    _sheet_updown                           ; 248F _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2494 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 2497 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 249C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 24A4 _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 24AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24B0 _ 89. 04 24
        call    _sheet_slide                            ; 24B3 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 24B8 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 24BB _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 24C0 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 24C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24CC _ 89. 04 24
        call    _sheet_updown                           ; 24CF _ E8, 00000000(rel)
        nop                                             ; 24D4 _ 90
        leave                                           ; 24D5 _ C9
        ret                                             ; 24D6 _ C3
; _multi_windows End of function

_launch_console:; Function begin
        push    ebp                                     ; 24D7 _ 55
        mov     ebp, esp                                ; 24D8 _ 89. E5
        sub     esp, 56                                 ; 24DA _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 24DD _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 24E2 _ 89. 04 24
        call    _sheet_alloc                            ; 24E5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 24EA _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 24ED _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 24F2 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 24FA _ 89. 04 24
        call    _memman_alloc_4k                        ; 24FD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2502 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 2505 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 250D _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 2515 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 251D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2520 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2524 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2527 _ 89. 04 24
        call    _sheet_setbuf                           ; 252A _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 252F _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 2534 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_213                   ; 253C _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 2544 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2547 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 254B _ 89. 04 24
        call    _make_window8                           ; 254E _ E8, FFFFF668
        mov     dword [esp+14H], 0                      ; 2553 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 255B _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 2563 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 256B _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2573 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 257B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 257E _ 89. 04 24
        call    _make_textbox8                          ; 2581 _ E8, FFFFFA38
        call    _task_alloc                             ; 2586 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 258B _ 89. 45, EC
        call    _get_addr_code32                        ; 258E _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 2593 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 2596 _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 2599 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 25A3 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 25A6 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 25B0 _ 8B. 45, E8
        neg     eax                                     ; 25B3 _ F7. D8
        add     eax, _console_task                      ; 25B5 _ 05, 0000268E(d)
        mov     edx, eax                                ; 25BA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 25BC _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 25BF _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 25C2 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 25C5 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 25CC _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 25CF _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 25D6 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 25D9 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 25E0 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 25E3 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 25ED _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 25F0 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 25FA _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 25FD _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 2607 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 260A _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 260D _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 2610 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 2613 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 2616 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 2619 _ 8B. 40, 64
        add     eax, 4                                  ; 261C _ 83. C0, 04
        mov     edx, eax                                ; 261F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2621 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2624 _ 89. 02
        mov     dword [esp+8H], 5                       ; 2626 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 262E _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 2636 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2639 _ 89. 04 24
        call    _task_run                               ; 263C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2641 _ A1, 00000244(d)
        mov     dword [esp+0CH], 4                      ; 2646 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 264E _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 2656 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2659 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 265D _ 89. 04 24
        call    _sheet_slide                            ; 2660 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2665 _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 266A _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 2672 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2675 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2679 _ 89. 04 24
        call    _sheet_updown                           ; 267C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 2681 _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 2684 _ A3, 00000254(d)
        mov     eax, dword [ebp-0CH]                    ; 2689 _ 8B. 45, F4
        leave                                           ; 268C _ C9
        ret                                             ; 268D _ C3
; _launch_console End of function

_console_task:; Function begin
        push    ebp                                     ; 268E _ 55
        mov     ebp, esp                                ; 268F _ 89. E5
        push    ebx                                     ; 2691 _ 53
        sub     esp, 580                                ; 2692 _ 81. EC, 00000244
        call    _task_now                               ; 2698 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 269D _ 89. 45, EC
        mov     dword [ebp-0CH], 8                      ; 26A0 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 0                      ; 26A7 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 26AE _ 8B. 45, EC
        lea     edx, [eax+10H]                          ; 26B1 _ 8D. 50, 10
        mov     eax, dword [ebp-14H]                    ; 26B4 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 26B7 _ 89. 44 24, 0C
        lea     eax, [ebp-21CH]                         ; 26BB _ 8D. 85, FFFFFDE4
        mov     dword [esp+8H], eax                     ; 26C1 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 26C5 _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 26CD _ 89. 14 24
        call    _fifo8_init                             ; 26D0 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 26D5 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 26DA _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 26DD _ 8B. 45, EC
        add     eax, 16                                 ; 26E0 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 26E3 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 26EB _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 26EF _ 8B. 45, E8
        mov     dword [esp], eax                        ; 26F2 _ 89. 04 24
        call    _timer_init                             ; 26F5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 26FA _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-18H]                    ; 2702 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2705 _ 89. 04 24
        call    _timer_settime                          ; 2708 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 270D _ A1, 00000244(d)
        mov     dword [esp+14H], ?_222                  ; 2712 _ C7. 44 24, 14, 0000005D(d)
        mov     dword [esp+10H], 7                      ; 271A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 2722 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 272A _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 2732 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2735 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2739 _ 89. 04 24
        call    _showString                             ; 273C _ E8, FFFFE954
?_082:  call    _io_cli                                 ; 2741 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 2746 _ 8B. 45, EC
        add     eax, 16                                 ; 2749 _ 83. C0, 10
        mov     dword [esp], eax                        ; 274C _ 89. 04 24
        call    _fifo8_status                           ; 274F _ E8, 00000000(rel)
        test    eax, eax                                ; 2754 _ 85. C0
        jnz     ?_083                                   ; 2756 _ 75, 07
        call    _io_sti                                 ; 2758 _ E8, 00000000(rel)
        jmp     ?_082                                   ; 275D _ EB, E2
; _console_task End of function

?_083:  ; Local function
        mov     eax, dword [ebp-14H]                    ; 275F _ 8B. 45, EC
        add     eax, 16                                 ; 2762 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2765 _ 89. 04 24
        call    _fifo8_get                              ; 2768 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 276D _ 89. 45, E4
        call    _io_sti                                 ; 2770 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 1                      ; 2775 _ 83. 7D, E4, 01
        jg      ?_085                                   ; 2779 _ 7F, 58
        cmp     dword [ebp-1CH], 0                      ; 277B _ 83. 7D, E4, 00
        jz      ?_084                                   ; 277F _ 74, 29
        mov     eax, dword [ebp-14H]                    ; 2781 _ 8B. 45, EC
        add     eax, 16                                 ; 2784 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 2787 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 278F _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 2793 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2796 _ 89. 04 24
        call    _timer_init                             ; 2799 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 279E _ C7. 45, F0, 00000007
        jmp     ?_087                                   ; 27A5 _ E9, 00000221

?_084:  mov     eax, dword [ebp-14H]                    ; 27AA _ 8B. 45, EC
        add     eax, 16                                 ; 27AD _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 27B0 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 27B8 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 27BC _ 8B. 45, E8
        mov     dword [esp], eax                        ; 27BF _ 89. 04 24
        call    _timer_init                             ; 27C2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 27C7 _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 27CE _ E9, 000001F8

?_085:  cmp     dword [ebp-1CH], 14                     ; 27D3 _ 83. 7D, E4, 0E
        jne     ?_086                                   ; 27D7 _ 0F 85, 000000FD
        cmp     dword [ebp-0CH], 8                      ; 27DD _ 83. 7D, F4, 08
        jle     ?_086                                   ; 27E1 _ 0F 8E, 000000F3
        mov     eax, dword [ebp-0CH]                    ; 27E7 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 27EA _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 27ED _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 27F0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27F3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27F6 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 27F8 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 2800 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 2804 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 280C _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 280F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2813 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 281B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 281F _ 89. 04 24
        call    _boxfill8                               ; 2822 _ E8, FFFFE9DB
        mov     eax, dword [ebp-0CH]                    ; 2827 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 282A _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 282D _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 2832 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 283A _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 283E _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 2846 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2849 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 284D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2850 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2854 _ 89. 04 24
        call    _sheet_refresh                          ; 2857 _ E8, 00000000(rel)
        sub     dword [ebp-0CH], 8                      ; 285C _ 83. 6D, F4, 08
        mov     eax, dword [ebp-0CH]                    ; 2860 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 2863 _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 2866 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2869 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 286C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 286F _ 8B. 00
        mov     dword [esp+18H], 43                     ; 2871 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 2879 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 287D _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 2885 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 2888 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 288C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2894 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2898 _ 89. 04 24
        call    _boxfill8                               ; 289B _ E8, FFFFE962
        mov     eax, dword [ebp-0CH]                    ; 28A0 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 28A3 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 28A6 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 28AB _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 28B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 28B7 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 28BF _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 28C2 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 28C6 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 28C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28CD _ 89. 04 24
        call    _sheet_refresh                          ; 28D0 _ E8, 00000000(rel)
        jmp     ?_087                                   ; 28D5 _ E9, 000000F1

?_086:  cmp     dword [ebp-0CH], 239                    ; 28DA _ 81. 7D, F4, 000000EF
        jg      ?_087                                   ; 28E1 _ 0F 8F, 000000E4
        cmp     dword [ebp-1CH], 83                     ; 28E7 _ 83. 7D, E4, 53
        jg      ?_087                                   ; 28EB _ 0F 8F, 000000DA
        mov     eax, dword [ebp-1CH]                    ; 28F1 _ 8B. 45, E4
        add     eax, _keytable                          ; 28F4 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 28F9 _ 0F B6. 00
        test    al, al                                  ; 28FC _ 84. C0
        je      ?_087                                   ; 28FE _ 0F 84, 000000C7
        mov     eax, dword [ebp-0CH]                    ; 2904 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 2907 _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 290A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 290D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2910 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2913 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 2915 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 291D _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 2921 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 2929 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 292C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2930 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2938 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 293C _ 89. 04 24
        call    _boxfill8                               ; 293F _ E8, FFFFE8BE
        mov     eax, dword [ebp-0CH]                    ; 2944 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 2947 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 294A _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 294F _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2957 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 295B _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 2963 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2966 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 296A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 296D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2971 _ 89. 04 24
        call    _sheet_refresh                          ; 2974 _ E8, 00000000(rel)
        mov     eax, dword [ebp-1CH]                    ; 2979 _ 8B. 45, E4
        add     eax, _keytable                          ; 297C _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 2981 _ 0F B6. 00
        mov     byte [ebp-21EH], al                     ; 2984 _ 88. 85, FFFFFDE2
        mov     byte [ebp-21DH], 0                      ; 298A _ C6. 85, FFFFFDE3, 00
        mov     edx, dword [_shtctl]                    ; 2991 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-21EH]                         ; 2997 _ 8D. 85, FFFFFDE2
        mov     dword [esp+14H], eax                    ; 299D _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 29A1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 29A9 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 29B1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 29B4 _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 29B8 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 29BB _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 29BF _ 89. 14 24
        call    _showString                             ; 29C2 _ E8, FFFFE6CE
        add     dword [ebp-0CH], 8                      ; 29C7 _ 83. 45, F4, 08
?_087:  mov     eax, dword [ebp-0CH]                    ; 29CB _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 29CE _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 29D1 _ 8B. 45, F0
        movzx   eax, al                                 ; 29D4 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 29D7 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 29DA _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 29DD _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 29E0 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 29E2 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 29EA _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 29EE _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 29F6 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 29F9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 29FD _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2A01 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2A05 _ 89. 14 24
        call    _boxfill8                               ; 2A08 _ E8, FFFFE7F5
        mov     eax, dword [ebp-0CH]                    ; 2A0D _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 2A10 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 2A13 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 2A18 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2A20 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 2A24 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 2A2C _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2A2F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2A33 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2A36 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A3A _ 89. 04 24
        call    _sheet_refresh                          ; 2A3D _ E8, 00000000(rel)
        jmp     ?_082                                   ; 2A42 _ E9, FFFFFCFA

        nop                                             ; 2A47 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2A48 _ 55
        mov     ebp, esp                                ; 2A49 _ 89. E5
        sub     esp, 40                                 ; 2A4B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2A4E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2A56 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A59 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2A5C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2A61 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2A64 _ 83. 7D, F0, 00
        jnz     ?_088                                   ; 2A68 _ 75, 0A
        mov     eax, 0                                  ; 2A6A _ B8, 00000000
        jmp     ?_092                                   ; 2A6F _ E9, 0000009D

?_088:  mov     eax, dword [ebp+10H]                    ; 2A74 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2A77 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2A7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A82 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2A85 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2A8A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2A8C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2A8F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 2A92 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2A95 _ 8B. 40, 04
        test    eax, eax                                ; 2A98 _ 85. C0
        jnz     ?_089                                   ; 2A9A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2A9C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2A9F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2AA7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AAB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AAE _ 89. 04 24
        call    _memman_free_4k                         ; 2AB1 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2AB6 _ B8, 00000000
        jmp     ?_092                                   ; 2ABB _ EB, 54

?_089:  mov     eax, dword [ebp-10H]                    ; 2ABD _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2AC0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2AC3 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2AC5 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2AC8 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2ACB _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2ACE _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2AD1 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2AD4 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2AD7 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 2ADA _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2AE1 _ C7. 45, F4, 00000000
        jmp     ?_091                                   ; 2AE8 _ EB, 1B

?_090:  mov     edx, dword [ebp-10H]                    ; 2AEA _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2AED _ 8B. 45, F4
        add     eax, 33                                 ; 2AF0 _ 83. C0, 21
        shl     eax, 5                                  ; 2AF3 _ C1. E0, 05
        add     eax, edx                                ; 2AF6 _ 01. D0
        add     eax, 16                                 ; 2AF8 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2AFB _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2B01 _ 83. 45, F4, 01
?_091:  cmp     dword [ebp-0CH], 255                    ; 2B05 _ 81. 7D, F4, 000000FF
        jle     ?_090                                   ; 2B0C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 2B0E _ 8B. 45, F0
?_092:  leave                                           ; 2B11 _ C9
        ret                                             ; 2B12 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2B13 _ 55
        mov     ebp, esp                                ; 2B14 _ 89. E5
        sub     esp, 16                                 ; 2B16 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2B19 _ C7. 45, FC, 00000000
        jmp     ?_095                                   ; 2B20 _ EB, 5B

?_093:  mov     edx, dword [ebp+8H]                     ; 2B22 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2B25 _ 8B. 45, FC
        add     eax, 33                                 ; 2B28 _ 83. C0, 21
        shl     eax, 5                                  ; 2B2B _ C1. E0, 05
        add     eax, edx                                ; 2B2E _ 01. D0
        add     eax, 16                                 ; 2B30 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2B33 _ 8B. 00
        test    eax, eax                                ; 2B35 _ 85. C0
        jnz     ?_094                                   ; 2B37 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2B39 _ 8B. 45, FC
        shl     eax, 5                                  ; 2B3C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2B3F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2B45 _ 8B. 45, 08
        add     eax, edx                                ; 2B48 _ 01. D0
        add     eax, 4                                  ; 2B4A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2B4D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2B50 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B53 _ 8B. 55, FC
        add     edx, 4                                  ; 2B56 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2B59 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2B5C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 2B60 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 2B63 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2B6A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2B6D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 2B74 _ 8B. 45, F8
        jmp     ?_096                                   ; 2B77 _ EB, 12

?_094:  add     dword [ebp-4H], 1                       ; 2B79 _ 83. 45, FC, 01
?_095:  cmp     dword [ebp-4H], 255                     ; 2B7D _ 81. 7D, FC, 000000FF
        jle     ?_093                                   ; 2B84 _ 7E, 9C
        mov     eax, 0                                  ; 2B86 _ B8, 00000000
?_096:  leave                                           ; 2B8B _ C9
        ret                                             ; 2B8C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 2B8D _ 55
        mov     ebp, esp                                ; 2B8E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B90 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B93 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B96 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B98 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B9B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2B9E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2BA1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2BA4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2BA7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BAA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2BAD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2BB0 _ 89. 50, 14
        nop                                             ; 2BB3 _ 90
        pop     ebp                                     ; 2BB4 _ 5D
        ret                                             ; 2BB5 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 2BB6 _ 55
        mov     ebp, esp                                ; 2BB7 _ 89. E5
        push    edi                                     ; 2BB9 _ 57
        push    esi                                     ; 2BBA _ 56
        push    ebx                                     ; 2BBB _ 53
        sub     esp, 60                                 ; 2BBC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2BBF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BC2 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2BC5 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2BC8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BCB _ 8B. 40, 10
        add     eax, 1                                  ; 2BCE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2BD1 _ 39. 45, 10
        jle     ?_097                                   ; 2BD4 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2BD6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BD9 _ 8B. 40, 10
        add     eax, 1                                  ; 2BDC _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2BDF _ 89. 45, 10
?_097:  cmp     dword [ebp+10H], -1                     ; 2BE2 _ 83. 7D, 10, FF
        jge     ?_098                                   ; 2BE6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2BE8 _ C7. 45, 10, FFFFFFFF
?_098:  mov     eax, dword [ebp+0CH]                    ; 2BEF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2BF2 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2BF5 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2BF8 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2BFB _ 3B. 45, 10
        jle     ?_105                                   ; 2BFE _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2C04 _ 83. 7D, 10, 00
        js      ?_101                                   ; 2C08 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2C0E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2C11 _ 89. 45, E4
        jmp     ?_100                                   ; 2C14 _ EB, 34

?_099:  mov     eax, dword [ebp-1CH]                    ; 2C16 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2C19 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C1C _ 8B. 45, 08
        add     edx, 4                                  ; 2C1F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2C22 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C26 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2C29 _ 8B. 55, E4
        add     edx, 4                                  ; 2C2C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2C2F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C33 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2C36 _ 8B. 55, E4
        add     edx, 4                                  ; 2C39 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C3C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2C40 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2C43 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2C46 _ 83. 6D, E4, 01
?_100:  mov     eax, dword [ebp-1CH]                    ; 2C4A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2C4D _ 3B. 45, 10
        jg      ?_099                                   ; 2C50 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2C52 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C55 _ 8B. 55, 10
        add     edx, 4                                  ; 2C58 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2C5B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2C5E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 2C62 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C65 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C68 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C6B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C6E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C71 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C74 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C77 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C7A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C7D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C80 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C83 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C86 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C89 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C8C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C8F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 2C92 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2C96 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2C9A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2C9E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2CA2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CA9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2CAC _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2CB1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2CB4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2CB7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CBA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CBD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CC0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CC3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CC6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CC9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CCC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CCF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CD2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CD5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CD8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CDB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CDE _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2CE1 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2CE4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2CE8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2CEC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2CF0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2CF4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2CF8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CFF _ 89. 04 24
        call    _sheet_refreshsub                       ; 2D02 _ E8, 00000465
        jmp     ?_112                                   ; 2D07 _ E9, 0000027D

?_101:  mov     eax, dword [ebp+8H]                     ; 2D0C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D0F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2D12 _ 39. 45, E0
        jge     ?_104                                   ; 2D15 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2D17 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2D1A _ 89. 45, E4
        jmp     ?_103                                   ; 2D1D _ EB, 34

?_102:  mov     eax, dword [ebp-1CH]                    ; 2D1F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2D22 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D25 _ 8B. 45, 08
        add     edx, 4                                  ; 2D28 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2D2B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D2F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2D32 _ 8B. 55, E4
        add     edx, 4                                  ; 2D35 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2D38 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D3C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2D3F _ 8B. 55, E4
        add     edx, 4                                  ; 2D42 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D45 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2D49 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2D4C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2D4F _ 83. 45, E4, 01
?_103:  mov     eax, dword [ebp+8H]                     ; 2D53 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D56 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2D59 _ 39. 45, E4
        jl      ?_102                                   ; 2D5C _ 7C, C1
?_104:  mov     eax, dword [ebp+8H]                     ; 2D5E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D61 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2D64 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D67 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D6A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D6D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D70 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D73 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D76 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D79 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D7C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D7F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D82 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D85 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D88 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D8B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D8E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D91 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D94 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 2D97 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2D9F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2DA3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2DA7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2DAB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DB2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2DB5 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2DBA _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2DBD _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2DC0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DC3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DC6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2DC9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2DCC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2DCF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2DD2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DD5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DD8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2DDB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2DDE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DE1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DE4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DE7 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2DEA _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2DEE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2DF6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2DFA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2DFE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2E02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E09 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2E0C _ E8, 0000035B
        jmp     ?_112                                   ; 2E11 _ E9, 00000173

?_105:  mov     eax, dword [ebp-20H]                    ; 2E16 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2E19 _ 3B. 45, 10
        jge     ?_112                                   ; 2E1C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2E22 _ 83. 7D, E0, 00
        js      ?_108                                   ; 2E26 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2E28 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2E2B _ 89. 45, E4
        jmp     ?_107                                   ; 2E2E _ EB, 34

?_106:  mov     eax, dword [ebp-1CH]                    ; 2E30 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2E33 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E36 _ 8B. 45, 08
        add     edx, 4                                  ; 2E39 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2E3C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E40 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2E43 _ 8B. 55, E4
        add     edx, 4                                  ; 2E46 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2E49 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E4D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2E50 _ 8B. 55, E4
        add     edx, 4                                  ; 2E53 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E56 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2E5A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2E5D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2E60 _ 83. 45, E4, 01
?_107:  mov     eax, dword [ebp-1CH]                    ; 2E64 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2E67 _ 3B. 45, 10
        jl      ?_106                                   ; 2E6A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2E6C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E6F _ 8B. 55, 10
        add     edx, 4                                  ; 2E72 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2E75 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2E78 _ 89. 4C 90, 04
        jmp     ?_111                                   ; 2E7C _ EB, 6C

?_108:  mov     eax, dword [ebp+8H]                     ; 2E7E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E81 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 2E84 _ 89. 45, E4
        jmp     ?_110                                   ; 2E87 _ EB, 3A

?_109:  mov     eax, dword [ebp-1CH]                    ; 2E89 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 2E8C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 2E8F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2E92 _ 8B. 55, E4
        add     edx, 4                                  ; 2E95 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2E98 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E9C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 2E9F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2EA2 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 2EA6 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2EA9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EAC _ 8B. 45, 08
        add     edx, 4                                  ; 2EAF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EB2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2EB6 _ 8B. 55, E4
        add     edx, 1                                  ; 2EB9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2EBC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2EBF _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 2EC3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2EC6 _ 3B. 45, 10
        jge     ?_109                                   ; 2EC9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2ECB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2ECE _ 8B. 55, 10
        add     edx, 4                                  ; 2ED1 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2ED4 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2ED7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EDE _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2EE1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EE4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2EE7 _ 89. 50, 10
?_111:  mov     eax, dword [ebp+0CH]                    ; 2EEA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EED _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EF0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EF3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EF6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2EF9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2EFC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2EFF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F02 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F05 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F08 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F0B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F0E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F11 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2F14 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2F17 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F1B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F1F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2F23 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2F27 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F2B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F2E _ 89. 04 24
        call    _sheet_refreshmap                       ; 2F31 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2F36 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F39 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F3C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F3F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F42 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F45 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F48 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F4B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F4E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F51 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F54 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F57 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F5A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F5D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2F60 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 2F63 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 2F67 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2F6A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F6E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F72 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2F76 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2F7A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F81 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2F84 _ E8, 000001E3
?_112:  nop                                             ; 2F89 _ 90
        add     esp, 60                                 ; 2F8A _ 83. C4, 3C
        pop     ebx                                     ; 2F8D _ 5B
        pop     esi                                     ; 2F8E _ 5E
        pop     edi                                     ; 2F8F _ 5F
        pop     ebp                                     ; 2F90 _ 5D
        ret                                             ; 2F91 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 2F92 _ 55
        mov     ebp, esp                                ; 2F93 _ 89. E5
        push    edi                                     ; 2F95 _ 57
        push    esi                                     ; 2F96 _ 56
        push    ebx                                     ; 2F97 _ 53
        sub     esp, 60                                 ; 2F98 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2F9B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F9E _ 8B. 40, 18
        test    eax, eax                                ; 2FA1 _ 85. C0
        js      ?_113                                   ; 2FA3 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 2FA5 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 2FA8 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 2FAB _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 2FAE _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 2FB1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FB4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2FB7 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 2FBA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2FBD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2FC0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2FC3 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 2FC6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2FC9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FCC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2FCF _ 8B. 45, 14
        add     edx, eax                                ; 2FD2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FD4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FD7 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2FDA _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2FDD _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2FE0 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 2FE3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FE7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FEB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FEF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2FF3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2FF7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FFB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FFE _ 89. 04 24
        call    _sheet_refreshsub                       ; 3001 _ E8, 00000166
?_113:  mov     eax, 0                                  ; 3006 _ B8, 00000000
        add     esp, 60                                 ; 300B _ 83. C4, 3C
        pop     ebx                                     ; 300E _ 5B
        pop     esi                                     ; 300F _ 5E
        pop     edi                                     ; 3010 _ 5F
        pop     ebp                                     ; 3011 _ 5D
        ret                                             ; 3012 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3013 _ 55
        mov     ebp, esp                                ; 3014 _ 89. E5
        push    esi                                     ; 3016 _ 56
        push    ebx                                     ; 3017 _ 53
        sub     esp, 48                                 ; 3018 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 301B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 301E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3021 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3024 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3027 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 302A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 302D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3030 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3033 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3036 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3039 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 303C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 303F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3042 _ 8B. 40, 18
        test    eax, eax                                ; 3045 _ 85. C0
        js      ?_114                                   ; 3047 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 304D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3050 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3053 _ 8B. 45, F0
        add     edx, eax                                ; 3056 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3058 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 305B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 305E _ 8B. 45, F4
        add     eax, ecx                                ; 3061 _ 01. C8
        mov     dword [esp+14H], 0                      ; 3063 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 306B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 306F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3073 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3076 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 307A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 307D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3081 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3084 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3087 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 308C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 308F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3092 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3095 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3098 _ 8B. 45, 14
        add     edx, eax                                ; 309B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 309D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 30A0 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 30A3 _ 8B. 45, 10
        add     eax, ebx                                ; 30A6 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 30A8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 30AC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30B0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 30B4 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 30B7 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 30BB _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 30BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30C5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 30C8 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 30CD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30D0 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 30D3 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 30D6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 30D9 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 30DC _ 8B. 45, F0
        add     edx, eax                                ; 30DF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 30E1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 30E4 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 30E7 _ 8B. 45, F4
        add     eax, ebx                                ; 30EA _ 01. D8
        mov     dword [esp+18H], ecx                    ; 30EC _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 30F0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 30F8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30FC _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3100 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3103 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3107 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 310A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 310E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3111 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3114 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3119 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 311C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 311F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3122 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3125 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3128 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 312B _ 8B. 45, 14
        add     edx, eax                                ; 312E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3130 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3133 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3136 _ 8B. 45, 10
        add     eax, esi                                ; 3139 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 313B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 313F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3143 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3147 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 314B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 314E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3152 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3155 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3159 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 315C _ 89. 04 24
        call    _sheet_refreshsub                       ; 315F _ E8, 00000008
?_114:  nop                                             ; 3164 _ 90
        add     esp, 48                                 ; 3165 _ 83. C4, 30
        pop     ebx                                     ; 3168 _ 5B
        pop     esi                                     ; 3169 _ 5E
        pop     ebp                                     ; 316A _ 5D
        ret                                             ; 316B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 316C _ 55
        mov     ebp, esp                                ; 316D _ 89. E5
        sub     esp, 48                                 ; 316F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3172 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3175 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3177 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 317A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 317D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3180 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3183 _ 83. 7D, 0C, 00
        jns     ?_115                                   ; 3187 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3189 _ C7. 45, 0C, 00000000
?_115:  cmp     dword [ebp+10H], 8                      ; 3190 _ 83. 7D, 10, 08
        jg      ?_116                                   ; 3194 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3196 _ C7. 45, 10, 00000000
?_116:  mov     eax, dword [ebp+8H]                     ; 319D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31A0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 31A3 _ 39. 45, 14
        jle     ?_117                                   ; 31A6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31A8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31AB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 31AE _ 89. 45, 14
?_117:  mov     eax, dword [ebp+8H]                     ; 31B1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31B4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 31B7 _ 39. 45, 18
        jle     ?_118                                   ; 31BA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31BC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31BF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 31C2 _ 89. 45, 18
?_118:  mov     eax, dword [ebp+1CH]                    ; 31C5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 31C8 _ 89. 45, FC
        jmp     ?_125                                   ; 31CB _ E9, 0000010F

?_119:  mov     eax, dword [ebp+8H]                     ; 31D0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 31D3 _ 8B. 55, FC
        add     edx, 4                                  ; 31D6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 31D9 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 31DD _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 31E0 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 31E3 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 31E5 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 31E8 _ 8B. 45, 08
        add     eax, 1044                               ; 31EB _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 31F0 _ 8B. 55, E8
        sub     edx, eax                                ; 31F3 _ 29. C2
        mov     eax, edx                                ; 31F5 _ 89. D0
        sar     eax, 5                                  ; 31F7 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 31FA _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 31FD _ C7. 45, F4, 00000000
        jmp     ?_124                                   ; 3204 _ E9, 000000C3

?_120:  mov     eax, dword [ebp-18H]                    ; 3209 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 320C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 320F _ 8B. 45, F4
        add     eax, edx                                ; 3212 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3214 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3217 _ C7. 45, F8, 00000000
        jmp     ?_123                                   ; 321E _ E9, 00000096

?_121:  mov     eax, dword [ebp-18H]                    ; 3223 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3226 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3229 _ 8B. 45, F8
        add     eax, edx                                ; 322C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 322E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3231 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3234 _ 3B. 45, D8
        jg      ?_122                                   ; 3237 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3239 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 323C _ 3B. 45, 14
        jge     ?_122                                   ; 323F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3241 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3244 _ 3B. 45, DC
        jg      ?_122                                   ; 3247 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3249 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 324C _ 3B. 45, 18
        jge     ?_122                                   ; 324F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3251 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3254 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3257 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 325B _ 8B. 55, F8
        add     eax, edx                                ; 325E _ 01. D0
        mov     edx, eax                                ; 3260 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3262 _ 8B. 45, E4
        add     eax, edx                                ; 3265 _ 01. D0
        movzx   eax, byte [eax]                         ; 3267 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 326A _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 326D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3270 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3273 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3277 _ 8B. 55, D8
        add     eax, edx                                ; 327A _ 01. D0
        mov     edx, eax                                ; 327C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 327E _ 8B. 45, EC
        add     eax, edx                                ; 3281 _ 01. D0
        movzx   eax, byte [eax]                         ; 3283 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3286 _ 38. 45, E3
        jnz     ?_122                                   ; 3289 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 328B _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 328F _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3292 _ 8B. 52, 14
        cmp     eax, edx                                ; 3295 _ 39. D0
        jz      ?_122                                   ; 3297 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3299 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 329C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 329F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 32A3 _ 8B. 55, D8
        add     eax, edx                                ; 32A6 _ 01. D0
        mov     edx, eax                                ; 32A8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 32AA _ 8B. 45, F0
        add     edx, eax                                ; 32AD _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 32AF _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 32B3 _ 88. 02
?_122:  add     dword [ebp-8H], 1                       ; 32B5 _ 83. 45, F8, 01
?_123:  mov     eax, dword [ebp-18H]                    ; 32B9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 32BC _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 32BF _ 39. 45, F8
        jl      ?_121                                   ; 32C2 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 32C8 _ 83. 45, F4, 01
?_124:  mov     eax, dword [ebp-18H]                    ; 32CC _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 32CF _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 32D2 _ 39. 45, F4
        jl      ?_120                                   ; 32D5 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 32DB _ 83. 45, FC, 01
?_125:  mov     eax, dword [ebp-4H]                     ; 32DF _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 32E2 _ 3B. 45, 20
        jle     ?_119                                   ; 32E5 _ 0F 8E, FFFFFEE5
        nop                                             ; 32EB _ 90
        leave                                           ; 32EC _ C9
        ret                                             ; 32ED _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 32EE _ 55
        mov     ebp, esp                                ; 32EF _ 89. E5
        sub     esp, 64                                 ; 32F1 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 32F4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 32F7 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 32FA _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 32FD _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 3301 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3303 _ C7. 45, 0C, 00000000
?_126:  cmp     dword [ebp+10H], 0                      ; 330A _ 83. 7D, 10, 00
        jns     ?_127                                   ; 330E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3310 _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 3317 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 331A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 331D _ 39. 45, 14
        jle     ?_128                                   ; 3320 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3322 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3325 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3328 _ 89. 45, 14
?_128:  mov     eax, dword [ebp+8H]                     ; 332B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 332E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3331 _ 39. 45, 18
        jle     ?_129                                   ; 3334 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3336 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3339 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 333C _ 89. 45, 18
?_129:  mov     eax, dword [ebp+1CH]                    ; 333F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3342 _ 89. 45, FC
        jmp     ?_140                                   ; 3345 _ E9, 00000139

?_130:  mov     eax, dword [ebp+8H]                     ; 334A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 334D _ 8B. 55, FC
        add     edx, 4                                  ; 3350 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3353 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3357 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 335A _ 8B. 45, 08
        add     eax, 1044                               ; 335D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3362 _ 8B. 55, DC
        sub     edx, eax                                ; 3365 _ 29. C2
        mov     eax, edx                                ; 3367 _ 89. D0
        sar     eax, 5                                  ; 3369 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 336C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 336F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3372 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3374 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3377 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 337A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 337D _ 8B. 55, 0C
        sub     edx, eax                                ; 3380 _ 29. C2
        mov     eax, edx                                ; 3382 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3384 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3387 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 338A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 338D _ 8B. 55, 10
        sub     edx, eax                                ; 3390 _ 29. C2
        mov     eax, edx                                ; 3392 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3394 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3397 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 339A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 339D _ 8B. 55, 14
        sub     edx, eax                                ; 33A0 _ 29. C2
        mov     eax, edx                                ; 33A2 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 33A4 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 33A7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 33AA _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 33AD _ 8B. 55, 18
        sub     edx, eax                                ; 33B0 _ 29. C2
        mov     eax, edx                                ; 33B2 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 33B4 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 33B7 _ 83. 7D, F0, 00
        jns     ?_131                                   ; 33BB _ 79, 07
        mov     dword [ebp-10H], 0                      ; 33BD _ C7. 45, F0, 00000000
?_131:  cmp     dword [ebp-14H], 0                      ; 33C4 _ 83. 7D, EC, 00
        jns     ?_132                                   ; 33C8 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 33CA _ C7. 45, EC, 00000000
?_132:  mov     eax, dword [ebp-24H]                    ; 33D1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 33D4 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 33D7 _ 39. 45, E8
        jle     ?_133                                   ; 33DA _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 33DC _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 33DF _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 33E2 _ 89. 45, E8
?_133:  mov     eax, dword [ebp-24H]                    ; 33E5 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 33E8 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 33EB _ 39. 45, E4
        jle     ?_134                                   ; 33EE _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 33F0 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 33F3 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 33F6 _ 89. 45, E4
?_134:  mov     eax, dword [ebp-14H]                    ; 33F9 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 33FC _ 89. 45, F4
        jmp     ?_139                                   ; 33FF _ EB, 76

?_135:  mov     eax, dword [ebp-24H]                    ; 3401 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3404 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3407 _ 8B. 45, F4
        add     eax, edx                                ; 340A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 340C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 340F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3412 _ 89. 45, F8
        jmp     ?_138                                   ; 3415 _ EB, 54

?_136:  mov     eax, dword [ebp-24H]                    ; 3417 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 341A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 341D _ 8B. 45, F8
        add     eax, edx                                ; 3420 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3422 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3425 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3428 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 342B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 342F _ 8B. 55, F8
        add     eax, edx                                ; 3432 _ 01. D0
        mov     edx, eax                                ; 3434 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3436 _ 8B. 45, D4
        add     eax, edx                                ; 3439 _ 01. D0
        movzx   eax, byte [eax]                         ; 343B _ 0F B6. 00
        movzx   eax, al                                 ; 343E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3441 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3444 _ 8B. 52, 14
        cmp     eax, edx                                ; 3447 _ 39. D0
        jz      ?_137                                   ; 3449 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 344B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 344E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3451 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3455 _ 8B. 55, CC
        add     eax, edx                                ; 3458 _ 01. D0
        mov     edx, eax                                ; 345A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 345C _ 8B. 45, E0
        add     edx, eax                                ; 345F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3461 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3465 _ 88. 02
?_137:  add     dword [ebp-8H], 1                       ; 3467 _ 83. 45, F8, 01
?_138:  mov     eax, dword [ebp-8H]                     ; 346B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 346E _ 3B. 45, E8
        jl      ?_136                                   ; 3471 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3473 _ 83. 45, F4, 01
?_139:  mov     eax, dword [ebp-0CH]                    ; 3477 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 347A _ 3B. 45, E4
        jl      ?_135                                   ; 347D _ 7C, 82
        add     dword [ebp-4H], 1                       ; 347F _ 83. 45, FC, 01
?_140:  mov     eax, dword [ebp+8H]                     ; 3483 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3486 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3489 _ 39. 45, FC
        jle     ?_130                                   ; 348C _ 0F 8E, FFFFFEB8
        nop                                             ; 3492 _ 90
        leave                                           ; 3493 _ C9
        ret                                             ; 3494 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3495 _ 90
        nop                                             ; 3496 _ 90
        nop                                             ; 3497 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 3498 _ 55
        mov     ebp, esp                                ; 3499 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 349B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 349E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 34A4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 34A7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 34AE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 34B1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 34B8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 34BB _ C7. 40, 0C, 00000000
        nop                                             ; 34C2 _ 90
        pop     ebp                                     ; 34C3 _ 5D
        ret                                             ; 34C4 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 34C5 _ 55
        mov     ebp, esp                                ; 34C6 _ 89. E5
        sub     esp, 16                                 ; 34C8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 34CB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 34D2 _ C7. 45, FC, 00000000
        jmp     ?_142                                   ; 34D9 _ EB, 14

?_141:  mov     eax, dword [ebp+8H]                     ; 34DB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 34DE _ 8B. 55, FC
        add     edx, 2                                  ; 34E1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 34E4 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 34E8 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 34EB _ 83. 45, FC, 01
?_142:  mov     eax, dword [ebp+8H]                     ; 34EF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 34F2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 34F4 _ 39. 45, FC
        jc      ?_141                                   ; 34F7 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 34F9 _ 8B. 45, F8
        leave                                           ; 34FC _ C9
        ret                                             ; 34FD _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 34FE _ 55
        mov     ebp, esp                                ; 34FF _ 89. E5
        sub     esp, 16                                 ; 3501 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3504 _ C7. 45, FC, 00000000
        jmp     ?_146                                   ; 350B _ E9, 00000083

?_143:  mov     eax, dword [ebp+8H]                     ; 3510 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3513 _ 8B. 55, FC
        add     edx, 2                                  ; 3516 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3519 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 351D _ 39. 45, 0C
        ja      ?_145                                   ; 3520 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3522 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3525 _ 8B. 55, FC
        add     edx, 2                                  ; 3528 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 352B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 352E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3531 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3534 _ 8B. 55, FC
        add     edx, 2                                  ; 3537 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 353A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 353D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3540 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3543 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3546 _ 8B. 55, FC
        add     edx, 2                                  ; 3549 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 354C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 354F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3552 _ 8B. 55, FC
        add     edx, 2                                  ; 3555 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3558 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 355C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 355F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3562 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3565 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3568 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 356C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 356F _ 8B. 55, FC
        add     edx, 2                                  ; 3572 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3575 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3579 _ 85. C0
        jnz     ?_144                                   ; 357B _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 357D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3580 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3582 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3585 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3588 _ 89. 10
?_144:  mov     eax, dword [ebp-8H]                     ; 358A _ 8B. 45, F8
        jmp     ?_147                                   ; 358D _ EB, 17

?_145:  add     dword [ebp-4H], 1                       ; 358F _ 83. 45, FC, 01
?_146:  mov     eax, dword [ebp+8H]                     ; 3593 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3596 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3598 _ 39. 45, FC
        jc      ?_143                                   ; 359B _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 35A1 _ B8, 00000000
?_147:  leave                                           ; 35A6 _ C9
        ret                                             ; 35A7 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 35A8 _ 55
        mov     ebp, esp                                ; 35A9 _ 89. E5
        push    ebx                                     ; 35AB _ 53
        sub     esp, 16                                 ; 35AC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 35AF _ C7. 45, F8, 00000000
        jmp     ?_149                                   ; 35B6 _ EB, 15

?_148:  mov     eax, dword [ebp+8H]                     ; 35B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 35BB _ 8B. 55, F8
        add     edx, 2                                  ; 35BE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 35C1 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 35C4 _ 39. 45, 0C
        jc      ?_150                                   ; 35C7 _ 72, 10
        add     dword [ebp-8H], 1                       ; 35C9 _ 83. 45, F8, 01
?_149:  mov     eax, dword [ebp+8H]                     ; 35CD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 35D0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 35D2 _ 39. 45, F8
        jl      ?_148                                   ; 35D5 _ 7C, E1
        jmp     ?_151                                   ; 35D7 _ EB, 01

?_150:  nop                                             ; 35D9 _ 90
?_151:  cmp     dword [ebp-8H], 0                       ; 35DA _ 83. 7D, F8, 00
        jle     ?_153                                   ; 35DE _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 35E4 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 35E7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 35EA _ 8B. 45, 08
        add     edx, 2                                  ; 35ED _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 35F0 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 35F3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 35F6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 35F9 _ 8B. 45, 08
        add     edx, 2                                  ; 35FC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 35FF _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3603 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3605 _ 39. 45, 0C
        jne     ?_153                                   ; 3608 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 360E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3611 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3614 _ 8B. 45, 08
        add     edx, 2                                  ; 3617 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 361A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 361E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3621 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3624 _ 8B. 45, 10
        add     ecx, eax                                ; 3627 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3629 _ 8B. 45, 08
        add     edx, 2                                  ; 362C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 362F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3633 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3636 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3638 _ 39. 45, F8
        jge     ?_152                                   ; 363B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 363D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3640 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3643 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3646 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3649 _ 8B. 55, F8
        add     edx, 2                                  ; 364C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 364F _ 8B. 04 D0
        cmp     ecx, eax                                ; 3652 _ 39. C1
        jnz     ?_152                                   ; 3654 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3656 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3659 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 365C _ 8B. 45, 08
        add     edx, 2                                  ; 365F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3662 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3666 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3669 _ 8B. 55, F8
        add     edx, 2                                  ; 366C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 366F _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3673 _ 8B. 55, F8
        sub     edx, 1                                  ; 3676 _ 83. EA, 01
        add     ecx, eax                                ; 3679 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 367B _ 8B. 45, 08
        add     edx, 2                                  ; 367E _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3681 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3685 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3688 _ 8B. 00
        lea     edx, [eax-1H]                           ; 368A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 368D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3690 _ 89. 10
?_152:  mov     eax, 0                                  ; 3692 _ B8, 00000000
        jmp     ?_159                                   ; 3697 _ E9, 0000011C

?_153:  mov     eax, dword [ebp+8H]                     ; 369C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 369F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 36A1 _ 39. 45, F8
        jge     ?_154                                   ; 36A4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 36A6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 36A9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 36AC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 36AF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 36B2 _ 8B. 55, F8
        add     edx, 2                                  ; 36B5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 36B8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 36BB _ 39. C1
        jnz     ?_154                                   ; 36BD _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 36BF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 36C2 _ 8B. 55, F8
        add     edx, 2                                  ; 36C5 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 36C8 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 36CB _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 36CE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 36D1 _ 8B. 55, F8
        add     edx, 2                                  ; 36D4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 36D7 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 36DB _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 36DE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 36E1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 36E4 _ 8B. 55, F8
        add     edx, 2                                  ; 36E7 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 36EA _ 89. 4C D0, 04
        mov     eax, 0                                  ; 36EE _ B8, 00000000
        jmp     ?_159                                   ; 36F3 _ E9, 000000C0

?_154:  mov     eax, dword [ebp+8H]                     ; 36F8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36FB _ 8B. 00
        cmp     eax, 4095                               ; 36FD _ 3D, 00000FFF
        jg      ?_158                                   ; 3702 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3708 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 370B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 370D _ 89. 45, F4
        jmp     ?_156                                   ; 3710 _ EB, 28

?_155:  mov     eax, dword [ebp-0CH]                    ; 3712 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3715 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3718 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 371B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 371E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3721 _ 8B. 45, 08
        add     edx, 2                                  ; 3724 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 3727 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 372A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 372C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 372F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 3732 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 3736 _ 83. 6D, F4, 01
?_156:  mov     eax, dword [ebp-0CH]                    ; 373A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 373D _ 3B. 45, F8
        jg      ?_155                                   ; 3740 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 3742 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3745 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3747 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 374A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 374D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 374F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3752 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3755 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3758 _ 8B. 00
        cmp     edx, eax                                ; 375A _ 39. C2
        jge     ?_157                                   ; 375C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 375E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3761 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3763 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3766 _ 89. 50, 04
?_157:  mov     eax, dword [ebp+8H]                     ; 3769 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 376C _ 8B. 55, F8
        add     edx, 2                                  ; 376F _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3772 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3775 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3778 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 377B _ 8B. 55, F8
        add     edx, 2                                  ; 377E _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3781 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3784 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3788 _ B8, 00000000
        jmp     ?_159                                   ; 378D _ EB, 29

?_158:  mov     eax, dword [ebp+8H]                     ; 378F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3792 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3795 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3798 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 379B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 379E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 37A1 _ 8B. 40, 08
        mov     edx, eax                                ; 37A4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 37A6 _ 8B. 45, 10
        add     eax, edx                                ; 37A9 _ 01. D0
        mov     edx, eax                                ; 37AB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37AD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 37B0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 37B3 _ B8, FFFFFFFF
?_159:  add     esp, 16                                 ; 37B8 _ 83. C4, 10
        pop     ebx                                     ; 37BB _ 5B
        pop     ebp                                     ; 37BC _ 5D
        ret                                             ; 37BD _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 37BE _ 55
        mov     ebp, esp                                ; 37BF _ 89. E5
        sub     esp, 24                                 ; 37C1 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 37C4 _ 8B. 45, 0C
        add     eax, 4095                               ; 37C7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 37CC _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 37D1 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 37D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 37D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 37DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 37DE _ 89. 04 24
        call    _memman_alloc                           ; 37E1 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 37E6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 37E9 _ 8B. 45, FC
        leave                                           ; 37EC _ C9
        ret                                             ; 37ED _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 37EE _ 55
        mov     ebp, esp                                ; 37EF _ 89. E5
        sub     esp, 28                                 ; 37F1 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 37F4 _ 8B. 45, 10
        add     eax, 4095                               ; 37F7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 37FC _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 3801 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3804 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3807 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 380B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 380E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3812 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3815 _ 89. 04 24
        call    _memman_free                            ; 3818 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 381D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3820 _ 8B. 45, FC
        leave                                           ; 3823 _ C9
        ret                                             ; 3824 _ C3
; _memman_free_4k End of function

        nop                                             ; 3825 _ 90
        nop                                             ; 3826 _ 90
        nop                                             ; 3827 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3828 _ 55
        mov     ebp, esp                                ; 3829 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 382B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 382E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3831 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3834 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3837 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 383A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 383C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 383F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3842 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3845 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3848 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 384F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3852 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3859 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 385C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3863 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3866 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3869 _ 89. 50, 18
        nop                                             ; 386C _ 90
        pop     ebp                                     ; 386D _ 5D
        ret                                             ; 386E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 386F _ 55
        mov     ebp, esp                                ; 3870 _ 89. E5
        sub     esp, 40                                 ; 3872 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 3875 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3878 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 387B _ 83. 7D, 08, 00
        jnz     ?_160                                   ; 387F _ 75, 0A
        mov     eax, 4294967295                         ; 3881 _ B8, FFFFFFFF
        jmp     ?_164                                   ; 3886 _ E9, 000000AB

?_160:  mov     eax, dword [ebp+8H]                     ; 388B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 388E _ 8B. 40, 10
        test    eax, eax                                ; 3891 _ 85. C0
        jnz     ?_161                                   ; 3893 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 3895 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3898 _ 8B. 40, 14
        or      eax, 01H                                ; 389B _ 83. C8, 01
        mov     edx, eax                                ; 389E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38A0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 38A3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 38A6 _ B8, FFFFFFFF
        jmp     ?_164                                   ; 38AB _ E9, 00000086

?_161:  mov     eax, dword [ebp+8H]                     ; 38B0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 38B3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 38B5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 38B8 _ 8B. 40, 04
        add     edx, eax                                ; 38BB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 38BD _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 38C1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 38C3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 38C6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 38C9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38CC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 38CF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38D2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 38D5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38D8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 38DB _ 8B. 40, 0C
        cmp     edx, eax                                ; 38DE _ 39. C2
        jnz     ?_162                                   ; 38E0 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 38E2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 38E5 _ C7. 40, 04, 00000000
?_162:  mov     eax, dword [ebp+8H]                     ; 38EC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 38EF _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 38F2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 38F5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 38F8 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 38FB _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 38FE _ 8B. 40, 18
        test    eax, eax                                ; 3901 _ 85. C0
        jz      ?_163                                   ; 3903 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 3905 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3908 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 390B _ 8B. 40, 04
        cmp     eax, 2                                  ; 390E _ 83. F8, 02
        jz      ?_163                                   ; 3911 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3913 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3916 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 3919 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 3921 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 3929 _ 89. 04 24
        call    _task_run                               ; 392C _ E8, 00000000(rel)
?_163:  mov     eax, 0                                  ; 3931 _ B8, 00000000
?_164:  leave                                           ; 3936 _ C9
        ret                                             ; 3937 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3938 _ 55
        mov     ebp, esp                                ; 3939 _ 89. E5
        sub     esp, 16                                 ; 393B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 393E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3941 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3944 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3947 _ 8B. 40, 0C
        cmp     edx, eax                                ; 394A _ 39. C2
        jnz     ?_165                                   ; 394C _ 75, 07
        mov     eax, 4294967295                         ; 394E _ B8, FFFFFFFF
        jmp     ?_167                                   ; 3953 _ EB, 51

?_165:  mov     eax, dword [ebp+8H]                     ; 3955 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3958 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 395A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 395D _ 8B. 40, 08
        add     eax, edx                                ; 3960 _ 01. D0
        movzx   eax, byte [eax]                         ; 3962 _ 0F B6. 00
        movzx   eax, al                                 ; 3965 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3968 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 396B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 396E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3971 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3974 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3977 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 397A _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 397D _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3980 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3983 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3986 _ 39. C2
        jnz     ?_166                                   ; 3988 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 398A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 398D _ C7. 40, 08, 00000000
?_166:  mov     eax, dword [ebp+8H]                     ; 3994 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3997 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 399A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 399D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 39A0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 39A3 _ 8B. 45, FC
?_167:  leave                                           ; 39A6 _ C9
        ret                                             ; 39A7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 39A8 _ 55
        mov     ebp, esp                                ; 39A9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 39AB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 39AE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 39B1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 39B4 _ 8B. 40, 10
        sub     edx, eax                                ; 39B7 _ 29. C2
        mov     eax, edx                                ; 39B9 _ 89. D0
        pop     ebp                                     ; 39BB _ 5D
        ret                                             ; 39BC _ C3
; _fifo8_status End of function

        nop                                             ; 39BD _ 90
        nop                                             ; 39BE _ 90
        nop                                             ; 39BF _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 39C0 _ 55
        mov     ebp, esp                                ; 39C1 _ 89. E5
        sub     esp, 40                                 ; 39C3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 39C6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 39CE _ C7. 04 24, 00000043
        call    _io_out8                                ; 39D5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 39DA _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 39E2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 39E9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 39EE _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 39F6 _ C7. 04 24, 00000040
        call    _io_out8                                ; 39FD _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3A02 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3A0C _ C7. 45, F4, 00000000
        jmp     ?_169                                   ; 3A13 _ EB, 26

?_168:  mov     eax, dword [ebp-0CH]                    ; 3A15 _ 8B. 45, F4
        shl     eax, 4                                  ; 3A18 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3A1B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3A20 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3A26 _ 8B. 45, F4
        shl     eax, 4                                  ; 3A29 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 3A2C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3A31 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3A37 _ 83. 45, F4, 01
?_169:  cmp     dword [ebp-0CH], 499                    ; 3A3B _ 81. 7D, F4, 000001F3
        jle     ?_168                                   ; 3A42 _ 7E, D1
        nop                                             ; 3A44 _ 90
        leave                                           ; 3A45 _ C9
        ret                                             ; 3A46 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3A47 _ 55
        mov     ebp, esp                                ; 3A48 _ 89. E5
        sub     esp, 16                                 ; 3A4A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3A4D _ C7. 45, FC, 00000000
        jmp     ?_172                                   ; 3A54 _ EB, 36

?_170:  mov     eax, dword [ebp-4H]                     ; 3A56 _ 8B. 45, FC
        shl     eax, 4                                  ; 3A59 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3A5C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3A61 _ 8B. 00
        test    eax, eax                                ; 3A63 _ 85. C0
        jnz     ?_171                                   ; 3A65 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3A67 _ 8B. 45, FC
        shl     eax, 4                                  ; 3A6A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3A6D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3A72 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3A78 _ 8B. 45, FC
        shl     eax, 4                                  ; 3A7B _ C1. E0, 04
        add     eax, _timerctl                               ; 3A7E _ 05, 00000000(d)
        add     eax, 4                                  ; 3A83 _ 83. C0, 04
        jmp     ?_173                                   ; 3A86 _ EB, 12

?_171:  add     dword [ebp-4H], 1                       ; 3A88 _ 83. 45, FC, 01
?_172:  cmp     dword [ebp-4H], 499                     ; 3A8C _ 81. 7D, FC, 000001F3
        jle     ?_170                                   ; 3A93 _ 7E, C1
        mov     eax, 0                                  ; 3A95 _ B8, 00000000
?_173:  leave                                           ; 3A9A _ C9
        ret                                             ; 3A9B _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 3A9C _ 55
        mov     ebp, esp                                ; 3A9D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3A9F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3AA2 _ C7. 40, 04, 00000000
        nop                                             ; 3AA9 _ 90
        pop     ebp                                     ; 3AAA _ 5D
        ret                                             ; 3AAB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 3AAC _ 55
        mov     ebp, esp                                ; 3AAD _ 89. E5
        sub     esp, 4                                  ; 3AAF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3AB2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3AB5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3AB8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3ABB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3ABE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3AC1 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3AC4 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3AC8 _ 88. 42, 0C
        nop                                             ; 3ACB _ 90
        leave                                           ; 3ACC _ C9
        ret                                             ; 3ACD _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3ACE _ 55
        mov     ebp, esp                                ; 3ACF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3AD1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3AD4 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3AD7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3AD9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3ADC _ C7. 40, 04, 00000002
        nop                                             ; 3AE3 _ 90
        pop     ebp                                     ; 3AE4 _ 5D
        ret                                             ; 3AE5 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3AE6 _ 55
        mov     ebp, esp                                ; 3AE7 _ 89. E5
        sub     esp, 40                                 ; 3AE9 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3AEC _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3AF4 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3AFB _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3B00 _ A1, 00000000(d)
        add     eax, 1                                  ; 3B05 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3B08 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 3B0D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3B11 _ C7. 45, F4, 00000000
        jmp     ?_177                                   ; 3B18 _ E9, 000000AA

?_174:  mov     eax, dword [ebp-0CH]                    ; 3B1D _ 8B. 45, F4
        shl     eax, 4                                  ; 3B20 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3B23 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3B28 _ 8B. 00
        cmp     eax, 2                                  ; 3B2A _ 83. F8, 02
        jne     ?_175                                   ; 3B2D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3B33 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B36 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3B39 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3B3E _ 8B. 00
        lea     edx, [eax-1H]                           ; 3B40 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3B43 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B46 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3B49 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 3B4E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3B50 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B53 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3B56 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3B5B _ 8B. 00
        test    eax, eax                                ; 3B5D _ 85. C0
        jnz     ?_175                                   ; 3B5F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 3B61 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B64 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3B67 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3B6C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3B72 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B75 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3B78 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3B7D _ 0F B6. 00
        movzx   eax, al                                 ; 3B80 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 3B83 _ 8B. 55, F4
        shl     edx, 4                                  ; 3B86 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3B89 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 3B8F _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3B91 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3B95 _ 89. 14 24
        call    _fifo8_put                              ; 3B98 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3B9D _ 8B. 45, F4
        shl     eax, 4                                  ; 3BA0 _ C1. E0, 04
        add     eax, _timerctl                               ; 3BA3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 3BA8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 3BAB _ A1, 00000000(d)
        cmp     edx, eax                                ; 3BB0 _ 39. C2
        jnz     ?_175                                   ; 3BB2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3BB4 _ C6. 45, F3, 01
?_175:  cmp     byte [ebp-0DH], 0                       ; 3BB8 _ 80. 7D, F3, 00
        jz      ?_176                                   ; 3BBC _ 74, 05
        call    _task_switch                            ; 3BBE _ E8, 00000000(rel)
?_176:  add     dword [ebp-0CH], 1                      ; 3BC3 _ 83. 45, F4, 01
?_177:  cmp     dword [ebp-0CH], 499                    ; 3BC7 _ 81. 7D, F4, 000001F3
        jle     ?_174                                   ; 3BCE _ 0F 8E, FFFFFF49
        nop                                             ; 3BD4 _ 90
        leave                                           ; 3BD5 _ C9
        ret                                             ; 3BD6 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 3BD7 _ B8, 00000000(d)
        ret                                             ; 3BDC _ C3
; _getTimerController End of function

        nop                                             ; 3BDD _ 90
        nop                                             ; 3BDE _ 90
        nop                                             ; 3BDF _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3BE0 _ 55
        mov     ebp, esp                                ; 3BE1 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3BE3 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_178                                   ; 3BEA _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3BEC _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3BF3 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3BF6 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3BF9 _ 89. 45, 0C
?_178:  mov     eax, dword [ebp+0CH]                    ; 3BFC _ 8B. 45, 0C
        mov     edx, eax                                ; 3BFF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C01 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3C04 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3C07 _ 8B. 45, 10
        mov     edx, eax                                ; 3C0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C0C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3C0F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3C13 _ 8B. 45, 10
        sar     eax, 16                                 ; 3C16 _ C1. F8, 10
        mov     edx, eax                                ; 3C19 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C1B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3C1E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3C21 _ 8B. 45, 14
        mov     edx, eax                                ; 3C24 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C26 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3C29 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3C2C _ 8B. 45, 0C
        shr     eax, 16                                 ; 3C2F _ C1. E8, 10
        and     eax, 0FH                                ; 3C32 _ 83. E0, 0F
        mov     edx, eax                                ; 3C35 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3C37 _ 8B. 45, 14
        sar     eax, 8                                  ; 3C3A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3C3D _ 83. E0, F0
        or      eax, edx                                ; 3C40 _ 09. D0
        mov     edx, eax                                ; 3C42 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C44 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3C47 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3C4A _ 8B. 45, 10
        shr     eax, 24                                 ; 3C4D _ C1. E8, 18
        mov     edx, eax                                ; 3C50 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3C52 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3C55 _ 88. 50, 07
        nop                                             ; 3C58 _ 90
        pop     ebp                                     ; 3C59 _ 5D
        ret                                             ; 3C5A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 3C5B _ 55
        mov     ebp, esp                                ; 3C5C _ 89. E5
        sub     esp, 16                                 ; 3C5E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3C61 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3C67 _ 8B. 55, 08
        mov     eax, edx                                ; 3C6A _ 89. D0
        shl     eax, 2                                  ; 3C6C _ C1. E0, 02
        add     eax, edx                                ; 3C6F _ 01. D0
        shl     eax, 2                                  ; 3C71 _ C1. E0, 02
        add     eax, ecx                                ; 3C74 _ 01. C8
        add     eax, 8                                  ; 3C76 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3C79 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 3C7F _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3C85 _ 8B. 55, 08
        mov     eax, edx                                ; 3C88 _ 89. D0
        shl     eax, 2                                  ; 3C8A _ C1. E0, 02
        add     eax, edx                                ; 3C8D _ 01. D0
        shl     eax, 2                                  ; 3C8F _ C1. E0, 02
        add     eax, ecx                                ; 3C92 _ 01. C8
        add     eax, 12                                 ; 3C94 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3C97 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3C9D _ C7. 45, FC, 00000000
        jmp     ?_180                                   ; 3CA4 _ EB, 21

?_179:  mov     ecx, dword [_taskctl]                   ; 3CA6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3CAC _ 8B. 55, FC
        mov     eax, edx                                ; 3CAF _ 89. D0
        add     eax, eax                                ; 3CB1 _ 01. C0
        add     eax, edx                                ; 3CB3 _ 01. D0
        shl     eax, 3                                  ; 3CB5 _ C1. E0, 03
        add     eax, ecx                                ; 3CB8 _ 01. C8
        add     eax, 16                                 ; 3CBA _ 83. C0, 10
        mov     dword [eax], 0                          ; 3CBD _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3CC3 _ 83. 45, FC, 01
?_180:  cmp     dword [ebp-4H], 2                       ; 3CC7 _ 83. 7D, FC, 02
        jle     ?_179                                   ; 3CCB _ 7E, D9
        nop                                             ; 3CCD _ 90
        leave                                           ; 3CCE _ C9
        ret                                             ; 3CCF _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 3CD0 _ 55
        mov     ebp, esp                                ; 3CD1 _ 89. E5
        sub     esp, 40                                 ; 3CD3 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3CD6 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3CDB _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 3CDE _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 3CE6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CE9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3CEC _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3CF1 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3CF6 _ C7. 45, F4, 00000000
        jmp     ?_182                                   ; 3CFD _ E9, 00000088

?_181:  mov     edx, dword [_taskctl]                   ; 3D02 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3D08 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3D0B _ 69. C0, 00000094
        add     eax, edx                                ; 3D11 _ 01. D0
        add     eax, 72                                 ; 3D13 _ 83. C0, 48
        mov     dword [eax], 0                          ; 3D16 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3D1C _ 8B. 45, F4
        add     eax, 7                                  ; 3D1F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 3D22 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3D28 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3D2F _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3D32 _ 69. C0, 00000094
        add     eax, ecx                                ; 3D38 _ 01. C8
        add     eax, 68                                 ; 3D3A _ 83. C0, 44
        mov     dword [eax], edx                        ; 3D3D _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3D3F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3D45 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3D48 _ 69. C0, 00000094
        add     eax, 96                                 ; 3D4E _ 83. C0, 60
        add     eax, edx                                ; 3D51 _ 01. D0
        add     eax, 16                                 ; 3D53 _ 83. C0, 10
        mov     ecx, eax                                ; 3D56 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 3D58 _ 8B. 45, F4
        add     eax, 7                                  ; 3D5B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3D5E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3D65 _ 8B. 45, F0
        add     eax, edx                                ; 3D68 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 3D6A _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3D72 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3D76 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3D7E _ 89. 04 24
        call    _set_segmdesc                           ; 3D81 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 3D86 _ 83. 45, F4, 01
?_182:  cmp     dword [ebp-0CH], 4                      ; 3D8A _ 83. 7D, F4, 04
        jle     ?_181                                   ; 3D8E _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 3D94 _ C7. 45, F4, 00000000
        jmp     ?_184                                   ; 3D9B _ EB, 0F

?_183:  mov     eax, dword [ebp-0CH]                    ; 3D9D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3DA0 _ 89. 04 24
        call    _init_task_level                        ; 3DA3 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 3DA8 _ 83. 45, F4, 01
?_184:  cmp     dword [ebp-0CH], 2                      ; 3DAC _ 83. 7D, F4, 02
        jle     ?_183                                   ; 3DB0 _ 7E, EB
        call    _task_alloc                             ; 3DB2 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 3DB7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3DBA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3DBD _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3DC4 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 3DC7 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 3DCE _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 3DD1 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 3DD8 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 3DDB _ 89. 04 24
        call    _task_add                               ; 3DDE _ E8, 0000003A
        call    _task_switchsub                         ; 3DE3 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 3DE8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3DEB _ 8B. 00
        mov     dword [esp], eax                        ; 3DED _ 89. 04 24
        call    _load_tr                                ; 3DF0 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 3DF5 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3DFA _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3DFF _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3E02 _ 8B. 40, 08
        mov     edx, eax                                ; 3E05 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3E07 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3E0C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E10 _ 89. 04 24
        call    _timer_settime                          ; 3E13 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3E18 _ 8B. 45, EC
        leave                                           ; 3E1B _ C9
        ret                                             ; 3E1C _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 3E1D _ 55
        mov     ebp, esp                                ; 3E1E _ 89. E5
        sub     esp, 16                                 ; 3E20 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3E23 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3E29 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3E2C _ 8B. 50, 0C
        mov     eax, edx                                ; 3E2F _ 89. D0
        shl     eax, 2                                  ; 3E31 _ C1. E0, 02
        add     eax, edx                                ; 3E34 _ 01. D0
        shl     eax, 2                                  ; 3E36 _ C1. E0, 02
        add     eax, ecx                                ; 3E39 _ 01. C8
        add     eax, 8                                  ; 3E3B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3E3E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3E41 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3E44 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3E46 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3E49 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3E4C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3E50 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E53 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3E55 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3E58 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3E5B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3E5D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3E60 _ C7. 40, 04, 00000002
        nop                                             ; 3E67 _ 90
        leave                                           ; 3E68 _ C9
        ret                                             ; 3E69 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 3E6A _ 55
        mov     ebp, esp                                ; 3E6B _ 89. E5
        sub     esp, 16                                 ; 3E6D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3E70 _ C7. 45, FC, 00000000
        jmp     ?_187                                   ; 3E77 _ E9, 000000F7

?_185:  mov     edx, dword [_taskctl]                   ; 3E7C _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3E82 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 3E85 _ 69. C0, 00000094
        add     eax, edx                                ; 3E8B _ 01. D0
        add     eax, 72                                 ; 3E8D _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3E90 _ 8B. 00
        test    eax, eax                                ; 3E92 _ 85. C0
        jne     ?_186                                   ; 3E94 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 3E9A _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3EA0 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 3EA3 _ 69. C0, 00000094
        add     eax, 64                                 ; 3EA9 _ 83. C0, 40
        add     eax, edx                                ; 3EAC _ 01. D0
        add     eax, 4                                  ; 3EAE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3EB1 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 3EB4 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 3EB7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 3EBE _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 3EC1 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 3EC8 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 3ECB _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 3ED2 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 3ED5 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 3EDC _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 3EDF _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3EE6 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 3EE9 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 3EF0 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3EF3 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3EFA _ 8B. 45, FC
        add     eax, 1                                  ; 3EFD _ 83. C0, 01
        shl     eax, 9                                  ; 3F00 _ C1. E0, 09
        mov     edx, eax                                ; 3F03 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3F05 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 3F08 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 3F0B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 3F0E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F15 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 3F18 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F1F _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 3F22 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F29 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 3F2C _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F36 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 3F39 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F43 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 3F46 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F50 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 3F53 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F5D _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 3F60 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 3F6A _ 8B. 45, F8
        jmp     ?_188                                   ; 3F6D _ EB, 13

?_186:  add     dword [ebp-4H], 1                       ; 3F6F _ 83. 45, FC, 01
?_187:  cmp     dword [ebp-4H], 4                       ; 3F73 _ 83. 7D, FC, 04
        jle     ?_185                                   ; 3F77 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 3F7D _ B8, 00000000
?_188:  leave                                           ; 3F82 _ C9
        ret                                             ; 3F83 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 3F84 _ 55
        mov     ebp, esp                                ; 3F85 _ 89. E5
        sub     esp, 24                                 ; 3F87 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 3F8A _ 83. 7D, 0C, 00
        jns     ?_189                                   ; 3F8E _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3F90 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3F93 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3F96 _ 89. 45, 0C
?_189:  cmp     dword [ebp+10H], 0                      ; 3F99 _ 83. 7D, 10, 00
        jle     ?_190                                   ; 3F9D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3F9F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3FA2 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3FA5 _ 89. 50, 08
?_190:  mov     eax, dword [ebp+8H]                     ; 3FA8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3FAB _ 8B. 40, 04
        cmp     eax, 2                                  ; 3FAE _ 83. F8, 02
        jnz     ?_191                                   ; 3FB1 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 3FB3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FB6 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3FB9 _ 39. 45, 0C
        jz      ?_191                                   ; 3FBC _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 3FBE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FC1 _ 89. 04 24
        call    _task_remove                            ; 3FC4 _ E8, 0000002E
?_191:  mov     eax, dword [ebp+8H]                     ; 3FC9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3FCC _ 8B. 40, 04
        cmp     eax, 2                                  ; 3FCF _ 83. F8, 02
        jz      ?_192                                   ; 3FD2 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 3FD4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3FD7 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3FDA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3FDD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FE0 _ 89. 04 24
        call    _task_add                               ; 3FE3 _ E8, FFFFFE35
?_192:  mov     eax, dword [_taskctl]                   ; 3FE8 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 3FED _ C7. 40, 04, 00000001
        nop                                             ; 3FF4 _ 90
        leave                                           ; 3FF5 _ C9
        ret                                             ; 3FF6 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 3FF7 _ 55
        mov     ebp, esp                                ; 3FF8 _ 89. E5
        sub     esp, 16                                 ; 3FFA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3FFD _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4003 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4006 _ 8B. 50, 0C
        mov     eax, edx                                ; 4009 _ 89. D0
        shl     eax, 2                                  ; 400B _ C1. E0, 02
        add     eax, edx                                ; 400E _ 01. D0
        shl     eax, 2                                  ; 4010 _ C1. E0, 02
        add     eax, ecx                                ; 4013 _ 01. C8
        add     eax, 8                                  ; 4015 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4018 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 401B _ C7. 45, FC, 00000000
        jmp     ?_195                                   ; 4022 _ EB, 23

?_193:  mov     eax, dword [ebp-8H]                     ; 4024 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4027 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 402A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 402E _ 39. 45, 08
        jnz     ?_194                                   ; 4031 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4033 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4036 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4039 _ C7. 44 90, 08, 00000000
        jmp     ?_196                                   ; 4041 _ EB, 0E

?_194:  add     dword [ebp-4H], 1                       ; 4043 _ 83. 45, FC, 01
?_195:  mov     eax, dword [ebp-8H]                     ; 4047 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 404A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 404C _ 39. 45, FC
        jl      ?_193                                   ; 404F _ 7C, D3
?_196:  mov     eax, dword [ebp-8H]                     ; 4051 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4054 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4056 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4059 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 405C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 405E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4061 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4064 _ 39. 45, FC
        jge     ?_197                                   ; 4067 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4069 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 406C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 406F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4072 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4075 _ 89. 50, 04
?_197:  mov     eax, dword [ebp-8H]                     ; 4078 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 407B _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 407E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4081 _ 8B. 00
        cmp     edx, eax                                ; 4083 _ 39. C2
        jl      ?_198                                   ; 4085 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4087 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 408A _ C7. 40, 04, 00000000
?_198:  mov     eax, dword [ebp+8H]                     ; 4091 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4094 _ C7. 40, 04, 00000001
        jmp     ?_200                                   ; 409B _ EB, 1B

?_199:  mov     eax, dword [ebp-4H]                     ; 409D _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 40A0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 40A3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 40A6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 40AA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 40AD _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 40B0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 40B4 _ 83. 45, FC, 01
?_200:  mov     eax, dword [ebp-8H]                     ; 40B8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 40BB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 40BD _ 39. 45, FC
        jl      ?_199                                   ; 40C0 _ 7C, DB
        nop                                             ; 40C2 _ 90
        leave                                           ; 40C3 _ C9
        ret                                             ; 40C4 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 40C5 _ 55
        mov     ebp, esp                                ; 40C6 _ 89. E5
        sub     esp, 40                                 ; 40C8 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 40CB _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 40D1 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 40D6 _ 8B. 10
        mov     eax, edx                                ; 40D8 _ 89. D0
        shl     eax, 2                                  ; 40DA _ C1. E0, 02
        add     eax, edx                                ; 40DD _ 01. D0
        shl     eax, 2                                  ; 40DF _ C1. E0, 02
        add     eax, ecx                                ; 40E2 _ 01. C8
        add     eax, 8                                  ; 40E4 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 40E7 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 40EA _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 40ED _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 40F0 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 40F3 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 40F7 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 40FA _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 40FD _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4100 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4103 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4106 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4109 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 410C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 410F _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4112 _ 8B. 00
        cmp     edx, eax                                ; 4114 _ 39. C2
        jnz     ?_201                                   ; 4116 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4118 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 411B _ C7. 40, 04, 00000000
?_201:  mov     eax, dword [_taskctl]                   ; 4122 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4127 _ 8B. 40, 04
        test    eax, eax                                ; 412A _ 85. C0
        jz      ?_202                                   ; 412C _ 74, 24
        call    _task_switchsub                         ; 412E _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4133 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4139 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 413E _ 8B. 10
        mov     eax, edx                                ; 4140 _ 89. D0
        shl     eax, 2                                  ; 4142 _ C1. E0, 02
        add     eax, edx                                ; 4145 _ 01. D0
        shl     eax, 2                                  ; 4147 _ C1. E0, 02
        add     eax, ecx                                ; 414A _ 01. C8
        add     eax, 8                                  ; 414C _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 414F _ 89. 45, F4
?_202:  mov     eax, dword [ebp-0CH]                    ; 4152 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4155 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4158 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 415B _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 415F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4162 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4165 _ 8B. 40, 08
        mov     edx, eax                                ; 4168 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 416A _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 416F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4173 _ 89. 04 24
        call    _timer_settime                          ; 4176 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 417B _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 417E _ 3B. 45, F0
        jz      ?_203                                   ; 4181 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4183 _ 83. 7D, EC, 00
        jz      ?_203                                   ; 4187 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4189 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 418C _ 8B. 00
        mov     dword [esp+4H], eax                     ; 418E _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4192 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4199 _ E8, 00000000(rel)
        nop                                             ; 419E _ 90
?_203:  nop                                             ; 419F _ 90
        leave                                           ; 41A0 _ C9
        ret                                             ; 41A1 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 41A2 _ 55
        mov     ebp, esp                                ; 41A3 _ 89. E5
        sub     esp, 40                                 ; 41A5 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 41A8 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 41AF _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 41B6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 41B9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 41BC _ 83. F8, 02
        jnz     ?_204                                   ; 41BF _ 75, 51
        call    _task_now                               ; 41C1 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 41C6 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 41C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41CC _ 89. 04 24
        call    _task_remove                            ; 41CF _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 41D4 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 41DB _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 41DE _ 3B. 45, F0
        jnz     ?_204                                   ; 41E1 _ 75, 2F
        call    _task_switchsub                         ; 41E3 _ E8, 0000002F
        call    _task_now                               ; 41E8 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 41ED _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 41F0 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 41F7 _ 83. 7D, F0, 00
        jz      ?_204                                   ; 41FB _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 41FD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4200 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4202 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4206 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 420D _ E8, 00000000(rel)
?_204:  mov     eax, dword [ebp-0CH]                    ; 4212 _ 8B. 45, F4
        leave                                           ; 4215 _ C9
        ret                                             ; 4216 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4217 _ 55
        mov     ebp, esp                                ; 4218 _ 89. E5
        sub     esp, 16                                 ; 421A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 421D _ C7. 45, FC, 00000000
        jmp     ?_206                                   ; 4224 _ EB, 22

?_205:  mov     ecx, dword [_taskctl]                   ; 4226 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 422C _ 8B. 55, FC
        mov     eax, edx                                ; 422F _ 89. D0
        shl     eax, 2                                  ; 4231 _ C1. E0, 02
        add     eax, edx                                ; 4234 _ 01. D0
        shl     eax, 2                                  ; 4236 _ C1. E0, 02
        add     eax, ecx                                ; 4239 _ 01. C8
        add     eax, 8                                  ; 423B _ 83. C0, 08
        mov     eax, dword [eax]                        ; 423E _ 8B. 00
        test    eax, eax                                ; 4240 _ 85. C0
        jg      ?_207                                   ; 4242 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4244 _ 83. 45, FC, 01
?_206:  cmp     dword [ebp-4H], 2                       ; 4248 _ 83. 7D, FC, 02
        jle     ?_205                                   ; 424C _ 7E, D8
        jmp     ?_208                                   ; 424E _ EB, 01

?_207:  nop                                             ; 4250 _ 90
?_208:  mov     eax, dword [_taskctl]                   ; 4251 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4256 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4259 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 425B _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4260 _ C7. 40, 04, 00000000
        nop                                             ; 4267 _ 90
        leave                                           ; 4268 _ C9
        ret                                             ; 4269 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 426A _ 55
        mov     ebp, esp                                ; 426B _ 89. E5
        sub     esp, 16                                 ; 426D _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4270 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4276 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 427B _ 8B. 10
        mov     eax, edx                                ; 427D _ 89. D0
        shl     eax, 2                                  ; 427F _ C1. E0, 02
        add     eax, edx                                ; 4282 _ 01. D0
        shl     eax, 2                                  ; 4284 _ C1. E0, 02
        add     eax, ecx                                ; 4287 _ 01. C8
        add     eax, 8                                  ; 4289 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 428C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 428F _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4292 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4295 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4298 _ 8B. 44 90, 08
        leave                                           ; 429C _ C9
        ret                                             ; 429D _ C3
; _task_now End of function

        nop                                             ; 429E _ 90
        nop                                             ; 429F _ 90



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

?_209:  db 00H                                          ; 0076 _ .

?_210:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2341:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2388:                                           ; byte
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

_closebtn.2508:                                         ; byte
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



?_211:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_212:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_213:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_214:                                                  ; byte
        db 41H, 00H                                     ; 0017 _ A.

?_215:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0019 _ 3[sec].

?_216:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0020 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0028 _ sk b.

?_217:                                                  ; byte
        db 42H, 00H                                     ; 002D _ B.

?_218:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 002F _ page is:
        db 20H, 00H                                     ; 0037 _  .

?_219:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0039 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0041 _ L: .

?_220:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0045 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 004D _ H: .

?_221:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0051 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0059 _ w: .

?_222:                                                  ; byte
        db 3EH, 00H, 00H                                ; 005D _ >..



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

?_223:  resw    1                                       ; 0004

?_224:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

?_225:  resd    1                                       ; 0020

_mouseinfo:                                             ; byte
        resb    28                                      ; 0024

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    12                                      ; 00E0

?_226:  resd    1                                       ; 00EC

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

_task_cons:                                             ; dword
        resd    1                                       ; 0254

_task_a.2279:                                           ; dword
        resd    2                                       ; 0258

_tss_a.2278:                                            ; byte
        resb    128                                     ; 0260

_tss_b.2277:                                            ; byte
        resb    104                                     ; 02E0

_str.2436:                                              ; byte
        resb    1                                       ; 0348

?_227:  resb    9                                       ; 0349

?_228:  resb    2                                       ; 0352

_task_b.2534:                                           ; dword
        resd    3                                       ; 0354

_timerctl:                                              ; byte
        resb    8032                                    ; 0360

_task_timer:                                            ; byte
        resb    4                                       ; 22C0

_taskctl:                                               ; byte
        resb    4                                       ; 22C4


