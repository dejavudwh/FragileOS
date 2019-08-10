; Disassembly of file: ckernel.o
; Sat Aug 10 18:45:42 2019
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
        call    _initBootInfo                           ; 000F _ E8, 00001029
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_219]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000011C(d)
        movzx   eax, word [?_220]                       ; 0029 _ 0F B7. 05, 00000006(d)
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
        call    _init_palette                           ; 0149 _ E8, 00000FB2
        call    _init_keyboard                          ; 014E _ E8, 0000151B
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
        call    _init_screen8                           ; 027F _ E8, 000008F1
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 00001104
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
        mov     dword [esp+4H], ?_208                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 00001760
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
        call    _enable_mouse                           ; 0388 _ E8, 0000131C
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 0392 _ 89. 45, C4
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 039A _ 89. 45, C0
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2278], eax               ; 03AA _ A3, 00000264(d)
        mov     eax, dword [_task_a.2278]               ; 03AF _ A1, 00000264(d)
        mov     dword [?_221], eax                      ; 03B4 _ A3, 00000020(d)
        mov     eax, dword [_task_a.2278]               ; 03B9 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 03BE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C6 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CE _ 89. 04 24
        call    _task_run                               ; 03D1 _ E8, 00000000(rel)
        call    _launch_console                         ; 03D6 _ E8, 000020B6
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
        je      ?_007                                   ; 0449 _ 0F 84, 00000333
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
        call    _showMemoryInfo                         ; 04B7 _ E8, 000013C2
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
        mov     dword [esp+8H], ?_209                   ; 0502 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 050A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 050E _ 89. 04 24
        call    _make_wtitle8                           ; 0511 _ E8, 00001933
        mov     eax, dword [_shtctl]                    ; 0516 _ A1, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 051B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_210                   ; 0523 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 052B _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 052E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0532 _ 89. 04 24
        call    _make_wtitle8                           ; 0535 _ E8, 0000190F
        jmp     ?_005                                   ; 053A _ EB, 52

?_004:  mov     dword [ebp-20H], 0                      ; 053C _ C7. 45, E0, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0543 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0549 _ A1, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 054E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_209                   ; 0556 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 055E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0562 _ 89. 04 24
        call    _make_wtitle8                           ; 0565 _ E8, 000018DF
        mov     eax, dword [_shtctl]                    ; 056A _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 056F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_210                   ; 0577 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 057F _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 0582 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0586 _ 89. 04 24
        call    _make_wtitle8                           ; 0589 _ E8, 000018BB
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

?_006:  cmp     dword [ebp-48H], 83                     ; 0604 _ 83. 7D, B8, 53
        jg      ?_001                                   ; 0608 _ 0F 8F, FFFFFDF3
        mov     eax, dword [ebp-48H]                    ; 060E _ 8B. 45, B8
        add     eax, _keytable                          ; 0611 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0616 _ 0F B6. 00
        test    al, al                                  ; 0619 _ 84. C0
        je      ?_001                                   ; 061B _ 0F 84, FFFFFDE0
        cmp     dword [ebp-0CH], 143                    ; 0621 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 0628 _ 0F 8F, FFFFFDD3
        mov     eax, dword [ebp-0CH]                    ; 062E _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0631 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0634 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 0639 _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 063C _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0641 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0643 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 064B _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 064F _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0657 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 065A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 065E _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0666 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 066A _ 89. 04 24
        call    _boxfill8                               ; 066D _ E8, 00000B59
        mov     eax, dword [ebp-0CH]                    ; 0672 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0675 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0678 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 067E _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0683 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 068B _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 068F _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0697 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 069A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 069E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06A2 _ 89. 04 24
        call    _sheet_refresh                          ; 06A5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-48H]                    ; 06AA _ 8B. 45, B8
        add     eax, _keytable                          ; 06AD _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 06B2 _ 0F B6. 00
        mov     byte [ebp-4EH], al                      ; 06B5 _ 88. 45, B2
        mov     byte [ebp-4DH], 0                       ; 06B8 _ C6. 45, B3, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06BC _ 8B. 0D, 00000240(d)
        mov     edx, dword [_shtctl]                    ; 06C2 _ 8B. 15, 00000244(d)
        lea     eax, [ebp-4EH]                          ; 06C8 _ 8D. 45, B2
        mov     dword [esp+14H], eax                    ; 06CB _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 06CF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06D7 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06DF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06E2 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 06E6 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 06EA _ 89. 14 24
        call    _showString                             ; 06ED _ E8, 0000096C
        add     dword [ebp-0CH], 8                      ; 06F2 _ 83. 45, F4, 08
        mov     dword [ebp-1CH], 1                      ; 06F6 _ C7. 45, E4, 00000001
        mov     eax, dword [ebp-0CH]                    ; 06FD _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0700 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0703 _ 8B. 45, F0
        movzx   eax, al                                 ; 0706 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0709 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 070F _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0712 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 0718 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 071A _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0722 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0726 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 072E _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0731 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0735 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0739 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 073D _ 89. 14 24
        call    _boxfill8                               ; 0740 _ E8, 00000A86
        mov     eax, dword [ebp-0CH]                    ; 0745 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0748 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 074B _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0751 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0756 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 075E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0762 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 076A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 076D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0771 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0775 _ 89. 04 24
        call    _sheet_refresh                          ; 0778 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 077D _ E9, FFFFFC7F

?_007:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0782 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0789 _ E8, 00000000(rel)
        test    eax, eax                                ; 078E _ 85. C0
        jz      ?_008                                   ; 0790 _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0792 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [_sht_back]                  ; 0798 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 079E _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 07A3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07A7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07AB _ 89. 04 24
        call    _show_mouse_info                        ; 07AE _ E8, 000007D2
        jmp     ?_001                                   ; 07B3 _ E9, FFFFFC49

?_008:  ; Local function
        mov     dword [esp], _timerinfo                 ; 07B8 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 07BF _ E8, 00000000(rel)
        test    eax, eax                                ; 07C4 _ 85. C0
        je      ?_001                                   ; 07C6 _ 0F 84, FFFFFC35
        call    _io_sti                                 ; 07CC _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 07D1 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 07D8 _ E8, 00000000(rel)
        mov     dword [ebp-4CH], eax                    ; 07DD _ 89. 45, B4
        cmp     dword [ebp-4CH], 10                     ; 07E0 _ 83. 7D, B4, 0A
        jnz     ?_009                                   ; 07E4 _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 07E6 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 07EC _ A1, 00000244(d)
        mov     dword [esp+14H], ?_211                  ; 07F1 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 07F9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 0801 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 0809 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 080C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0810 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0814 _ 89. 04 24
        call    _showString                             ; 0817 _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 081C _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 0824 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0827 _ 89. 04 24
        call    _timer_settime                          ; 082A _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 082F _ 83. 45, E8, 08
        cmp     dword [ebp-18H], 40                     ; 0833 _ 83. 7D, E8, 28
        jle     ?_001                                   ; 0837 _ 0F 8E, FFFFFBC4
        cmp     dword [ebp-1CH], 0                      ; 083D _ 83. 7D, E4, 00
        jne     ?_001                                   ; 0841 _ 0F 85, FFFFFBBA
        call    _io_cli                                 ; 0847 _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2278]               ; 084C _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0851 _ 89. 04 24
        call    _task_sleep                             ; 0854 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0859 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 085E _ E9, FFFFFB9E

?_009:  ; Local function
        cmp     dword [ebp-4CH], 2                      ; 0863 _ 83. 7D, B4, 02
        jnz     ?_010                                   ; 0867 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 0869 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 086F _ A1, 00000244(d)
        mov     dword [esp+14H], ?_212                  ; 0874 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 087C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 0884 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 088C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0894 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0898 _ 89. 04 24
        call    _showString                             ; 089B _ E8, 000007BE
        jmp     ?_001                                   ; 08A0 _ E9, FFFFFB5C

?_010:  ; Local function
        cmp     dword [ebp-4CH], 0                      ; 08A5 _ 83. 7D, B4, 00
        jz      ?_011                                   ; 08A9 _ 74, 24
        mov     dword [esp+8H], 0                       ; 08AB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 08B3 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 08BB _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08BE _ 89. 04 24
        call    _timer_init                             ; 08C1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 08C6 _ C7. 45, F0, 00000000
        jmp     ?_012                                   ; 08CD _ EB, 22

?_011:  mov     dword [esp+8H], 1                       ; 08CF _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 08D7 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 08DF _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08E2 _ 89. 04 24
        call    _timer_init                             ; 08E5 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 08EA _ C7. 45, F0, 00000007
?_012:  mov     dword [esp+4H], 50                      ; 08F1 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 08F9 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08FC _ 89. 04 24
        call    _timer_settime                          ; 08FF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0904 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0907 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 090A _ 8B. 45, F0
        movzx   eax, al                                 ; 090D _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0910 _ 8B. 15, 00000240(d)
        mov     ecx, dword [edx+4H]                     ; 0916 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0919 _ 8B. 15, 00000240(d)
        mov     edx, dword [edx]                        ; 091F _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0921 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0929 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 092D _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0935 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0938 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 093C _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0940 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0944 _ 89. 14 24
        call    _boxfill8                               ; 0947 _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 094C _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 094F _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0952 _ 8B. 15, 00000240(d)
        mov     eax, dword [_shtctl]                    ; 0958 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 095D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0965 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0969 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0971 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0974 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0978 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 097C _ 89. 04 24
        call    _sheet_refresh                          ; 097F _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0984 _ E9, FFFFFA78

_task_b_main:; Function begin
        push    ebp                                     ; 0989 _ 55
        mov     ebp, esp                                ; 098A _ 89. E5
        sub     esp, 104                                ; 098C _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 098F _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0995 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_213                  ; 099A _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], 7                      ; 09A2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 09AA _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 09B2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 09BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09BE _ 89. 04 24
        call    _showString                             ; 09C1 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 09C6 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 09CD _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 09D4 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 09DC _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 09DF _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 09E3 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 09EB _ 8D. 45, C8
        mov     dword [esp], eax                        ; 09EE _ 89. 04 24
        call    _fifo8_init                             ; 09F1 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 09F6 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 09FB _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 09FE _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0A06 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0A09 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0A0D _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A10 _ 89. 04 24
        call    _timer_init                             ; 0A13 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0A18 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0A20 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A23 _ 89. 04 24
        call    _timer_settime                          ; 0A26 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0A2B _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0A32 _ C7. 45, F0, 00000000
?_013:  add     dword [ebp-0CH], 1                      ; 0A39 _ 83. 45, F4, 01
        call    _io_cli                                 ; 0A3D _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0A42 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A45 _ 89. 04 24
        call    _fifo8_status                           ; 0A48 _ E8, 00000000(rel)
        test    eax, eax                                ; 0A4D _ 85. C0
        jnz     ?_014                                   ; 0A4F _ 75, 07
        call    _io_sti                                 ; 0A51 _ E8, 00000000(rel)
        jmp     ?_013                                   ; 0A56 _ EB, E1
; _task_b_main End of function

?_014:  ; Local function
        lea     eax, [ebp-38H]                          ; 0A58 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A5B _ 89. 04 24
        call    _fifo8_get                              ; 0A5E _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0A63 _ 89. 45, E8
        call    _io_sti                                 ; 0A66 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0A6B _ 83. 7D, E8, 7B
        jnz     ?_013                                   ; 0A6F _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0A71 _ 8B. 15, 00000248(d)
        mov     eax, dword [_shtctl]                    ; 0A77 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_214                  ; 0A7C _ C7. 44 24, 14, 0000002D(d)
        mov     dword [esp+10H], 7                      ; 0A84 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0A8C _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0A94 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0A97 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A9B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A9F _ 89. 04 24
        call    _showString                             ; 0AA2 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0AA7 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0AAF _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0AB2 _ 89. 04 24
        call    _timer_settime                          ; 0AB5 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0ABA _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0ABE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0AC1 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0AC3 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0ACB _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0AD3 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0ADB _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0AE3 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0AEB _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0AF3 _ 89. 04 24
        call    _boxfill8                               ; 0AF6 _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0AFB _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0B00 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0B08 _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0B10 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0B18 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0B20 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0B23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B27 _ 89. 04 24
        call    _sheet_refresh                          ; 0B2A _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0B2F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B32 _ 89. 04 24
        call    _intToHexStr                            ; 0B35 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0B3A _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0B3D _ A1, 00000244(d)
        mov     edx, dword [ebp-1CH]                    ; 0B42 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0B45 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0B49 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0B51 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0B59 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0B61 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0B64 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B68 _ 89. 04 24
        call    _showString                             ; 0B6B _ E8, 000004EE
        jmp     ?_013                                   ; 0B70 _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0B75 _ 55
        mov     ebp, esp                                ; 0B76 _ 89. E5
        push    ebx                                     ; 0B78 _ 53
        sub     esp, 36                                 ; 0B79 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0B7C _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0B7F _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0B82 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0B85 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0B88 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0B8C _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0B90 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0B98 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0BA0 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0BA8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BAB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BB2 _ 89. 04 24
        call    _boxfill8                               ; 0BB5 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0BBA _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0BBD _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0BC0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BC3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BC6 _ 8B. 45, 10
        sub     eax, 28                                 ; 0BC9 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0BCC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0BD0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0BD4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0BD8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0BE0 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0BE8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BEB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BEF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BF2 _ 89. 04 24
        call    _boxfill8                               ; 0BF5 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0BFA _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0BFD _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0C00 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C03 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C06 _ 8B. 45, 10
        sub     eax, 27                                 ; 0C09 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0C0C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C10 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C14 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C18 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0C20 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C28 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C2B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C2F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C32 _ 89. 04 24
        call    _boxfill8                               ; 0C35 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0C3A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C3D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C40 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C43 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C46 _ 8B. 45, 10
        sub     eax, 26                                 ; 0C49 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0C4C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C50 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C54 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C58 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0C60 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0C68 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C6B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C6F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C72 _ 89. 04 24
        call    _boxfill8                               ; 0C75 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0C7A _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0C7D _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0C80 _ 8B. 45, 10
        sub     eax, 24                                 ; 0C83 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0C86 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C8A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C92 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0C96 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0C9E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0CA6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CA9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CAD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CB0 _ 89. 04 24
        call    _boxfill8                               ; 0CB3 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0CB8 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CBB _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CBE _ 8B. 45, 10
        sub     eax, 24                                 ; 0CC1 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CC4 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0CC8 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0CD0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0CD4 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0CDC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0CE4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CE7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CEB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CEE _ 89. 04 24
        call    _boxfill8                               ; 0CF1 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0CF6 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CF9 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CFC _ 8B. 45, 10
        sub     eax, 4                                  ; 0CFF _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0D02 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D06 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D0E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D12 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0D1A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D22 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D25 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D29 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D2C _ 89. 04 24
        call    _boxfill8                               ; 0D2F _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0D34 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0D37 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0D3A _ 8B. 45, 10
        sub     eax, 23                                 ; 0D3D _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0D40 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D44 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D4C _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0D50 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0D58 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D60 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D63 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D67 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D6A _ 89. 04 24
        call    _boxfill8                               ; 0D6D _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0D72 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D75 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D78 _ 8B. 45, 10
        sub     eax, 3                                  ; 0D7B _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0D7E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D82 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D8A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0D8E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0D96 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0D9E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DA1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DA5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DA8 _ 89. 04 24
        call    _boxfill8                               ; 0DAB _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0DB0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DB3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0DB6 _ 8B. 45, 10
        sub     eax, 24                                 ; 0DB9 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0DBC _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0DC0 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0DC8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0DCC _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0DD4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0DDC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DDF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DE3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DE6 _ 89. 04 24
        call    _boxfill8                               ; 0DE9 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0DEE _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0DF1 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0DF4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0DF7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0DFA _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0DFD _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0E00 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E03 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E06 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E0A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E0E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E12 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0E16 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E1E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E21 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E25 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E28 _ 89. 04 24
        call    _boxfill8                               ; 0E2B _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0E30 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0E33 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0E36 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0E39 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0E3C _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0E3F _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0E42 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E45 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E48 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E4C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E50 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E54 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0E58 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E60 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E63 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E67 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E6A _ 89. 04 24
        call    _boxfill8                               ; 0E6D _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0E72 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0E75 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0E78 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0E7B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0E7E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E81 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0E84 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E87 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E8A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E8E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E92 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E96 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0E9A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0EA2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EA5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EA9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EAC _ 89. 04 24
        call    _boxfill8                               ; 0EAF _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0EB4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EB7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EBA _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0EBD _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0EC0 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0EC3 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0EC6 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0EC9 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0ECC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0ED0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0ED4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0ED8 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0EDC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0EE4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EE7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EEB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EEE _ 89. 04 24
        call    _boxfill8                               ; 0EF1 _ E8, 000002D5
        nop                                             ; 0EF6 _ 90
        add     esp, 36                                 ; 0EF7 _ 83. C4, 24
        pop     ebx                                     ; 0EFA _ 5B
        pop     ebp                                     ; 0EFB _ 5D
        ret                                             ; 0EFC _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0EFD _ 55
        mov     ebp, esp                                ; 0EFE _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0F00 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0F03 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0F06 _ A1, 00000114(d)
        add     eax, edx                                ; 0F0B _ 01. D0
        mov     dword [_mx], eax                        ; 0F0D _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 0F12 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0F15 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0F18 _ A1, 00000118(d)
        add     eax, edx                                ; 0F1D _ 01. D0
        mov     dword [_my], eax                        ; 0F1F _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 0F24 _ A1, 00000114(d)
        test    eax, eax                                ; 0F29 _ 85. C0
        jns     ?_015                                   ; 0F2B _ 79, 0A
        mov     dword [_mx], 0                          ; 0F2D _ C7. 05, 00000114(d), 00000000
?_015:  mov     eax, dword [_my]                        ; 0F37 _ A1, 00000118(d)
        test    eax, eax                                ; 0F3C _ 85. C0
        jns     ?_016                                   ; 0F3E _ 79, 0A
        mov     dword [_my], 0                          ; 0F40 _ C7. 05, 00000118(d), 00000000
?_016:  mov     edx, dword [_xsize]                     ; 0F4A _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 0F50 _ A1, 00000114(d)
        cmp     edx, eax                                ; 0F55 _ 39. C2
        jg      ?_017                                   ; 0F57 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0F59 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0F5E _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0F61 _ A3, 00000114(d)
?_017:  mov     edx, dword [_ysize]                     ; 0F66 _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 0F6C _ A1, 00000118(d)
        cmp     edx, eax                                ; 0F71 _ 39. C2
        jg      ?_018                                   ; 0F73 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0F75 _ A1, 00000120(d)
        sub     eax, 1                                  ; 0F7A _ 83. E8, 01
        mov     dword [_my], eax                        ; 0F7D _ A3, 00000118(d)
?_018:  nop                                             ; 0F82 _ 90
        pop     ebp                                     ; 0F83 _ 5D
        ret                                             ; 0F84 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0F85 _ 55
        mov     ebp, esp                                ; 0F86 _ 89. E5
        sub     esp, 40                                 ; 0F88 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0F8B _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 0F90 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0F93 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0F97 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0F9C _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 0FA3 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0FA8 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0FAB _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0FAF _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0FB3 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0FBA _ E8, 00000780
        test    eax, eax                                ; 0FBF _ 85. C0
        jz      ?_019                                   ; 0FC1 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0FC3 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0FCB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0FCE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FD2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FD5 _ 89. 04 24
        call    _computeMousePosition                   ; 0FD8 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0FDD _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 0FE3 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 0FE8 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0FEC _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0FF0 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0FF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0FF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0FFA _ 89. 04 24
        call    _sheet_slide                            ; 0FFD _ E8, 00000000(rel)
        mov     eax, dword [?_222]                      ; 1002 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1007 _ 83. E0, 01
        test    eax, eax                                ; 100A _ 85. C0
        jz      ?_019                                   ; 100C _ 74, 2C
        mov     eax, dword [_my]                        ; 100E _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 1013 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1016 _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 101B _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 101E _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 1023 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1027 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 102B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 102F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1032 _ 89. 04 24
        call    _sheet_slide                            ; 1035 _ E8, 00000000(rel)
?_019:  nop                                             ; 103A _ 90
        leave                                           ; 103B _ C9
        ret                                             ; 103C _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 103D _ 55
        mov     ebp, esp                                ; 103E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1040 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1043 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1049 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 104C _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1052 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1055 _ 66: C7. 40, 06, 01E0
        nop                                             ; 105B _ 90
        pop     ebp                                     ; 105C _ 5D
        ret                                             ; 105D _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 105E _ 55
        mov     ebp, esp                                ; 105F _ 89. E5
        push    ebx                                     ; 1061 _ 53
        sub     esp, 68                                 ; 1062 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1065 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1068 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 106B _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 106E _ 89. 45, F4
        jmp     ?_021                                   ; 1071 _ EB, 4B

?_020:  mov     eax, dword [ebp+1CH]                    ; 1073 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1076 _ 0F B6. 00
        movzx   eax, al                                 ; 1079 _ 0F B6. C0
        shl     eax, 4                                  ; 107C _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 107F _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 1085 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 1089 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 108C _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 108F _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1092 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1094 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1098 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 109C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 109F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 10A3 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 10A6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 10AA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 10AE _ 89. 14 24
        call    _showFont8                              ; 10B1 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 10B6 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 10BA _ 83. 45, 1C, 01
?_021:  mov     eax, dword [ebp+1CH]                    ; 10BE _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 10C1 _ 0F B6. 00
        test    al, al                                  ; 10C4 _ 84. C0
        jnz     ?_020                                   ; 10C6 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 10C8 _ 8B. 45, 14
        add     eax, 16                                 ; 10CB _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 10CE _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 10D2 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 10D5 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 10D9 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 10DC _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 10E0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 10E3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 10E7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 10EA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 10EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10F1 _ 89. 04 24
        call    _sheet_refresh                          ; 10F4 _ E8, 00000000(rel)
        nop                                             ; 10F9 _ 90
        add     esp, 68                                 ; 10FA _ 83. C4, 44
        pop     ebx                                     ; 10FD _ 5B
        pop     ebp                                     ; 10FE _ 5D
        ret                                             ; 10FF _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 1100 _ 55
        mov     ebp, esp                                ; 1101 _ 89. E5
        sub     esp, 24                                 ; 1103 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2340         ; 1106 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 110E _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 1116 _ C7. 04 24, 00000000
        call    _set_palette                            ; 111D _ E8, 00000003
        nop                                             ; 1122 _ 90
        leave                                           ; 1123 _ C9
        ret                                             ; 1124 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1125 _ 55
        mov     ebp, esp                                ; 1126 _ 89. E5
        sub     esp, 40                                 ; 1128 _ 83. EC, 28
        call    _io_load_eflags                         ; 112B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1130 _ 89. 45, F0
        call    _io_cli                                 ; 1133 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1138 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 113B _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 113F _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1146 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 114B _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 114E _ 89. 45, F4
        jmp     ?_023                                   ; 1151 _ EB, 62

?_022:  mov     eax, dword [ebp+10H]                    ; 1153 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1156 _ 0F B6. 00
        shr     al, 2                                   ; 1159 _ C0. E8, 02
        movzx   eax, al                                 ; 115C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 115F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1163 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 116A _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 116F _ 8B. 45, 10
        add     eax, 1                                  ; 1172 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1175 _ 0F B6. 00
        shr     al, 2                                   ; 1178 _ C0. E8, 02
        movzx   eax, al                                 ; 117B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 117E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1182 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1189 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 118E _ 8B. 45, 10
        add     eax, 2                                  ; 1191 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1194 _ 0F B6. 00
        shr     al, 2                                   ; 1197 _ C0. E8, 02
        movzx   eax, al                                 ; 119A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 119D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 11A1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11A8 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 11AD _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 11B1 _ 83. 45, F4, 01
?_023:  mov     eax, dword [ebp-0CH]                    ; 11B5 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 11B8 _ 3B. 45, 0C
        jle     ?_022                                   ; 11BB _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 11BD _ 8B. 45, F0
        mov     dword [esp], eax                        ; 11C0 _ 89. 04 24
        call    _io_store_eflags                        ; 11C3 _ E8, 00000000(rel)
        nop                                             ; 11C8 _ 90
        leave                                           ; 11C9 _ C9
        ret                                             ; 11CA _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 11CB _ 55
        mov     ebp, esp                                ; 11CC _ 89. E5
        sub     esp, 20                                 ; 11CE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 11D1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 11D4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 11D7 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 11DA _ 89. 45, F8
        jmp     ?_027                                   ; 11DD _ EB, 31

?_024:  mov     eax, dword [ebp+14H]                    ; 11DF _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 11E2 _ 89. 45, FC
        jmp     ?_026                                   ; 11E5 _ EB, 1D

?_025:  mov     eax, dword [ebp-8H]                     ; 11E7 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 11EA _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 11EE _ 8B. 55, FC
        add     eax, edx                                ; 11F1 _ 01. D0
        mov     edx, eax                                ; 11F3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11F5 _ 8B. 45, 08
        add     edx, eax                                ; 11F8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11FA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11FE _ 88. 02
        add     dword [ebp-4H], 1                       ; 1200 _ 83. 45, FC, 01
?_026:  mov     eax, dword [ebp-4H]                     ; 1204 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 1207 _ 3B. 45, 1C
        jle     ?_025                                   ; 120A _ 7E, DB
        add     dword [ebp-8H], 1                       ; 120C _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 1210 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 1213 _ 3B. 45, 20
        jle     ?_024                                   ; 1216 _ 7E, C7
        nop                                             ; 1218 _ 90
        leave                                           ; 1219 _ C9
        ret                                             ; 121A _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 121B _ 55
        mov     ebp, esp                                ; 121C _ 89. E5
        sub     esp, 20                                 ; 121E _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1221 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1224 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1227 _ C7. 45, FC, 00000000
        jmp     ?_037                                   ; 122E _ E9, 0000015C

?_028:  mov     edx, dword [ebp-4H]                     ; 1233 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1236 _ 8B. 45, 1C
        add     eax, edx                                ; 1239 _ 01. D0
        movzx   eax, byte [eax]                         ; 123B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 123E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1241 _ 80. 7D, FB, 00
        jns     ?_029                                   ; 1245 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 1247 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 124A _ 8B. 45, FC
        add     eax, edx                                ; 124D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 124F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1253 _ 8B. 55, 10
        add     eax, edx                                ; 1256 _ 01. D0
        mov     edx, eax                                ; 1258 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 125A _ 8B. 45, 08
        add     edx, eax                                ; 125D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 125F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1263 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1265 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1269 _ 83. E0, 40
        test    eax, eax                                ; 126C _ 85. C0
        jz      ?_030                                   ; 126E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1270 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1273 _ 8B. 45, FC
        add     eax, edx                                ; 1276 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1278 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 127C _ 8B. 55, 10
        add     eax, edx                                ; 127F _ 01. D0
        lea     edx, [eax+1H]                           ; 1281 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1284 _ 8B. 45, 08
        add     edx, eax                                ; 1287 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1289 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 128D _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 128F _ 0F BE. 45, FB
        and     eax, 20H                                ; 1293 _ 83. E0, 20
        test    eax, eax                                ; 1296 _ 85. C0
        jz      ?_031                                   ; 1298 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 129A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 129D _ 8B. 45, FC
        add     eax, edx                                ; 12A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12A2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12A6 _ 8B. 55, 10
        add     eax, edx                                ; 12A9 _ 01. D0
        lea     edx, [eax+2H]                           ; 12AB _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 12AE _ 8B. 45, 08
        add     edx, eax                                ; 12B1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12B3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12B7 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 12B9 _ 0F BE. 45, FB
        and     eax, 10H                                ; 12BD _ 83. E0, 10
        test    eax, eax                                ; 12C0 _ 85. C0
        jz      ?_032                                   ; 12C2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12C4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12C7 _ 8B. 45, FC
        add     eax, edx                                ; 12CA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12CC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12D0 _ 8B. 55, 10
        add     eax, edx                                ; 12D3 _ 01. D0
        lea     edx, [eax+3H]                           ; 12D5 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 12D8 _ 8B. 45, 08
        add     edx, eax                                ; 12DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12E1 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 12E3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 12E7 _ 83. E0, 08
        test    eax, eax                                ; 12EA _ 85. C0
        jz      ?_033                                   ; 12EC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12F1 _ 8B. 45, FC
        add     eax, edx                                ; 12F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12F6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12FA _ 8B. 55, 10
        add     eax, edx                                ; 12FD _ 01. D0
        lea     edx, [eax+4H]                           ; 12FF _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1302 _ 8B. 45, 08
        add     edx, eax                                ; 1305 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1307 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 130B _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 130D _ 0F BE. 45, FB
        and     eax, 04H                                ; 1311 _ 83. E0, 04
        test    eax, eax                                ; 1314 _ 85. C0
        jz      ?_034                                   ; 1316 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1318 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 131B _ 8B. 45, FC
        add     eax, edx                                ; 131E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1320 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1324 _ 8B. 55, 10
        add     eax, edx                                ; 1327 _ 01. D0
        lea     edx, [eax+5H]                           ; 1329 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 132C _ 8B. 45, 08
        add     edx, eax                                ; 132F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1331 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1335 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1337 _ 0F BE. 45, FB
        and     eax, 02H                                ; 133B _ 83. E0, 02
        test    eax, eax                                ; 133E _ 85. C0
        jz      ?_035                                   ; 1340 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1342 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1345 _ 8B. 45, FC
        add     eax, edx                                ; 1348 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 134A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 134E _ 8B. 55, 10
        add     eax, edx                                ; 1351 _ 01. D0
        lea     edx, [eax+6H]                           ; 1353 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1356 _ 8B. 45, 08
        add     edx, eax                                ; 1359 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 135B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 135F _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 1361 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1365 _ 83. E0, 01
        test    eax, eax                                ; 1368 _ 85. C0
        jz      ?_036                                   ; 136A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 136C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 136F _ 8B. 45, FC
        add     eax, edx                                ; 1372 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1374 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1378 _ 8B. 55, 10
        add     eax, edx                                ; 137B _ 01. D0
        lea     edx, [eax+7H]                           ; 137D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1380 _ 8B. 45, 08
        add     edx, eax                                ; 1383 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1385 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1389 _ 88. 02
?_036:  add     dword [ebp-4H], 1                       ; 138B _ 83. 45, FC, 01
?_037:  cmp     dword [ebp-4H], 15                      ; 138F _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 1393 _ 0F 8E, FFFFFE9A
        nop                                             ; 1399 _ 90
        leave                                           ; 139A _ C9
        ret                                             ; 139B _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 139C _ 55
        mov     ebp, esp                                ; 139D _ 89. E5
        sub     esp, 20                                 ; 139F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 13A2 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 13A5 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 13A8 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 13AF _ E9, 000000B1

?_038:  mov     dword [ebp-4H], 0                       ; 13B4 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 13BB _ E9, 00000097

?_039:  mov     eax, dword [ebp-8H]                     ; 13C0 _ 8B. 45, F8
        shl     eax, 4                                  ; 13C3 _ C1. E0, 04
        mov     edx, eax                                ; 13C6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 13C8 _ 8B. 45, FC
        add     eax, edx                                ; 13CB _ 01. D0
        add     eax, _cursor.2387                       ; 13CD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 13D2 _ 0F B6. 00
        cmp     al, 42                                  ; 13D5 _ 3C, 2A
        jnz     ?_040                                   ; 13D7 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 13D9 _ 8B. 45, F8
        shl     eax, 4                                  ; 13DC _ C1. E0, 04
        mov     edx, eax                                ; 13DF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 13E1 _ 8B. 45, FC
        add     eax, edx                                ; 13E4 _ 01. D0
        mov     edx, eax                                ; 13E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13E8 _ 8B. 45, 08
        add     eax, edx                                ; 13EB _ 01. D0
        mov     byte [eax], 0                           ; 13ED _ C6. 00, 00
?_040:  mov     eax, dword [ebp-8H]                     ; 13F0 _ 8B. 45, F8
        shl     eax, 4                                  ; 13F3 _ C1. E0, 04
        mov     edx, eax                                ; 13F6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 13F8 _ 8B. 45, FC
        add     eax, edx                                ; 13FB _ 01. D0
        add     eax, _cursor.2387                       ; 13FD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1402 _ 0F B6. 00
        cmp     al, 79                                  ; 1405 _ 3C, 4F
        jnz     ?_041                                   ; 1407 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1409 _ 8B. 45, F8
        shl     eax, 4                                  ; 140C _ C1. E0, 04
        mov     edx, eax                                ; 140F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1411 _ 8B. 45, FC
        add     eax, edx                                ; 1414 _ 01. D0
        mov     edx, eax                                ; 1416 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1418 _ 8B. 45, 08
        add     eax, edx                                ; 141B _ 01. D0
        mov     byte [eax], 7                           ; 141D _ C6. 00, 07
?_041:  mov     eax, dword [ebp-8H]                     ; 1420 _ 8B. 45, F8
        shl     eax, 4                                  ; 1423 _ C1. E0, 04
        mov     edx, eax                                ; 1426 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1428 _ 8B. 45, FC
        add     eax, edx                                ; 142B _ 01. D0
        add     eax, _cursor.2387                       ; 142D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1432 _ 0F B6. 00
        cmp     al, 46                                  ; 1435 _ 3C, 2E
        jnz     ?_042                                   ; 1437 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1439 _ 8B. 45, F8
        shl     eax, 4                                  ; 143C _ C1. E0, 04
        mov     edx, eax                                ; 143F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1441 _ 8B. 45, FC
        add     eax, edx                                ; 1444 _ 01. D0
        mov     edx, eax                                ; 1446 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1448 _ 8B. 45, 08
        add     edx, eax                                ; 144B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 144D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1451 _ 88. 02
?_042:  add     dword [ebp-4H], 1                       ; 1453 _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 15                      ; 1457 _ 83. 7D, FC, 0F
        jle     ?_039                                   ; 145B _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 1461 _ 83. 45, F8, 01
?_044:  cmp     dword [ebp-8H], 15                      ; 1465 _ 83. 7D, F8, 0F
        jle     ?_038                                   ; 1469 _ 0F 8E, FFFFFF45
        nop                                             ; 146F _ 90
        leave                                           ; 1470 _ C9
        ret                                             ; 1471 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1472 _ 55
        mov     ebp, esp                                ; 1473 _ 89. E5
        push    ebx                                     ; 1475 _ 53
        sub     esp, 16                                 ; 1476 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1479 _ C7. 45, F4, 00000000
        jmp     ?_048                                   ; 1480 _ EB, 4E

?_045:  mov     dword [ebp-8H], 0                       ; 1482 _ C7. 45, F8, 00000000
        jmp     ?_047                                   ; 1489 _ EB, 39

?_046:  mov     eax, dword [ebp-0CH]                    ; 148B _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 148E _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1492 _ 8B. 55, F8
        add     eax, edx                                ; 1495 _ 01. D0
        mov     edx, eax                                ; 1497 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1499 _ 8B. 45, 20
        add     eax, edx                                ; 149C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 149E _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 14A1 _ 8B. 55, F4
        add     edx, ecx                                ; 14A4 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 14A6 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 14AA _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 14AD _ 8B. 4D, F8
        add     ecx, ebx                                ; 14B0 _ 01. D9
        add     edx, ecx                                ; 14B2 _ 01. CA
        mov     ecx, edx                                ; 14B4 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 14B6 _ 8B. 55, 08
        add     edx, ecx                                ; 14B9 _ 01. CA
        movzx   eax, byte [eax]                         ; 14BB _ 0F B6. 00
        mov     byte [edx], al                          ; 14BE _ 88. 02
        add     dword [ebp-8H], 1                       ; 14C0 _ 83. 45, F8, 01
?_047:  mov     eax, dword [ebp-8H]                     ; 14C4 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 14C7 _ 3B. 45, 10
        jl      ?_046                                   ; 14CA _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 14CC _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp-0CH]                    ; 14D0 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 14D3 _ 3B. 45, 14
        jl      ?_045                                   ; 14D6 _ 7C, AA
        nop                                             ; 14D8 _ 90
        add     esp, 16                                 ; 14D9 _ 83. C4, 10
        pop     ebx                                     ; 14DC _ 5B
        pop     ebp                                     ; 14DD _ 5D
        ret                                             ; 14DE _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 14DF _ 55
        mov     ebp, esp                                ; 14E0 _ 89. E5
        sub     esp, 40                                 ; 14E2 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 14E5 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 14EA _ 89. 45, F4
        movzx   eax, word [?_219]                       ; 14ED _ 0F B7. 05, 00000004(d)
        cwde                                            ; 14F4 _ 98
        mov     dword [ebp-10H], eax                    ; 14F5 _ 89. 45, F0
        movzx   eax, word [?_220]                       ; 14F8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 14FF _ 98
        mov     dword [ebp-14H], eax                    ; 1500 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 1503 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 150B _ C7. 04 24, 00000020
        call    _io_out8                                ; 1512 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1517 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 151B _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1522 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1527 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 152A _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 152E _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1532 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 1539 _ E8, 00000000(rel)
        nop                                             ; 153E _ 90
        leave                                           ; 153F _ C9
        ret                                             ; 1540 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 1541 _ 55
        mov     ebp, esp                                ; 1542 _ 89. E5
        sub     esp, 4                                  ; 1544 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1547 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 154A _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 154D _ 80. 7D, FC, 09
        jle     ?_049                                   ; 1551 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1553 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1557 _ 83. C0, 37
        jmp     ?_050                                   ; 155A _ EB, 07

?_049:  movzx   eax, byte [ebp-4H]                      ; 155C _ 0F B6. 45, FC
        add     eax, 48                                 ; 1560 _ 83. C0, 30
?_050:  leave                                           ; 1563 _ C9
        ret                                             ; 1564 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1565 _ 55
        mov     ebp, esp                                ; 1566 _ 89. E5
        sub     esp, 24                                 ; 1568 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 156B _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 156E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1571 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1578 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 157C _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 157F _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1582 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1586 _ 89. 04 24
        call    _charToHexVal                           ; 1589 _ E8, FFFFFFB3
        mov     byte [?_207], al                        ; 158E _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 1593 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1597 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 159A _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 159D _ 0F B6. 45, EC
        movsx   eax, al                                 ; 15A1 _ 0F BE. C0
        mov     dword [esp], eax                        ; 15A4 _ 89. 04 24
        call    _charToHexVal                           ; 15A7 _ E8, FFFFFF95
        mov     byte [?_206], al                        ; 15AC _ A2, 00000076(d)
        mov     eax, _keyval                            ; 15B1 _ B8, 00000074(d)
        leave                                           ; 15B6 _ C9
        ret                                             ; 15B7 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 15B8 _ 55
        mov     ebp, esp                                ; 15B9 _ 89. E5
        sub     esp, 16                                 ; 15BB _ 83. EC, 10
        mov     byte [_str.2435], 48                    ; 15BE _ C6. 05, 00000368(d), 30
        mov     byte [?_223], 88                        ; 15C5 _ C6. 05, 00000369(d), 58
        mov     byte [?_224], 0                         ; 15CC _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 15D3 _ C7. 45, FC, 00000002
        jmp     ?_052                                   ; 15DA _ EB, 0F

?_051:  mov     eax, dword [ebp-4H]                     ; 15DC _ 8B. 45, FC
        add     eax, _str.2435                          ; 15DF _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 15E4 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 15E7 _ 83. 45, FC, 01
?_052:  cmp     dword [ebp-4H], 9                       ; 15EB _ 83. 7D, FC, 09
        jle     ?_051                                   ; 15EF _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 15F1 _ C7. 45, F8, 00000009
        jmp     ?_056                                   ; 15F8 _ EB, 42

?_053:  mov     eax, dword [ebp+8H]                     ; 15FA _ 8B. 45, 08
        and     eax, 0FH                                ; 15FD _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 1600 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1603 _ 8B. 45, 08
        shr     eax, 4                                  ; 1606 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1609 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 160C _ 83. 7D, F4, 09
        jle     ?_054                                   ; 1610 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1612 _ 8B. 45, F4
        add     eax, 55                                 ; 1615 _ 83. C0, 37
        mov     edx, eax                                ; 1618 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 161A _ 8B. 45, F8
        add     eax, _str.2435                          ; 161D _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1622 _ 88. 10
        jmp     ?_055                                   ; 1624 _ EB, 12

?_054:  mov     eax, dword [ebp-0CH]                    ; 1626 _ 8B. 45, F4
        add     eax, 48                                 ; 1629 _ 83. C0, 30
        mov     edx, eax                                ; 162C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 162E _ 8B. 45, F8
        add     eax, _str.2435                          ; 1631 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1636 _ 88. 10
?_055:  sub     dword [ebp-8H], 1                       ; 1638 _ 83. 6D, F8, 01
?_056:  cmp     dword [ebp-8H], 1                       ; 163C _ 83. 7D, F8, 01
        jle     ?_057                                   ; 1640 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1642 _ 83. 7D, 08, 00
        jnz     ?_053                                   ; 1646 _ 75, B2
?_057:  mov     eax, _str.2435                          ; 1648 _ B8, 00000368(d)
        leave                                           ; 164D _ C9
        ret                                             ; 164E _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 164F _ 55
        mov     ebp, esp                                ; 1650 _ 89. E5
        sub     esp, 24                                 ; 1652 _ 83. EC, 18
?_058:  mov     dword [esp], 100                        ; 1655 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 165C _ E8, 00000000(rel)
        and     eax, 02H                                ; 1661 _ 83. E0, 02
        test    eax, eax                                ; 1664 _ 85. C0
        jz      ?_059                                   ; 1666 _ 74, 02
        jmp     ?_058                                   ; 1668 _ EB, EB
; _wait_KBC_sendready End of function

?_059:  ; Local function
        nop                                             ; 166A _ 90
        nop                                             ; 166B _ 90
        leave                                           ; 166C _ C9
        ret                                             ; 166D _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 166E _ 55
        mov     ebp, esp                                ; 166F _ 89. E5
        sub     esp, 24                                 ; 1671 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1674 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1679 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1681 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1688 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 168D _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1692 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 169A _ C7. 04 24, 00000060
        call    _io_out8                                ; 16A1 _ E8, 00000000(rel)
        nop                                             ; 16A6 _ 90
        leave                                           ; 16A7 _ C9
        ret                                             ; 16A8 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 16A9 _ 55
        mov     ebp, esp                                ; 16AA _ 89. E5
        sub     esp, 24                                 ; 16AC _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 16AF _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 16B4 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 16BC _ C7. 04 24, 00000064
        call    _io_out8                                ; 16C3 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 16C8 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 16CD _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 16D5 _ C7. 04 24, 00000060
        call    _io_out8                                ; 16DC _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 16E1 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 16E4 _ C6. 40, 03, 00
        nop                                             ; 16E8 _ 90
        leave                                           ; 16E9 _ C9
        ret                                             ; 16EA _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 16EB _ 55
        mov     ebp, esp                                ; 16EC _ 89. E5
        sub     esp, 40                                 ; 16EE _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 16F1 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 16F9 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1700 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1705 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 170D _ C7. 04 24, 00000020
        call    _io_out8                                ; 1714 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1719 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1720 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1725 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1728 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 172C _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1730 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 1737 _ E8, 00000000(rel)
        nop                                             ; 173C _ 90
        leave                                           ; 173D _ C9
        ret                                             ; 173E _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 173F _ 55
        mov     ebp, esp                                ; 1740 _ 89. E5
        sub     esp, 4                                  ; 1742 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1745 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1748 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 174B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 174E _ 0F B6. 40, 03
        test    al, al                                  ; 1752 _ 84. C0
        jnz     ?_061                                   ; 1754 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1756 _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 175A _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 175C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 175F _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 1763 _ B8, 00000000
        jmp     ?_068                                   ; 1768 _ E9, 0000010F

?_061:  mov     eax, dword [ebp+8H]                     ; 176D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1770 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1774 _ 3C, 01
        jnz     ?_063                                   ; 1776 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1778 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 177C _ 25, 000000C8
        cmp     eax, 8                                  ; 1781 _ 83. F8, 08
        jnz     ?_062                                   ; 1784 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1786 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1789 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 178D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 178F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1792 _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 1796 _ B8, 00000000
        jmp     ?_068                                   ; 179B _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 17A0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17A3 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 17A7 _ 3C, 02
        jnz     ?_064                                   ; 17A9 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 17AB _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 17AE _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 17B2 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 17B5 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 17B8 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 17BC _ B8, 00000000
        jmp     ?_068                                   ; 17C1 _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 17C6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17C9 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 17CD _ 3C, 03
        jne     ?_067                                   ; 17CF _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 17D5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 17D8 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 17DC _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 17DF _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17E2 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 17E6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 17E9 _ 0F B6. 00
        movzx   eax, al                                 ; 17EC _ 0F B6. C0
        and     eax, 07H                                ; 17EF _ 83. E0, 07
        mov     edx, eax                                ; 17F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17F4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17F7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 17FA _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 17FD _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1801 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1804 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1807 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 180A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 180D _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1811 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1814 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1817 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 181A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 181D _ 0F B6. 00
        movzx   eax, al                                 ; 1820 _ 0F B6. C0
        and     eax, 10H                                ; 1823 _ 83. E0, 10
        test    eax, eax                                ; 1826 _ 85. C0
        jz      ?_065                                   ; 1828 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 182A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 182D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1830 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1835 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1837 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 183A _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 183D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1840 _ 0F B6. 00
        movzx   eax, al                                 ; 1843 _ 0F B6. C0
        and     eax, 20H                                ; 1846 _ 83. E0, 20
        test    eax, eax                                ; 1849 _ 85. C0
        jz      ?_066                                   ; 184B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 184D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1850 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1853 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1858 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 185A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 185D _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 1860 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1863 _ 8B. 40, 08
        neg     eax                                     ; 1866 _ F7. D8
        mov     edx, eax                                ; 1868 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 186A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 186D _ 89. 50, 08
        mov     eax, 1                                  ; 1870 _ B8, 00000001
        jmp     ?_068                                   ; 1875 _ EB, 05

?_067:  mov     eax, 4294967295                         ; 1877 _ B8, FFFFFFFF
?_068:  leave                                           ; 187C _ C9
        ret                                             ; 187D _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 187E _ 55
        mov     ebp, esp                                ; 187F _ 89. E5
        sub     esp, 72                                 ; 1881 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 1884 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 188B _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1892 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1899 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 18A0 _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 18A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18A9 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 18AB _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 18AF _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 18B2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18B6 _ 89. 04 24
        call    _init_screen8                           ; 18B9 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 18BE _ 8B. 45, 20
        movsx   eax, al                                 ; 18C1 _ 0F BE. C0
        mov     dword [esp+14H], ?_215                  ; 18C4 _ C7. 44 24, 14, 0000002F(d)
        mov     dword [esp+10H], eax                    ; 18CC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18D0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18D3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 18D7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 18DA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18DE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18E8 _ 89. 04 24
        call    _showString                             ; 18EB _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 18F0 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 18F3 _ 89. 04 24
        call    _intToHexStr                            ; 18F6 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 18FB _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 18FE _ 8B. 45, 20
        movsx   eax, al                                 ; 1901 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1904 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1907 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 190B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 190F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1912 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1916 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1919 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 191D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1920 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1924 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1927 _ 89. 04 24
        call    _showString                             ; 192A _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 192F _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1933 _ 8B. 45, 20
        movsx   eax, al                                 ; 1936 _ 0F BE. C0
        mov     dword [esp+14H], ?_216                  ; 1939 _ C7. 44 24, 14, 00000039(d)
        mov     dword [esp+10H], eax                    ; 1941 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1945 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1948 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 194C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 194F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1953 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1956 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 195A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 195D _ 89. 04 24
        call    _showString                             ; 1960 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1965 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1968 _ 8B. 00
        mov     dword [esp], eax                        ; 196A _ 89. 04 24
        call    _intToHexStr                            ; 196D _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1972 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1975 _ 8B. 45, 20
        movsx   eax, al                                 ; 1978 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 197B _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 197E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1982 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1986 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1989 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 198D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1990 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1994 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1997 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 199B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 199E _ 89. 04 24
        call    _showString                             ; 19A1 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 19A6 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 19AA _ 8B. 45, 20
        movsx   eax, al                                 ; 19AD _ 0F BE. C0
        mov     dword [esp+14H], ?_217                  ; 19B0 _ C7. 44 24, 14, 00000045(d)
        mov     dword [esp+10H], eax                    ; 19B8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19BC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19BF _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19C3 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19C6 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19CA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19CD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19D1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19D4 _ 89. 04 24
        call    _showString                             ; 19D7 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 19DC _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 19DF _ 8B. 40, 04
        mov     dword [esp], eax                        ; 19E2 _ 89. 04 24
        call    _intToHexStr                            ; 19E5 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 19EA _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 19ED _ 8B. 45, 20
        movsx   eax, al                                 ; 19F0 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 19F3 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 19F6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19FA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19FE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A01 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A05 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A08 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A0C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A0F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A13 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A16 _ 89. 04 24
        call    _showString                             ; 1A19 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1A1E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A22 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A25 _ 0F BE. C0
        mov     dword [esp+14H], ?_218                  ; 1A28 _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1A30 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A34 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A37 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A3B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1A3E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A42 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A45 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A49 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A4C _ 89. 04 24
        call    _showString                             ; 1A4F _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1A54 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1A57 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1A5A _ 89. 04 24
        call    _intToHexStr                            ; 1A5D _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1A62 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1A65 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A68 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1A6B _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1A6E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A72 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A76 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A79 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A7D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A80 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A84 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A87 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A8B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A8E _ 89. 04 24
        call    _showString                             ; 1A91 _ E8, FFFFF5C8
        nop                                             ; 1A96 _ 90
        leave                                           ; 1A97 _ C9
        ret                                             ; 1A98 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1A99 _ 55
        mov     ebp, esp                                ; 1A9A _ 89. E5
        sub     esp, 56                                 ; 1A9C _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1A9F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AA2 _ 89. 04 24
        call    _sheet_alloc                            ; 1AA5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1AAA _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1AAD _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1AB2 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1ABA _ 89. 04 24
        call    _memman_alloc_4k                        ; 1ABD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1AC2 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1AC5 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1ACD _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1AD5 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1ADD _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1AE0 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1AE4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1AE7 _ 89. 04 24
        call    _sheet_setbuf                           ; 1AEA _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 1AEF _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 1AF7 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1AFA _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1AFE _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B01 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B05 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B08 _ 89. 04 24
        call    _make_window8                           ; 1B0B _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1B10 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1B18 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1B20 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1B28 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1B30 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1B38 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1B3B _ 89. 04 24
        call    _make_textbox8                          ; 1B3E _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 1B43 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1B4B _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1B53 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B56 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B5A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B5D _ 89. 04 24
        call    _sheet_slide                            ; 1B60 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1B65 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1B6D _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B77 _ 89. 04 24
        call    _sheet_updown                           ; 1B7A _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1B7F _ 8B. 45, F4
        leave                                           ; 1B82 _ C9
        ret                                             ; 1B83 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1B84 _ 55
        mov     ebp, esp                                ; 1B85 _ 89. E5
        push    ebx                                     ; 1B87 _ 53
        sub     esp, 68                                 ; 1B88 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1B8B _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1B8E _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1B91 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B94 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1B97 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1B9A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B9D _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 1BA0 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 1BA3 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BA6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BA9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BAC _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1BAE _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1BB6 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1BBA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1BC2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BCA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1BD2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1BD5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BD9 _ 89. 04 24
        call    _boxfill8                               ; 1BDC _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 1BE1 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1BE4 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1BE7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BEA _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1BEC _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1BF4 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1BF8 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1C00 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1C08 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1C10 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C13 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C17 _ 89. 04 24
        call    _boxfill8                               ; 1C1A _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 1C1F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C22 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C25 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C28 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1C2A _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1C2E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1C36 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1C3E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1C46 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C4E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C51 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C55 _ 89. 04 24
        call    _boxfill8                               ; 1C58 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 1C5D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C60 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C63 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C66 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1C68 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1C6C _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1C74 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1C7C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1C84 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1C8C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C8F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C93 _ 89. 04 24
        call    _boxfill8                               ; 1C96 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 1C9B _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1C9E _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1CA1 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1CA4 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1CA7 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1CAA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CAD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CB0 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CB2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CB6 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1CBA _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1CC2 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1CC6 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1CCE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CD1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CD5 _ 89. 04 24
        call    _boxfill8                               ; 1CD8 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 1CDD _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1CE0 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1CE3 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1CE6 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1CE9 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1CEC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CEF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CF2 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CF4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CF8 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1CFC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1D04 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1D08 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1D10 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D13 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D17 _ 89. 04 24
        call    _boxfill8                               ; 1D1A _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 1D1F _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 1D22 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 1D25 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 1D28 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D2B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D2E _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1D30 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1D34 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1D38 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1D40 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1D48 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1D50 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D53 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D57 _ 89. 04 24
        call    _boxfill8                               ; 1D5A _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 1D5F _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 1D62 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1D65 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D68 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1D6A _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1D72 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1D76 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1D7E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1D86 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 1D8E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D91 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D95 _ 89. 04 24
        call    _boxfill8                               ; 1D98 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 1D9D _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1DA0 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1DA3 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1DA6 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1DA9 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1DAC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1DAF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DB2 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1DB4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DB8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DBC _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1DC0 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1DC8 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1DD0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1DD3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DD7 _ 89. 04 24
        call    _boxfill8                               ; 1DDA _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 1DDF _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1DE2 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1DE5 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1DE8 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1DEB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1DEE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1DF1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DF4 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1DF6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DFA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DFE _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1E02 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1E0A _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1E12 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E15 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E19 _ 89. 04 24
        call    _boxfill8                               ; 1E1C _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 1E21 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1E25 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1E29 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1E2C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1E30 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E33 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E37 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E3A _ 89. 04 24
        call    _make_wtitle8                           ; 1E3D _ E8, 00000007
        nop                                             ; 1E42 _ 90
        add     esp, 68                                 ; 1E43 _ 83. C4, 44
        pop     ebx                                     ; 1E46 _ 5B
        pop     ebp                                     ; 1E47 _ 5D
        ret                                             ; 1E48 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 1E49 _ 55
        mov     ebp, esp                                ; 1E4A _ 89. E5
        push    ebx                                     ; 1E4C _ 53
        sub     esp, 68                                 ; 1E4D _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1E50 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1E53 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1E56 _ 80. 7D, E4, 00
        jz      ?_069                                   ; 1E5A _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1E5C _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 1E60 _ C6. 45, ED, 0C
        jmp     ?_070                                   ; 1E64 _ EB, 08

?_069:  mov     byte [ebp-12H], 8                       ; 1E66 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 1E6A _ C6. 45, ED, 0F
?_070:  mov     eax, dword [ebp+0CH]                    ; 1E6E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E71 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1E74 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 1E77 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 1E7B _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 1E7E _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1E81 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1E84 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1E87 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 1E89 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1E91 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1E95 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1E9D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 1EA5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1EA9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1EAD _ 89. 14 24
        call    _boxfill8                               ; 1EB0 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 1EB5 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 1EB9 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1EBC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1EC0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1EC4 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1ECC _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1ED4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1ED7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EDB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EDE _ 89. 04 24
        call    _showString                             ; 1EE1 _ E8, FFFFF178
        mov     dword [ebp-10H], 0                      ; 1EE6 _ C7. 45, F0, 00000000
        jmp     ?_078                                   ; 1EED _ E9, 00000084

?_071:  mov     dword [ebp-0CH], 0                      ; 1EF2 _ C7. 45, F4, 00000000
        jmp     ?_077                                   ; 1EF9 _ EB, 71

?_072:  mov     eax, dword [ebp-10H]                    ; 1EFB _ 8B. 45, F0
        shl     eax, 4                                  ; 1EFE _ C1. E0, 04
        mov     edx, eax                                ; 1F01 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F03 _ 8B. 45, F4
        add     eax, edx                                ; 1F06 _ 01. D0
        add     eax, _closebtn.2507                     ; 1F08 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1F0D _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1F10 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1F13 _ 80. 7D, EF, 40
        jnz     ?_073                                   ; 1F17 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1F19 _ C6. 45, EF, 00
        jmp     ?_076                                   ; 1F1D _ EB, 1C

?_073:  cmp     byte [ebp-11H], 36                      ; 1F1F _ 80. 7D, EF, 24
        jnz     ?_074                                   ; 1F23 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1F25 _ C6. 45, EF, 0F
        jmp     ?_076                                   ; 1F29 _ EB, 10

?_074:  cmp     byte [ebp-11H], 81                      ; 1F2B _ 80. 7D, EF, 51
        jnz     ?_075                                   ; 1F2F _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1F31 _ C6. 45, EF, 08
        jmp     ?_076                                   ; 1F35 _ EB, 04

?_075:  mov     byte [ebp-11H], 7                       ; 1F37 _ C6. 45, EF, 07
?_076:  mov     eax, dword [ebp+0CH]                    ; 1F3B _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1F3E _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1F40 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1F43 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1F46 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F49 _ 8B. 40, 04
        imul    eax, edx                                ; 1F4C _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1F4F _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1F52 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1F55 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1F58 _ 8B. 55, F4
        add     edx, ebx                                ; 1F5B _ 01. DA
        add     eax, edx                                ; 1F5D _ 01. D0
        lea     edx, [ecx+eax]                          ; 1F5F _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1F62 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1F66 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1F68 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 15                     ; 1F6C _ 83. 7D, F4, 0F
        jle     ?_072                                   ; 1F70 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1F72 _ 83. 45, F0, 01
?_078:  cmp     dword [ebp-10H], 13                     ; 1F76 _ 83. 7D, F0, 0D
        jle     ?_071                                   ; 1F7A _ 0F 8E, FFFFFF72
        nop                                             ; 1F80 _ 90
        add     esp, 68                                 ; 1F81 _ 83. C4, 44
        pop     ebx                                     ; 1F84 _ 5B
        pop     ebp                                     ; 1F85 _ 5D
        ret                                             ; 1F86 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1F87 _ 55
        mov     ebp, esp                                ; 1F88 _ 89. E5
        push    edi                                     ; 1F8A _ 57
        push    esi                                     ; 1F8B _ 56
        push    ebx                                     ; 1F8C _ 53
        sub     esp, 44                                 ; 1F8D _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1F90 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1F93 _ 8B. 45, 14
        add     eax, edx                                ; 1F96 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1F98 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1F9B _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1F9E _ 8B. 45, 18
        add     eax, edx                                ; 1FA1 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1FA3 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1FA6 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1FA9 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1FAC _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1FAF _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1FB2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1FB5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1FB8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FBB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FBE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FC1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FC4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FC7 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1FC9 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FCD _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FD1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FD5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1FD9 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1FE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FE5 _ 89. 04 24
        call    _boxfill8                               ; 1FE8 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 1FED _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1FF0 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1FF3 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1FF6 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1FF9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1FFC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1FFF _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2002 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2008 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 200B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 200E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2010 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2014 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2018 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 201C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2020 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2028 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 202C _ 89. 04 24
        call    _boxfill8                               ; 202F _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2034 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2037 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 203A _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 203D _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2040 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2043 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2046 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2049 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 204C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 204F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2052 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2055 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2057 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 205B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 205F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2063 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2067 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 206F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2073 _ 89. 04 24
        call    _boxfill8                               ; 2076 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 207B _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 207E _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2081 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 2084 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 2087 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 208A _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 208D _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 2090 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 2093 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2096 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2099 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 209C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 209E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20A2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20A6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20AA _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20AE _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20BA _ 89. 04 24
        call    _boxfill8                               ; 20BD _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 20C2 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 20C5 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 20C8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 20CB _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 20CE _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 20D1 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 20D4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20D7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20DA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20DD _ 8B. 00
        mov     dword [esp+18H], esi                    ; 20DF _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 20E3 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 20E6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20EA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20EE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 20F2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 20FA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20FE _ 89. 04 24
        call    _boxfill8                               ; 2101 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 2106 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2109 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 210C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 210F _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2112 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2115 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2118 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 211B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 211E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2121 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2123 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2126 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 212A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 212E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2132 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2136 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 213E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2142 _ 89. 04 24
        call    _boxfill8                               ; 2145 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 214A _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 214D _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2150 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 2153 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2156 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2159 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 215C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 215F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2162 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2165 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2167 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 216B _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 216E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2172 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2176 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 217A _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2182 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2186 _ 89. 04 24
        call    _boxfill8                               ; 2189 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 218E _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2191 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 2194 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2197 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 219A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 219D _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 21A0 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 21A3 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 21A6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21A9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21AC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21AF _ 8B. 00
        mov     dword [esp+18H], edi                    ; 21B1 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 21B5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21B9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21BD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21C1 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 21C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21CD _ 89. 04 24
        call    _boxfill8                               ; 21D0 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 21D5 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 21D8 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 21DB _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 21DE _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 21E1 _ 8B. 45, 1C
        movzx   eax, al                                 ; 21E4 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 21E7 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 21EA _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 21ED _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 21F0 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 21F2 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 21F5 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 21F9 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 21FC _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 2200 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2204 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2208 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 220C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2210 _ 89. 14 24
        call    _boxfill8                               ; 2213 _ E8, FFFFEFB3
        nop                                             ; 2218 _ 90
        add     esp, 44                                 ; 2219 _ 83. C4, 2C
        pop     ebx                                     ; 221C _ 5B
        pop     esi                                     ; 221D _ 5E
        pop     edi                                     ; 221E _ 5F
        pop     ebp                                     ; 221F _ 5D
        ret                                             ; 2220 _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 2221 _ 55
        mov     ebp, esp                                ; 2222 _ 89. E5
        sub     esp, 88                                 ; 2224 _ 83. EC, 58
        call    _get_addr_code32                        ; 2227 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 222C _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 222F _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 2233 _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 2237 _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 223B _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 223F _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 2243 _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 2247 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 224E _ C7. 45, F4, 00000000
        jmp     ?_080                                   ; 2255 _ E9, 000001AA

?_079:  mov     eax, dword [_shtctl]                    ; 225A _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 225F _ 89. 04 24
        call    _sheet_alloc                            ; 2262 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2267 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2269 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 226C _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 2270 _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 2275 _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 227D _ 89. 04 24
        call    _memman_alloc_4k                        ; 2280 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 2285 _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 2288 _ 8B. 45, F4
        add     eax, 98                                 ; 228B _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 228E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2291 _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 2295 _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 2298 _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 229B _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 229F _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 22A7 _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 22AF _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 22B7 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 22BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22BE _ 89. 04 24
        call    _sheet_setbuf                           ; 22C1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 22C6 _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 22C9 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 22CD _ 8B. 15, 00000244(d)
        mov     dword [esp+0CH], 1                      ; 22D3 _ C7. 44 24, 0C, 00000001
        lea     eax, [ebp-2AH]                          ; 22DB _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 22DE _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 22E2 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 22E6 _ 89. 14 24
        call    _make_window8                           ; 22E9 _ E8, FFFFF896
        call    _task_alloc                             ; 22EE _ E8, 00000000(rel)
        mov     edx, eax                                ; 22F3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22F5 _ 8B. 45, F4
        mov     dword [_task_b.2533+eax*4], edx         ; 22F8 _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 22FF _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 2302 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+70H], 0                      ; 2309 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2310 _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 2313 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 1073741824             ; 231A _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-10H]                    ; 2321 _ 8B. 45, F0
        neg     eax                                     ; 2324 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 2326 _ 8D. 90, 00000989(d)
        mov     eax, dword [ebp-0CH]                    ; 232C _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 232F _ 8B. 04 85, 00000374(d)
        mov     dword [eax+30H], edx                    ; 2336 _ 89. 50, 30
        mov     eax, dword [ebp-0CH]                    ; 2339 _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 233C _ 8B. 04 85, 00000374(d)
        mov     dword [eax+58H], 0                      ; 2343 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-0CH]                    ; 234A _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 234D _ 8B. 04 85, 00000374(d)
        mov     dword [eax+5CH], 8                      ; 2354 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-0CH]                    ; 235B _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 235E _ 8B. 04 85, 00000374(d)
        mov     dword [eax+60H], 32                     ; 2365 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-0CH]                    ; 236C _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 236F _ 8B. 04 85, 00000374(d)
        mov     dword [eax+64H], 24                     ; 2376 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-0CH]                    ; 237D _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 2380 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+68H], 0                      ; 2387 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-0CH]                    ; 238E _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 2391 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+6CH], 16                     ; 2398 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-0CH]                    ; 239F _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 23A2 _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+48H]                    ; 23A9 _ 8B. 50, 48
        mov     eax, dword [ebp-0CH]                    ; 23AC _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 23AF _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 23B6 _ 83. EA, 08
        mov     dword [eax+48H], edx                    ; 23B9 _ 89. 50, 48
        mov     eax, dword [ebp-0CH]                    ; 23BC _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 23BF _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 23C3 _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 23C6 _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+48H]                    ; 23CD _ 8B. 40, 48
        add     eax, 4                                  ; 23D0 _ 83. C0, 04
        mov     dword [eax], edx                        ; 23D3 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 23D5 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 23D8 _ 8D. 50, 01
        mov     eax, edx                                ; 23DB _ 89. D0
        shl     eax, 2                                  ; 23DD _ C1. E0, 02
        add     edx, eax                                ; 23E0 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 23E2 _ 8B. 45, F4
        mov     eax, dword [_task_b.2533+eax*4]         ; 23E5 _ 8B. 04 85, 00000374(d)
        mov     dword [esp+8H], edx                     ; 23EC _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 23F0 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 23F8 _ 89. 04 24
        call    _task_run                               ; 23FB _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 2400 _ 83. 45, F4, 01
?_080:  cmp     dword [ebp-0CH], 1                      ; 2404 _ 83. 7D, F4, 01
        jle     ?_079                                   ; 2408 _ 0F 8E, FFFFFE4C
        mov     edx, dword [ebp-24H]                    ; 240E _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 2411 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 2416 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 241E _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 2426 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 242A _ 89. 04 24
        call    _sheet_slide                            ; 242D _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 2432 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 2435 _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 243A _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2442 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2446 _ 89. 04 24
        call    _sheet_updown                           ; 2449 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 244E _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 2451 _ A1, 00000244(d)
        mov     dword [esp+0CH], 28                     ; 2456 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 245E _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 2466 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 246A _ 89. 04 24
        call    _sheet_slide                            ; 246D _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 2472 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 2475 _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 247A _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2482 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2486 _ 89. 04 24
        call    _sheet_updown                           ; 2489 _ E8, 00000000(rel)
        nop                                             ; 248E _ 90
        leave                                           ; 248F _ C9
        ret                                             ; 2490 _ C3
; _multi_windows End of function

_launch_console:; Function begin
        push    ebp                                     ; 2491 _ 55
        mov     ebp, esp                                ; 2492 _ 89. E5
        sub     esp, 56                                 ; 2494 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 2497 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 249C _ 89. 04 24
        call    _sheet_alloc                            ; 249F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 24A4 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 24A7 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 24AC _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 24B4 _ 89. 04 24
        call    _memman_alloc_4k                        ; 24B7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 24BC _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 24BF _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 24C7 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 24CF _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 24D7 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 24DA _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 24DE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 24E1 _ 89. 04 24
        call    _sheet_setbuf                           ; 24E4 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 24E9 _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 24EE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_210                   ; 24F6 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 24FE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2501 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2505 _ 89. 04 24
        call    _make_window8                           ; 2508 _ E8, FFFFF677
        mov     dword [esp+14H], 0                      ; 250D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 2515 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 251D _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 2525 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 252D _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2535 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2538 _ 89. 04 24
        call    _make_textbox8                          ; 253B _ E8, FFFFFA47
        call    _task_alloc                             ; 2540 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 2545 _ 89. 45, EC
        call    _get_addr_code32                        ; 2548 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 254D _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 2550 _ 8B. 45, EC
        mov     dword [eax+70H], 0                      ; 2553 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-14H]                    ; 255A _ 8B. 45, EC
        mov     dword [eax+74H], 1073741824             ; 255D _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-18H]                    ; 2564 _ 8B. 45, E8
        neg     eax                                     ; 2567 _ F7. D8
        add     eax, _console_task                      ; 2569 _ 05, 00002631(d)
        mov     edx, eax                                ; 256E _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2570 _ 8B. 45, EC
        mov     dword [eax+30H], edx                    ; 2573 _ 89. 50, 30
        mov     eax, dword [ebp-14H]                    ; 2576 _ 8B. 45, EC
        mov     dword [eax+58H], 0                      ; 2579 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-14H]                    ; 2580 _ 8B. 45, EC
        mov     dword [eax+5CH], 8                      ; 2583 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-14H]                    ; 258A _ 8B. 45, EC
        mov     dword [eax+60H], 32                     ; 258D _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-14H]                    ; 2594 _ 8B. 45, EC
        mov     dword [eax+64H], 24                     ; 2597 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-14H]                    ; 259E _ 8B. 45, EC
        mov     dword [eax+68H], 0                      ; 25A1 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-14H]                    ; 25A8 _ 8B. 45, EC
        mov     dword [eax+6CH], 16                     ; 25AB _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-14H]                    ; 25B2 _ 8B. 45, EC
        mov     eax, dword [eax+48H]                    ; 25B5 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 25B8 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 25BB _ 8B. 45, EC
        mov     dword [eax+48H], edx                    ; 25BE _ 89. 50, 48
        mov     eax, dword [ebp-14H]                    ; 25C1 _ 8B. 45, EC
        mov     eax, dword [eax+48H]                    ; 25C4 _ 8B. 40, 48
        add     eax, 4                                  ; 25C7 _ 83. C0, 04
        mov     edx, eax                                ; 25CA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 25CC _ 8B. 45, F4
        mov     dword [edx], eax                        ; 25CF _ 89. 02
        mov     dword [esp+8H], 5                       ; 25D1 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 25D9 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 25E1 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 25E4 _ 89. 04 24
        call    _task_run                               ; 25E7 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 25EC _ A1, 00000244(d)
        mov     dword [esp+0CH], 4                      ; 25F1 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 25F9 _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 2601 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2604 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2608 _ 89. 04 24
        call    _sheet_slide                            ; 260B _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2610 _ A1, 00000244(d)
        mov     dword [esp+8H], 1                       ; 2615 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 261D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2620 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2624 _ 89. 04 24
        call    _sheet_updown                           ; 2627 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 262C _ 8B. 45, F4
        leave                                           ; 262F _ C9
        ret                                             ; 2630 _ C3
; _launch_console End of function

_console_task:; Function begin
        push    ebp                                     ; 2631 _ 55
        mov     ebp, esp                                ; 2632 _ 89. E5
        push    ebx                                     ; 2634 _ 53
        sub     esp, 596                                ; 2635 _ 81. EC, 00000254
        call    _task_now                               ; 263B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2640 _ 89. 45, F0
        mov     dword [ebp-14H], 8                      ; 2643 _ C7. 45, EC, 00000008
        mov     dword [ebp-0CH], 0                      ; 264A _ C7. 45, F4, 00000000
        mov     eax, dword [ebp-10H]                    ; 2651 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2654 _ 89. 44 24, 0C
        lea     eax, [ebp-238H]                         ; 2658 _ 8D. 85, FFFFFDC8
        mov     dword [esp+8H], eax                     ; 265E _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 2662 _ C7. 44 24, 04, 00000080
        lea     eax, [ebp-38H]                          ; 266A _ 8D. 45, C8
        mov     dword [esp], eax                        ; 266D _ 89. 04 24
        call    _fifo8_init                             ; 2670 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 2675 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 267A _ 89. 45, E8
        mov     dword [esp+8H], 1                       ; 267D _ C7. 44 24, 08, 00000001
        lea     eax, [ebp-38H]                          ; 2685 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 2688 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 268C _ 8B. 45, E8
        mov     dword [esp], eax                        ; 268F _ 89. 04 24
        call    _timer_init                             ; 2692 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 2697 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-18H]                    ; 269F _ 8B. 45, E8
        mov     dword [esp], eax                        ; 26A2 _ 89. 04 24
        call    _timer_settime                          ; 26A5 _ E8, 00000000(rel)
?_081:  call    _io_cli                                 ; 26AA _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 26AF _ 8D. 45, C8
        mov     dword [esp], eax                        ; 26B2 _ 89. 04 24
        call    _fifo8_status                           ; 26B5 _ E8, 00000000(rel)
        test    eax, eax                                ; 26BA _ 85. C0
        jnz     ?_082                                   ; 26BC _ 75, 07
        call    _io_sti                                 ; 26BE _ E8, 00000000(rel)
        jmp     ?_081                                   ; 26C3 _ EB, E5
; _console_task End of function

?_082:  ; Local function
        lea     eax, [ebp-38H]                          ; 26C5 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 26C8 _ 89. 04 24
        call    _fifo8_get                              ; 26CB _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 26D0 _ 89. 45, E4
        call    _io_sti                                 ; 26D3 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 1                      ; 26D8 _ 83. 7D, E4, 01
        jg      ?_081                                   ; 26DC _ 7F, CC
        cmp     dword [ebp-1CH], 0                      ; 26DE _ 83. 7D, E4, 00
        jz      ?_083                                   ; 26E2 _ 74, 23
        mov     dword [esp+8H], 0                       ; 26E4 _ C7. 44 24, 08, 00000000
        lea     eax, [ebp-38H]                          ; 26EC _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 26EF _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 26F3 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 26F6 _ 89. 04 24
        call    _timer_init                             ; 26F9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 26FE _ C7. 45, F4, 00000007
        jmp     ?_084                                   ; 2705 _ EB, 21

?_083:  mov     dword [esp+8H], 1                       ; 2707 _ C7. 44 24, 08, 00000001
        lea     eax, [ebp-38H]                          ; 270F _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 2712 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 2716 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2719 _ 89. 04 24
        call    _timer_init                             ; 271C _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 2721 _ C7. 45, F4, 00000000
?_084:  mov     dword [esp+4H], 50                      ; 2728 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-18H]                    ; 2730 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2733 _ 89. 04 24
        call    _timer_settime                          ; 2736 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 273B _ 8B. 45, EC
        lea     ebx, [eax+7H]                           ; 273E _ 8D. 58, 07
        mov     eax, dword [ebp-0CH]                    ; 2741 _ 8B. 45, F4
        movzx   eax, al                                 ; 2744 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2747 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 274A _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 274D _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 2750 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 2752 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 275A _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 275E _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-14H]                    ; 2766 _ 8B. 5D, EC
        mov     dword [esp+0CH], ebx                    ; 2769 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 276D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2771 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2775 _ 89. 14 24
        call    _boxfill8                               ; 2778 _ E8, FFFFEA4E
        mov     eax, dword [ebp-14H]                    ; 277D _ 8B. 45, EC
        lea     edx, [eax+8H]                           ; 2780 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 2783 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 2788 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2790 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 2794 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-14H]                    ; 279C _ 8B. 55, EC
        mov     dword [esp+8H], edx                     ; 279F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 27A3 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 27A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27AA _ 89. 04 24
        call    _sheet_refresh                          ; 27AD _ E8, 00000000(rel)
        jmp     ?_081                                   ; 27B2 _ E9, FFFFFEF3

        nop                                             ; 27B7 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 27B8 _ 55
        mov     ebp, esp                                ; 27B9 _ 89. E5
        sub     esp, 40                                 ; 27BB _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 27BE _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 27C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27C9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 27CC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 27D1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 27D4 _ 83. 7D, F0, 00
        jnz     ?_085                                   ; 27D8 _ 75, 0A
        mov     eax, 0                                  ; 27DA _ B8, 00000000
        jmp     ?_089                                   ; 27DF _ E9, 0000009D

?_085:  mov     eax, dword [ebp+10H]                    ; 27E4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 27E7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 27EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27F2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 27F5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 27FA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 27FC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 27FF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 2802 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2805 _ 8B. 40, 04
        test    eax, eax                                ; 2808 _ 85. C0
        jnz     ?_086                                   ; 280A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 280C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 280F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2817 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 281B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 281E _ 89. 04 24
        call    _memman_free_4k                         ; 2821 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2826 _ B8, 00000000
        jmp     ?_089                                   ; 282B _ EB, 54

?_086:  mov     eax, dword [ebp-10H]                    ; 282D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2830 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2833 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2835 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2838 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 283B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 283E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2841 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2844 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2847 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 284A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2851 _ C7. 45, F4, 00000000
        jmp     ?_088                                   ; 2858 _ EB, 1B

?_087:  mov     edx, dword [ebp-10H]                    ; 285A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 285D _ 8B. 45, F4
        add     eax, 33                                 ; 2860 _ 83. C0, 21
        shl     eax, 5                                  ; 2863 _ C1. E0, 05
        add     eax, edx                                ; 2866 _ 01. D0
        add     eax, 16                                 ; 2868 _ 83. C0, 10
        mov     dword [eax], 0                          ; 286B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2871 _ 83. 45, F4, 01
?_088:  cmp     dword [ebp-0CH], 255                    ; 2875 _ 81. 7D, F4, 000000FF
        jle     ?_087                                   ; 287C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 287E _ 8B. 45, F0
?_089:  leave                                           ; 2881 _ C9
        ret                                             ; 2882 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2883 _ 55
        mov     ebp, esp                                ; 2884 _ 89. E5
        sub     esp, 16                                 ; 2886 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2889 _ C7. 45, FC, 00000000
        jmp     ?_092                                   ; 2890 _ EB, 5B

?_090:  mov     edx, dword [ebp+8H]                     ; 2892 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2895 _ 8B. 45, FC
        add     eax, 33                                 ; 2898 _ 83. C0, 21
        shl     eax, 5                                  ; 289B _ C1. E0, 05
        add     eax, edx                                ; 289E _ 01. D0
        add     eax, 16                                 ; 28A0 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 28A3 _ 8B. 00
        test    eax, eax                                ; 28A5 _ 85. C0
        jnz     ?_091                                   ; 28A7 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 28A9 _ 8B. 45, FC
        shl     eax, 5                                  ; 28AC _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 28AF _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 28B5 _ 8B. 45, 08
        add     eax, edx                                ; 28B8 _ 01. D0
        add     eax, 4                                  ; 28BA _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 28BD _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 28C0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 28C3 _ 8B. 55, FC
        add     edx, 4                                  ; 28C6 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 28C9 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 28CC _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 28D0 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 28D3 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 28DA _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 28DD _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 28E4 _ 8B. 45, F8
        jmp     ?_093                                   ; 28E7 _ EB, 12

?_091:  add     dword [ebp-4H], 1                       ; 28E9 _ 83. 45, FC, 01
?_092:  cmp     dword [ebp-4H], 255                     ; 28ED _ 81. 7D, FC, 000000FF
        jle     ?_090                                   ; 28F4 _ 7E, 9C
        mov     eax, 0                                  ; 28F6 _ B8, 00000000
?_093:  leave                                           ; 28FB _ C9
        ret                                             ; 28FC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 28FD _ 55
        mov     ebp, esp                                ; 28FE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2900 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2903 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2906 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2908 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 290B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 290E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2911 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2914 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2917 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 291A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 291D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2920 _ 89. 50, 14
        nop                                             ; 2923 _ 90
        pop     ebp                                     ; 2924 _ 5D
        ret                                             ; 2925 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 2926 _ 55
        mov     ebp, esp                                ; 2927 _ 89. E5
        push    edi                                     ; 2929 _ 57
        push    esi                                     ; 292A _ 56
        push    ebx                                     ; 292B _ 53
        sub     esp, 60                                 ; 292C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 292F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2932 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2935 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2938 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 293B _ 8B. 40, 10
        add     eax, 1                                  ; 293E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2941 _ 39. 45, 10
        jle     ?_094                                   ; 2944 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2946 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2949 _ 8B. 40, 10
        add     eax, 1                                  ; 294C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 294F _ 89. 45, 10
?_094:  cmp     dword [ebp+10H], -1                     ; 2952 _ 83. 7D, 10, FF
        jge     ?_095                                   ; 2956 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2958 _ C7. 45, 10, FFFFFFFF
?_095:  mov     eax, dword [ebp+0CH]                    ; 295F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2962 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2965 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2968 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 296B _ 3B. 45, 10
        jle     ?_102                                   ; 296E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2974 _ 83. 7D, 10, 00
        js      ?_098                                   ; 2978 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 297E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2981 _ 89. 45, E4
        jmp     ?_097                                   ; 2984 _ EB, 34

?_096:  mov     eax, dword [ebp-1CH]                    ; 2986 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2989 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 298C _ 8B. 45, 08
        add     edx, 4                                  ; 298F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2992 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2996 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2999 _ 8B. 55, E4
        add     edx, 4                                  ; 299C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 299F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 29A3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 29A6 _ 8B. 55, E4
        add     edx, 4                                  ; 29A9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29AC _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 29B0 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 29B3 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 29B6 _ 83. 6D, E4, 01
?_097:  mov     eax, dword [ebp-1CH]                    ; 29BA _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 29BD _ 3B. 45, 10
        jg      ?_096                                   ; 29C0 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 29C2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29C5 _ 8B. 55, 10
        add     edx, 4                                  ; 29C8 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 29CB _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 29CE _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 29D2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 29D5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 29D8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29DB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29DE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 29E1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 29E4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 29E7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29EA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 29ED _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 29F0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 29F3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29F6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29F9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29FC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29FF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 2A02 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2A06 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2A0A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2A0E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2A12 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A16 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A19 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2A1C _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2A21 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2A24 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2A27 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A2A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A2D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A30 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A33 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A36 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A39 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A3C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A3F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A42 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A45 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A48 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A4B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A4E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2A51 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2A54 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2A58 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2A5C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2A60 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2A64 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2A68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A6F _ 89. 04 24
        call    _sheet_refreshsub                       ; 2A72 _ E8, 00000465
        jmp     ?_109                                   ; 2A77 _ E9, 0000027D

?_098:  mov     eax, dword [ebp+8H]                     ; 2A7C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A7F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2A82 _ 39. 45, E0
        jge     ?_101                                   ; 2A85 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2A87 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2A8A _ 89. 45, E4
        jmp     ?_100                                   ; 2A8D _ EB, 34

?_099:  mov     eax, dword [ebp-1CH]                    ; 2A8F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2A92 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A95 _ 8B. 45, 08
        add     edx, 4                                  ; 2A98 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2A9B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2A9F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2AA2 _ 8B. 55, E4
        add     edx, 4                                  ; 2AA5 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2AA8 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2AAC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2AAF _ 8B. 55, E4
        add     edx, 4                                  ; 2AB2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2AB5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2AB9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2ABC _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2ABF _ 83. 45, E4, 01
?_100:  mov     eax, dword [ebp+8H]                     ; 2AC3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AC6 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2AC9 _ 39. 45, E4
        jl      ?_099                                   ; 2ACC _ 7C, C1
?_101:  mov     eax, dword [ebp+8H]                     ; 2ACE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AD1 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2AD4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2AD7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2ADA _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2ADD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AE0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2AE3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2AE6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2AE9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2AEC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2AEF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AF2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AF5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2AF8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2AFB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AFE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B01 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B04 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 2B07 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2B0F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2B13 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2B17 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2B1B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B1F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B22 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2B25 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2B2A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2B2D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2B30 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B33 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B36 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2B39 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2B3C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2B3F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2B42 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B45 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B48 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2B4B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2B4E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B51 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B54 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B57 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2B5A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2B5E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2B66 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2B6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2B6E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2B72 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B76 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B79 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2B7C _ E8, 0000035B
        jmp     ?_109                                   ; 2B81 _ E9, 00000173

?_102:  mov     eax, dword [ebp-20H]                    ; 2B86 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2B89 _ 3B. 45, 10
        jge     ?_109                                   ; 2B8C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2B92 _ 83. 7D, E0, 00
        js      ?_105                                   ; 2B96 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2B98 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2B9B _ 89. 45, E4
        jmp     ?_104                                   ; 2B9E _ EB, 34

?_103:  mov     eax, dword [ebp-1CH]                    ; 2BA0 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2BA3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2BA6 _ 8B. 45, 08
        add     edx, 4                                  ; 2BA9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2BAC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2BB0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2BB3 _ 8B. 55, E4
        add     edx, 4                                  ; 2BB6 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2BB9 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2BBD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2BC0 _ 8B. 55, E4
        add     edx, 4                                  ; 2BC3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BC6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2BCA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2BCD _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2BD0 _ 83. 45, E4, 01
?_104:  mov     eax, dword [ebp-1CH]                    ; 2BD4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2BD7 _ 3B. 45, 10
        jl      ?_103                                   ; 2BDA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2BDC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2BDF _ 8B. 55, 10
        add     edx, 4                                  ; 2BE2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2BE5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2BE8 _ 89. 4C 90, 04
        jmp     ?_108                                   ; 2BEC _ EB, 6C

?_105:  mov     eax, dword [ebp+8H]                     ; 2BEE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BF1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 2BF4 _ 89. 45, E4
        jmp     ?_107                                   ; 2BF7 _ EB, 3A

?_106:  mov     eax, dword [ebp-1CH]                    ; 2BF9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 2BFC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 2BFF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2C02 _ 8B. 55, E4
        add     edx, 4                                  ; 2C05 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2C08 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C0C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 2C0F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2C12 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 2C16 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2C19 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C1C _ 8B. 45, 08
        add     edx, 4                                  ; 2C1F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C22 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2C26 _ 8B. 55, E4
        add     edx, 1                                  ; 2C29 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2C2C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2C2F _ 83. 6D, E4, 01
?_107:  mov     eax, dword [ebp-1CH]                    ; 2C33 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2C36 _ 3B. 45, 10
        jge     ?_106                                   ; 2C39 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2C3B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C3E _ 8B. 55, 10
        add     edx, 4                                  ; 2C41 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2C44 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2C47 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C4B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C4E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2C51 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C54 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2C57 _ 89. 50, 10
?_108:  mov     eax, dword [ebp+0CH]                    ; 2C5A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C5D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C60 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C63 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C66 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C69 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C6C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C6F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C72 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C75 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C78 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C7B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C7E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C81 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2C84 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2C87 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2C8B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2C8F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2C93 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2C97 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C9B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C9E _ 89. 04 24
        call    _sheet_refreshmap                       ; 2CA1 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2CA6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CA9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CAC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CAF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CB2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CB5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CB8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CBB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CBE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CC1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CC4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CC7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CCA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CCD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2CD0 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 2CD3 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 2CD7 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2CDA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2CDE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2CE2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2CE6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2CEA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CEE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CF1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2CF4 _ E8, 000001E3
?_109:  nop                                             ; 2CF9 _ 90
        add     esp, 60                                 ; 2CFA _ 83. C4, 3C
        pop     ebx                                     ; 2CFD _ 5B
        pop     esi                                     ; 2CFE _ 5E
        pop     edi                                     ; 2CFF _ 5F
        pop     ebp                                     ; 2D00 _ 5D
        ret                                             ; 2D01 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 2D02 _ 55
        mov     ebp, esp                                ; 2D03 _ 89. E5
        push    edi                                     ; 2D05 _ 57
        push    esi                                     ; 2D06 _ 56
        push    ebx                                     ; 2D07 _ 53
        sub     esp, 60                                 ; 2D08 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2D0B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D0E _ 8B. 40, 18
        test    eax, eax                                ; 2D11 _ 85. C0
        js      ?_110                                   ; 2D13 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 2D15 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 2D18 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 2D1B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 2D1E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 2D21 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D24 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2D27 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 2D2A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D2D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D30 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2D33 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 2D36 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D39 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D3C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2D3F _ 8B. 45, 14
        add     edx, eax                                ; 2D42 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2D44 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D47 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2D4A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2D4D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2D50 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 2D53 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2D57 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2D5B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2D5F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2D63 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2D67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D6E _ 89. 04 24
        call    _sheet_refreshsub                       ; 2D71 _ E8, 00000166
?_110:  mov     eax, 0                                  ; 2D76 _ B8, 00000000
        add     esp, 60                                 ; 2D7B _ 83. C4, 3C
        pop     ebx                                     ; 2D7E _ 5B
        pop     esi                                     ; 2D7F _ 5E
        pop     edi                                     ; 2D80 _ 5F
        pop     ebp                                     ; 2D81 _ 5D
        ret                                             ; 2D82 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 2D83 _ 55
        mov     ebp, esp                                ; 2D84 _ 89. E5
        push    esi                                     ; 2D86 _ 56
        push    ebx                                     ; 2D87 _ 53
        sub     esp, 48                                 ; 2D88 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2D8B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D8E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2D91 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2D94 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2D97 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2D9A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2D9D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2DA0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2DA3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DA6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2DA9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2DAC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DAF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2DB2 _ 8B. 40, 18
        test    eax, eax                                ; 2DB5 _ 85. C0
        js      ?_111                                   ; 2DB7 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2DBD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2DC0 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2DC3 _ 8B. 45, F0
        add     edx, eax                                ; 2DC6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2DC8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2DCB _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 2DCE _ 8B. 45, F4
        add     eax, ecx                                ; 2DD1 _ 01. C8
        mov     dword [esp+14H], 0                      ; 2DD3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2DDB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2DDF _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2DE3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2DE6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2DEA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2DED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DF1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DF4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2DF7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 2DFC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2DFF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2E02 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2E05 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2E08 _ 8B. 45, 14
        add     edx, eax                                ; 2E0B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2E0D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2E10 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 2E13 _ 8B. 45, 10
        add     eax, ebx                                ; 2E16 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 2E18 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2E1C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2E20 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2E24 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2E27 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2E2B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2E2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E35 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2E38 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 2E3D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2E40 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2E43 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2E46 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2E49 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2E4C _ 8B. 45, F0
        add     edx, eax                                ; 2E4F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2E51 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2E54 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2E57 _ 8B. 45, F4
        add     eax, ebx                                ; 2E5A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2E5C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2E60 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2E68 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2E6C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2E70 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2E73 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2E77 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2E7A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E81 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2E84 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2E89 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2E8C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2E8F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2E92 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2E95 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2E98 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2E9B _ 8B. 45, 14
        add     edx, eax                                ; 2E9E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2EA0 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 2EA3 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2EA6 _ 8B. 45, 10
        add     eax, esi                                ; 2EA9 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2EAB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2EAF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2EB3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2EB7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2EBB _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2EBE _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2EC2 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2EC5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EC9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2ECC _ 89. 04 24
        call    _sheet_refreshsub                       ; 2ECF _ E8, 00000008
?_111:  nop                                             ; 2ED4 _ 90
        add     esp, 48                                 ; 2ED5 _ 83. C4, 30
        pop     ebx                                     ; 2ED8 _ 5B
        pop     esi                                     ; 2ED9 _ 5E
        pop     ebp                                     ; 2EDA _ 5D
        ret                                             ; 2EDB _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2EDC _ 55
        mov     ebp, esp                                ; 2EDD _ 89. E5
        sub     esp, 48                                 ; 2EDF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2EE2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EE5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 2EE7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2EEA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2EED _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2EF0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2EF3 _ 83. 7D, 0C, 00
        jns     ?_112                                   ; 2EF7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2EF9 _ C7. 45, 0C, 00000000
?_112:  cmp     dword [ebp+10H], 8                      ; 2F00 _ 83. 7D, 10, 08
        jg      ?_113                                   ; 2F04 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2F06 _ C7. 45, 10, 00000000
?_113:  mov     eax, dword [ebp+8H]                     ; 2F0D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F10 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2F13 _ 39. 45, 14
        jle     ?_114                                   ; 2F16 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2F18 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F1B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2F1E _ 89. 45, 14
?_114:  mov     eax, dword [ebp+8H]                     ; 2F21 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F24 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2F27 _ 39. 45, 18
        jle     ?_115                                   ; 2F2A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2F2C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F2F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2F32 _ 89. 45, 18
?_115:  mov     eax, dword [ebp+1CH]                    ; 2F35 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2F38 _ 89. 45, FC
        jmp     ?_122                                   ; 2F3B _ E9, 0000010F

?_116:  mov     eax, dword [ebp+8H]                     ; 2F40 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2F43 _ 8B. 55, FC
        add     edx, 4                                  ; 2F46 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F49 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2F4D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2F50 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2F53 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2F55 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2F58 _ 8B. 45, 08
        add     eax, 1044                               ; 2F5B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2F60 _ 8B. 55, E8
        sub     edx, eax                                ; 2F63 _ 29. C2
        mov     eax, edx                                ; 2F65 _ 89. D0
        sar     eax, 5                                  ; 2F67 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2F6A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2F6D _ C7. 45, F4, 00000000
        jmp     ?_121                                   ; 2F74 _ E9, 000000C3

?_117:  mov     eax, dword [ebp-18H]                    ; 2F79 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2F7C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2F7F _ 8B. 45, F4
        add     eax, edx                                ; 2F82 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2F84 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2F87 _ C7. 45, F8, 00000000
        jmp     ?_120                                   ; 2F8E _ E9, 00000096

?_118:  mov     eax, dword [ebp-18H]                    ; 2F93 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2F96 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2F99 _ 8B. 45, F8
        add     eax, edx                                ; 2F9C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2F9E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2FA1 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2FA4 _ 3B. 45, D8
        jg      ?_119                                   ; 2FA7 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2FA9 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2FAC _ 3B. 45, 14
        jge     ?_119                                   ; 2FAF _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2FB1 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2FB4 _ 3B. 45, DC
        jg      ?_119                                   ; 2FB7 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2FB9 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2FBC _ 3B. 45, 18
        jge     ?_119                                   ; 2FBF _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2FC1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2FC4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2FC7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2FCB _ 8B. 55, F8
        add     eax, edx                                ; 2FCE _ 01. D0
        mov     edx, eax                                ; 2FD0 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2FD2 _ 8B. 45, E4
        add     eax, edx                                ; 2FD5 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FD7 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2FDA _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2FDD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FE0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2FE3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2FE7 _ 8B. 55, D8
        add     eax, edx                                ; 2FEA _ 01. D0
        mov     edx, eax                                ; 2FEC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2FEE _ 8B. 45, EC
        add     eax, edx                                ; 2FF1 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FF3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 2FF6 _ 38. 45, E3
        jnz     ?_119                                   ; 2FF9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2FFB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2FFF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3002 _ 8B. 52, 14
        cmp     eax, edx                                ; 3005 _ 39. D0
        jz      ?_119                                   ; 3007 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3009 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 300C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 300F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3013 _ 8B. 55, D8
        add     eax, edx                                ; 3016 _ 01. D0
        mov     edx, eax                                ; 3018 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 301A _ 8B. 45, F0
        add     edx, eax                                ; 301D _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 301F _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3023 _ 88. 02
?_119:  add     dword [ebp-8H], 1                       ; 3025 _ 83. 45, F8, 01
?_120:  mov     eax, dword [ebp-18H]                    ; 3029 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 302C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 302F _ 39. 45, F8
        jl      ?_118                                   ; 3032 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3038 _ 83. 45, F4, 01
?_121:  mov     eax, dword [ebp-18H]                    ; 303C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 303F _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3042 _ 39. 45, F4
        jl      ?_117                                   ; 3045 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 304B _ 83. 45, FC, 01
?_122:  mov     eax, dword [ebp-4H]                     ; 304F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3052 _ 3B. 45, 20
        jle     ?_116                                   ; 3055 _ 0F 8E, FFFFFEE5
        nop                                             ; 305B _ 90
        leave                                           ; 305C _ C9
        ret                                             ; 305D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 305E _ 55
        mov     ebp, esp                                ; 305F _ 89. E5
        sub     esp, 64                                 ; 3061 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3064 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3067 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 306A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 306D _ 83. 7D, 0C, 00
        jns     ?_123                                   ; 3071 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3073 _ C7. 45, 0C, 00000000
?_123:  cmp     dword [ebp+10H], 0                      ; 307A _ 83. 7D, 10, 00
        jns     ?_124                                   ; 307E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3080 _ C7. 45, 10, 00000000
?_124:  mov     eax, dword [ebp+8H]                     ; 3087 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 308A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 308D _ 39. 45, 14
        jle     ?_125                                   ; 3090 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3092 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3095 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3098 _ 89. 45, 14
?_125:  mov     eax, dword [ebp+8H]                     ; 309B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 309E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 30A1 _ 39. 45, 18
        jle     ?_126                                   ; 30A4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 30A6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30A9 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 30AC _ 89. 45, 18
?_126:  mov     eax, dword [ebp+1CH]                    ; 30AF _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 30B2 _ 89. 45, FC
        jmp     ?_137                                   ; 30B5 _ E9, 00000139

?_127:  mov     eax, dword [ebp+8H]                     ; 30BA _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 30BD _ 8B. 55, FC
        add     edx, 4                                  ; 30C0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 30C3 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 30C7 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 30CA _ 8B. 45, 08
        add     eax, 1044                               ; 30CD _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 30D2 _ 8B. 55, DC
        sub     edx, eax                                ; 30D5 _ 29. C2
        mov     eax, edx                                ; 30D7 _ 89. D0
        sar     eax, 5                                  ; 30D9 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 30DC _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 30DF _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 30E2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 30E4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 30E7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 30EA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 30ED _ 8B. 55, 0C
        sub     edx, eax                                ; 30F0 _ 29. C2
        mov     eax, edx                                ; 30F2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 30F4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 30F7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 30FA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 30FD _ 8B. 55, 10
        sub     edx, eax                                ; 3100 _ 29. C2
        mov     eax, edx                                ; 3102 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3104 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3107 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 310A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 310D _ 8B. 55, 14
        sub     edx, eax                                ; 3110 _ 29. C2
        mov     eax, edx                                ; 3112 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3114 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3117 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 311A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 311D _ 8B. 55, 18
        sub     edx, eax                                ; 3120 _ 29. C2
        mov     eax, edx                                ; 3122 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3124 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3127 _ 83. 7D, F0, 00
        jns     ?_128                                   ; 312B _ 79, 07
        mov     dword [ebp-10H], 0                      ; 312D _ C7. 45, F0, 00000000
?_128:  cmp     dword [ebp-14H], 0                      ; 3134 _ 83. 7D, EC, 00
        jns     ?_129                                   ; 3138 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 313A _ C7. 45, EC, 00000000
?_129:  mov     eax, dword [ebp-24H]                    ; 3141 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3144 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3147 _ 39. 45, E8
        jle     ?_130                                   ; 314A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 314C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 314F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3152 _ 89. 45, E8
?_130:  mov     eax, dword [ebp-24H]                    ; 3155 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3158 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 315B _ 39. 45, E4
        jle     ?_131                                   ; 315E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3160 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3163 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3166 _ 89. 45, E4
?_131:  mov     eax, dword [ebp-14H]                    ; 3169 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 316C _ 89. 45, F4
        jmp     ?_136                                   ; 316F _ EB, 76

?_132:  mov     eax, dword [ebp-24H]                    ; 3171 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3174 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3177 _ 8B. 45, F4
        add     eax, edx                                ; 317A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 317C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 317F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3182 _ 89. 45, F8
        jmp     ?_135                                   ; 3185 _ EB, 54

?_133:  mov     eax, dword [ebp-24H]                    ; 3187 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 318A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 318D _ 8B. 45, F8
        add     eax, edx                                ; 3190 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3192 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3195 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3198 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 319B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 319F _ 8B. 55, F8
        add     eax, edx                                ; 31A2 _ 01. D0
        mov     edx, eax                                ; 31A4 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 31A6 _ 8B. 45, D4
        add     eax, edx                                ; 31A9 _ 01. D0
        movzx   eax, byte [eax]                         ; 31AB _ 0F B6. 00
        movzx   eax, al                                 ; 31AE _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 31B1 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 31B4 _ 8B. 52, 14
        cmp     eax, edx                                ; 31B7 _ 39. D0
        jz      ?_134                                   ; 31B9 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 31BB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31BE _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 31C1 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 31C5 _ 8B. 55, CC
        add     eax, edx                                ; 31C8 _ 01. D0
        mov     edx, eax                                ; 31CA _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 31CC _ 8B. 45, E0
        add     edx, eax                                ; 31CF _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 31D1 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 31D5 _ 88. 02
?_134:  add     dword [ebp-8H], 1                       ; 31D7 _ 83. 45, F8, 01
?_135:  mov     eax, dword [ebp-8H]                     ; 31DB _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 31DE _ 3B. 45, E8
        jl      ?_133                                   ; 31E1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 31E3 _ 83. 45, F4, 01
?_136:  mov     eax, dword [ebp-0CH]                    ; 31E7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 31EA _ 3B. 45, E4
        jl      ?_132                                   ; 31ED _ 7C, 82
        add     dword [ebp-4H], 1                       ; 31EF _ 83. 45, FC, 01
?_137:  mov     eax, dword [ebp+8H]                     ; 31F3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31F6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 31F9 _ 39. 45, FC
        jle     ?_127                                   ; 31FC _ 0F 8E, FFFFFEB8
        nop                                             ; 3202 _ 90
        leave                                           ; 3203 _ C9
        ret                                             ; 3204 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3205 _ 90
        nop                                             ; 3206 _ 90
        nop                                             ; 3207 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 3208 _ 55
        mov     ebp, esp                                ; 3209 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 320B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 320E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3214 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3217 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 321E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3221 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3228 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 322B _ C7. 40, 0C, 00000000
        nop                                             ; 3232 _ 90
        pop     ebp                                     ; 3233 _ 5D
        ret                                             ; 3234 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3235 _ 55
        mov     ebp, esp                                ; 3236 _ 89. E5
        sub     esp, 16                                 ; 3238 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 323B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3242 _ C7. 45, FC, 00000000
        jmp     ?_139                                   ; 3249 _ EB, 14

?_138:  mov     eax, dword [ebp+8H]                     ; 324B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 324E _ 8B. 55, FC
        add     edx, 2                                  ; 3251 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3254 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3258 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 325B _ 83. 45, FC, 01
?_139:  mov     eax, dword [ebp+8H]                     ; 325F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3262 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3264 _ 39. 45, FC
        jc      ?_138                                   ; 3267 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3269 _ 8B. 45, F8
        leave                                           ; 326C _ C9
        ret                                             ; 326D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 326E _ 55
        mov     ebp, esp                                ; 326F _ 89. E5
        sub     esp, 16                                 ; 3271 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3274 _ C7. 45, FC, 00000000
        jmp     ?_143                                   ; 327B _ E9, 00000083

?_140:  mov     eax, dword [ebp+8H]                     ; 3280 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3283 _ 8B. 55, FC
        add     edx, 2                                  ; 3286 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3289 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 328D _ 39. 45, 0C
        ja      ?_142                                   ; 3290 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3292 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3295 _ 8B. 55, FC
        add     edx, 2                                  ; 3298 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 329B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 329E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 32A1 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 32A4 _ 8B. 55, FC
        add     edx, 2                                  ; 32A7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 32AA _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 32AD _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 32B0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 32B3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 32B6 _ 8B. 55, FC
        add     edx, 2                                  ; 32B9 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 32BC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 32BF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 32C2 _ 8B. 55, FC
        add     edx, 2                                  ; 32C5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 32C8 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 32CC _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 32CF _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 32D2 _ 8B. 4D, FC
        add     ecx, 2                                  ; 32D5 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 32D8 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 32DC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 32DF _ 8B. 55, FC
        add     edx, 2                                  ; 32E2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 32E5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 32E9 _ 85. C0
        jnz     ?_141                                   ; 32EB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 32ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 32F0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 32F2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 32F5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 32F8 _ 89. 10
?_141:  mov     eax, dword [ebp-8H]                     ; 32FA _ 8B. 45, F8
        jmp     ?_144                                   ; 32FD _ EB, 17

?_142:  add     dword [ebp-4H], 1                       ; 32FF _ 83. 45, FC, 01
?_143:  mov     eax, dword [ebp+8H]                     ; 3303 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3306 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3308 _ 39. 45, FC
        jc      ?_140                                   ; 330B _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3311 _ B8, 00000000
?_144:  leave                                           ; 3316 _ C9
        ret                                             ; 3317 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3318 _ 55
        mov     ebp, esp                                ; 3319 _ 89. E5
        push    ebx                                     ; 331B _ 53
        sub     esp, 16                                 ; 331C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 331F _ C7. 45, F8, 00000000
        jmp     ?_146                                   ; 3326 _ EB, 15

?_145:  mov     eax, dword [ebp+8H]                     ; 3328 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 332B _ 8B. 55, F8
        add     edx, 2                                  ; 332E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3331 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3334 _ 39. 45, 0C
        jc      ?_147                                   ; 3337 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3339 _ 83. 45, F8, 01
?_146:  mov     eax, dword [ebp+8H]                     ; 333D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3340 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3342 _ 39. 45, F8
        jl      ?_145                                   ; 3345 _ 7C, E1
        jmp     ?_148                                   ; 3347 _ EB, 01

?_147:  nop                                             ; 3349 _ 90
?_148:  cmp     dword [ebp-8H], 0                       ; 334A _ 83. 7D, F8, 00
        jle     ?_150                                   ; 334E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3354 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3357 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 335A _ 8B. 45, 08
        add     edx, 2                                  ; 335D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3360 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3363 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3366 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3369 _ 8B. 45, 08
        add     edx, 2                                  ; 336C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 336F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 3373 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 3375 _ 39. 45, 0C
        jne     ?_150                                   ; 3378 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 337E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3381 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3384 _ 8B. 45, 08
        add     edx, 2                                  ; 3387 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 338A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 338E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3391 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3394 _ 8B. 45, 10
        add     ecx, eax                                ; 3397 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 3399 _ 8B. 45, 08
        add     edx, 2                                  ; 339C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 339F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 33A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 33A6 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 33A8 _ 39. 45, F8
        jge     ?_149                                   ; 33AB _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 33AD _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 33B0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 33B3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 33B6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 33B9 _ 8B. 55, F8
        add     edx, 2                                  ; 33BC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 33BF _ 8B. 04 D0
        cmp     ecx, eax                                ; 33C2 _ 39. C1
        jnz     ?_149                                   ; 33C4 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 33C6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 33C9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 33CC _ 8B. 45, 08
        add     edx, 2                                  ; 33CF _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 33D2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 33D6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 33D9 _ 8B. 55, F8
        add     edx, 2                                  ; 33DC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 33DF _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 33E3 _ 8B. 55, F8
        sub     edx, 1                                  ; 33E6 _ 83. EA, 01
        add     ecx, eax                                ; 33E9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 33EB _ 8B. 45, 08
        add     edx, 2                                  ; 33EE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 33F1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 33F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 33F8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 33FA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 33FD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3400 _ 89. 10
?_149:  mov     eax, 0                                  ; 3402 _ B8, 00000000
        jmp     ?_156                                   ; 3407 _ E9, 0000011C

?_150:  mov     eax, dword [ebp+8H]                     ; 340C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 340F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3411 _ 39. 45, F8
        jge     ?_151                                   ; 3414 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3416 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3419 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 341C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 341F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3422 _ 8B. 55, F8
        add     edx, 2                                  ; 3425 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3428 _ 8B. 04 D0
        cmp     ecx, eax                                ; 342B _ 39. C1
        jnz     ?_151                                   ; 342D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 342F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3432 _ 8B. 55, F8
        add     edx, 2                                  ; 3435 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3438 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 343B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 343E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3441 _ 8B. 55, F8
        add     edx, 2                                  ; 3444 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3447 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 344B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 344E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3451 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3454 _ 8B. 55, F8
        add     edx, 2                                  ; 3457 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 345A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 345E _ B8, 00000000
        jmp     ?_156                                   ; 3463 _ E9, 000000C0

?_151:  mov     eax, dword [ebp+8H]                     ; 3468 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 346B _ 8B. 00
        cmp     eax, 4095                               ; 346D _ 3D, 00000FFF
        jg      ?_155                                   ; 3472 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3478 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 347B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 347D _ 89. 45, F4
        jmp     ?_153                                   ; 3480 _ EB, 28

?_152:  mov     eax, dword [ebp-0CH]                    ; 3482 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3485 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 3488 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 348B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 348E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 3491 _ 8B. 45, 08
        add     edx, 2                                  ; 3494 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 3497 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 349A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 349C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 349F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 34A2 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 34A6 _ 83. 6D, F4, 01
?_153:  mov     eax, dword [ebp-0CH]                    ; 34AA _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 34AD _ 3B. 45, F8
        jg      ?_152                                   ; 34B0 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 34B2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 34B5 _ 8B. 00
        lea     edx, [eax+1H]                           ; 34B7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 34BA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 34BD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 34BF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 34C2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 34C5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 34C8 _ 8B. 00
        cmp     edx, eax                                ; 34CA _ 39. C2
        jge     ?_154                                   ; 34CC _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 34CE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 34D1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 34D3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 34D6 _ 89. 50, 04
?_154:  mov     eax, dword [ebp+8H]                     ; 34D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 34DC _ 8B. 55, F8
        add     edx, 2                                  ; 34DF _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 34E2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 34E5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 34E8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 34EB _ 8B. 55, F8
        add     edx, 2                                  ; 34EE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 34F1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 34F4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 34F8 _ B8, 00000000
        jmp     ?_156                                   ; 34FD _ EB, 29

?_155:  mov     eax, dword [ebp+8H]                     ; 34FF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3502 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3505 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3508 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 350B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 350E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3511 _ 8B. 40, 08
        mov     edx, eax                                ; 3514 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3516 _ 8B. 45, 10
        add     eax, edx                                ; 3519 _ 01. D0
        mov     edx, eax                                ; 351B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 351D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3520 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3523 _ B8, FFFFFFFF
?_156:  add     esp, 16                                 ; 3528 _ 83. C4, 10
        pop     ebx                                     ; 352B _ 5B
        pop     ebp                                     ; 352C _ 5D
        ret                                             ; 352D _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 352E _ 55
        mov     ebp, esp                                ; 352F _ 89. E5
        sub     esp, 24                                 ; 3531 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3534 _ 8B. 45, 0C
        add     eax, 4095                               ; 3537 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 353C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 3541 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3544 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3547 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 354B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 354E _ 89. 04 24
        call    _memman_alloc                           ; 3551 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 3556 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3559 _ 8B. 45, FC
        leave                                           ; 355C _ C9
        ret                                             ; 355D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 355E _ 55
        mov     ebp, esp                                ; 355F _ 89. E5
        sub     esp, 28                                 ; 3561 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3564 _ 8B. 45, 10
        add     eax, 4095                               ; 3567 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 356C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 3571 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3574 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3577 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 357B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 357E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3582 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3585 _ 89. 04 24
        call    _memman_free                            ; 3588 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 358D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3590 _ 8B. 45, FC
        leave                                           ; 3593 _ C9
        ret                                             ; 3594 _ C3
; _memman_free_4k End of function

        nop                                             ; 3595 _ 90
        nop                                             ; 3596 _ 90
        nop                                             ; 3597 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 3598 _ 55
        mov     ebp, esp                                ; 3599 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 359B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 359E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 35A1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 35A4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 35A7 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 35AA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 35AC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35AF _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 35B2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 35B5 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 35B8 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 35BF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 35C2 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 35C9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 35CC _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 35D3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 35D6 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 35D9 _ 89. 50, 18
        nop                                             ; 35DC _ 90
        pop     ebp                                     ; 35DD _ 5D
        ret                                             ; 35DE _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 35DF _ 55
        mov     ebp, esp                                ; 35E0 _ 89. E5
        sub     esp, 40                                 ; 35E2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 35E5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 35E8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 35EB _ 83. 7D, 08, 00
        jnz     ?_157                                   ; 35EF _ 75, 0A
        mov     eax, 4294967295                         ; 35F1 _ B8, FFFFFFFF
        jmp     ?_161                                   ; 35F6 _ E9, 000000AB

?_157:  mov     eax, dword [ebp+8H]                     ; 35FB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 35FE _ 8B. 40, 10
        test    eax, eax                                ; 3601 _ 85. C0
        jnz     ?_158                                   ; 3603 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 3605 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3608 _ 8B. 40, 14
        or      eax, 01H                                ; 360B _ 83. C8, 01
        mov     edx, eax                                ; 360E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3610 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3613 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3616 _ B8, FFFFFFFF
        jmp     ?_161                                   ; 361B _ E9, 00000086

?_158:  mov     eax, dword [ebp+8H]                     ; 3620 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3623 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3625 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3628 _ 8B. 40, 04
        add     edx, eax                                ; 362B _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 362D _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3631 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3633 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3636 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3639 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 363C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 363F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3642 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3645 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3648 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 364B _ 8B. 40, 0C
        cmp     edx, eax                                ; 364E _ 39. C2
        jnz     ?_159                                   ; 3650 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3652 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3655 _ C7. 40, 04, 00000000
?_159:  mov     eax, dword [ebp+8H]                     ; 365C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 365F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3662 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3665 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3668 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 366B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 366E _ 8B. 40, 18
        test    eax, eax                                ; 3671 _ 85. C0
        jz      ?_160                                   ; 3673 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 3675 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3678 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 367B _ 8B. 40, 04
        cmp     eax, 2                                  ; 367E _ 83. F8, 02
        jz      ?_160                                   ; 3681 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3683 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3686 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 3689 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 3691 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 3699 _ 89. 04 24
        call    _task_run                               ; 369C _ E8, 00000000(rel)
?_160:  mov     eax, 0                                  ; 36A1 _ B8, 00000000
?_161:  leave                                           ; 36A6 _ C9
        ret                                             ; 36A7 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 36A8 _ 55
        mov     ebp, esp                                ; 36A9 _ 89. E5
        sub     esp, 16                                 ; 36AB _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 36AE _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 36B1 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 36B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36B7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36BA _ 39. C2
        jnz     ?_162                                   ; 36BC _ 75, 07
        mov     eax, 4294967295                         ; 36BE _ B8, FFFFFFFF
        jmp     ?_164                                   ; 36C3 _ EB, 51

?_162:  mov     eax, dword [ebp+8H]                     ; 36C5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 36C8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 36CA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36CD _ 8B. 40, 08
        add     eax, edx                                ; 36D0 _ 01. D0
        movzx   eax, byte [eax]                         ; 36D2 _ 0F B6. 00
        movzx   eax, al                                 ; 36D5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 36D8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 36DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36DE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 36E1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36E4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 36E7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 36EA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 36ED _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 36F0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36F3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36F6 _ 39. C2
        jnz     ?_163                                   ; 36F8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 36FA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 36FD _ C7. 40, 08, 00000000
?_163:  mov     eax, dword [ebp+8H]                     ; 3704 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3707 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 370A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 370D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3710 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3713 _ 8B. 45, FC
?_164:  leave                                           ; 3716 _ C9
        ret                                             ; 3717 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 3718 _ 55
        mov     ebp, esp                                ; 3719 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 371B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 371E _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3721 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3724 _ 8B. 40, 10
        sub     edx, eax                                ; 3727 _ 29. C2
        mov     eax, edx                                ; 3729 _ 89. D0
        pop     ebp                                     ; 372B _ 5D
        ret                                             ; 372C _ C3
; _fifo8_status End of function

        nop                                             ; 372D _ 90
        nop                                             ; 372E _ 90
        nop                                             ; 372F _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3730 _ 55
        mov     ebp, esp                                ; 3731 _ 89. E5
        sub     esp, 40                                 ; 3733 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3736 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 373E _ C7. 04 24, 00000043
        call    _io_out8                                ; 3745 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 374A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3752 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3759 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 375E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3766 _ C7. 04 24, 00000040
        call    _io_out8                                ; 376D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3772 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 377C _ C7. 45, F4, 00000000
        jmp     ?_166                                   ; 3783 _ EB, 26

?_165:  mov     eax, dword [ebp-0CH]                    ; 3785 _ 8B. 45, F4
        shl     eax, 4                                  ; 3788 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 378B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3790 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3796 _ 8B. 45, F4
        shl     eax, 4                                  ; 3799 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 379C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 37A1 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 37A7 _ 83. 45, F4, 01
?_166:  cmp     dword [ebp-0CH], 499                    ; 37AB _ 81. 7D, F4, 000001F3
        jle     ?_165                                   ; 37B2 _ 7E, D1
        nop                                             ; 37B4 _ 90
        leave                                           ; 37B5 _ C9
        ret                                             ; 37B6 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 37B7 _ 55
        mov     ebp, esp                                ; 37B8 _ 89. E5
        sub     esp, 16                                 ; 37BA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 37BD _ C7. 45, FC, 00000000
        jmp     ?_169                                   ; 37C4 _ EB, 36

?_167:  mov     eax, dword [ebp-4H]                     ; 37C6 _ 8B. 45, FC
        shl     eax, 4                                  ; 37C9 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 37CC _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 37D1 _ 8B. 00
        test    eax, eax                                ; 37D3 _ 85. C0
        jnz     ?_168                                   ; 37D5 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 37D7 _ 8B. 45, FC
        shl     eax, 4                                  ; 37DA _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 37DD _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 37E2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 37E8 _ 8B. 45, FC
        shl     eax, 4                                  ; 37EB _ C1. E0, 04
        add     eax, _timerctl                               ; 37EE _ 05, 00000000(d)
        add     eax, 4                                  ; 37F3 _ 83. C0, 04
        jmp     ?_170                                   ; 37F6 _ EB, 12

?_168:  add     dword [ebp-4H], 1                       ; 37F8 _ 83. 45, FC, 01
?_169:  cmp     dword [ebp-4H], 499                     ; 37FC _ 81. 7D, FC, 000001F3
        jle     ?_167                                   ; 3803 _ 7E, C1
        mov     eax, 0                                  ; 3805 _ B8, 00000000
?_170:  leave                                           ; 380A _ C9
        ret                                             ; 380B _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 380C _ 55
        mov     ebp, esp                                ; 380D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 380F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3812 _ C7. 40, 04, 00000000
        nop                                             ; 3819 _ 90
        pop     ebp                                     ; 381A _ 5D
        ret                                             ; 381B _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 381C _ 55
        mov     ebp, esp                                ; 381D _ 89. E5
        sub     esp, 4                                  ; 381F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3822 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3825 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3828 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 382B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 382E _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3831 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3834 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3838 _ 88. 42, 0C
        nop                                             ; 383B _ 90
        leave                                           ; 383C _ C9
        ret                                             ; 383D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 383E _ 55
        mov     ebp, esp                                ; 383F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3841 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3844 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3847 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3849 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 384C _ C7. 40, 04, 00000002
        nop                                             ; 3853 _ 90
        pop     ebp                                     ; 3854 _ 5D
        ret                                             ; 3855 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3856 _ 55
        mov     ebp, esp                                ; 3857 _ 89. E5
        sub     esp, 40                                 ; 3859 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 385C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3864 _ C7. 04 24, 00000020
        call    _io_out8                                ; 386B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3870 _ A1, 00000000(d)
        add     eax, 1                                  ; 3875 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3878 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 387D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3881 _ C7. 45, F4, 00000000
        jmp     ?_174                                   ; 3888 _ E9, 000000AA

?_171:  mov     eax, dword [ebp-0CH]                    ; 388D _ 8B. 45, F4
        shl     eax, 4                                  ; 3890 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3893 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3898 _ 8B. 00
        cmp     eax, 2                                  ; 389A _ 83. F8, 02
        jne     ?_172                                   ; 389D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 38A3 _ 8B. 45, F4
        shl     eax, 4                                  ; 38A6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 38A9 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 38AE _ 8B. 00
        lea     edx, [eax-1H]                           ; 38B0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 38B3 _ 8B. 45, F4
        shl     eax, 4                                  ; 38B6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 38B9 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 38BE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 38C0 _ 8B. 45, F4
        shl     eax, 4                                  ; 38C3 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 38C6 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 38CB _ 8B. 00
        test    eax, eax                                ; 38CD _ 85. C0
        jnz     ?_172                                   ; 38CF _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 38D1 _ 8B. 45, F4
        shl     eax, 4                                  ; 38D4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 38D7 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 38DC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 38E2 _ 8B. 45, F4
        shl     eax, 4                                  ; 38E5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 38E8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 38ED _ 0F B6. 00
        movzx   eax, al                                 ; 38F0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 38F3 _ 8B. 55, F4
        shl     edx, 4                                  ; 38F6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 38F9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 38FF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3901 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3905 _ 89. 14 24
        call    _fifo8_put                              ; 3908 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 390D _ 8B. 45, F4
        shl     eax, 4                                  ; 3910 _ C1. E0, 04
        add     eax, _timerctl                               ; 3913 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 3918 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 391B _ A1, 00000000(d)
        cmp     edx, eax                                ; 3920 _ 39. C2
        jnz     ?_172                                   ; 3922 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3924 _ C6. 45, F3, 01
?_172:  cmp     byte [ebp-0DH], 0                       ; 3928 _ 80. 7D, F3, 00
        jz      ?_173                                   ; 392C _ 74, 05
        call    _task_switch                            ; 392E _ E8, 00000000(rel)
?_173:  add     dword [ebp-0CH], 1                      ; 3933 _ 83. 45, F4, 01
?_174:  cmp     dword [ebp-0CH], 499                    ; 3937 _ 81. 7D, F4, 000001F3
        jle     ?_171                                   ; 393E _ 0F 8E, FFFFFF49
        nop                                             ; 3944 _ 90
        leave                                           ; 3945 _ C9
        ret                                             ; 3946 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 3947 _ B8, 00000000(d)
        ret                                             ; 394C _ C3
; _getTimerController End of function

        nop                                             ; 394D _ 90
        nop                                             ; 394E _ 90
        nop                                             ; 394F _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3950 _ 55
        mov     ebp, esp                                ; 3951 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3953 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_175                                   ; 395A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 395C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3963 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3966 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3969 _ 89. 45, 0C
?_175:  mov     eax, dword [ebp+0CH]                    ; 396C _ 8B. 45, 0C
        mov     edx, eax                                ; 396F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3971 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3974 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3977 _ 8B. 45, 10
        mov     edx, eax                                ; 397A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 397C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 397F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3983 _ 8B. 45, 10
        sar     eax, 16                                 ; 3986 _ C1. F8, 10
        mov     edx, eax                                ; 3989 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 398B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 398E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3991 _ 8B. 45, 14
        mov     edx, eax                                ; 3994 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3996 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3999 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 399C _ 8B. 45, 0C
        shr     eax, 16                                 ; 399F _ C1. E8, 10
        and     eax, 0FH                                ; 39A2 _ 83. E0, 0F
        mov     edx, eax                                ; 39A5 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 39A7 _ 8B. 45, 14
        sar     eax, 8                                  ; 39AA _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 39AD _ 83. E0, F0
        or      eax, edx                                ; 39B0 _ 09. D0
        mov     edx, eax                                ; 39B2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 39B4 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 39B7 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 39BA _ 8B. 45, 10
        shr     eax, 24                                 ; 39BD _ C1. E8, 18
        mov     edx, eax                                ; 39C0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 39C2 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 39C5 _ 88. 50, 07
        nop                                             ; 39C8 _ 90
        pop     ebp                                     ; 39C9 _ 5D
        ret                                             ; 39CA _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 39CB _ 55
        mov     ebp, esp                                ; 39CC _ 89. E5
        sub     esp, 16                                 ; 39CE _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 39D1 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 39D7 _ 8B. 55, 08
        mov     eax, edx                                ; 39DA _ 89. D0
        shl     eax, 2                                  ; 39DC _ C1. E0, 02
        add     eax, edx                                ; 39DF _ 01. D0
        shl     eax, 2                                  ; 39E1 _ C1. E0, 02
        add     eax, ecx                                ; 39E4 _ 01. C8
        add     eax, 8                                  ; 39E6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 39E9 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 39EF _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 39F5 _ 8B. 55, 08
        mov     eax, edx                                ; 39F8 _ 89. D0
        shl     eax, 2                                  ; 39FA _ C1. E0, 02
        add     eax, edx                                ; 39FD _ 01. D0
        shl     eax, 2                                  ; 39FF _ C1. E0, 02
        add     eax, ecx                                ; 3A02 _ 01. C8
        add     eax, 12                                 ; 3A04 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3A07 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3A0D _ C7. 45, FC, 00000000
        jmp     ?_177                                   ; 3A14 _ EB, 21

?_176:  mov     ecx, dword [_taskctl]                   ; 3A16 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3A1C _ 8B. 55, FC
        mov     eax, edx                                ; 3A1F _ 89. D0
        add     eax, eax                                ; 3A21 _ 01. C0
        add     eax, edx                                ; 3A23 _ 01. D0
        shl     eax, 3                                  ; 3A25 _ C1. E0, 03
        add     eax, ecx                                ; 3A28 _ 01. C8
        add     eax, 16                                 ; 3A2A _ 83. C0, 10
        mov     dword [eax], 0                          ; 3A2D _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3A33 _ 83. 45, FC, 01
?_177:  cmp     dword [ebp-4H], 2                       ; 3A37 _ 83. 7D, FC, 02
        jle     ?_176                                   ; 3A3B _ 7E, D9
        nop                                             ; 3A3D _ 90
        leave                                           ; 3A3E _ C9
        ret                                             ; 3A3F _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 3A40 _ 55
        mov     ebp, esp                                ; 3A41 _ 89. E5
        sub     esp, 40                                 ; 3A43 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3A46 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3A4B _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 3A4E _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 3A56 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A59 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3A5C _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3A61 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3A66 _ C7. 45, F4, 00000000
        jmp     ?_179                                   ; 3A6D _ EB, 7F

?_178:  mov     edx, dword [_taskctl]                   ; 3A6F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3A75 _ 8B. 45, F4
        imul    eax, eax, 120                           ; 3A78 _ 6B. C0, 78
        add     eax, edx                                ; 3A7B _ 01. D0
        add     eax, 72                                 ; 3A7D _ 83. C0, 48
        mov     dword [eax], 0                          ; 3A80 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3A86 _ 8B. 45, F4
        add     eax, 7                                  ; 3A89 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 3A8C _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3A92 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3A99 _ 8B. 45, F4
        imul    eax, eax, 120                           ; 3A9C _ 6B. C0, 78
        add     eax, ecx                                ; 3A9F _ 01. C8
        add     eax, 68                                 ; 3AA1 _ 83. C0, 44
        mov     dword [eax], edx                        ; 3AA4 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3AA6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3AAC _ 8B. 45, F4
        imul    eax, eax, 120                           ; 3AAF _ 6B. C0, 78
        add     eax, 80                                 ; 3AB2 _ 83. C0, 50
        add     eax, edx                                ; 3AB5 _ 01. D0
        add     eax, 4                                  ; 3AB7 _ 83. C0, 04
        mov     ecx, eax                                ; 3ABA _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 3ABC _ 8B. 45, F4
        add     eax, 7                                  ; 3ABF _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3AC2 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3AC9 _ 8B. 45, F0
        add     eax, edx                                ; 3ACC _ 01. D0
        mov     dword [esp+0CH], 137                    ; 3ACE _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3AD6 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3ADA _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3AE2 _ 89. 04 24
        call    _set_segmdesc                           ; 3AE5 _ E8, FFFFFE66
        add     dword [ebp-0CH], 1                      ; 3AEA _ 83. 45, F4, 01
?_179:  cmp     dword [ebp-0CH], 4                      ; 3AEE _ 83. 7D, F4, 04
        jle     ?_178                                   ; 3AF2 _ 0F 8E, FFFFFF77
        mov     dword [ebp-0CH], 0                      ; 3AF8 _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 3AFF _ EB, 0F

?_180:  mov     eax, dword [ebp-0CH]                    ; 3B01 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3B04 _ 89. 04 24
        call    _init_task_level                        ; 3B07 _ E8, FFFFFEBF
        add     dword [ebp-0CH], 1                      ; 3B0C _ 83. 45, F4, 01
?_181:  cmp     dword [ebp-0CH], 2                      ; 3B10 _ 83. 7D, F4, 02
        jle     ?_180                                   ; 3B14 _ 7E, EB
        call    _task_alloc                             ; 3B16 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 3B1B _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3B1E _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3B21 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3B28 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 3B2B _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 3B32 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 3B35 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 3B3C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 3B3F _ 89. 04 24
        call    _task_add                               ; 3B42 _ E8, 0000003A
        call    _task_switchsub                         ; 3B47 _ E8, 0000041A
        mov     eax, dword [ebp-14H]                    ; 3B4C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3B4F _ 8B. 00
        mov     dword [esp], eax                        ; 3B51 _ 89. 04 24
        call    _load_tr                                ; 3B54 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 3B59 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3B5E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3B63 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3B66 _ 8B. 40, 08
        mov     edx, eax                                ; 3B69 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3B6B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3B70 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B74 _ 89. 04 24
        call    _timer_settime                          ; 3B77 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3B7C _ 8B. 45, EC
        leave                                           ; 3B7F _ C9
        ret                                             ; 3B80 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 3B81 _ 55
        mov     ebp, esp                                ; 3B82 _ 89. E5
        sub     esp, 16                                 ; 3B84 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3B87 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3B8D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3B90 _ 8B. 50, 0C
        mov     eax, edx                                ; 3B93 _ 89. D0
        shl     eax, 2                                  ; 3B95 _ C1. E0, 02
        add     eax, edx                                ; 3B98 _ 01. D0
        shl     eax, 2                                  ; 3B9A _ C1. E0, 02
        add     eax, ecx                                ; 3B9D _ 01. C8
        add     eax, 8                                  ; 3B9F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3BA2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3BA5 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3BA8 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3BAA _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3BAD _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3BB0 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3BB4 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3BB7 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3BB9 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3BBC _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3BBF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3BC1 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3BC4 _ C7. 40, 04, 00000002
        nop                                             ; 3BCB _ 90
        leave                                           ; 3BCC _ C9
        ret                                             ; 3BCD _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 3BCE _ 55
        mov     ebp, esp                                ; 3BCF _ 89. E5
        sub     esp, 16                                 ; 3BD1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3BD4 _ C7. 45, FC, 00000000
        jmp     ?_184                                   ; 3BDB _ E9, 000000E2

?_182:  mov     edx, dword [_taskctl]                   ; 3BE0 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3BE6 _ 8B. 45, FC
        imul    eax, eax, 120                           ; 3BE9 _ 6B. C0, 78
        add     eax, edx                                ; 3BEC _ 01. D0
        add     eax, 72                                 ; 3BEE _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3BF1 _ 8B. 00
        test    eax, eax                                ; 3BF3 _ 85. C0
        jne     ?_183                                   ; 3BF5 _ 0F 85, 000000C3
        mov     edx, dword [_taskctl]                   ; 3BFB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3C01 _ 8B. 45, FC
        imul    eax, eax, 120                           ; 3C04 _ 6B. C0, 78
        add     eax, 64                                 ; 3C07 _ 83. C0, 40
        add     eax, edx                                ; 3C0A _ 01. D0
        add     eax, 4                                  ; 3C0C _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3C0F _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 3C12 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 3C15 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 3C1C _ 8B. 45, F8
        mov     dword [eax+34H], 514                    ; 3C1F _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-8H]                     ; 3C26 _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 3C29 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C30 _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 3C33 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C3A _ 8B. 45, F8
        mov     dword [eax+40H], 0                      ; 3C3D _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C44 _ 8B. 45, F8
        mov     dword [eax+44H], 0                      ; 3C47 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C4E _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 3C51 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3C58 _ 8B. 45, FC
        add     eax, 1                                  ; 3C5B _ 83. C0, 01
        shl     eax, 9                                  ; 3C5E _ C1. E0, 09
        mov     edx, eax                                ; 3C61 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3C63 _ 8B. 45, F8
        mov     dword [eax+48H], edx                    ; 3C66 _ 89. 50, 48
        mov     eax, dword [ebp-8H]                     ; 3C69 _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 3C6C _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C73 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 3C76 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C7D _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 3C80 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C87 _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 3C8A _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C91 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3C94 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 3C9B _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 3C9E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3CA5 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 3CA8 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 3CAF _ 8B. 45, F8
        mov     dword [eax+74H], 1073741824             ; 3CB2 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-8H]                     ; 3CB9 _ 8B. 45, F8
        jmp     ?_185                                   ; 3CBC _ EB, 13

?_183:  add     dword [ebp-4H], 1                       ; 3CBE _ 83. 45, FC, 01
?_184:  cmp     dword [ebp-4H], 4                       ; 3CC2 _ 83. 7D, FC, 04
        jle     ?_182                                   ; 3CC6 _ 0F 8E, FFFFFF14
        mov     eax, 0                                  ; 3CCC _ B8, 00000000
?_185:  leave                                           ; 3CD1 _ C9
        ret                                             ; 3CD2 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 3CD3 _ 55
        mov     ebp, esp                                ; 3CD4 _ 89. E5
        sub     esp, 24                                 ; 3CD6 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 3CD9 _ 83. 7D, 0C, 00
        jns     ?_186                                   ; 3CDD _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3CDF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CE2 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3CE5 _ 89. 45, 0C
?_186:  cmp     dword [ebp+10H], 0                      ; 3CE8 _ 83. 7D, 10, 00
        jle     ?_187                                   ; 3CEC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3CEE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3CF1 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3CF4 _ 89. 50, 08
?_187:  mov     eax, dword [ebp+8H]                     ; 3CF7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3CFA _ 8B. 40, 04
        cmp     eax, 2                                  ; 3CFD _ 83. F8, 02
        jnz     ?_188                                   ; 3D00 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 3D02 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D05 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3D08 _ 39. 45, 0C
        jz      ?_188                                   ; 3D0B _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 3D0D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D10 _ 89. 04 24
        call    _task_remove                            ; 3D13 _ E8, 0000002E
?_188:  mov     eax, dword [ebp+8H]                     ; 3D18 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3D1B _ 8B. 40, 04
        cmp     eax, 2                                  ; 3D1E _ 83. F8, 02
        jz      ?_189                                   ; 3D21 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 3D23 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3D26 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3D29 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3D2C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D2F _ 89. 04 24
        call    _task_add                               ; 3D32 _ E8, FFFFFE4A
?_189:  mov     eax, dword [_taskctl]                   ; 3D37 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 3D3C _ C7. 40, 04, 00000001
        nop                                             ; 3D43 _ 90
        leave                                           ; 3D44 _ C9
        ret                                             ; 3D45 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 3D46 _ 55
        mov     ebp, esp                                ; 3D47 _ 89. E5
        sub     esp, 16                                 ; 3D49 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3D4C _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3D52 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3D55 _ 8B. 50, 0C
        mov     eax, edx                                ; 3D58 _ 89. D0
        shl     eax, 2                                  ; 3D5A _ C1. E0, 02
        add     eax, edx                                ; 3D5D _ 01. D0
        shl     eax, 2                                  ; 3D5F _ C1. E0, 02
        add     eax, ecx                                ; 3D62 _ 01. C8
        add     eax, 8                                  ; 3D64 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 3D67 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 3D6A _ C7. 45, FC, 00000000
        jmp     ?_192                                   ; 3D71 _ EB, 23

?_190:  mov     eax, dword [ebp-8H]                     ; 3D73 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 3D76 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3D79 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3D7D _ 39. 45, 08
        jnz     ?_191                                   ; 3D80 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 3D82 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 3D85 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 3D88 _ C7. 44 90, 08, 00000000
        jmp     ?_193                                   ; 3D90 _ EB, 0E

?_191:  add     dword [ebp-4H], 1                       ; 3D92 _ 83. 45, FC, 01
?_192:  mov     eax, dword [ebp-8H]                     ; 3D96 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3D99 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3D9B _ 39. 45, FC
        jl      ?_190                                   ; 3D9E _ 7C, D3
?_193:  mov     eax, dword [ebp-8H]                     ; 3DA0 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3DA3 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3DA5 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 3DA8 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 3DAB _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 3DAD _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 3DB0 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 3DB3 _ 39. 45, FC
        jge     ?_194                                   ; 3DB6 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 3DB8 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 3DBB _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3DBE _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 3DC1 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 3DC4 _ 89. 50, 04
?_194:  mov     eax, dword [ebp-8H]                     ; 3DC7 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 3DCA _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 3DCD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3DD0 _ 8B. 00
        cmp     edx, eax                                ; 3DD2 _ 39. C2
        jl      ?_195                                   ; 3DD4 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 3DD6 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 3DD9 _ C7. 40, 04, 00000000
?_195:  mov     eax, dword [ebp+8H]                     ; 3DE0 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3DE3 _ C7. 40, 04, 00000001
        jmp     ?_197                                   ; 3DEA _ EB, 1B

?_196:  mov     eax, dword [ebp-4H]                     ; 3DEC _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 3DEF _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 3DF2 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 3DF5 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 3DF9 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 3DFC _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 3DFF _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 3E03 _ 83. 45, FC, 01
?_197:  mov     eax, dword [ebp-8H]                     ; 3E07 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 3E0A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3E0C _ 39. 45, FC
        jl      ?_196                                   ; 3E0F _ 7C, DB
        nop                                             ; 3E11 _ 90
        leave                                           ; 3E12 _ C9
        ret                                             ; 3E13 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 3E14 _ 55
        mov     ebp, esp                                ; 3E15 _ 89. E5
        sub     esp, 40                                 ; 3E17 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 3E1A _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3E20 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3E25 _ 8B. 10
        mov     eax, edx                                ; 3E27 _ 89. D0
        shl     eax, 2                                  ; 3E29 _ C1. E0, 02
        add     eax, edx                                ; 3E2C _ 01. D0
        shl     eax, 2                                  ; 3E2E _ C1. E0, 02
        add     eax, ecx                                ; 3E31 _ 01. C8
        add     eax, 8                                  ; 3E33 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 3E36 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3E39 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 3E3C _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3E3F _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 3E42 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3E46 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3E49 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 3E4C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3E4F _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 3E52 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 3E55 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3E58 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 3E5B _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3E5E _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3E61 _ 8B. 00
        cmp     edx, eax                                ; 3E63 _ 39. C2
        jnz     ?_198                                   ; 3E65 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 3E67 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 3E6A _ C7. 40, 04, 00000000
?_198:  mov     eax, dword [_taskctl]                   ; 3E71 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 3E76 _ 8B. 40, 04
        test    eax, eax                                ; 3E79 _ 85. C0
        jz      ?_199                                   ; 3E7B _ 74, 24
        call    _task_switchsub                         ; 3E7D _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 3E82 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3E88 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3E8D _ 8B. 10
        mov     eax, edx                                ; 3E8F _ 89. D0
        shl     eax, 2                                  ; 3E91 _ C1. E0, 02
        add     eax, edx                                ; 3E94 _ 01. D0
        shl     eax, 2                                  ; 3E96 _ C1. E0, 02
        add     eax, ecx                                ; 3E99 _ 01. C8
        add     eax, 8                                  ; 3E9B _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 3E9E _ 89. 45, F4
?_199:  mov     eax, dword [ebp-0CH]                    ; 3EA1 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 3EA4 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3EA7 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 3EAA _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 3EAE _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3EB1 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3EB4 _ 8B. 40, 08
        mov     edx, eax                                ; 3EB7 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3EB9 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3EBE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EC2 _ 89. 04 24
        call    _timer_settime                          ; 3EC5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3ECA _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 3ECD _ 3B. 45, F0
        jz      ?_200                                   ; 3ED0 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 3ED2 _ 83. 7D, EC, 00
        jz      ?_200                                   ; 3ED6 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 3ED8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3EDB _ 8B. 00
        mov     dword [esp+4H], eax                     ; 3EDD _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3EE1 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3EE8 _ E8, 00000000(rel)
        nop                                             ; 3EED _ 90
?_200:  nop                                             ; 3EEE _ 90
        leave                                           ; 3EEF _ C9
        ret                                             ; 3EF0 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 3EF1 _ 55
        mov     ebp, esp                                ; 3EF2 _ 89. E5
        sub     esp, 40                                 ; 3EF4 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 3EF7 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3EFE _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F05 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3F08 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3F0B _ 83. F8, 02
        jnz     ?_201                                   ; 3F0E _ 75, 51
        call    _task_now                               ; 3F10 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 3F15 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3F18 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F1B _ 89. 04 24
        call    _task_remove                            ; 3F1E _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 3F23 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 3F2A _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 3F2D _ 3B. 45, F0
        jnz     ?_201                                   ; 3F30 _ 75, 2F
        call    _task_switchsub                         ; 3F32 _ E8, 0000002F
        call    _task_now                               ; 3F37 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 3F3C _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 3F3F _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 3F46 _ 83. 7D, F0, 00
        jz      ?_201                                   ; 3F4A _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 3F4C _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3F4F _ 8B. 00
        mov     dword [esp+4H], eax                     ; 3F51 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 3F55 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3F5C _ E8, 00000000(rel)
?_201:  mov     eax, dword [ebp-0CH]                    ; 3F61 _ 8B. 45, F4
        leave                                           ; 3F64 _ C9
        ret                                             ; 3F65 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 3F66 _ 55
        mov     ebp, esp                                ; 3F67 _ 89. E5
        sub     esp, 16                                 ; 3F69 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F6C _ C7. 45, FC, 00000000
        jmp     ?_203                                   ; 3F73 _ EB, 22

?_202:  mov     ecx, dword [_taskctl]                   ; 3F75 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3F7B _ 8B. 55, FC
        mov     eax, edx                                ; 3F7E _ 89. D0
        shl     eax, 2                                  ; 3F80 _ C1. E0, 02
        add     eax, edx                                ; 3F83 _ 01. D0
        shl     eax, 2                                  ; 3F85 _ C1. E0, 02
        add     eax, ecx                                ; 3F88 _ 01. C8
        add     eax, 8                                  ; 3F8A _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3F8D _ 8B. 00
        test    eax, eax                                ; 3F8F _ 85. C0
        jg      ?_204                                   ; 3F91 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3F93 _ 83. 45, FC, 01
?_203:  cmp     dword [ebp-4H], 2                       ; 3F97 _ 83. 7D, FC, 02
        jle     ?_202                                   ; 3F9B _ 7E, D8
        jmp     ?_205                                   ; 3F9D _ EB, 01

?_204:  nop                                             ; 3F9F _ 90
?_205:  mov     eax, dword [_taskctl]                   ; 3FA0 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3FA5 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3FA8 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 3FAA _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3FAF _ C7. 40, 04, 00000000
        nop                                             ; 3FB6 _ 90
        leave                                           ; 3FB7 _ C9
        ret                                             ; 3FB8 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 3FB9 _ 55
        mov     ebp, esp                                ; 3FBA _ 89. E5
        sub     esp, 16                                 ; 3FBC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3FBF _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 3FC5 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3FCA _ 8B. 10
        mov     eax, edx                                ; 3FCC _ 89. D0
        shl     eax, 2                                  ; 3FCE _ C1. E0, 02
        add     eax, edx                                ; 3FD1 _ 01. D0
        shl     eax, 2                                  ; 3FD3 _ C1. E0, 02
        add     eax, ecx                                ; 3FD6 _ 01. C8
        add     eax, 8                                  ; 3FD8 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3FDB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3FDE _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3FE1 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3FE4 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3FE7 _ 8B. 44 90, 08
        leave                                           ; 3FEB _ C9
        ret                                             ; 3FEC _ C3
; _task_now End of function

        nop                                             ; 3FED _ 90
        nop                                             ; 3FEE _ 90
        nop                                             ; 3FEF _ 90



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

?_206:  db 00H                                          ; 0076 _ .

?_207:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2340:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2387:                                           ; byte
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

_closebtn.2507:                                         ; byte
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



?_208:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_209:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_210:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_211:                                                  ; byte
        db 41H, 00H                                     ; 0017 _ A.

?_212:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0019 _ 3[sec].

?_213:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0020 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0028 _ sk b.

?_214:                                                  ; byte
        db 42H, 00H                                     ; 002D _ B.

?_215:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 002F _ page is:
        db 20H, 00H                                     ; 0037 _  .

?_216:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0039 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0041 _ L: .

?_217:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0045 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 004D _ H: .

?_218:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0051 _ lengthLo
        db 77H, 3AH, 20H, 00H, 00H, 00H, 00H            ; 0059 _ w: ....



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

?_219:  resw    1                                       ; 0004

?_220:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

?_221:  resd    1                                       ; 0020

_mouseinfo:                                             ; byte
        resb    28                                      ; 0024

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    12                                      ; 00E0

?_222:  resd    1                                       ; 00EC

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

_task_a.2278:                                           ; dword
        resd    7                                       ; 0264

_tss_a.2277:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2276:                                            ; byte
        resb    104                                     ; 0300

_str.2435:                                              ; byte
        resb    1                                       ; 0368

?_223:  resb    9                                       ; 0369

?_224:  resb    2                                       ; 0372

_task_b.2533:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


