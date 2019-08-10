; Disassembly of file: ckernel.o
; Sat Aug 10 21:38:07 2019
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
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000008(d)
        call    _initBootInfo                           ; 000F _ E8, 00001098
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000008(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_239]                       ; 001C _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 0000013C(d)
        movzx   eax, word [?_240]                       ; 0029 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 00000140(d)
        call    _init_pit                               ; 0036 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0043 _ C7. 44 24, 08, 0000012C(d)
        mov     dword [esp+4H], 8                       ; 004B _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0053 _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 005A _ E8, 00000000(rel)
        call    _timer_alloc                            ; 005F _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 0064 _ 89. 45, D8
        mov     dword [esp+8H], 10                      ; 0067 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006F _ C7. 44 24, 04, 00000110(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00A5 _ C7. 44 24, 04, 00000110(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00DB _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-30H]                    ; 00E3 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00E6 _ 89. 04 24
        call    _timer_init                             ; 00E9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00EE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 00F6 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00F9 _ 89. 04 24
        call    _timer_settime                          ; 00FC _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0101 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0109 _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0111 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0119 _ C7. 04 24, 00000010(d)
        call    _fifo8_init                             ; 0120 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0125 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012D _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0135 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013D _ C7. 04 24, 0000002C(d)
        call    _fifo8_init                             ; 0144 _ E8, 00000000(rel)
        call    _init_palette                           ; 0149 _ E8, 00001021
        call    _init_keyboard                          ; 014E _ E8, 0000158A
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
        mov     ecx, dword [_ysize]                     ; 018D _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0193 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 0199 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 019E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A2 _ 89. 54 24, 08
        mov     edx, dword [ebp-24H]                    ; 01A6 _ 8B. 55, DC
        mov     dword [esp+4H], edx                     ; 01A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01AD _ 89. 04 24
        call    _shtctl_init                            ; 01B0 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B5 _ A3, 00000264(d)
        mov     eax, dword [_shtctl]                    ; 01BA _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01BF _ 89. 04 24
        call    _sheet_alloc                            ; 01C2 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01C7 _ A3, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 01CC _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01D1 _ 89. 04 24
        call    _sheet_alloc                            ; 01D4 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01D9 _ A3, 0000026C(d)
        mov     edx, dword [_xsize]                     ; 01DE _ 8B. 15, 0000013C(d)
        mov     eax, dword [_ysize]                     ; 01E4 _ A1, 00000140(d)
        imul    eax, edx                                ; 01E9 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EC _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F2 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F6 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01F9 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01FE _ A3, 00000144(d)
        mov     ebx, dword [_ysize]                     ; 0203 _ 8B. 1D, 00000140(d)
        mov     ecx, dword [_xsize]                     ; 0209 _ 8B. 0D, 0000013C(d)
        mov     edx, dword [_buf_back]                  ; 020F _ 8B. 15, 00000144(d)
        mov     eax, dword [_sht_back]                  ; 0215 _ A1, 00000268(d)
        mov     dword [esp+10H], 99                     ; 021A _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0222 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0226 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 022A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 022E _ 89. 04 24
        call    _sheet_setbuf                           ; 0231 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0236 _ A1, 0000026C(d)
        mov     dword [esp+10H], 99                     ; 023B _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0243 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0253 _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 025B _ 89. 04 24
        call    _sheet_setbuf                           ; 025E _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0263 _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0269 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_buf_back]                  ; 026F _ A1, 00000144(d)
        mov     dword [esp+8H], ecx                     ; 0274 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0278 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027C _ 89. 04 24
        call    _init_screen8                           ; 027F _ E8, 00000960
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 00001173
        mov     edx, dword [_sht_back]                  ; 0298 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 029E _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 02A3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B7 _ 89. 04 24
        call    _sheet_slide                            ; 02BA _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02BF _ A1, 0000013C(d)
        sub     eax, 16                                 ; 02C4 _ 83. E8, 10
        mov     edx, eax                                ; 02C7 _ 89. C2
        shr     edx, 31                                 ; 02C9 _ C1. EA, 1F
        add     eax, edx                                ; 02CC _ 01. D0
        sar     eax, 1                                  ; 02CE _ D1. F8
        mov     dword [_mx], eax                        ; 02D0 _ A3, 00000134(d)
        mov     eax, dword [_ysize]                     ; 02D5 _ A1, 00000140(d)
        sub     eax, 44                                 ; 02DA _ 83. E8, 2C
        mov     edx, eax                                ; 02DD _ 89. C2
        shr     edx, 31                                 ; 02DF _ C1. EA, 1F
        add     eax, edx                                ; 02E2 _ 01. D0
        sar     eax, 1                                  ; 02E4 _ D1. F8
        mov     dword [_my], eax                        ; 02E6 _ A3, 00000138(d)
        mov     ebx, dword [_my]                        ; 02EB _ 8B. 1D, 00000138(d)
        mov     ecx, dword [_mx]                        ; 02F1 _ 8B. 0D, 00000134(d)
        mov     edx, dword [_sht_mouse]                 ; 02F7 _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 02FD _ A1, 00000264(d)
        mov     dword [esp+0CH], ebx                    ; 0302 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0306 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 030A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 030E _ 89. 04 24
        call    _sheet_slide                            ; 0311 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0316 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 031D _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0324 _ A1, 00000264(d)
        mov     dword [esp+4H], ?_227                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 000017CF
        mov     dword [_shtMsgBox], eax                 ; 0339 _ A3, 00000260(d)
        mov     edx, dword [_sht_back]                  ; 033E _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0344 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 0349 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0351 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0355 _ 89. 04 24
        call    _sheet_updown                           ; 0358 _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035D _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 0363 _ A1, 00000264(d)
        mov     dword [esp+8H], 100                     ; 0368 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0370 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0374 _ 89. 04 24
        call    _sheet_updown                           ; 0377 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037C _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0381 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 0388 _ E8, 0000138B
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 0392 _ 89. 45, C4
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 039A _ 89. 45, C0
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2284], eax               ; 03AA _ A3, 00000278(d)
        mov     eax, dword [_task_a.2284]               ; 03AF _ A1, 00000278(d)
        mov     dword [?_241], eax                      ; 03B4 _ A3, 00000028(d)
        mov     eax, dword [_task_a.2284]               ; 03B9 _ A1, 00000278(d)
        mov     dword [esp+8H], 0                       ; 03BE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C6 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CE _ 89. 04 24
        call    _task_run                               ; 03D1 _ E8, 00000000(rel)
        call    _launch_console                         ; 03D6 _ E8, 00002134
        mov     dword [ebp-44H], eax                    ; 03DB _ 89. 45, BC
        mov     dword [ebp-48H], 0                      ; 03DE _ C7. 45, B8, 00000000
        mov     dword [ebp-14H], 0                      ; 03E5 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 03EC _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 03F3 _ C7. 45, E4, 00000000
        mov     dword [ebp-20H], 0                      ; 03FA _ C7. 45, E0, 00000000
?_001:  call    _io_cli                                 ; 0401 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0406 _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 040D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0412 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0414 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 041B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0420 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0422 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0429 _ E8, 00000000(rel)
        add     eax, ebx                                ; 042E _ 01. D8
        test    eax, eax                                ; 0430 _ 85. C0
        jnz     ?_002                                   ; 0432 _ 75, 07
        call    _io_sti                                 ; 0434 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0439 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 043B _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 0442 _ E8, 00000000(rel)
        test    eax, eax                                ; 0447 _ 85. C0
        je      ?_008                                   ; 0449 _ 0F 84, 000003A2
        call    _io_sti                                 ; 044F _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0454 _ C7. 04 24, 00000010(d)
        call    _fifo8_get                              ; 045B _ E8, 00000000(rel)
        mov     dword [ebp-48H], eax                    ; 0460 _ 89. 45, B8
        cmp     dword [ebp-48H], 28                     ; 0463 _ 83. 7D, B8, 1C
        jnz     ?_003                                   ; 0467 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 0469 _ 8B. 35, 0000013C(d)
        mov     ebx, dword [_buf_back]                  ; 046F _ 8B. 1D, 00000144(d)
        mov     edx, dword [ebp-14H]                    ; 0475 _ 8B. 55, EC
        mov     eax, edx                                ; 0478 _ 89. D0
        shl     eax, 2                                  ; 047A _ C1. E0, 02
        add     eax, edx                                ; 047D _ 01. D0
        shl     eax, 2                                  ; 047F _ C1. E0, 02
        mov     edx, eax                                ; 0482 _ 89. C2
        mov     eax, dword [ebp-38H]                    ; 0484 _ 8B. 45, C8
        lea     ecx, [edx+eax]                          ; 0487 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 048A _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0490 _ A1, 00000264(d)
        mov     dword [esp+18H], 7                      ; 0495 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 049D _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 04A1 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 04A4 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 04A8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 04AC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04B0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04B4 _ 89. 04 24
        call    _showMemoryInfo                         ; 04B7 _ E8, 00001431
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
        mov     edx, dword [_shtMsgBox]                 ; 04EF _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 04F5 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 04FA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_228                   ; 0502 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 050A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 050E _ 89. 04 24
        call    _make_wtitle8                           ; 0511 _ E8, 000019A2
        mov     eax, dword [_shtctl]                    ; 0516 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 051B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_229                   ; 0523 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 052B _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 052E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0532 _ 89. 04 24
        call    _make_wtitle8                           ; 0535 _ E8, 0000197E
        jmp     ?_005                                   ; 053A _ EB, 52

?_004:  mov     dword [ebp-20H], 0                      ; 053C _ C7. 45, E0, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0543 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0549 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 054E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_228                   ; 0556 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 055E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0562 _ 89. 04 24
        call    _make_wtitle8                           ; 0565 _ E8, 0000194E
        mov     eax, dword [_shtctl]                    ; 056A _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 056F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_229                   ; 0577 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-44H]                    ; 057F _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 0582 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0586 _ 89. 04 24
        call    _make_wtitle8                           ; 0589 _ E8, 0000192A
?_005:  mov     eax, dword [_shtMsgBox]                 ; 058E _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 0593 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 0596 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 059C _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 05A1 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 05A9 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 05AD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05B5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 05BD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05C1 _ 89. 04 24
        call    _sheet_refresh                          ; 05C4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-44H]                    ; 05C9 _ 8B. 45, BC
        mov     edx, dword [eax+4H]                     ; 05CC _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 05CF _ A1, 00000264(d)
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
        jne     ?_007                                   ; 0608 _ 0F 85, 0000018F
        mov     eax, dword [ebp-48H]                    ; 060E _ 8B. 45, B8
        mov     dword [esp], eax                        ; 0611 _ 89. 04 24
        call    _transferScanCode                       ; 0614 _ E8, 00002464
        mov     byte [ebp-49H], al                      ; 0619 _ 88. 45, B7
        cmp     byte [ebp-49H], 0                       ; 061C _ 80. 7D, B7, 00
        je      ?_001                                   ; 0620 _ 0F 84, FFFFFDDB
        cmp     dword [ebp-48H], 83                     ; 0626 _ 83. 7D, B8, 53
        jg      ?_001                                   ; 062A _ 0F 8F, FFFFFDD1
        mov     eax, dword [ebp-48H]                    ; 0630 _ 8B. 45, B8
        add     eax, _keytable                          ; 0633 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0638 _ 0F B6. 00
        test    al, al                                  ; 063B _ 84. C0
        je      ?_001                                   ; 063D _ 0F 84, FFFFFDBE
        cmp     dword [ebp-0CH], 143                    ; 0643 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 064A _ 0F 8F, FFFFFDB1
        mov     eax, dword [ebp-0CH]                    ; 0650 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0653 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0656 _ A1, 00000260(d)
        mov     edx, dword [eax+4H]                     ; 065B _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 065E _ A1, 00000260(d)
        mov     eax, dword [eax]                        ; 0663 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0665 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 066D _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0671 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0679 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 067C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0680 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0688 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 068C _ 89. 04 24
        call    _boxfill8                               ; 068F _ E8, 00000BA6
        mov     eax, dword [ebp-0CH]                    ; 0694 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0697 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 069A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06A0 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 06A5 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 06AD _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 06B1 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06B9 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06BC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06C4 _ 89. 04 24
        call    _sheet_refresh                          ; 06C7 _ E8, 00000000(rel)
        movzx   eax, byte [ebp-49H]                     ; 06CC _ 0F B6. 45, B7
        mov     byte [ebp-52H], al                      ; 06D0 _ 88. 45, AE
        mov     byte [ebp-51H], 0                       ; 06D3 _ C6. 45, AF, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06D7 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 06DD _ 8B. 15, 00000264(d)
        lea     eax, [ebp-52H]                          ; 06E3 _ 8D. 45, AE
        mov     dword [esp+14H], eax                    ; 06E6 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 06EA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06F2 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 06FA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 06FD _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0701 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0705 _ 89. 14 24
        call    _showString                             ; 0708 _ E8, 000009C0
        add     dword [ebp-0CH], 8                      ; 070D _ 83. 45, F4, 08
        mov     dword [ebp-1CH], 1                      ; 0711 _ C7. 45, E4, 00000001
        mov     eax, dword [ebp-0CH]                    ; 0718 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 071B _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 071E _ 8B. 45, F0
        movzx   eax, al                                 ; 0721 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0724 _ 8B. 15, 00000260(d)
        mov     ecx, dword [edx+4H]                     ; 072A _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 072D _ 8B. 15, 00000260(d)
        mov     edx, dword [edx]                        ; 0733 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0735 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 073D _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0741 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0749 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 074C _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0750 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0754 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0758 _ 89. 14 24
        call    _boxfill8                               ; 075B _ E8, 00000ADA
        mov     eax, dword [ebp-0CH]                    ; 0760 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0763 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0766 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 076C _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 0771 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0779 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 077D _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0785 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0788 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 078C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0790 _ 89. 04 24
        call    _sheet_refresh                          ; 0793 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0798 _ E9, FFFFFC64

?_007:  mov     eax, dword [ebp-48H]                    ; 079D _ 8B. 45, B8
        mov     dword [esp], eax                        ; 07A0 _ 89. 04 24
        call    _isSpecialKey                           ; 07A3 _ E8, 00002412
        test    eax, eax                                ; 07A8 _ 85. C0
        jne     ?_001                                   ; 07AA _ 0F 85, FFFFFC51
        mov     eax, dword [ebp-48H]                    ; 07B0 _ 8B. 45, B8
        movzx   eax, al                                 ; 07B3 _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 07B6 _ 8B. 15, 00000274(d)
        add     edx, 16                                 ; 07BC _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 07BF _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 07C3 _ 89. 14 24
        call    _fifo8_put                              ; 07C6 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 07CB _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 07D2 _ E8, 00000000(rel)
        test    eax, eax                                ; 07D7 _ 85. C0
        jne     ?_001                                   ; 07D9 _ 0F 85, FFFFFC22
        mov     eax, dword [_task_a.2284]               ; 07DF _ A1, 00000278(d)
        mov     dword [esp], eax                        ; 07E4 _ 89. 04 24
        call    _task_sleep                             ; 07E7 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 07EC _ E9, FFFFFC10

?_008:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 07F1 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 07F8 _ E8, 00000000(rel)
        test    eax, eax                                ; 07FD _ 85. C0
        jz      ?_009                                   ; 07FF _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 0801 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0807 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 080D _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 0812 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0816 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 081A _ 89. 04 24
        call    _show_mouse_info                        ; 081D _ E8, 000007D2
        jmp     ?_001                                   ; 0822 _ E9, FFFFFBDA

?_009:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0827 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 082E _ E8, 00000000(rel)
        test    eax, eax                                ; 0833 _ 85. C0
        je      ?_001                                   ; 0835 _ 0F 84, FFFFFBC6
        call    _io_sti                                 ; 083B _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0840 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 0847 _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 084C _ 89. 45, B0
        cmp     dword [ebp-50H], 10                     ; 084F _ 83. 7D, B0, 0A
        jnz     ?_010                                   ; 0853 _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 0855 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 085B _ A1, 00000264(d)
        mov     dword [esp+14H], ?_230                  ; 0860 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 0868 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 0870 _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 0878 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 087B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 087F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0883 _ 89. 04 24
        call    _showString                             ; 0886 _ E8, 00000842
        mov     dword [esp+4H], 100                     ; 088B _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-28H]                    ; 0893 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0896 _ 89. 04 24
        call    _timer_settime                          ; 0899 _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 089E _ 83. 45, E8, 08
        cmp     dword [ebp-18H], 40                     ; 08A2 _ 83. 7D, E8, 28
        jle     ?_001                                   ; 08A6 _ 0F 8E, FFFFFB55
        cmp     dword [ebp-1CH], 0                      ; 08AC _ 83. 7D, E4, 00
        jne     ?_001                                   ; 08B0 _ 0F 85, FFFFFB4B
        call    _io_cli                                 ; 08B6 _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2284]               ; 08BB _ A1, 00000278(d)
        mov     dword [esp], eax                        ; 08C0 _ 89. 04 24
        call    _task_sleep                             ; 08C3 _ E8, 00000000(rel)
        call    _io_sti                                 ; 08C8 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 08CD _ E9, FFFFFB2F

?_010:  ; Local function
        cmp     dword [ebp-50H], 2                      ; 08D2 _ 83. 7D, B0, 02
        jnz     ?_011                                   ; 08D6 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 08D8 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 08DE _ A1, 00000264(d)
        mov     dword [esp+14H], ?_231                  ; 08E3 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 08EB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 08F3 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 08FB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0903 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0907 _ 89. 04 24
        call    _showString                             ; 090A _ E8, 000007BE
        jmp     ?_001                                   ; 090F _ E9, FFFFFAED

?_011:  ; Local function
        cmp     dword [ebp-50H], 0                      ; 0914 _ 83. 7D, B0, 00
        jz      ?_012                                   ; 0918 _ 74, 24
        mov     dword [esp+8H], 0                       ; 091A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0922 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-30H]                    ; 092A _ 8B. 45, D0
        mov     dword [esp], eax                        ; 092D _ 89. 04 24
        call    _timer_init                             ; 0930 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0935 _ C7. 45, F0, 00000000
        jmp     ?_013                                   ; 093C _ EB, 22

?_012:  mov     dword [esp+8H], 1                       ; 093E _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0946 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-30H]                    ; 094E _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0951 _ 89. 04 24
        call    _timer_init                             ; 0954 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0959 _ C7. 45, F0, 00000007
?_013:  mov     dword [esp+4H], 50                      ; 0960 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 0968 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 096B _ 89. 04 24
        call    _timer_settime                          ; 096E _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0973 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0976 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0979 _ 8B. 45, F0
        movzx   eax, al                                 ; 097C _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 097F _ 8B. 15, 00000260(d)
        mov     ecx, dword [edx+4H]                     ; 0985 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0988 _ 8B. 15, 00000260(d)
        mov     edx, dword [edx]                        ; 098E _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0990 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0998 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 099C _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 09A4 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 09A7 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 09AB _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09AF _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09B3 _ 89. 14 24
        call    _boxfill8                               ; 09B6 _ E8, 0000087F
        mov     eax, dword [ebp-0CH]                    ; 09BB _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 09BE _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 09C1 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 09C7 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 09CC _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 09D4 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 09D8 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 09E0 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 09E3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 09E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09EB _ 89. 04 24
        call    _sheet_refresh                          ; 09EE _ E8, 00000000(rel)
        jmp     ?_001                                   ; 09F3 _ E9, FFFFFA09

_task_b_main:; Function begin
        push    ebp                                     ; 09F8 _ 55
        mov     ebp, esp                                ; 09F9 _ 89. E5
        sub     esp, 104                                ; 09FB _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 09FE _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0A04 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_232                  ; 0A09 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], 7                      ; 0A11 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 0A19 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0A21 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0A29 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A2D _ 89. 04 24
        call    _showString                             ; 0A30 _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 0A35 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 0A3C _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0A43 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 0A4B _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 0A4E _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0A52 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 0A5A _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0A5D _ 89. 04 24
        call    _fifo8_init                             ; 0A60 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0A65 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0A6A _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 0A6D _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0A75 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0A78 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0A7C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A7F _ 89. 04 24
        call    _timer_init                             ; 0A82 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0A87 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0A8F _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A92 _ 89. 04 24
        call    _timer_settime                          ; 0A95 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0A9A _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0AA1 _ C7. 45, F0, 00000000
?_014:  add     dword [ebp-0CH], 1                      ; 0AA8 _ 83. 45, F4, 01
        call    _io_cli                                 ; 0AAC _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0AB1 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0AB4 _ 89. 04 24
        call    _fifo8_status                           ; 0AB7 _ E8, 00000000(rel)
        test    eax, eax                                ; 0ABC _ 85. C0
        jnz     ?_015                                   ; 0ABE _ 75, 07
        call    _io_sti                                 ; 0AC0 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0AC5 _ EB, E1
; _task_b_main End of function

?_015:  ; Local function
        lea     eax, [ebp-38H]                          ; 0AC7 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0ACA _ 89. 04 24
        call    _fifo8_get                              ; 0ACD _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0AD2 _ 89. 45, E8
        call    _io_sti                                 ; 0AD5 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 0ADA _ 83. 7D, E8, 7B
        jnz     ?_014                                   ; 0ADE _ 75, C8
        mov     edx, dword [_sht_back]                  ; 0AE0 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0AE6 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_233                  ; 0AEB _ C7. 44 24, 14, 0000002D(d)
        mov     dword [esp+10H], 7                      ; 0AF3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 0AFB _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 0B03 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 0B06 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0B0A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B0E _ 89. 04 24
        call    _showString                             ; 0B11 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 0B16 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 0B1E _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0B21 _ 89. 04 24
        call    _timer_settime                          ; 0B24 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0B29 _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0B2D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0B30 _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0B32 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0B3A _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0B42 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0B4A _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0B52 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0B5A _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0B62 _ 89. 04 24
        call    _boxfill8                               ; 0B65 _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0B6A _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 0B6F _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0B77 _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0B7F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0B87 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0B8F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0B92 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B96 _ 89. 04 24
        call    _sheet_refresh                          ; 0B99 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0B9E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0BA1 _ 89. 04 24
        call    _intToHexStr                            ; 0BA4 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0BA9 _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0BAC _ A1, 00000264(d)
        mov     edx, dword [ebp-1CH]                    ; 0BB1 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0BB4 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0BB8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0BC0 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0BC8 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0BD0 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0BD3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0BD7 _ 89. 04 24
        call    _showString                             ; 0BDA _ E8, 000004EE
        jmp     ?_014                                   ; 0BDF _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0BE4 _ 55
        mov     ebp, esp                                ; 0BE5 _ 89. E5
        push    ebx                                     ; 0BE7 _ 53
        sub     esp, 36                                 ; 0BE8 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0BEB _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0BEE _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0BF1 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BF4 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0BF7 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0BFB _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0BFF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0C07 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0C0F _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0C17 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C1A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C1E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C21 _ 89. 04 24
        call    _boxfill8                               ; 0C24 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0C29 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0C2C _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0C2F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C32 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C35 _ 8B. 45, 10
        sub     eax, 28                                 ; 0C38 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0C3B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C3F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C43 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C47 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0C4F _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0C57 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C5A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C5E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C61 _ 89. 04 24
        call    _boxfill8                               ; 0C64 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0C69 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0C6C _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0C6F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C72 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C75 _ 8B. 45, 10
        sub     eax, 27                                 ; 0C78 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0C7B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C7F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C83 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C87 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0C8F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C97 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CA1 _ 89. 04 24
        call    _boxfill8                               ; 0CA4 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0CA9 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0CAC _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0CAF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0CB2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0CB5 _ 8B. 45, 10
        sub     eax, 26                                 ; 0CB8 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0CBB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0CBF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CC3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0CC7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0CCF _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0CD7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CDA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CDE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CE1 _ 89. 04 24
        call    _boxfill8                               ; 0CE4 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0CE9 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0CEC _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0CEF _ 8B. 45, 10
        sub     eax, 24                                 ; 0CF2 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CF5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0CF9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D01 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D05 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0D0D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D15 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D18 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D1C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D1F _ 89. 04 24
        call    _boxfill8                               ; 0D22 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0D27 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D2A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0D2D _ 8B. 45, 10
        sub     eax, 24                                 ; 0D30 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0D33 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0D37 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0D3F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0D43 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0D4B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D53 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D56 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D5A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D5D _ 89. 04 24
        call    _boxfill8                               ; 0D60 _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0D65 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D68 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0D6B _ 8B. 45, 10
        sub     eax, 4                                  ; 0D6E _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0D71 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D75 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D7D _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D81 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0D89 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D91 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D94 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D98 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D9B _ 89. 04 24
        call    _boxfill8                               ; 0D9E _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0DA3 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0DA6 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0DA9 _ 8B. 45, 10
        sub     eax, 23                                 ; 0DAC _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0DAF _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DB3 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0DBB _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0DBF _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0DC7 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0DCF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DD2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DD6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DD9 _ 89. 04 24
        call    _boxfill8                               ; 0DDC _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0DE1 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DE4 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0DE7 _ 8B. 45, 10
        sub     eax, 3                                  ; 0DEA _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0DED _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DF1 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0DF9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0DFD _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0E05 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E0D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E10 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E14 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E17 _ 89. 04 24
        call    _boxfill8                               ; 0E1A _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0E1F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E22 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0E25 _ 8B. 45, 10
        sub     eax, 24                                 ; 0E28 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0E2B _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0E2F _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0E37 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0E3B _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0E43 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E4B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E4E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E55 _ 89. 04 24
        call    _boxfill8                               ; 0E58 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0E5D _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0E60 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0E63 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0E66 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0E69 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0E6C _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0E6F _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E72 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E75 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E79 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E7D _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E81 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0E85 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0E8D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E90 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E94 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E97 _ 89. 04 24
        call    _boxfill8                               ; 0E9A _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0E9F _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0EA2 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0EA5 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0EA8 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0EAB _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0EAE _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0EB1 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0EB4 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0EB7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EBB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0EBF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0EC3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0EC7 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0ECF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0ED2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0ED6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ED9 _ 89. 04 24
        call    _boxfill8                               ; 0EDC _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0EE1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EE4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EE7 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0EEA _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0EED _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0EF0 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0EF3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0EF6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0EF9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EFD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F01 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F05 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F09 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F11 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F14 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F1B _ 89. 04 24
        call    _boxfill8                               ; 0F1E _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0F23 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F26 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F29 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0F2C _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0F2F _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0F32 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0F35 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0F38 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0F3B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F3F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F43 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F47 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F4B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F53 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F56 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F5A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F5D _ 89. 04 24
        call    _boxfill8                               ; 0F60 _ E8, 000002D5
        nop                                             ; 0F65 _ 90
        add     esp, 36                                 ; 0F66 _ 83. C4, 24
        pop     ebx                                     ; 0F69 _ 5B
        pop     ebp                                     ; 0F6A _ 5D
        ret                                             ; 0F6B _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0F6C _ 55
        mov     ebp, esp                                ; 0F6D _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0F6F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0F72 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0F75 _ A1, 00000134(d)
        add     eax, edx                                ; 0F7A _ 01. D0
        mov     dword [_mx], eax                        ; 0F7C _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 0F81 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0F84 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0F87 _ A1, 00000138(d)
        add     eax, edx                                ; 0F8C _ 01. D0
        mov     dword [_my], eax                        ; 0F8E _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 0F93 _ A1, 00000134(d)
        test    eax, eax                                ; 0F98 _ 85. C0
        jns     ?_016                                   ; 0F9A _ 79, 0A
        mov     dword [_mx], 0                          ; 0F9C _ C7. 05, 00000134(d), 00000000
?_016:  mov     eax, dword [_my]                        ; 0FA6 _ A1, 00000138(d)
        test    eax, eax                                ; 0FAB _ 85. C0
        jns     ?_017                                   ; 0FAD _ 79, 0A
        mov     dword [_my], 0                          ; 0FAF _ C7. 05, 00000138(d), 00000000
?_017:  mov     edx, dword [_xsize]                     ; 0FB9 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0FBF _ A1, 00000134(d)
        cmp     edx, eax                                ; 0FC4 _ 39. C2
        jg      ?_018                                   ; 0FC6 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0FC8 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 0FCD _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0FD0 _ A3, 00000134(d)
?_018:  mov     edx, dword [_ysize]                     ; 0FD5 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 0FDB _ A1, 00000138(d)
        cmp     edx, eax                                ; 0FE0 _ 39. C2
        jg      ?_019                                   ; 0FE2 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0FE4 _ A1, 00000140(d)
        sub     eax, 1                                  ; 0FE9 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0FEC _ A3, 00000138(d)
?_019:  nop                                             ; 0FF1 _ 90
        pop     ebp                                     ; 0FF2 _ 5D
        ret                                             ; 0FF3 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0FF4 _ 55
        mov     ebp, esp                                ; 0FF5 _ 89. E5
        sub     esp, 40                                 ; 0FF7 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0FFA _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 0FFF _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1002 _ C6. 45, F3, 00
        call    _io_sti                                 ; 1006 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 100B _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 1012 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1017 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 101A _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 101E _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1022 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1029 _ E8, 00000780
        test    eax, eax                                ; 102E _ 85. C0
        jz      ?_020                                   ; 1030 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1032 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 103A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 103D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1041 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1044 _ 89. 04 24
        call    _computeMousePosition                   ; 1047 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 104C _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1052 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1057 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 105B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 105F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1062 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1066 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1069 _ 89. 04 24
        call    _sheet_slide                            ; 106C _ E8, 00000000(rel)
        mov     eax, dword [?_242]                      ; 1071 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1076 _ 83. E0, 01
        test    eax, eax                                ; 1079 _ 85. C0
        jz      ?_020                                   ; 107B _ 74, 2C
        mov     eax, dword [_my]                        ; 107D _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1082 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1085 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 108A _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 108D _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1092 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1096 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 109A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 109E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 10A1 _ 89. 04 24
        call    _sheet_slide                            ; 10A4 _ E8, 00000000(rel)
?_020:  nop                                             ; 10A9 _ 90
        leave                                           ; 10AA _ C9
        ret                                             ; 10AB _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 10AC _ 55
        mov     ebp, esp                                ; 10AD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 10AF _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 10B2 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 10B8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 10BB _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 10C1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 10C4 _ 66: C7. 40, 06, 01E0
        nop                                             ; 10CA _ 90
        pop     ebp                                     ; 10CB _ 5D
        ret                                             ; 10CC _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 10CD _ 55
        mov     ebp, esp                                ; 10CE _ 89. E5
        push    ebx                                     ; 10D0 _ 53
        sub     esp, 68                                 ; 10D1 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 10D4 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 10D7 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 10DA _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 10DD _ 89. 45, F4
        jmp     ?_022                                   ; 10E0 _ EB, 4B

?_021:  mov     eax, dword [ebp+1CH]                    ; 10E2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 10E5 _ 0F B6. 00
        movzx   eax, al                                 ; 10E8 _ 0F B6. C0
        shl     eax, 4                                  ; 10EB _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 10EE _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 10F4 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 10F8 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 10FB _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 10FE _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1101 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 1103 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 1107 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 110B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 110E _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1112 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1115 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1119 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 111D _ 89. 14 24
        call    _showFont8                              ; 1120 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1125 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1129 _ 83. 45, 1C, 01
?_022:  mov     eax, dword [ebp+1CH]                    ; 112D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1130 _ 0F B6. 00
        test    al, al                                  ; 1133 _ 84. C0
        jnz     ?_021                                   ; 1135 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 1137 _ 8B. 45, 14
        add     eax, 16                                 ; 113A _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 113D _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1141 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 1144 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1148 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 114B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 114F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1152 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1156 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1159 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 115D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1160 _ 89. 04 24
        call    _sheet_refresh                          ; 1163 _ E8, 00000000(rel)
        nop                                             ; 1168 _ 90
        add     esp, 68                                 ; 1169 _ 83. C4, 44
        pop     ebx                                     ; 116C _ 5B
        pop     ebp                                     ; 116D _ 5D
        ret                                             ; 116E _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 116F _ 55
        mov     ebp, esp                                ; 1170 _ 89. E5
        sub     esp, 24                                 ; 1172 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2349         ; 1175 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 117D _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 1185 _ C7. 04 24, 00000000
        call    _set_palette                            ; 118C _ E8, 00000003
        nop                                             ; 1191 _ 90
        leave                                           ; 1192 _ C9
        ret                                             ; 1193 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1194 _ 55
        mov     ebp, esp                                ; 1195 _ 89. E5
        sub     esp, 40                                 ; 1197 _ 83. EC, 28
        call    _io_load_eflags                         ; 119A _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 119F _ 89. 45, F0
        call    _io_cli                                 ; 11A2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 11A7 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 11AA _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 11AE _ C7. 04 24, 000003C8
        call    _io_out8                                ; 11B5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 11BA _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 11BD _ 89. 45, F4
        jmp     ?_024                                   ; 11C0 _ EB, 62

?_023:  mov     eax, dword [ebp+10H]                    ; 11C2 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 11C5 _ 0F B6. 00
        shr     al, 2                                   ; 11C8 _ C0. E8, 02
        movzx   eax, al                                 ; 11CB _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 11CE _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 11D2 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11D9 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 11DE _ 8B. 45, 10
        add     eax, 1                                  ; 11E1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 11E4 _ 0F B6. 00
        shr     al, 2                                   ; 11E7 _ C0. E8, 02
        movzx   eax, al                                 ; 11EA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 11ED _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 11F1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 11F8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 11FD _ 8B. 45, 10
        add     eax, 2                                  ; 1200 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1203 _ 0F B6. 00
        shr     al, 2                                   ; 1206 _ C0. E8, 02
        movzx   eax, al                                 ; 1209 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 120C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1210 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1217 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 121C _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 1220 _ 83. 45, F4, 01
?_024:  mov     eax, dword [ebp-0CH]                    ; 1224 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1227 _ 3B. 45, 0C
        jle     ?_023                                   ; 122A _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 122C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 122F _ 89. 04 24
        call    _io_store_eflags                        ; 1232 _ E8, 00000000(rel)
        nop                                             ; 1237 _ 90
        leave                                           ; 1238 _ C9
        ret                                             ; 1239 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 123A _ 55
        mov     ebp, esp                                ; 123B _ 89. E5
        sub     esp, 20                                 ; 123D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1240 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1243 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1246 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 1249 _ 89. 45, F8
        jmp     ?_028                                   ; 124C _ EB, 31

?_025:  mov     eax, dword [ebp+14H]                    ; 124E _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 1251 _ 89. 45, FC
        jmp     ?_027                                   ; 1254 _ EB, 1D

?_026:  mov     eax, dword [ebp-8H]                     ; 1256 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 1259 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 125D _ 8B. 55, FC
        add     eax, edx                                ; 1260 _ 01. D0
        mov     edx, eax                                ; 1262 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1264 _ 8B. 45, 08
        add     edx, eax                                ; 1267 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1269 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 126D _ 88. 02
        add     dword [ebp-4H], 1                       ; 126F _ 83. 45, FC, 01
?_027:  mov     eax, dword [ebp-4H]                     ; 1273 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 1276 _ 3B. 45, 1C
        jle     ?_026                                   ; 1279 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 127B _ 83. 45, F8, 01
?_028:  mov     eax, dword [ebp-8H]                     ; 127F _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 1282 _ 3B. 45, 20
        jle     ?_025                                   ; 1285 _ 7E, C7
        nop                                             ; 1287 _ 90
        leave                                           ; 1288 _ C9
        ret                                             ; 1289 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 128A _ 55
        mov     ebp, esp                                ; 128B _ 89. E5
        sub     esp, 20                                 ; 128D _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1290 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1293 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1296 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 129D _ E9, 0000015C

?_029:  mov     edx, dword [ebp-4H]                     ; 12A2 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 12A5 _ 8B. 45, 1C
        add     eax, edx                                ; 12A8 _ 01. D0
        movzx   eax, byte [eax]                         ; 12AA _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 12AD _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 12B0 _ 80. 7D, FB, 00
        jns     ?_030                                   ; 12B4 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 12B6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12B9 _ 8B. 45, FC
        add     eax, edx                                ; 12BC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12BE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12C2 _ 8B. 55, 10
        add     eax, edx                                ; 12C5 _ 01. D0
        mov     edx, eax                                ; 12C7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12C9 _ 8B. 45, 08
        add     edx, eax                                ; 12CC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12CE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12D2 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 12D4 _ 0F BE. 45, FB
        and     eax, 40H                                ; 12D8 _ 83. E0, 40
        test    eax, eax                                ; 12DB _ 85. C0
        jz      ?_031                                   ; 12DD _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12DF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12E2 _ 8B. 45, FC
        add     eax, edx                                ; 12E5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12E7 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12EB _ 8B. 55, 10
        add     eax, edx                                ; 12EE _ 01. D0
        lea     edx, [eax+1H]                           ; 12F0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 12F3 _ 8B. 45, 08
        add     edx, eax                                ; 12F6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12F8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12FC _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 12FE _ 0F BE. 45, FB
        and     eax, 20H                                ; 1302 _ 83. E0, 20
        test    eax, eax                                ; 1305 _ 85. C0
        jz      ?_032                                   ; 1307 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1309 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 130C _ 8B. 45, FC
        add     eax, edx                                ; 130F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1311 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1315 _ 8B. 55, 10
        add     eax, edx                                ; 1318 _ 01. D0
        lea     edx, [eax+2H]                           ; 131A _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 131D _ 8B. 45, 08
        add     edx, eax                                ; 1320 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1322 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1326 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1328 _ 0F BE. 45, FB
        and     eax, 10H                                ; 132C _ 83. E0, 10
        test    eax, eax                                ; 132F _ 85. C0
        jz      ?_033                                   ; 1331 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1333 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1336 _ 8B. 45, FC
        add     eax, edx                                ; 1339 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 133B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 133F _ 8B. 55, 10
        add     eax, edx                                ; 1342 _ 01. D0
        lea     edx, [eax+3H]                           ; 1344 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1347 _ 8B. 45, 08
        add     edx, eax                                ; 134A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 134C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1350 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 1352 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1356 _ 83. E0, 08
        test    eax, eax                                ; 1359 _ 85. C0
        jz      ?_034                                   ; 135B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 135D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1360 _ 8B. 45, FC
        add     eax, edx                                ; 1363 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1365 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1369 _ 8B. 55, 10
        add     eax, edx                                ; 136C _ 01. D0
        lea     edx, [eax+4H]                           ; 136E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1371 _ 8B. 45, 08
        add     edx, eax                                ; 1374 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1376 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 137A _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 137C _ 0F BE. 45, FB
        and     eax, 04H                                ; 1380 _ 83. E0, 04
        test    eax, eax                                ; 1383 _ 85. C0
        jz      ?_035                                   ; 1385 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1387 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 138A _ 8B. 45, FC
        add     eax, edx                                ; 138D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 138F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1393 _ 8B. 55, 10
        add     eax, edx                                ; 1396 _ 01. D0
        lea     edx, [eax+5H]                           ; 1398 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 139B _ 8B. 45, 08
        add     edx, eax                                ; 139E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13A4 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 13A6 _ 0F BE. 45, FB
        and     eax, 02H                                ; 13AA _ 83. E0, 02
        test    eax, eax                                ; 13AD _ 85. C0
        jz      ?_036                                   ; 13AF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13B1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13B4 _ 8B. 45, FC
        add     eax, edx                                ; 13B7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13B9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13BD _ 8B. 55, 10
        add     eax, edx                                ; 13C0 _ 01. D0
        lea     edx, [eax+6H]                           ; 13C2 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 13C5 _ 8B. 45, 08
        add     edx, eax                                ; 13C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13CE _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 13D0 _ 0F BE. 45, FB
        and     eax, 01H                                ; 13D4 _ 83. E0, 01
        test    eax, eax                                ; 13D7 _ 85. C0
        jz      ?_037                                   ; 13D9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 13DB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13DE _ 8B. 45, FC
        add     eax, edx                                ; 13E1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13E3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 13E7 _ 8B. 55, 10
        add     eax, edx                                ; 13EA _ 01. D0
        lea     edx, [eax+7H]                           ; 13EC _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 13EF _ 8B. 45, 08
        add     edx, eax                                ; 13F2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13F4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13F8 _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 13FA _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 13FE _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 1402 _ 0F 8E, FFFFFE9A
        nop                                             ; 1408 _ 90
        leave                                           ; 1409 _ C9
        ret                                             ; 140A _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 140B _ 55
        mov     ebp, esp                                ; 140C _ 89. E5
        sub     esp, 20                                 ; 140E _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1411 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1414 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 1417 _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 141E _ E9, 000000B1

?_039:  mov     dword [ebp-4H], 0                       ; 1423 _ C7. 45, FC, 00000000
        jmp     ?_044                                   ; 142A _ E9, 00000097

?_040:  mov     eax, dword [ebp-8H]                     ; 142F _ 8B. 45, F8
        shl     eax, 4                                  ; 1432 _ C1. E0, 04
        mov     edx, eax                                ; 1435 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1437 _ 8B. 45, FC
        add     eax, edx                                ; 143A _ 01. D0
        add     eax, _cursor.2396                       ; 143C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1441 _ 0F B6. 00
        cmp     al, 42                                  ; 1444 _ 3C, 2A
        jnz     ?_041                                   ; 1446 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1448 _ 8B. 45, F8
        shl     eax, 4                                  ; 144B _ C1. E0, 04
        mov     edx, eax                                ; 144E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1450 _ 8B. 45, FC
        add     eax, edx                                ; 1453 _ 01. D0
        mov     edx, eax                                ; 1455 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1457 _ 8B. 45, 08
        add     eax, edx                                ; 145A _ 01. D0
        mov     byte [eax], 0                           ; 145C _ C6. 00, 00
?_041:  mov     eax, dword [ebp-8H]                     ; 145F _ 8B. 45, F8
        shl     eax, 4                                  ; 1462 _ C1. E0, 04
        mov     edx, eax                                ; 1465 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1467 _ 8B. 45, FC
        add     eax, edx                                ; 146A _ 01. D0
        add     eax, _cursor.2396                       ; 146C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1471 _ 0F B6. 00
        cmp     al, 79                                  ; 1474 _ 3C, 4F
        jnz     ?_042                                   ; 1476 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1478 _ 8B. 45, F8
        shl     eax, 4                                  ; 147B _ C1. E0, 04
        mov     edx, eax                                ; 147E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1480 _ 8B. 45, FC
        add     eax, edx                                ; 1483 _ 01. D0
        mov     edx, eax                                ; 1485 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1487 _ 8B. 45, 08
        add     eax, edx                                ; 148A _ 01. D0
        mov     byte [eax], 7                           ; 148C _ C6. 00, 07
?_042:  mov     eax, dword [ebp-8H]                     ; 148F _ 8B. 45, F8
        shl     eax, 4                                  ; 1492 _ C1. E0, 04
        mov     edx, eax                                ; 1495 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1497 _ 8B. 45, FC
        add     eax, edx                                ; 149A _ 01. D0
        add     eax, _cursor.2396                       ; 149C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 14A1 _ 0F B6. 00
        cmp     al, 46                                  ; 14A4 _ 3C, 2E
        jnz     ?_043                                   ; 14A6 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 14A8 _ 8B. 45, F8
        shl     eax, 4                                  ; 14AB _ C1. E0, 04
        mov     edx, eax                                ; 14AE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14B0 _ 8B. 45, FC
        add     eax, edx                                ; 14B3 _ 01. D0
        mov     edx, eax                                ; 14B5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14B7 _ 8B. 45, 08
        add     edx, eax                                ; 14BA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14BC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14C0 _ 88. 02
?_043:  add     dword [ebp-4H], 1                       ; 14C2 _ 83. 45, FC, 01
?_044:  cmp     dword [ebp-4H], 15                      ; 14C6 _ 83. 7D, FC, 0F
        jle     ?_040                                   ; 14CA _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 14D0 _ 83. 45, F8, 01
?_045:  cmp     dword [ebp-8H], 15                      ; 14D4 _ 83. 7D, F8, 0F
        jle     ?_039                                   ; 14D8 _ 0F 8E, FFFFFF45
        nop                                             ; 14DE _ 90
        leave                                           ; 14DF _ C9
        ret                                             ; 14E0 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 14E1 _ 55
        mov     ebp, esp                                ; 14E2 _ 89. E5
        push    ebx                                     ; 14E4 _ 53
        sub     esp, 16                                 ; 14E5 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 14E8 _ C7. 45, F4, 00000000
        jmp     ?_049                                   ; 14EF _ EB, 4E

?_046:  mov     dword [ebp-8H], 0                       ; 14F1 _ C7. 45, F8, 00000000
        jmp     ?_048                                   ; 14F8 _ EB, 39

?_047:  mov     eax, dword [ebp-0CH]                    ; 14FA _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 14FD _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1501 _ 8B. 55, F8
        add     eax, edx                                ; 1504 _ 01. D0
        mov     edx, eax                                ; 1506 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1508 _ 8B. 45, 20
        add     eax, edx                                ; 150B _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 150D _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 1510 _ 8B. 55, F4
        add     edx, ecx                                ; 1513 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1515 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1519 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 151C _ 8B. 4D, F8
        add     ecx, ebx                                ; 151F _ 01. D9
        add     edx, ecx                                ; 1521 _ 01. CA
        mov     ecx, edx                                ; 1523 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1525 _ 8B. 55, 08
        add     edx, ecx                                ; 1528 _ 01. CA
        movzx   eax, byte [eax]                         ; 152A _ 0F B6. 00
        mov     byte [edx], al                          ; 152D _ 88. 02
        add     dword [ebp-8H], 1                       ; 152F _ 83. 45, F8, 01
?_048:  mov     eax, dword [ebp-8H]                     ; 1533 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1536 _ 3B. 45, 10
        jl      ?_047                                   ; 1539 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 153B _ 83. 45, F4, 01
?_049:  mov     eax, dword [ebp-0CH]                    ; 153F _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 1542 _ 3B. 45, 14
        jl      ?_046                                   ; 1545 _ 7C, AA
        nop                                             ; 1547 _ 90
        add     esp, 16                                 ; 1548 _ 83. C4, 10
        pop     ebx                                     ; 154B _ 5B
        pop     ebp                                     ; 154C _ 5D
        ret                                             ; 154D _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 154E _ 55
        mov     ebp, esp                                ; 154F _ 89. E5
        sub     esp, 40                                 ; 1551 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 1554 _ A1, 00000008(d)
        mov     dword [ebp-0CH], eax                    ; 1559 _ 89. 45, F4
        movzx   eax, word [?_239]                       ; 155C _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1563 _ 98
        mov     dword [ebp-10H], eax                    ; 1564 _ 89. 45, F0
        movzx   eax, word [?_240]                       ; 1567 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 156E _ 98
        mov     dword [ebp-14H], eax                    ; 156F _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 1572 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 157A _ C7. 04 24, 00000020
        call    _io_out8                                ; 1581 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1586 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 158A _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1591 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1596 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1599 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 159D _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 15A1 _ C7. 04 24, 00000010(d)
        call    _fifo8_put                              ; 15A8 _ E8, 00000000(rel)
        nop                                             ; 15AD _ 90
        leave                                           ; 15AE _ C9
        ret                                             ; 15AF _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 15B0 _ 55
        mov     ebp, esp                                ; 15B1 _ 89. E5
        sub     esp, 4                                  ; 15B3 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 15B6 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 15B9 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 15BC _ 80. 7D, FC, 09
        jle     ?_050                                   ; 15C0 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 15C2 _ 0F B6. 45, FC
        add     eax, 55                                 ; 15C6 _ 83. C0, 37
        jmp     ?_051                                   ; 15C9 _ EB, 07

?_050:  movzx   eax, byte [ebp-4H]                      ; 15CB _ 0F B6. 45, FC
        add     eax, 48                                 ; 15CF _ 83. C0, 30
?_051:  leave                                           ; 15D2 _ C9
        ret                                             ; 15D3 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 15D4 _ 55
        mov     ebp, esp                                ; 15D5 _ 89. E5
        sub     esp, 24                                 ; 15D7 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 15DA _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 15DD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 15E0 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 15E7 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 15EB _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 15EE _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 15F1 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 15F5 _ 89. 04 24
        call    _charToHexVal                           ; 15F8 _ E8, FFFFFFB3
        mov     byte [?_226], al                        ; 15FD _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 1602 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1606 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1609 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 160C _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1610 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1613 _ 89. 04 24
        call    _charToHexVal                           ; 1616 _ E8, FFFFFF95
        mov     byte [?_225], al                        ; 161B _ A2, 00000102(d)
        mov     eax, _keyval                            ; 1620 _ B8, 00000100(d)
        leave                                           ; 1625 _ C9
        ret                                             ; 1626 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1627 _ 55
        mov     ebp, esp                                ; 1628 _ 89. E5
        sub     esp, 16                                 ; 162A _ 83. EC, 10
        mov     byte [_str.2444], 48                    ; 162D _ C6. 05, 00000368(d), 30
        mov     byte [?_243], 88                        ; 1634 _ C6. 05, 00000369(d), 58
        mov     byte [?_244], 0                         ; 163B _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 1642 _ C7. 45, FC, 00000002
        jmp     ?_053                                   ; 1649 _ EB, 0F

?_052:  mov     eax, dword [ebp-4H]                     ; 164B _ 8B. 45, FC
        add     eax, _str.2444                          ; 164E _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 1653 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1656 _ 83. 45, FC, 01
?_053:  cmp     dword [ebp-4H], 9                       ; 165A _ 83. 7D, FC, 09
        jle     ?_052                                   ; 165E _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1660 _ C7. 45, F8, 00000009
        jmp     ?_057                                   ; 1667 _ EB, 42

?_054:  mov     eax, dword [ebp+8H]                     ; 1669 _ 8B. 45, 08
        and     eax, 0FH                                ; 166C _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 166F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        shr     eax, 4                                  ; 1675 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1678 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 167B _ 83. 7D, F4, 09
        jle     ?_055                                   ; 167F _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1681 _ 8B. 45, F4
        add     eax, 55                                 ; 1684 _ 83. C0, 37
        mov     edx, eax                                ; 1687 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1689 _ 8B. 45, F8
        add     eax, _str.2444                          ; 168C _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1691 _ 88. 10
        jmp     ?_056                                   ; 1693 _ EB, 12

?_055:  mov     eax, dword [ebp-0CH]                    ; 1695 _ 8B. 45, F4
        add     eax, 48                                 ; 1698 _ 83. C0, 30
        mov     edx, eax                                ; 169B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 169D _ 8B. 45, F8
        add     eax, _str.2444                          ; 16A0 _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 16A5 _ 88. 10
?_056:  sub     dword [ebp-8H], 1                       ; 16A7 _ 83. 6D, F8, 01
?_057:  cmp     dword [ebp-8H], 1                       ; 16AB _ 83. 7D, F8, 01
        jle     ?_058                                   ; 16AF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 16B1 _ 83. 7D, 08, 00
        jnz     ?_054                                   ; 16B5 _ 75, B2
?_058:  mov     eax, _str.2444                          ; 16B7 _ B8, 00000368(d)
        leave                                           ; 16BC _ C9
        ret                                             ; 16BD _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 16BE _ 55
        mov     ebp, esp                                ; 16BF _ 89. E5
        sub     esp, 24                                 ; 16C1 _ 83. EC, 18
?_059:  mov     dword [esp], 100                        ; 16C4 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 16CB _ E8, 00000000(rel)
        and     eax, 02H                                ; 16D0 _ 83. E0, 02
        test    eax, eax                                ; 16D3 _ 85. C0
        jz      ?_060                                   ; 16D5 _ 74, 02
        jmp     ?_059                                   ; 16D7 _ EB, EB
; _wait_KBC_sendready End of function

?_060:  ; Local function
        nop                                             ; 16D9 _ 90
        nop                                             ; 16DA _ 90
        leave                                           ; 16DB _ C9
        ret                                             ; 16DC _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 16DD _ 55
        mov     ebp, esp                                ; 16DE _ 89. E5
        sub     esp, 24                                 ; 16E0 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 16E3 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 16E8 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 16F0 _ C7. 04 24, 00000064
        call    _io_out8                                ; 16F7 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 16FC _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1701 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 1709 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1710 _ E8, 00000000(rel)
        nop                                             ; 1715 _ 90
        leave                                           ; 1716 _ C9
        ret                                             ; 1717 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1718 _ 55
        mov     ebp, esp                                ; 1719 _ 89. E5
        sub     esp, 24                                 ; 171B _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 171E _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1723 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 172B _ C7. 04 24, 00000064
        call    _io_out8                                ; 1732 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1737 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 173C _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1744 _ C7. 04 24, 00000060
        call    _io_out8                                ; 174B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1750 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1753 _ C6. 40, 03, 00
        nop                                             ; 1757 _ 90
        leave                                           ; 1758 _ C9
        ret                                             ; 1759 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 175A _ 55
        mov     ebp, esp                                ; 175B _ 89. E5
        sub     esp, 40                                 ; 175D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 1760 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1768 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 176F _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1774 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 177C _ C7. 04 24, 00000020
        call    _io_out8                                ; 1783 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1788 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 178F _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1794 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1797 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 179B _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 179F _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 17A6 _ E8, 00000000(rel)
        nop                                             ; 17AB _ 90
        leave                                           ; 17AC _ C9
        ret                                             ; 17AD _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 17AE _ 55
        mov     ebp, esp                                ; 17AF _ 89. E5
        sub     esp, 4                                  ; 17B1 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 17B4 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 17B7 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 17BA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17BD _ 0F B6. 40, 03
        test    al, al                                  ; 17C1 _ 84. C0
        jnz     ?_062                                   ; 17C3 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 17C5 _ 80. 7D, FC, FA
        jnz     ?_061                                   ; 17C9 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 17CB _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17CE _ C6. 40, 03, 01
?_061:  mov     eax, 0                                  ; 17D2 _ B8, 00000000
        jmp     ?_069                                   ; 17D7 _ E9, 0000010F

?_062:  mov     eax, dword [ebp+8H]                     ; 17DC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17DF _ 0F B6. 40, 03
        cmp     al, 1                                   ; 17E3 _ 3C, 01
        jnz     ?_064                                   ; 17E5 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 17E7 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 17EB _ 25, 000000C8
        cmp     eax, 8                                  ; 17F0 _ 83. F8, 08
        jnz     ?_063                                   ; 17F3 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 17F5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 17F8 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 17FC _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 17FE _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1801 _ C6. 40, 03, 02
?_063:  mov     eax, 0                                  ; 1805 _ B8, 00000000
        jmp     ?_069                                   ; 180A _ E9, 000000DC

?_064:  mov     eax, dword [ebp+8H]                     ; 180F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1812 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1816 _ 3C, 02
        jnz     ?_065                                   ; 1818 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 181A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 181D _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1821 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1824 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1827 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 182B _ B8, 00000000
        jmp     ?_069                                   ; 1830 _ E9, 000000B6

?_065:  mov     eax, dword [ebp+8H]                     ; 1835 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1838 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 183C _ 3C, 03
        jne     ?_068                                   ; 183E _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1844 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1847 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 184B _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 184E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1851 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1855 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1858 _ 0F B6. 00
        movzx   eax, al                                 ; 185B _ 0F B6. C0
        and     eax, 07H                                ; 185E _ 83. E0, 07
        mov     edx, eax                                ; 1861 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1863 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1866 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1869 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 186C _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1870 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1873 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1876 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1879 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 187C _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1880 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1883 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1886 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1889 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 188C _ 0F B6. 00
        movzx   eax, al                                 ; 188F _ 0F B6. C0
        and     eax, 10H                                ; 1892 _ 83. E0, 10
        test    eax, eax                                ; 1895 _ 85. C0
        jz      ?_066                                   ; 1897 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1899 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 189C _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 189F _ 0D, FFFFFF00
        mov     edx, eax                                ; 18A4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18A6 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 18A9 _ 89. 50, 04
?_066:  mov     eax, dword [ebp+8H]                     ; 18AC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18AF _ 0F B6. 00
        movzx   eax, al                                 ; 18B2 _ 0F B6. C0
        and     eax, 20H                                ; 18B5 _ 83. E0, 20
        test    eax, eax                                ; 18B8 _ 85. C0
        jz      ?_067                                   ; 18BA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18BC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18BF _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 18C2 _ 0D, FFFFFF00
        mov     edx, eax                                ; 18C7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18C9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18CC _ 89. 50, 08
?_067:  mov     eax, dword [ebp+8H]                     ; 18CF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18D2 _ 8B. 40, 08
        neg     eax                                     ; 18D5 _ F7. D8
        mov     edx, eax                                ; 18D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18D9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18DC _ 89. 50, 08
        mov     eax, 1                                  ; 18DF _ B8, 00000001
        jmp     ?_069                                   ; 18E4 _ EB, 05

?_068:  mov     eax, 4294967295                         ; 18E6 _ B8, FFFFFFFF
?_069:  leave                                           ; 18EB _ C9
        ret                                             ; 18EC _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 18ED _ 55
        mov     ebp, esp                                ; 18EE _ 89. E5
        sub     esp, 72                                 ; 18F0 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 18F3 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 18FA _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1901 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1908 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 190F _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 1915 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1918 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 191A _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 191E _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1921 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1925 _ 89. 04 24
        call    _init_screen8                           ; 1928 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 192D _ 8B. 45, 20
        movsx   eax, al                                 ; 1930 _ 0F BE. C0
        mov     dword [esp+14H], ?_234                  ; 1933 _ C7. 44 24, 14, 0000002F(d)
        mov     dword [esp+10H], eax                    ; 193B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 193F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1942 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1946 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1949 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 194D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1950 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1954 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1957 _ 89. 04 24
        call    _showString                             ; 195A _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 195F _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1962 _ 89. 04 24
        call    _intToHexStr                            ; 1965 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 196A _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 196D _ 8B. 45, 20
        movsx   eax, al                                 ; 1970 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1973 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1976 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 197A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 197E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1981 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1985 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1988 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 198C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 198F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1993 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1996 _ 89. 04 24
        call    _showString                             ; 1999 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 199E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 19A2 _ 8B. 45, 20
        movsx   eax, al                                 ; 19A5 _ 0F BE. C0
        mov     dword [esp+14H], ?_235                  ; 19A8 _ C7. 44 24, 14, 00000039(d)
        mov     dword [esp+10H], eax                    ; 19B0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19B4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19B7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19BB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19BE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19C2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19C5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19CC _ 89. 04 24
        call    _showString                             ; 19CF _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 19D4 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 19D7 _ 8B. 00
        mov     dword [esp], eax                        ; 19D9 _ 89. 04 24
        call    _intToHexStr                            ; 19DC _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 19E1 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 19E4 _ 8B. 45, 20
        movsx   eax, al                                 ; 19E7 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 19EA _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 19ED _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19F1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19F5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19F8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 19FC _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 19FF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A03 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A06 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A0D _ 89. 04 24
        call    _showString                             ; 1A10 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1A15 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A19 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A1C _ 0F BE. C0
        mov     dword [esp+14H], ?_236                  ; 1A1F _ C7. 44 24, 14, 00000045(d)
        mov     dword [esp+10H], eax                    ; 1A27 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A2B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A2E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A32 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1A35 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A39 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A3C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A40 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A43 _ 89. 04 24
        call    _showString                             ; 1A46 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1A4B _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1A4E _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1A51 _ 89. 04 24
        call    _intToHexStr                            ; 1A54 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1A59 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1A5C _ 8B. 45, 20
        movsx   eax, al                                 ; 1A5F _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1A62 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1A65 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1A69 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1A6D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1A70 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1A74 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1A77 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1A7B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1A7E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A85 _ 89. 04 24
        call    _showString                             ; 1A88 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1A8D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1A91 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A94 _ 0F BE. C0
        mov     dword [esp+14H], ?_237                  ; 1A97 _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1A9F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AA3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AA6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1AAA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1AAD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AB1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AB4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AB8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1ABB _ 89. 04 24
        call    _showString                             ; 1ABE _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1AC3 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1AC6 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1AC9 _ 89. 04 24
        call    _intToHexStr                            ; 1ACC _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1AD1 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1AD4 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AD7 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1ADA _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1ADD _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1AE1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1AE5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1AE8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1AEC _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1AEF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1AF3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1AF6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AFA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AFD _ 89. 04 24
        call    _showString                             ; 1B00 _ E8, FFFFF5C8
        nop                                             ; 1B05 _ 90
        leave                                           ; 1B06 _ C9
        ret                                             ; 1B07 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1B08 _ 55
        mov     ebp, esp                                ; 1B09 _ 89. E5
        sub     esp, 56                                 ; 1B0B _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1B0E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B11 _ 89. 04 24
        call    _sheet_alloc                            ; 1B14 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1B19 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1B1C _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1B21 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1B29 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1B2C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1B31 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1B34 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1B3C _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1B44 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1B4C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1B4F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1B53 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1B56 _ 89. 04 24
        call    _sheet_setbuf                           ; 1B59 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 1B5E _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 1B66 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1B69 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1B6D _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1B70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B77 _ 89. 04 24
        call    _make_window8                           ; 1B7A _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1B7F _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1B87 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1B8F _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1B97 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1B9F _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1BA7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BAA _ 89. 04 24
        call    _make_textbox8                          ; 1BAD _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 1BB2 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1BBA _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1BC2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1BC5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BC9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BCC _ 89. 04 24
        call    _sheet_slide                            ; 1BCF _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1BD4 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1BDC _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1BDF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BE3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BE6 _ 89. 04 24
        call    _sheet_updown                           ; 1BE9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BEE _ 8B. 45, F4
        leave                                           ; 1BF1 _ C9
        ret                                             ; 1BF2 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1BF3 _ 55
        mov     ebp, esp                                ; 1BF4 _ 89. E5
        push    ebx                                     ; 1BF6 _ 53
        sub     esp, 68                                 ; 1BF7 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1BFA _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1BFD _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1C00 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C03 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1C06 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1C09 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C0C _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 1C0F _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 1C12 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1C15 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C18 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C1B _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1C1D _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1C25 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1C29 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1C31 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1C39 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C41 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C44 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C48 _ 89. 04 24
        call    _boxfill8                               ; 1C4B _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 1C50 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1C53 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C56 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C59 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1C5B _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1C63 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1C67 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1C6F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1C77 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1C7F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C86 _ 89. 04 24
        call    _boxfill8                               ; 1C89 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 1C8E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C91 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C94 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C97 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1C99 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1C9D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1CA5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1CAD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1CB5 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1CBD _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CC0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CC4 _ 89. 04 24
        call    _boxfill8                               ; 1CC7 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 1CCC _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1CCF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CD2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CD5 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1CD7 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1CDB _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1CE3 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1CEB _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1CF3 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1CFB _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CFE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D02 _ 89. 04 24
        call    _boxfill8                               ; 1D05 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 1D0A _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1D0D _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1D10 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1D13 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1D16 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1D19 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D1C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D1F _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D21 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D25 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1D29 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1D31 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1D35 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1D3D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D40 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D44 _ 89. 04 24
        call    _boxfill8                               ; 1D47 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 1D4C _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1D4F _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1D52 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1D55 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D58 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D5B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D5E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D61 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D63 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D67 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1D6B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1D73 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1D77 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1D7F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D86 _ 89. 04 24
        call    _boxfill8                               ; 1D89 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 1D8E _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 1D91 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 1D94 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 1D97 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D9A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D9D _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1D9F _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1DA3 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1DA7 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1DAF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1DB7 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1DBF _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1DC2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DC6 _ 89. 04 24
        call    _boxfill8                               ; 1DC9 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 1DCE _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 1DD1 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1DD4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DD7 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1DD9 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1DE1 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1DE5 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1DED _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1DF5 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 1DFD _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E00 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E04 _ 89. 04 24
        call    _boxfill8                               ; 1E07 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 1E0C _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1E0F _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1E12 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1E15 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1E18 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E1B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E1E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E21 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1E23 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E27 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E2B _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1E2F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1E37 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1E3F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E46 _ 89. 04 24
        call    _boxfill8                               ; 1E49 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 1E4E _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1E51 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1E54 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1E57 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1E5A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1E5D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E60 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E63 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1E65 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E69 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E6D _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1E71 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1E79 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1E81 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1E84 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E88 _ 89. 04 24
        call    _boxfill8                               ; 1E8B _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 1E90 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1E94 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1E98 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1E9B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1E9F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1EA2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EA9 _ 89. 04 24
        call    _make_wtitle8                           ; 1EAC _ E8, 00000007
        nop                                             ; 1EB1 _ 90
        add     esp, 68                                 ; 1EB2 _ 83. C4, 44
        pop     ebx                                     ; 1EB5 _ 5B
        pop     ebp                                     ; 1EB6 _ 5D
        ret                                             ; 1EB7 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 1EB8 _ 55
        mov     ebp, esp                                ; 1EB9 _ 89. E5
        push    ebx                                     ; 1EBB _ 53
        sub     esp, 68                                 ; 1EBC _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1EBF _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1EC2 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1EC5 _ 80. 7D, E4, 00
        jz      ?_070                                   ; 1EC9 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1ECB _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 1ECF _ C6. 45, ED, 0C
        jmp     ?_071                                   ; 1ED3 _ EB, 08

?_070:  mov     byte [ebp-12H], 8                       ; 1ED5 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 1ED9 _ C6. 45, ED, 0F
?_071:  mov     eax, dword [ebp+0CH]                    ; 1EDD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EE0 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1EE3 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 1EE6 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 1EEA _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 1EED _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1EF0 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1EF3 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1EF6 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 1EF8 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1F00 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1F04 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1F0C _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 1F14 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1F18 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1F1C _ 89. 14 24
        call    _boxfill8                               ; 1F1F _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 1F24 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 1F28 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1F2B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1F2F _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1F33 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1F3B _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1F43 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F4D _ 89. 04 24
        call    _showString                             ; 1F50 _ E8, FFFFF178
        mov     dword [ebp-10H], 0                      ; 1F55 _ C7. 45, F0, 00000000
        jmp     ?_079                                   ; 1F5C _ E9, 00000084

?_072:  mov     dword [ebp-0CH], 0                      ; 1F61 _ C7. 45, F4, 00000000
        jmp     ?_078                                   ; 1F68 _ EB, 71

?_073:  mov     eax, dword [ebp-10H]                    ; 1F6A _ 8B. 45, F0
        shl     eax, 4                                  ; 1F6D _ C1. E0, 04
        mov     edx, eax                                ; 1F70 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F72 _ 8B. 45, F4
        add     eax, edx                                ; 1F75 _ 01. D0
        add     eax, _closebtn.2516                     ; 1F77 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 1F7C _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1F7F _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1F82 _ 80. 7D, EF, 40
        jnz     ?_074                                   ; 1F86 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1F88 _ C6. 45, EF, 00
        jmp     ?_077                                   ; 1F8C _ EB, 1C

?_074:  cmp     byte [ebp-11H], 36                      ; 1F8E _ 80. 7D, EF, 24
        jnz     ?_075                                   ; 1F92 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1F94 _ C6. 45, EF, 0F
        jmp     ?_077                                   ; 1F98 _ EB, 10

?_075:  cmp     byte [ebp-11H], 81                      ; 1F9A _ 80. 7D, EF, 51
        jnz     ?_076                                   ; 1F9E _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1FA0 _ C6. 45, EF, 08
        jmp     ?_077                                   ; 1FA4 _ EB, 04

?_076:  mov     byte [ebp-11H], 7                       ; 1FA6 _ C6. 45, EF, 07
?_077:  mov     eax, dword [ebp+0CH]                    ; 1FAA _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1FAD _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1FAF _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1FB2 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1FB5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FB8 _ 8B. 40, 04
        imul    eax, edx                                ; 1FBB _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1FBE _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1FC1 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1FC4 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1FC7 _ 8B. 55, F4
        add     edx, ebx                                ; 1FCA _ 01. DA
        add     eax, edx                                ; 1FCC _ 01. D0
        lea     edx, [ecx+eax]                          ; 1FCE _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1FD1 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1FD5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1FD7 _ 83. 45, F4, 01
?_078:  cmp     dword [ebp-0CH], 15                     ; 1FDB _ 83. 7D, F4, 0F
        jle     ?_073                                   ; 1FDF _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1FE1 _ 83. 45, F0, 01
?_079:  cmp     dword [ebp-10H], 13                     ; 1FE5 _ 83. 7D, F0, 0D
        jle     ?_072                                   ; 1FE9 _ 0F 8E, FFFFFF72
        nop                                             ; 1FEF _ 90
        add     esp, 68                                 ; 1FF0 _ 83. C4, 44
        pop     ebx                                     ; 1FF3 _ 5B
        pop     ebp                                     ; 1FF4 _ 5D
        ret                                             ; 1FF5 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1FF6 _ 55
        mov     ebp, esp                                ; 1FF7 _ 89. E5
        push    edi                                     ; 1FF9 _ 57
        push    esi                                     ; 1FFA _ 56
        push    ebx                                     ; 1FFB _ 53
        sub     esp, 44                                 ; 1FFC _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1FFF _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2002 _ 8B. 45, 14
        add     eax, edx                                ; 2005 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2007 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 200A _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 200D _ 8B. 45, 18
        add     eax, edx                                ; 2010 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2012 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2015 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2018 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 201B _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 201E _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2021 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2024 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2027 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 202A _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 202D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2030 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2033 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2036 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2038 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 203C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2040 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2044 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2048 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2050 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2054 _ 89. 04 24
        call    _boxfill8                               ; 2057 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 205C _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 205F _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2062 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2065 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2068 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 206B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 206E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2071 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2074 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2077 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 207A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 207D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 207F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2083 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2087 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 208B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 208F _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2097 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 209B _ 89. 04 24
        call    _boxfill8                               ; 209E _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 20A3 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 20A6 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 20A9 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 20AC _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 20AF _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 20B2 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 20B5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 20B8 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 20BB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20BE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20C1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20C4 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20C6 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 20CA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20CE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20D2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 20D6 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 20DE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20E2 _ 89. 04 24
        call    _boxfill8                               ; 20E5 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 20EA _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 20ED _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 20F0 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 20F3 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 20F6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 20F9 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 20FC _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 20FF _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 2102 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2105 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2108 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 210B _ 8B. 00
        mov     dword [esp+18H], edi                    ; 210D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2111 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2115 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2119 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 211D _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2125 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2129 _ 89. 04 24
        call    _boxfill8                               ; 212C _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 2131 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2134 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2137 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 213A _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 213D _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 2140 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2146 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2149 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 214C _ 8B. 00
        mov     dword [esp+18H], esi                    ; 214E _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2152 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2155 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2159 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 215D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2161 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2169 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 216D _ 89. 04 24
        call    _boxfill8                               ; 2170 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 2175 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2178 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 217B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 217E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2181 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2184 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2187 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 218A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 218D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2190 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2192 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2195 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2199 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 219D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21A1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 21A5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 21AD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21B1 _ 89. 04 24
        call    _boxfill8                               ; 21B4 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 21B9 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 21BC _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 21BF _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 21C2 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 21C5 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 21C8 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 21CB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21CE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21D4 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 21D6 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 21DA _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 21DD _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 21E1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21E5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 21E9 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 21F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21F5 _ 89. 04 24
        call    _boxfill8                               ; 21F8 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 21FD _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2200 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 2203 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2206 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2209 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 220C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 220F _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2212 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2215 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2218 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 221B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 221E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2220 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2224 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2228 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 222C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2230 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2238 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 223C _ 89. 04 24
        call    _boxfill8                               ; 223F _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 2244 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 2247 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 224A _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 224D _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 2250 _ 8B. 45, 1C
        movzx   eax, al                                 ; 2253 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2256 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2259 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 225C _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 225F _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2261 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2264 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2268 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 226B _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 226F _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2273 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2277 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 227B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 227F _ 89. 14 24
        call    _boxfill8                               ; 2282 _ E8, FFFFEFB3
        nop                                             ; 2287 _ 90
        add     esp, 44                                 ; 2288 _ 83. C4, 2C
        pop     ebx                                     ; 228B _ 5B
        pop     esi                                     ; 228C _ 5E
        pop     edi                                     ; 228D _ 5F
        pop     ebp                                     ; 228E _ 5D
        ret                                             ; 228F _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 2290 _ 55
        mov     ebp, esp                                ; 2291 _ 89. E5
        sub     esp, 88                                 ; 2293 _ 83. EC, 58
        call    _get_addr_code32                        ; 2296 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 229B _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 229E _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 22A2 _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 22A6 _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 22AA _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 22AE _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 22B2 _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 22B6 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 22BD _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 22C4 _ E9, 000001B9

?_080:  mov     eax, dword [_shtctl]                    ; 22C9 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 22CE _ 89. 04 24
        call    _sheet_alloc                            ; 22D1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 22D6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22D8 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 22DB _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 22DF _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 22E4 _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 22EC _ 89. 04 24
        call    _memman_alloc_4k                        ; 22EF _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 22F4 _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 22F7 _ 8B. 45, F4
        add     eax, 98                                 ; 22FA _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 22FD _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2300 _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 2304 _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 2307 _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 230A _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 230E _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 2316 _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 231E _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 2326 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2329 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 232D _ 89. 04 24
        call    _sheet_setbuf                           ; 2330 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2335 _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 2338 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 233C _ 8B. 15, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 2342 _ C7. 44 24, 0C, 00000001
        lea     eax, [ebp-2AH]                          ; 234A _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 234D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2351 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2355 _ 89. 14 24
        call    _make_window8                           ; 2358 _ E8, FFFFF896
        call    _task_alloc                             ; 235D _ E8, 00000000(rel)
        mov     edx, eax                                ; 2362 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2364 _ 8B. 45, F4
        mov     dword [_task_b.2542+eax*4], edx         ; 2367 _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 236E _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 2371 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+8CH], 0                      ; 2378 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2382 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 2385 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+90H], 1073741824             ; 238C _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-10H]                    ; 2396 _ 8B. 45, F0
        neg     eax                                     ; 2399 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 239B _ 8D. 90, 000009F8(d)
        mov     eax, dword [ebp-0CH]                    ; 23A1 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23A4 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+4CH], edx                    ; 23AB _ 89. 50, 4C
        mov     eax, dword [ebp-0CH]                    ; 23AE _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23B1 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 0                      ; 23B8 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-0CH]                    ; 23BF _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23C2 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+78H], 8                      ; 23C9 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-0CH]                    ; 23D0 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23D3 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+7CH], 32                     ; 23DA _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-0CH]                    ; 23E1 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23E4 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+80H], 24                     ; 23EB _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-0CH]                    ; 23F5 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 23F8 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+84H], 0                      ; 23FF _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2409 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 240C _ 8B. 04 85, 00000374(d)
        mov     dword [eax+88H], 16                     ; 2413 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-0CH]                    ; 241D _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 2420 _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+64H]                    ; 2427 _ 8B. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 242A _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 242D _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 2434 _ 83. EA, 08
        mov     dword [eax+64H], edx                    ; 2437 _ 89. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 243A _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 243D _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 2441 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 2444 _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+64H]                    ; 244B _ 8B. 40, 64
        add     eax, 4                                  ; 244E _ 83. C0, 04
        mov     dword [eax], edx                        ; 2451 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2453 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 2456 _ 8D. 50, 01
        mov     eax, edx                                ; 2459 _ 89. D0
        shl     eax, 2                                  ; 245B _ C1. E0, 02
        add     edx, eax                                ; 245E _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 2460 _ 8B. 45, F4
        mov     eax, dword [_task_b.2542+eax*4]         ; 2463 _ 8B. 04 85, 00000374(d)
        mov     dword [esp+8H], edx                     ; 246A _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 246E _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2476 _ 89. 04 24
        call    _task_run                               ; 2479 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 247E _ 83. 45, F4, 01
?_081:  cmp     dword [ebp-0CH], 1                      ; 2482 _ 83. 7D, F4, 01
        jle     ?_080                                   ; 2486 _ 0F 8E, FFFFFE3D
        mov     edx, dword [ebp-24H]                    ; 248C _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 248F _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 2494 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 249C _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 24A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24A8 _ 89. 04 24
        call    _sheet_slide                            ; 24AB _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 24B0 _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 24B3 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 24B8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 24C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24C4 _ 89. 04 24
        call    _sheet_updown                           ; 24C7 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 24CC _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 24CF _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 24D4 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 24DC _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 24E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24E8 _ 89. 04 24
        call    _sheet_slide                            ; 24EB _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 24F0 _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 24F3 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 24F8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2500 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2504 _ 89. 04 24
        call    _sheet_updown                           ; 2507 _ E8, 00000000(rel)
        nop                                             ; 250C _ 90
        leave                                           ; 250D _ C9
        ret                                             ; 250E _ C3
; _multi_windows End of function

_launch_console:; Function begin
        push    ebp                                     ; 250F _ 55
        mov     ebp, esp                                ; 2510 _ 89. E5
        sub     esp, 56                                 ; 2512 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 2515 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 251A _ 89. 04 24
        call    _sheet_alloc                            ; 251D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2522 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2525 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 252A _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 2532 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2535 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 253A _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 253D _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 2545 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 254D _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 2555 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2558 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 255C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 255F _ 89. 04 24
        call    _sheet_setbuf                           ; 2562 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2567 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 256C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_229                   ; 2574 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 257C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 257F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2583 _ 89. 04 24
        call    _make_window8                           ; 2586 _ E8, FFFFF668
        mov     dword [esp+14H], 0                      ; 258B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 2593 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 259B _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 25A3 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 25AB _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 25B3 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 25B6 _ 89. 04 24
        call    _make_textbox8                          ; 25B9 _ E8, FFFFFA38
        call    _task_alloc                             ; 25BE _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 25C3 _ 89. 45, EC
        call    _get_addr_code32                        ; 25C6 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 25CB _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 25CE _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 25D1 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 25DB _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 25DE _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 25E8 _ 8B. 45, E8
        neg     eax                                     ; 25EB _ F7. D8
        add     eax, _console_task                      ; 25ED _ 05, 000026C6(d)
        mov     edx, eax                                ; 25F2 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 25F4 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 25F7 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 25FA _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 25FD _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 2604 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 2607 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 260E _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 2611 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 2618 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 261B _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 2625 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 2628 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 2632 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 2635 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 263F _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 2642 _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 2645 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 2648 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 264B _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 264E _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 2651 _ 8B. 40, 64
        add     eax, 4                                  ; 2654 _ 83. C0, 04
        mov     edx, eax                                ; 2657 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2659 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 265C _ 89. 02
        mov     dword [esp+8H], 5                       ; 265E _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 2666 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 266E _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2671 _ 89. 04 24
        call    _task_run                               ; 2674 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2679 _ A1, 00000264(d)
        mov     dword [esp+0CH], 4                      ; 267E _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 2686 _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 268E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2691 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2695 _ 89. 04 24
        call    _sheet_slide                            ; 2698 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 269D _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 26A2 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 26AA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 26AD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26B1 _ 89. 04 24
        call    _sheet_updown                           ; 26B4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 26B9 _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 26BC _ A3, 00000274(d)
        mov     eax, dword [ebp-0CH]                    ; 26C1 _ 8B. 45, F4
        leave                                           ; 26C4 _ C9
        ret                                             ; 26C5 _ C3
; _launch_console End of function

_console_task:; Function begin
        push    ebp                                     ; 26C6 _ 55
        mov     ebp, esp                                ; 26C7 _ 89. E5
        push    ebx                                     ; 26C9 _ 53
        sub     esp, 580                                ; 26CA _ 81. EC, 00000244
        call    _task_now                               ; 26D0 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 26D5 _ 89. 45, EC
        mov     dword [ebp-0CH], 8                      ; 26D8 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 0                      ; 26DF _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 26E6 _ 8B. 45, EC
        lea     edx, [eax+10H]                          ; 26E9 _ 8D. 50, 10
        mov     eax, dword [ebp-14H]                    ; 26EC _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 26EF _ 89. 44 24, 0C
        lea     eax, [ebp-220H]                         ; 26F3 _ 8D. 85, FFFFFDE0
        mov     dword [esp+8H], eax                     ; 26F9 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 26FD _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 2705 _ 89. 14 24
        call    _fifo8_init                             ; 2708 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 270D _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 2712 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 2715 _ 8B. 45, EC
        add     eax, 16                                 ; 2718 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 271B _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 2723 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 2727 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 272A _ 89. 04 24
        call    _timer_init                             ; 272D _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 2732 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-18H]                    ; 273A _ 8B. 45, E8
        mov     dword [esp], eax                        ; 273D _ 89. 04 24
        call    _timer_settime                          ; 2740 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2745 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_238                  ; 274A _ C7. 44 24, 14, 0000005D(d)
        mov     dword [esp+10H], 7                      ; 2752 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 275A _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2762 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 276A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 276D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2771 _ 89. 04 24
        call    _showString                             ; 2774 _ E8, FFFFE954
?_082:  call    _io_cli                                 ; 2779 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 277E _ 8B. 45, EC
        add     eax, 16                                 ; 2781 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2784 _ 89. 04 24
        call    _fifo8_status                           ; 2787 _ E8, 00000000(rel)
        test    eax, eax                                ; 278C _ 85. C0
        jnz     ?_083                                   ; 278E _ 75, 07
        call    _io_sti                                 ; 2790 _ E8, 00000000(rel)
        jmp     ?_082                                   ; 2795 _ EB, E2
; _console_task End of function

?_083:  ; Local function
        mov     eax, dword [ebp-14H]                    ; 2797 _ 8B. 45, EC
        add     eax, 16                                 ; 279A _ 83. C0, 10
        mov     dword [esp], eax                        ; 279D _ 89. 04 24
        call    _fifo8_get                              ; 27A0 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 27A5 _ 89. 45, E4
        call    _io_sti                                 ; 27A8 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 1                      ; 27AD _ 83. 7D, E4, 01
        jg      ?_085                                   ; 27B1 _ 7F, 58
        cmp     dword [ebp-1CH], 0                      ; 27B3 _ 83. 7D, E4, 00
        jz      ?_084                                   ; 27B7 _ 74, 29
        mov     eax, dword [ebp-14H]                    ; 27B9 _ 8B. 45, EC
        add     eax, 16                                 ; 27BC _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 27BF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 27C7 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 27CB _ 8B. 45, E8
        mov     dword [esp], eax                        ; 27CE _ 89. 04 24
        call    _timer_init                             ; 27D1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 27D6 _ C7. 45, F0, 00000007
        jmp     ?_087                                   ; 27DD _ E9, 0000021F

?_084:  mov     eax, dword [ebp-14H]                    ; 27E2 _ 8B. 45, EC
        add     eax, 16                                 ; 27E5 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 27E8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 27F0 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 27F4 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 27F7 _ 89. 04 24
        call    _timer_init                             ; 27FA _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 27FF _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 2806 _ E9, 000001F6

?_085:  cmp     dword [ebp-1CH], 14                     ; 280B _ 83. 7D, E4, 0E
        jne     ?_086                                   ; 280F _ 0F 85, 000000FD
        cmp     dword [ebp-0CH], 8                      ; 2815 _ 83. 7D, F4, 08
        jle     ?_086                                   ; 2819 _ 0F 8E, 000000F3
        mov     eax, dword [ebp-0CH]                    ; 281F _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 2822 _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 2825 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2828 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 282B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 282E _ 8B. 00
        mov     dword [esp+18H], 43                     ; 2830 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 2838 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 283C _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 2844 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 2847 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 284B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2853 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2857 _ 89. 04 24
        call    _boxfill8                               ; 285A _ E8, FFFFE9DB
        mov     eax, dword [ebp-0CH]                    ; 285F _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 2862 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 2865 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 286A _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2872 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 2876 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 287E _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2881 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2885 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2888 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 288C _ 89. 04 24
        call    _sheet_refresh                          ; 288F _ E8, 00000000(rel)
        sub     dword [ebp-0CH], 8                      ; 2894 _ 83. 6D, F4, 08
        mov     eax, dword [ebp-0CH]                    ; 2898 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 289B _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 289E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 28A1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 28A4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28A7 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 28A9 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 28B1 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 28B5 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 28BD _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 28C0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 28C4 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 28CC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28D0 _ 89. 04 24
        call    _boxfill8                               ; 28D3 _ E8, FFFFE962
        mov     eax, dword [ebp-0CH]                    ; 28D8 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 28DB _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 28DE _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 28E3 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 28EB _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 28EF _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 28F7 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 28FA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 28FE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2901 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2905 _ 89. 04 24
        call    _sheet_refresh                          ; 2908 _ E8, 00000000(rel)
        jmp     ?_087                                   ; 290D _ E9, 000000EF

?_086:  mov     eax, dword [ebp-1CH]                    ; 2912 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 2915 _ 89. 04 24
        call    _transferScanCode                       ; 2918 _ E8, 00000160
        mov     byte [ebp-1DH], al                      ; 291D _ 88. 45, E3
        cmp     dword [ebp-0CH], 239                    ; 2920 _ 81. 7D, F4, 000000EF
        jg      ?_087                                   ; 2927 _ 0F 8F, 000000D4
        cmp     dword [ebp-1CH], 83                     ; 292D _ 83. 7D, E4, 53
        jg      ?_087                                   ; 2931 _ 0F 8F, 000000CA
        cmp     byte [ebp-1DH], 0                       ; 2937 _ 80. 7D, E3, 00
        je      ?_087                                   ; 293B _ 0F 84, 000000C0
        mov     eax, dword [ebp-0CH]                    ; 2941 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 2944 _ 8D. 48, 07
        mov     eax, dword [ebp+8H]                     ; 2947 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 294A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 294D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2950 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 2952 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 295A _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 295E _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 2966 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 2969 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 296D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2975 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2979 _ 89. 04 24
        call    _boxfill8                               ; 297C _ E8, FFFFE8B9
        mov     eax, dword [ebp-0CH]                    ; 2981 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 2984 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 2987 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 298C _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2994 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 2998 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 29A0 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 29A3 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 29A7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 29AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29AE _ 89. 04 24
        call    _sheet_refresh                          ; 29B1 _ E8, 00000000(rel)
        movzx   eax, byte [ebp-1DH]                     ; 29B6 _ 0F B6. 45, E3
        mov     byte [ebp-222H], al                     ; 29BA _ 88. 85, FFFFFDDE
        mov     byte [ebp-221H], 0                      ; 29C0 _ C6. 85, FFFFFDDF, 00
        mov     edx, dword [_shtctl]                    ; 29C7 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-222H]                         ; 29CD _ 8D. 85, FFFFFDDE
        mov     dword [esp+14H], eax                    ; 29D3 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 29D7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 29DF _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 29E7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 29EA _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 29EE _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 29F1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 29F5 _ 89. 14 24
        call    _showString                             ; 29F8 _ E8, FFFFE6D0
        add     dword [ebp-0CH], 8                      ; 29FD _ 83. 45, F4, 08
?_087:  mov     eax, dword [ebp-0CH]                    ; 2A01 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 2A04 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 2A07 _ 8B. 45, F0
        movzx   eax, al                                 ; 2A0A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2A0D _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2A10 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 2A13 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 2A16 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 2A18 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 2A20 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 2A24 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 2A2C _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 2A2F _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2A33 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2A37 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2A3B _ 89. 14 24
        call    _boxfill8                               ; 2A3E _ E8, FFFFE7F7
        mov     eax, dword [ebp-0CH]                    ; 2A43 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 2A46 _ 8D. 50, 08
        mov     eax, dword [_shtctl]                    ; 2A49 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 2A4E _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 2A56 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 2A5A _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 2A62 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2A65 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2A69 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2A6C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A70 _ 89. 04 24
        call    _sheet_refresh                          ; 2A73 _ E8, 00000000(rel)
        jmp     ?_082                                   ; 2A78 _ E9, FFFFFCFC

_transferScanCode:; Function begin
        push    ebp                                     ; 2A7D _ 55
        mov     ebp, esp                                ; 2A7E _ 89. E5
        sub     esp, 16                                 ; 2A80 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 2A83 _ 83. 7D, 08, 2A
        jnz     ?_088                                   ; 2A87 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2A89 _ A1, 00000000(d)
        or      eax, 01H                                ; 2A8E _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 2A91 _ A3, 00000000(d)
?_088:  cmp     dword [ebp+8H], 54                      ; 2A96 _ 83. 7D, 08, 36
        jnz     ?_089                                   ; 2A9A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2A9C _ A1, 00000000(d)
        or      eax, 02H                                ; 2AA1 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 2AA4 _ A3, 00000000(d)
?_089:  cmp     dword [ebp+8H], 170                     ; 2AA9 _ 81. 7D, 08, 000000AA
        jnz     ?_090                                   ; 2AB0 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2AB2 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 2AB7 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 2ABA _ A3, 00000000(d)
?_090:  cmp     dword [ebp+8H], 182                     ; 2ABF _ 81. 7D, 08, 000000B6
        jnz     ?_091                                   ; 2AC6 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2AC8 _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 2ACD _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 2AD0 _ A3, 00000000(d)
?_091:  cmp     dword [ebp+8H], 58                      ; 2AD5 _ 83. 7D, 08, 3A
        jnz     ?_093                                   ; 2AD9 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 2ADB _ A1, 00000004(d)
        test    eax, eax                                ; 2AE0 _ 85. C0
        jnz     ?_092                                   ; 2AE2 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 2AE4 _ C7. 05, 00000004(d), 00000001
        jmp     ?_093                                   ; 2AEE _ EB, 0A

?_092:  mov     dword [_caps_lock], 0                   ; 2AF0 _ C7. 05, 00000004(d), 00000000
?_093:  cmp     dword [ebp+8H], 42                      ; 2AFA _ 83. 7D, 08, 2A
        jz      ?_094                                   ; 2AFE _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 2B00 _ 83. 7D, 08, 36
        jz      ?_094                                   ; 2B04 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 2B06 _ 81. 7D, 08, 000000AA
        jz      ?_094                                   ; 2B0D _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 2B0F _ 81. 7D, 08, 000000B6
        jz      ?_094                                   ; 2B16 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 2B18 _ 83. 7D, 08, 53
        jg      ?_094                                   ; 2B1C _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 2B1E _ 83. 7D, 08, 3A
        jnz     ?_095                                   ; 2B22 _ 75, 0A
?_094:  mov     eax, 0                                  ; 2B24 _ B8, 00000000
        jmp     ?_100                                   ; 2B29 _ E9, 0000008A

?_095:  mov     byte [ebp-1H], 0                        ; 2B2E _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 2B32 _ A1, 00000000(d)
        test    eax, eax                                ; 2B37 _ 85. C0
        jnz     ?_096                                   ; 2B39 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 2B3B _ 83. 7D, 08, 53
        jg      ?_096                                   ; 2B3F _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 2B41 _ 8B. 45, 08
        add     eax, _keytable                          ; 2B44 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 2B49 _ 0F B6. 00
        test    al, al                                  ; 2B4C _ 84. C0
        jz      ?_096                                   ; 2B4E _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 2B50 _ 8B. 45, 08
        add     eax, _keytable                          ; 2B53 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 2B58 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 2B5B _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 2B5E _ 80. 7D, FF, 40
        jle     ?_098                                   ; 2B62 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 2B64 _ 80. 7D, FF, 5A
        jg      ?_098                                   ; 2B68 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 2B6A _ A1, 00000004(d)
        test    eax, eax                                ; 2B6F _ 85. C0
        jnz     ?_098                                   ; 2B71 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 2B73 _ 0F B6. 45, FF
        add     eax, 32                                 ; 2B77 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 2B7A _ 88. 45, FF
        jmp     ?_098                                   ; 2B7D _ EB, 34

?_096:  mov     eax, dword [_key_shift]                 ; 2B7F _ A1, 00000000(d)
        test    eax, eax                                ; 2B84 _ 85. C0
        jz      ?_097                                   ; 2B86 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 2B88 _ 83. 7D, 08, 7F
        jg      ?_097                                   ; 2B8C _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 2B8E _ 8B. 45, 08
        add     eax, _keytable1                         ; 2B91 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 2B96 _ 0F B6. 00
        test    al, al                                  ; 2B99 _ 84. C0
        jz      ?_097                                   ; 2B9B _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 2B9D _ 8B. 45, 08
        add     eax, _keytable1                         ; 2BA0 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 2BA5 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 2BA8 _ 88. 45, FF
        jmp     ?_099                                   ; 2BAB _ EB, 07

?_097:  mov     byte [ebp-1H], 0                        ; 2BAD _ C6. 45, FF, 00
        jmp     ?_099                                   ; 2BB1 _ EB, 01

?_098:  nop                                             ; 2BB3 _ 90
?_099:  movzx   eax, byte [ebp-1H]                      ; 2BB4 _ 0F B6. 45, FF
?_100:  leave                                           ; 2BB8 _ C9
        ret                                             ; 2BB9 _ C3
; _transferScanCode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 2BBA _ 55
        mov     ebp, esp                                ; 2BBB _ 89. E5
        sub     esp, 4                                  ; 2BBD _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2BC0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2BC3 _ 89. 04 24
        call    _transferScanCode                       ; 2BC6 _ E8, FFFFFEB2
        cmp     dword [ebp+8H], 58                      ; 2BCB _ 83. 7D, 08, 3A
        jz      ?_101                                   ; 2BCF _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 2BD1 _ 81. 7D, 08, 000000BA
        jz      ?_101                                   ; 2BD8 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 2BDA _ 83. 7D, 08, 2A
        jz      ?_101                                   ; 2BDE _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 2BE0 _ 83. 7D, 08, 36
        jz      ?_101                                   ; 2BE4 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 2BE6 _ 81. 7D, 08, 000000AA
        jz      ?_101                                   ; 2BED _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 2BEF _ 81. 7D, 08, 000000B6
        jnz     ?_102                                   ; 2BF6 _ 75, 07
?_101:  mov     eax, 1                                  ; 2BF8 _ B8, 00000001
        jmp     ?_103                                   ; 2BFD _ EB, 05

?_102:  mov     eax, 0                                  ; 2BFF _ B8, 00000000
?_103:  leave                                           ; 2C04 _ C9
        ret                                             ; 2C05 _ C3
; _isSpecialKey End of function

        nop                                             ; 2C06 _ 90
        nop                                             ; 2C07 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2C08 _ 55
        mov     ebp, esp                                ; 2C09 _ 89. E5
        sub     esp, 40                                 ; 2C0B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2C0E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2C16 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C19 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2C1C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2C21 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2C24 _ 83. 7D, F0, 00
        jnz     ?_104                                   ; 2C28 _ 75, 0A
        mov     eax, 0                                  ; 2C2A _ B8, 00000000
        jmp     ?_108                                   ; 2C2F _ E9, 0000009D

?_104:  mov     eax, dword [ebp+10H]                    ; 2C34 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2C37 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2C3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C42 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2C45 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2C4A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2C4C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2C4F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 2C52 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C55 _ 8B. 40, 04
        test    eax, eax                                ; 2C58 _ 85. C0
        jnz     ?_105                                   ; 2C5A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2C5C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2C5F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2C67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C6E _ 89. 04 24
        call    _memman_free_4k                         ; 2C71 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2C76 _ B8, 00000000
        jmp     ?_108                                   ; 2C7B _ EB, 54

?_105:  mov     eax, dword [ebp-10H]                    ; 2C7D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2C80 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C83 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2C85 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2C88 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2C8B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2C8E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2C91 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2C94 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2C97 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 2C9A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2CA1 _ C7. 45, F4, 00000000
        jmp     ?_107                                   ; 2CA8 _ EB, 1B

?_106:  mov     edx, dword [ebp-10H]                    ; 2CAA _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2CAD _ 8B. 45, F4
        add     eax, 33                                 ; 2CB0 _ 83. C0, 21
        shl     eax, 5                                  ; 2CB3 _ C1. E0, 05
        add     eax, edx                                ; 2CB6 _ 01. D0
        add     eax, 16                                 ; 2CB8 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2CBB _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2CC1 _ 83. 45, F4, 01
?_107:  cmp     dword [ebp-0CH], 255                    ; 2CC5 _ 81. 7D, F4, 000000FF
        jle     ?_106                                   ; 2CCC _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 2CCE _ 8B. 45, F0
?_108:  leave                                           ; 2CD1 _ C9
        ret                                             ; 2CD2 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2CD3 _ 55
        mov     ebp, esp                                ; 2CD4 _ 89. E5
        sub     esp, 16                                 ; 2CD6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2CD9 _ C7. 45, FC, 00000000
        jmp     ?_111                                   ; 2CE0 _ EB, 5B

?_109:  mov     edx, dword [ebp+8H]                     ; 2CE2 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2CE5 _ 8B. 45, FC
        add     eax, 33                                 ; 2CE8 _ 83. C0, 21
        shl     eax, 5                                  ; 2CEB _ C1. E0, 05
        add     eax, edx                                ; 2CEE _ 01. D0
        add     eax, 16                                 ; 2CF0 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2CF3 _ 8B. 00
        test    eax, eax                                ; 2CF5 _ 85. C0
        jnz     ?_110                                   ; 2CF7 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2CF9 _ 8B. 45, FC
        shl     eax, 5                                  ; 2CFC _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2CFF _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2D05 _ 8B. 45, 08
        add     eax, edx                                ; 2D08 _ 01. D0
        add     eax, 4                                  ; 2D0A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2D0D _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2D10 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D13 _ 8B. 55, FC
        add     edx, 4                                  ; 2D16 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2D19 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2D1C _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 2D20 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 2D23 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2D2A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2D2D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 2D34 _ 8B. 45, F8
        jmp     ?_112                                   ; 2D37 _ EB, 12

?_110:  add     dword [ebp-4H], 1                       ; 2D39 _ 83. 45, FC, 01
?_111:  cmp     dword [ebp-4H], 255                     ; 2D3D _ 81. 7D, FC, 000000FF
        jle     ?_109                                   ; 2D44 _ 7E, 9C
        mov     eax, 0                                  ; 2D46 _ B8, 00000000
?_112:  leave                                           ; 2D4B _ C9
        ret                                             ; 2D4C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 2D4D _ 55
        mov     ebp, esp                                ; 2D4E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2D50 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2D53 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2D56 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2D58 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2D5B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2D5E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2D61 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2D64 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2D67 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2D6A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2D6D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2D70 _ 89. 50, 14
        nop                                             ; 2D73 _ 90
        pop     ebp                                     ; 2D74 _ 5D
        ret                                             ; 2D75 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 2D76 _ 55
        mov     ebp, esp                                ; 2D77 _ 89. E5
        push    edi                                     ; 2D79 _ 57
        push    esi                                     ; 2D7A _ 56
        push    ebx                                     ; 2D7B _ 53
        sub     esp, 60                                 ; 2D7C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2D7F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D82 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2D85 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2D88 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D8B _ 8B. 40, 10
        add     eax, 1                                  ; 2D8E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2D91 _ 39. 45, 10
        jle     ?_113                                   ; 2D94 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2D96 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D99 _ 8B. 40, 10
        add     eax, 1                                  ; 2D9C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2D9F _ 89. 45, 10
?_113:  cmp     dword [ebp+10H], -1                     ; 2DA2 _ 83. 7D, 10, FF
        jge     ?_114                                   ; 2DA6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2DA8 _ C7. 45, 10, FFFFFFFF
?_114:  mov     eax, dword [ebp+0CH]                    ; 2DAF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2DB2 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2DB5 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2DB8 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2DBB _ 3B. 45, 10
        jle     ?_121                                   ; 2DBE _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2DC4 _ 83. 7D, 10, 00
        js      ?_117                                   ; 2DC8 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2DCE _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2DD1 _ 89. 45, E4
        jmp     ?_116                                   ; 2DD4 _ EB, 34

?_115:  mov     eax, dword [ebp-1CH]                    ; 2DD6 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2DD9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DDC _ 8B. 45, 08
        add     edx, 4                                  ; 2DDF _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2DE2 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DE6 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2DE9 _ 8B. 55, E4
        add     edx, 4                                  ; 2DEC _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2DEF _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DF3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2DF6 _ 8B. 55, E4
        add     edx, 4                                  ; 2DF9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DFC _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2E00 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2E03 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2E06 _ 83. 6D, E4, 01
?_116:  mov     eax, dword [ebp-1CH]                    ; 2E0A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2E0D _ 3B. 45, 10
        jg      ?_115                                   ; 2E10 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2E12 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E15 _ 8B. 55, 10
        add     edx, 4                                  ; 2E18 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2E1B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2E1E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 2E22 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2E25 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2E28 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E2B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E2E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E31 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E34 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E37 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E3A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E3D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E40 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E43 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E46 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E49 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E4C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E4F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 2E52 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2E56 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2E5A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2E5E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2E62 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E66 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E69 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2E6C _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2E71 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2E74 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2E77 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E7A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E7D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E80 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E83 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E86 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E89 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E8C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E8F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E92 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E95 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E98 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E9B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E9E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2EA1 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2EA4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2EA8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2EAC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2EB0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2EB4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2EB8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EBF _ 89. 04 24
        call    _sheet_refreshsub                       ; 2EC2 _ E8, 00000465
        jmp     ?_128                                   ; 2EC7 _ E9, 0000027D

?_117:  mov     eax, dword [ebp+8H]                     ; 2ECC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2ECF _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2ED2 _ 39. 45, E0
        jge     ?_120                                   ; 2ED5 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2ED7 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2EDA _ 89. 45, E4
        jmp     ?_119                                   ; 2EDD _ EB, 34

?_118:  mov     eax, dword [ebp-1CH]                    ; 2EDF _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2EE2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EE5 _ 8B. 45, 08
        add     edx, 4                                  ; 2EE8 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2EEB _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EEF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2EF2 _ 8B. 55, E4
        add     edx, 4                                  ; 2EF5 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2EF8 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EFC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2EFF _ 8B. 55, E4
        add     edx, 4                                  ; 2F02 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F05 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2F09 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2F0C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2F0F _ 83. 45, E4, 01
?_119:  mov     eax, dword [ebp+8H]                     ; 2F13 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F16 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2F19 _ 39. 45, E4
        jl      ?_118                                   ; 2F1C _ 7C, C1
?_120:  mov     eax, dword [ebp+8H]                     ; 2F1E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F21 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2F24 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F27 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F2A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F2D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F30 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F33 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F36 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F39 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F3C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F3F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F42 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F45 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F48 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F4B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F4E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F51 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F54 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 2F57 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2F5F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F63 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2F67 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2F6B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F6F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F72 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2F75 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2F7A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2F7D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2F80 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F83 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F86 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F89 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F8C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F8F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F92 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F95 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F98 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F9B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F9E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FA1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FA4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FA7 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2FAA _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2FAE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2FB6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FBA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2FBE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2FC2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FC6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FC9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2FCC _ E8, 0000035B
        jmp     ?_128                                   ; 2FD1 _ E9, 00000173

?_121:  mov     eax, dword [ebp-20H]                    ; 2FD6 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2FD9 _ 3B. 45, 10
        jge     ?_128                                   ; 2FDC _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2FE2 _ 83. 7D, E0, 00
        js      ?_124                                   ; 2FE6 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2FE8 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2FEB _ 89. 45, E4
        jmp     ?_123                                   ; 2FEE _ EB, 34

?_122:  mov     eax, dword [ebp-1CH]                    ; 2FF0 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2FF3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FF6 _ 8B. 45, 08
        add     edx, 4                                  ; 2FF9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2FFC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3000 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3003 _ 8B. 55, E4
        add     edx, 4                                  ; 3006 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3009 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 300D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3010 _ 8B. 55, E4
        add     edx, 4                                  ; 3013 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3016 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 301A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 301D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3020 _ 83. 45, E4, 01
?_123:  mov     eax, dword [ebp-1CH]                    ; 3024 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3027 _ 3B. 45, 10
        jl      ?_122                                   ; 302A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 302C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 302F _ 8B. 55, 10
        add     edx, 4                                  ; 3032 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3035 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3038 _ 89. 4C 90, 04
        jmp     ?_127                                   ; 303C _ EB, 6C

?_124:  mov     eax, dword [ebp+8H]                     ; 303E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3041 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3044 _ 89. 45, E4
        jmp     ?_126                                   ; 3047 _ EB, 3A

?_125:  mov     eax, dword [ebp-1CH]                    ; 3049 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 304C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 304F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3052 _ 8B. 55, E4
        add     edx, 4                                  ; 3055 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3058 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 305C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 305F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3062 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3066 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3069 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 306C _ 8B. 45, 08
        add     edx, 4                                  ; 306F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3072 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3076 _ 8B. 55, E4
        add     edx, 1                                  ; 3079 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 307C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 307F _ 83. 6D, E4, 01
?_126:  mov     eax, dword [ebp-1CH]                    ; 3083 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3086 _ 3B. 45, 10
        jge     ?_125                                   ; 3089 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 308B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 308E _ 8B. 55, 10
        add     edx, 4                                  ; 3091 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3094 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3097 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 309B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 309E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 30A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30A4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30A7 _ 89. 50, 10
?_127:  mov     eax, dword [ebp+0CH]                    ; 30AA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30AD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30B0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 30B3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 30B6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 30B9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 30BC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 30BF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 30C2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 30C5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 30C8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30CB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30CE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 30D1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 30D4 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 30D7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30DB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30DF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 30E3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 30E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30EE _ 89. 04 24
        call    _sheet_refreshmap                       ; 30F1 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 30F6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30F9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30FC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 30FF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3102 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3105 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3108 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 310B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 310E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3111 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3114 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3117 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 311A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 311D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3120 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3123 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3127 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 312A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 312E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3132 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3136 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 313A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 313E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3141 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3144 _ E8, 000001E3
?_128:  nop                                             ; 3149 _ 90
        add     esp, 60                                 ; 314A _ 83. C4, 3C
        pop     ebx                                     ; 314D _ 5B
        pop     esi                                     ; 314E _ 5E
        pop     edi                                     ; 314F _ 5F
        pop     ebp                                     ; 3150 _ 5D
        ret                                             ; 3151 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3152 _ 55
        mov     ebp, esp                                ; 3153 _ 89. E5
        push    edi                                     ; 3155 _ 57
        push    esi                                     ; 3156 _ 56
        push    ebx                                     ; 3157 _ 53
        sub     esp, 60                                 ; 3158 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 315B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 315E _ 8B. 40, 18
        test    eax, eax                                ; 3161 _ 85. C0
        js      ?_129                                   ; 3163 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3165 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3168 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 316B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 316E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3171 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3174 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3177 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 317A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 317D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3180 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3183 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3186 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3189 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 318C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 318F _ 8B. 45, 14
        add     edx, eax                                ; 3192 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3194 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3197 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 319A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 319D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 31A0 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 31A3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 31A7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 31AB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 31AF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 31B3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 31B7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31BB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31BE _ 89. 04 24
        call    _sheet_refreshsub                       ; 31C1 _ E8, 00000166
?_129:  mov     eax, 0                                  ; 31C6 _ B8, 00000000
        add     esp, 60                                 ; 31CB _ 83. C4, 3C
        pop     ebx                                     ; 31CE _ 5B
        pop     esi                                     ; 31CF _ 5E
        pop     edi                                     ; 31D0 _ 5F
        pop     ebp                                     ; 31D1 _ 5D
        ret                                             ; 31D2 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 31D3 _ 55
        mov     ebp, esp                                ; 31D4 _ 89. E5
        push    esi                                     ; 31D6 _ 56
        push    ebx                                     ; 31D7 _ 53
        sub     esp, 48                                 ; 31D8 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 31DB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 31DE _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 31E1 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 31E4 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 31E7 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 31EA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 31ED _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 31F0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 31F3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 31F6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 31F9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 31FC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 31FF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3202 _ 8B. 40, 18
        test    eax, eax                                ; 3205 _ 85. C0
        js      ?_130                                   ; 3207 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 320D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3210 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3213 _ 8B. 45, F0
        add     edx, eax                                ; 3216 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3218 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 321B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 321E _ 8B. 45, F4
        add     eax, ecx                                ; 3221 _ 01. C8
        mov     dword [esp+14H], 0                      ; 3223 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 322B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 322F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3233 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3236 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 323A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 323D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3241 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3244 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3247 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 324C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 324F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3252 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3255 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3258 _ 8B. 45, 14
        add     edx, eax                                ; 325B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 325D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3260 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 3263 _ 8B. 45, 10
        add     eax, ebx                                ; 3266 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 3268 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 326C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3270 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3274 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3277 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 327B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 327E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3282 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3285 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3288 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 328D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3290 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3293 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3296 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3299 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 329C _ 8B. 45, F0
        add     edx, eax                                ; 329F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 32A1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 32A4 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 32A7 _ 8B. 45, F4
        add     eax, ebx                                ; 32AA _ 01. D8
        mov     dword [esp+18H], ecx                    ; 32AC _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 32B0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 32B8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 32BC _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 32C0 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 32C3 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 32C7 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 32CA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32D1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 32D4 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 32D9 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 32DC _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 32DF _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 32E2 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 32E5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 32E8 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 32EB _ 8B. 45, 14
        add     edx, eax                                ; 32EE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 32F0 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 32F3 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 32F6 _ 8B. 45, 10
        add     eax, esi                                ; 32F9 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 32FB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 32FF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3303 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3307 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 330B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 330E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3312 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3315 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3319 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 331C _ 89. 04 24
        call    _sheet_refreshsub                       ; 331F _ E8, 00000008
?_130:  nop                                             ; 3324 _ 90
        add     esp, 48                                 ; 3325 _ 83. C4, 30
        pop     ebx                                     ; 3328 _ 5B
        pop     esi                                     ; 3329 _ 5E
        pop     ebp                                     ; 332A _ 5D
        ret                                             ; 332B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 332C _ 55
        mov     ebp, esp                                ; 332D _ 89. E5
        sub     esp, 48                                 ; 332F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3332 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3335 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3337 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 333A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 333D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3340 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3343 _ 83. 7D, 0C, 00
        jns     ?_131                                   ; 3347 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3349 _ C7. 45, 0C, 00000000
?_131:  cmp     dword [ebp+10H], 8                      ; 3350 _ 83. 7D, 10, 08
        jg      ?_132                                   ; 3354 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3356 _ C7. 45, 10, 00000000
?_132:  mov     eax, dword [ebp+8H]                     ; 335D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3360 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3363 _ 39. 45, 14
        jle     ?_133                                   ; 3366 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3368 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 336B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 336E _ 89. 45, 14
?_133:  mov     eax, dword [ebp+8H]                     ; 3371 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3374 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3377 _ 39. 45, 18
        jle     ?_134                                   ; 337A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 337C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 337F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3382 _ 89. 45, 18
?_134:  mov     eax, dword [ebp+1CH]                    ; 3385 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3388 _ 89. 45, FC
        jmp     ?_141                                   ; 338B _ E9, 0000010F

?_135:  mov     eax, dword [ebp+8H]                     ; 3390 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3393 _ 8B. 55, FC
        add     edx, 4                                  ; 3396 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3399 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 339D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 33A0 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 33A3 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 33A5 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 33A8 _ 8B. 45, 08
        add     eax, 1044                               ; 33AB _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 33B0 _ 8B. 55, E8
        sub     edx, eax                                ; 33B3 _ 29. C2
        mov     eax, edx                                ; 33B5 _ 89. D0
        sar     eax, 5                                  ; 33B7 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 33BA _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 33BD _ C7. 45, F4, 00000000
        jmp     ?_140                                   ; 33C4 _ E9, 000000C3

?_136:  mov     eax, dword [ebp-18H]                    ; 33C9 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 33CC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 33CF _ 8B. 45, F4
        add     eax, edx                                ; 33D2 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 33D4 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 33D7 _ C7. 45, F8, 00000000
        jmp     ?_139                                   ; 33DE _ E9, 00000096

?_137:  mov     eax, dword [ebp-18H]                    ; 33E3 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 33E6 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 33E9 _ 8B. 45, F8
        add     eax, edx                                ; 33EC _ 01. D0
        mov     dword [ebp-28H], eax                    ; 33EE _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 33F1 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 33F4 _ 3B. 45, D8
        jg      ?_138                                   ; 33F7 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 33F9 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 33FC _ 3B. 45, 14
        jge     ?_138                                   ; 33FF _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3401 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3404 _ 3B. 45, DC
        jg      ?_138                                   ; 3407 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3409 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 340C _ 3B. 45, 18
        jge     ?_138                                   ; 340F _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3411 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3414 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3417 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 341B _ 8B. 55, F8
        add     eax, edx                                ; 341E _ 01. D0
        mov     edx, eax                                ; 3420 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3422 _ 8B. 45, E4
        add     eax, edx                                ; 3425 _ 01. D0
        movzx   eax, byte [eax]                         ; 3427 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 342A _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 342D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3430 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3433 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3437 _ 8B. 55, D8
        add     eax, edx                                ; 343A _ 01. D0
        mov     edx, eax                                ; 343C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 343E _ 8B. 45, EC
        add     eax, edx                                ; 3441 _ 01. D0
        movzx   eax, byte [eax]                         ; 3443 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3446 _ 38. 45, E3
        jnz     ?_138                                   ; 3449 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 344B _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 344F _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3452 _ 8B. 52, 14
        cmp     eax, edx                                ; 3455 _ 39. D0
        jz      ?_138                                   ; 3457 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3459 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 345C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 345F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3463 _ 8B. 55, D8
        add     eax, edx                                ; 3466 _ 01. D0
        mov     edx, eax                                ; 3468 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 346A _ 8B. 45, F0
        add     edx, eax                                ; 346D _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 346F _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3473 _ 88. 02
?_138:  add     dword [ebp-8H], 1                       ; 3475 _ 83. 45, F8, 01
?_139:  mov     eax, dword [ebp-18H]                    ; 3479 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 347C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 347F _ 39. 45, F8
        jl      ?_137                                   ; 3482 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3488 _ 83. 45, F4, 01
?_140:  mov     eax, dword [ebp-18H]                    ; 348C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 348F _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3492 _ 39. 45, F4
        jl      ?_136                                   ; 3495 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 349B _ 83. 45, FC, 01
?_141:  mov     eax, dword [ebp-4H]                     ; 349F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 34A2 _ 3B. 45, 20
        jle     ?_135                                   ; 34A5 _ 0F 8E, FFFFFEE5
        nop                                             ; 34AB _ 90
        leave                                           ; 34AC _ C9
        ret                                             ; 34AD _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 34AE _ 55
        mov     ebp, esp                                ; 34AF _ 89. E5
        sub     esp, 64                                 ; 34B1 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 34B4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 34B7 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 34BA _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 34BD _ 83. 7D, 0C, 00
        jns     ?_142                                   ; 34C1 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 34C3 _ C7. 45, 0C, 00000000
?_142:  cmp     dword [ebp+10H], 0                      ; 34CA _ 83. 7D, 10, 00
        jns     ?_143                                   ; 34CE _ 79, 07
        mov     dword [ebp+10H], 0                      ; 34D0 _ C7. 45, 10, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 34D7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 34DA _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 34DD _ 39. 45, 14
        jle     ?_144                                   ; 34E0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 34E2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 34E5 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 34E8 _ 89. 45, 14
?_144:  mov     eax, dword [ebp+8H]                     ; 34EB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 34EE _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 34F1 _ 39. 45, 18
        jle     ?_145                                   ; 34F4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 34F6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 34F9 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 34FC _ 89. 45, 18
?_145:  mov     eax, dword [ebp+1CH]                    ; 34FF _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3502 _ 89. 45, FC
        jmp     ?_156                                   ; 3505 _ E9, 00000139

?_146:  mov     eax, dword [ebp+8H]                     ; 350A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 350D _ 8B. 55, FC
        add     edx, 4                                  ; 3510 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3513 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3517 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 351A _ 8B. 45, 08
        add     eax, 1044                               ; 351D _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3522 _ 8B. 55, DC
        sub     edx, eax                                ; 3525 _ 29. C2
        mov     eax, edx                                ; 3527 _ 89. D0
        sar     eax, 5                                  ; 3529 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 352C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 352F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3532 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3534 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3537 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 353A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 353D _ 8B. 55, 0C
        sub     edx, eax                                ; 3540 _ 29. C2
        mov     eax, edx                                ; 3542 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3544 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3547 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 354A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 354D _ 8B. 55, 10
        sub     edx, eax                                ; 3550 _ 29. C2
        mov     eax, edx                                ; 3552 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3554 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3557 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 355A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 355D _ 8B. 55, 14
        sub     edx, eax                                ; 3560 _ 29. C2
        mov     eax, edx                                ; 3562 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3564 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3567 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 356A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 356D _ 8B. 55, 18
        sub     edx, eax                                ; 3570 _ 29. C2
        mov     eax, edx                                ; 3572 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3574 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3577 _ 83. 7D, F0, 00
        jns     ?_147                                   ; 357B _ 79, 07
        mov     dword [ebp-10H], 0                      ; 357D _ C7. 45, F0, 00000000
?_147:  cmp     dword [ebp-14H], 0                      ; 3584 _ 83. 7D, EC, 00
        jns     ?_148                                   ; 3588 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 358A _ C7. 45, EC, 00000000
?_148:  mov     eax, dword [ebp-24H]                    ; 3591 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3594 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3597 _ 39. 45, E8
        jle     ?_149                                   ; 359A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 359C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 359F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 35A2 _ 89. 45, E8
?_149:  mov     eax, dword [ebp-24H]                    ; 35A5 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 35A8 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 35AB _ 39. 45, E4
        jle     ?_150                                   ; 35AE _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 35B0 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 35B3 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 35B6 _ 89. 45, E4
?_150:  mov     eax, dword [ebp-14H]                    ; 35B9 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 35BC _ 89. 45, F4
        jmp     ?_155                                   ; 35BF _ EB, 76

?_151:  mov     eax, dword [ebp-24H]                    ; 35C1 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 35C4 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 35C7 _ 8B. 45, F4
        add     eax, edx                                ; 35CA _ 01. D0
        mov     dword [ebp-30H], eax                    ; 35CC _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 35CF _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 35D2 _ 89. 45, F8
        jmp     ?_154                                   ; 35D5 _ EB, 54

?_152:  mov     eax, dword [ebp-24H]                    ; 35D7 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 35DA _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 35DD _ 8B. 45, F8
        add     eax, edx                                ; 35E0 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 35E2 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 35E5 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 35E8 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 35EB _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 35EF _ 8B. 55, F8
        add     eax, edx                                ; 35F2 _ 01. D0
        mov     edx, eax                                ; 35F4 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 35F6 _ 8B. 45, D4
        add     eax, edx                                ; 35F9 _ 01. D0
        movzx   eax, byte [eax]                         ; 35FB _ 0F B6. 00
        movzx   eax, al                                 ; 35FE _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3601 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3604 _ 8B. 52, 14
        cmp     eax, edx                                ; 3607 _ 39. D0
        jz      ?_153                                   ; 3609 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 360B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 360E _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3611 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3615 _ 8B. 55, CC
        add     eax, edx                                ; 3618 _ 01. D0
        mov     edx, eax                                ; 361A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 361C _ 8B. 45, E0
        add     edx, eax                                ; 361F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3621 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3625 _ 88. 02
?_153:  add     dword [ebp-8H], 1                       ; 3627 _ 83. 45, F8, 01
?_154:  mov     eax, dword [ebp-8H]                     ; 362B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 362E _ 3B. 45, E8
        jl      ?_152                                   ; 3631 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3633 _ 83. 45, F4, 01
?_155:  mov     eax, dword [ebp-0CH]                    ; 3637 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 363A _ 3B. 45, E4
        jl      ?_151                                   ; 363D _ 7C, 82
        add     dword [ebp-4H], 1                       ; 363F _ 83. 45, FC, 01
?_156:  mov     eax, dword [ebp+8H]                     ; 3643 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3646 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3649 _ 39. 45, FC
        jle     ?_146                                   ; 364C _ 0F 8E, FFFFFEB8
        nop                                             ; 3652 _ 90
        leave                                           ; 3653 _ C9
        ret                                             ; 3654 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3655 _ 90
        nop                                             ; 3656 _ 90
        nop                                             ; 3657 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 3658 _ 55
        mov     ebp, esp                                ; 3659 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 365B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 365E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3664 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3667 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 366E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3671 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3678 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 367B _ C7. 40, 0C, 00000000
        nop                                             ; 3682 _ 90
        pop     ebp                                     ; 3683 _ 5D
        ret                                             ; 3684 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3685 _ 55
        mov     ebp, esp                                ; 3686 _ 89. E5
        sub     esp, 16                                 ; 3688 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 368B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3692 _ C7. 45, FC, 00000000
        jmp     ?_158                                   ; 3699 _ EB, 14

?_157:  mov     eax, dword [ebp+8H]                     ; 369B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 369E _ 8B. 55, FC
        add     edx, 2                                  ; 36A1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 36A4 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 36A8 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 36AB _ 83. 45, FC, 01
?_158:  mov     eax, dword [ebp+8H]                     ; 36AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36B2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 36B4 _ 39. 45, FC
        jc      ?_157                                   ; 36B7 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 36B9 _ 8B. 45, F8
        leave                                           ; 36BC _ C9
        ret                                             ; 36BD _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 36BE _ 55
        mov     ebp, esp                                ; 36BF _ 89. E5
        sub     esp, 16                                 ; 36C1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 36C4 _ C7. 45, FC, 00000000
        jmp     ?_162                                   ; 36CB _ E9, 00000083

?_159:  mov     eax, dword [ebp+8H]                     ; 36D0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 36D3 _ 8B. 55, FC
        add     edx, 2                                  ; 36D6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 36D9 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 36DD _ 39. 45, 0C
        ja      ?_161                                   ; 36E0 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 36E2 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 36E5 _ 8B. 55, FC
        add     edx, 2                                  ; 36E8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 36EB _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 36EE _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 36F1 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 36F4 _ 8B. 55, FC
        add     edx, 2                                  ; 36F7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 36FA _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 36FD _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3700 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3703 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3706 _ 8B. 55, FC
        add     edx, 2                                  ; 3709 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 370C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 370F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3712 _ 8B. 55, FC
        add     edx, 2                                  ; 3715 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3718 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 371C _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 371F _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3722 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3725 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3728 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 372C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 372F _ 8B. 55, FC
        add     edx, 2                                  ; 3732 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3735 _ 8B. 44 D0, 04
        test    eax, eax                                ; 3739 _ 85. C0
        jnz     ?_160                                   ; 373B _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 373D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3740 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3742 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3745 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3748 _ 89. 10
?_160:  mov     eax, dword [ebp-8H]                     ; 374A _ 8B. 45, F8
        jmp     ?_163                                   ; 374D _ EB, 17

?_161:  add     dword [ebp-4H], 1                       ; 374F _ 83. 45, FC, 01
?_162:  mov     eax, dword [ebp+8H]                     ; 3753 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3756 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3758 _ 39. 45, FC
        jc      ?_159                                   ; 375B _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3761 _ B8, 00000000
?_163:  leave                                           ; 3766 _ C9
        ret                                             ; 3767 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 3768 _ 55
        mov     ebp, esp                                ; 3769 _ 89. E5
        push    ebx                                     ; 376B _ 53
        sub     esp, 16                                 ; 376C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 376F _ C7. 45, F8, 00000000
        jmp     ?_165                                   ; 3776 _ EB, 15

?_164:  mov     eax, dword [ebp+8H]                     ; 3778 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 377B _ 8B. 55, F8
        add     edx, 2                                  ; 377E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3781 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3784 _ 39. 45, 0C
        jc      ?_166                                   ; 3787 _ 72, 10
        add     dword [ebp-8H], 1                       ; 3789 _ 83. 45, F8, 01
?_165:  mov     eax, dword [ebp+8H]                     ; 378D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3790 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3792 _ 39. 45, F8
        jl      ?_164                                   ; 3795 _ 7C, E1
        jmp     ?_167                                   ; 3797 _ EB, 01

?_166:  nop                                             ; 3799 _ 90
?_167:  cmp     dword [ebp-8H], 0                       ; 379A _ 83. 7D, F8, 00
        jle     ?_169                                   ; 379E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 37A4 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 37A7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37AA _ 8B. 45, 08
        add     edx, 2                                  ; 37AD _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 37B0 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 37B3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 37B6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37B9 _ 8B. 45, 08
        add     edx, 2                                  ; 37BC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 37BF _ 8B. 44 D0, 04
        add     eax, ecx                                ; 37C3 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 37C5 _ 39. 45, 0C
        jne     ?_169                                   ; 37C8 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 37CE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 37D1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37D4 _ 8B. 45, 08
        add     edx, 2                                  ; 37D7 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 37DA _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 37DE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 37E1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 37E4 _ 8B. 45, 10
        add     ecx, eax                                ; 37E7 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 37E9 _ 8B. 45, 08
        add     edx, 2                                  ; 37EC _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 37EF _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 37F3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37F6 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 37F8 _ 39. 45, F8
        jge     ?_168                                   ; 37FB _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 37FD _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3800 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3803 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3806 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3809 _ 8B. 55, F8
        add     edx, 2                                  ; 380C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 380F _ 8B. 04 D0
        cmp     ecx, eax                                ; 3812 _ 39. C1
        jnz     ?_168                                   ; 3814 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 3816 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 3819 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 381C _ 8B. 45, 08
        add     edx, 2                                  ; 381F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3822 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3826 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3829 _ 8B. 55, F8
        add     edx, 2                                  ; 382C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 382F _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3833 _ 8B. 55, F8
        sub     edx, 1                                  ; 3836 _ 83. EA, 01
        add     ecx, eax                                ; 3839 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 383B _ 8B. 45, 08
        add     edx, 2                                  ; 383E _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3841 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3845 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3848 _ 8B. 00
        lea     edx, [eax-1H]                           ; 384A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 384D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3850 _ 89. 10
?_168:  mov     eax, 0                                  ; 3852 _ B8, 00000000
        jmp     ?_175                                   ; 3857 _ E9, 0000011C

?_169:  mov     eax, dword [ebp+8H]                     ; 385C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 385F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3861 _ 39. 45, F8
        jge     ?_170                                   ; 3864 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 3866 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3869 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 386C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 386F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3872 _ 8B. 55, F8
        add     edx, 2                                  ; 3875 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3878 _ 8B. 04 D0
        cmp     ecx, eax                                ; 387B _ 39. C1
        jnz     ?_170                                   ; 387D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 387F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3882 _ 8B. 55, F8
        add     edx, 2                                  ; 3885 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3888 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 388B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 388E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3891 _ 8B. 55, F8
        add     edx, 2                                  ; 3894 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3897 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 389B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 389E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 38A1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 38A4 _ 8B. 55, F8
        add     edx, 2                                  ; 38A7 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 38AA _ 89. 4C D0, 04
        mov     eax, 0                                  ; 38AE _ B8, 00000000
        jmp     ?_175                                   ; 38B3 _ E9, 000000C0

?_170:  mov     eax, dword [ebp+8H]                     ; 38B8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 38BB _ 8B. 00
        cmp     eax, 4095                               ; 38BD _ 3D, 00000FFF
        jg      ?_174                                   ; 38C2 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 38C8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 38CB _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 38CD _ 89. 45, F4
        jmp     ?_172                                   ; 38D0 _ EB, 28

?_171:  mov     eax, dword [ebp-0CH]                    ; 38D2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 38D5 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 38D8 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 38DB _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 38DE _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 38E1 _ 8B. 45, 08
        add     edx, 2                                  ; 38E4 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 38E7 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 38EA _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 38EC _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 38EF _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 38F2 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 38F6 _ 83. 6D, F4, 01
?_172:  mov     eax, dword [ebp-0CH]                    ; 38FA _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 38FD _ 3B. 45, F8
        jg      ?_171                                   ; 3900 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 3902 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3905 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3907 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 390A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 390D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 390F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3912 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3915 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3918 _ 8B. 00
        cmp     edx, eax                                ; 391A _ 39. C2
        jge     ?_173                                   ; 391C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 391E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3921 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3923 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3926 _ 89. 50, 04
?_173:  mov     eax, dword [ebp+8H]                     ; 3929 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 392C _ 8B. 55, F8
        add     edx, 2                                  ; 392F _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3932 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3935 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3938 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 393B _ 8B. 55, F8
        add     edx, 2                                  ; 393E _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3941 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3944 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3948 _ B8, 00000000
        jmp     ?_175                                   ; 394D _ EB, 29

?_174:  mov     eax, dword [ebp+8H]                     ; 394F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3952 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3955 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3958 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 395B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 395E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3961 _ 8B. 40, 08
        mov     edx, eax                                ; 3964 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 3966 _ 8B. 45, 10
        add     eax, edx                                ; 3969 _ 01. D0
        mov     edx, eax                                ; 396B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 396D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3970 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3973 _ B8, FFFFFFFF
?_175:  add     esp, 16                                 ; 3978 _ 83. C4, 10
        pop     ebx                                     ; 397B _ 5B
        pop     ebp                                     ; 397C _ 5D
        ret                                             ; 397D _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 397E _ 55
        mov     ebp, esp                                ; 397F _ 89. E5
        sub     esp, 24                                 ; 3981 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3984 _ 8B. 45, 0C
        add     eax, 4095                               ; 3987 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 398C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 3991 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3994 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3997 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 399B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 399E _ 89. 04 24
        call    _memman_alloc                           ; 39A1 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 39A6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 39A9 _ 8B. 45, FC
        leave                                           ; 39AC _ C9
        ret                                             ; 39AD _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 39AE _ 55
        mov     ebp, esp                                ; 39AF _ 89. E5
        sub     esp, 28                                 ; 39B1 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 39B4 _ 8B. 45, 10
        add     eax, 4095                               ; 39B7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 39BC _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 39C1 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 39C4 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 39C7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 39CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 39CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39D5 _ 89. 04 24
        call    _memman_free                            ; 39D8 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 39DD _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 39E0 _ 8B. 45, FC
        leave                                           ; 39E3 _ C9
        ret                                             ; 39E4 _ C3
; _memman_free_4k End of function

        nop                                             ; 39E5 _ 90
        nop                                             ; 39E6 _ 90
        nop                                             ; 39E7 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 39E8 _ 55
        mov     ebp, esp                                ; 39E9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 39EB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 39EE _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 39F1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 39F4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 39F7 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 39FA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 39FC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 39FF _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3A02 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3A05 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3A08 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3A0F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3A12 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3A19 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3A1C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3A23 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3A26 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3A29 _ 89. 50, 18
        nop                                             ; 3A2C _ 90
        pop     ebp                                     ; 3A2D _ 5D
        ret                                             ; 3A2E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 3A2F _ 55
        mov     ebp, esp                                ; 3A30 _ 89. E5
        sub     esp, 40                                 ; 3A32 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 3A35 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3A38 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3A3B _ 83. 7D, 08, 00
        jnz     ?_176                                   ; 3A3F _ 75, 0A
        mov     eax, 4294967295                         ; 3A41 _ B8, FFFFFFFF
        jmp     ?_180                                   ; 3A46 _ E9, 000000AB

?_176:  mov     eax, dword [ebp+8H]                     ; 3A4B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A4E _ 8B. 40, 10
        test    eax, eax                                ; 3A51 _ 85. C0
        jnz     ?_177                                   ; 3A53 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 3A55 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3A58 _ 8B. 40, 14
        or      eax, 01H                                ; 3A5B _ 83. C8, 01
        mov     edx, eax                                ; 3A5E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3A60 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3A63 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3A66 _ B8, FFFFFFFF
        jmp     ?_180                                   ; 3A6B _ E9, 00000086

?_177:  mov     eax, dword [ebp+8H]                     ; 3A70 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3A73 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3A75 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A78 _ 8B. 40, 04
        add     edx, eax                                ; 3A7B _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3A7D _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3A81 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3A83 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A86 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3A89 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3A8C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3A8F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3A92 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3A95 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3A98 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A9B _ 8B. 40, 0C
        cmp     edx, eax                                ; 3A9E _ 39. C2
        jnz     ?_178                                   ; 3AA0 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3AA2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3AA5 _ C7. 40, 04, 00000000
?_178:  mov     eax, dword [ebp+8H]                     ; 3AAC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3AAF _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3AB2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3AB5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3AB8 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3ABB _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3ABE _ 8B. 40, 18
        test    eax, eax                                ; 3AC1 _ 85. C0
        jz      ?_179                                   ; 3AC3 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 3AC5 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3AC8 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3ACB _ 8B. 40, 04
        cmp     eax, 2                                  ; 3ACE _ 83. F8, 02
        jz      ?_179                                   ; 3AD1 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3AD3 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3AD6 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 3AD9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 3AE1 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 3AE9 _ 89. 04 24
        call    _task_run                               ; 3AEC _ E8, 00000000(rel)
?_179:  mov     eax, 0                                  ; 3AF1 _ B8, 00000000
?_180:  leave                                           ; 3AF6 _ C9
        ret                                             ; 3AF7 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 3AF8 _ 55
        mov     ebp, esp                                ; 3AF9 _ 89. E5
        sub     esp, 16                                 ; 3AFB _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3AFE _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3B01 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3B04 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B07 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3B0A _ 39. C2
        jnz     ?_181                                   ; 3B0C _ 75, 07
        mov     eax, 4294967295                         ; 3B0E _ B8, FFFFFFFF
        jmp     ?_183                                   ; 3B13 _ EB, 51

?_181:  mov     eax, dword [ebp+8H]                     ; 3B15 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3B18 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3B1A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B1D _ 8B. 40, 08
        add     eax, edx                                ; 3B20 _ 01. D0
        movzx   eax, byte [eax]                         ; 3B22 _ 0F B6. 00
        movzx   eax, al                                 ; 3B25 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3B28 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3B2B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B2E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3B31 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3B34 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3B37 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3B3A _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3B3D _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3B40 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B43 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3B46 _ 39. C2
        jnz     ?_182                                   ; 3B48 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3B4A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3B4D _ C7. 40, 08, 00000000
?_182:  mov     eax, dword [ebp+8H]                     ; 3B54 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B57 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3B5A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3B5D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3B60 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3B63 _ 8B. 45, FC
?_183:  leave                                           ; 3B66 _ C9
        ret                                             ; 3B67 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 3B68 _ 55
        mov     ebp, esp                                ; 3B69 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B6B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3B6E _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3B71 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B74 _ 8B. 40, 10
        sub     edx, eax                                ; 3B77 _ 29. C2
        mov     eax, edx                                ; 3B79 _ 89. D0
        pop     ebp                                     ; 3B7B _ 5D
        ret                                             ; 3B7C _ C3
; _fifo8_status End of function

        nop                                             ; 3B7D _ 90
        nop                                             ; 3B7E _ 90
        nop                                             ; 3B7F _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3B80 _ 55
        mov     ebp, esp                                ; 3B81 _ 89. E5
        sub     esp, 40                                 ; 3B83 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3B86 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3B8E _ C7. 04 24, 00000043
        call    _io_out8                                ; 3B95 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 3B9A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3BA2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3BA9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 3BAE _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3BB6 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3BBD _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3BC2 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3BCC _ C7. 45, F4, 00000000
        jmp     ?_185                                   ; 3BD3 _ EB, 26

?_184:  mov     eax, dword [ebp-0CH]                    ; 3BD5 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BD8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3BDB _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3BE0 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3BE6 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BE9 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 3BEC _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3BF1 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3BF7 _ 83. 45, F4, 01
?_185:  cmp     dword [ebp-0CH], 499                    ; 3BFB _ 81. 7D, F4, 000001F3
        jle     ?_184                                   ; 3C02 _ 7E, D1
        nop                                             ; 3C04 _ 90
        leave                                           ; 3C05 _ C9
        ret                                             ; 3C06 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3C07 _ 55
        mov     ebp, esp                                ; 3C08 _ 89. E5
        sub     esp, 16                                 ; 3C0A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3C0D _ C7. 45, FC, 00000000
        jmp     ?_188                                   ; 3C14 _ EB, 36

?_186:  mov     eax, dword [ebp-4H]                     ; 3C16 _ 8B. 45, FC
        shl     eax, 4                                  ; 3C19 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3C1C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3C21 _ 8B. 00
        test    eax, eax                                ; 3C23 _ 85. C0
        jnz     ?_187                                   ; 3C25 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3C27 _ 8B. 45, FC
        shl     eax, 4                                  ; 3C2A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3C2D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3C32 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3C38 _ 8B. 45, FC
        shl     eax, 4                                  ; 3C3B _ C1. E0, 04
        add     eax, _timerctl                               ; 3C3E _ 05, 00000000(d)
        add     eax, 4                                  ; 3C43 _ 83. C0, 04
        jmp     ?_189                                   ; 3C46 _ EB, 12

?_187:  add     dword [ebp-4H], 1                       ; 3C48 _ 83. 45, FC, 01
?_188:  cmp     dword [ebp-4H], 499                     ; 3C4C _ 81. 7D, FC, 000001F3
        jle     ?_186                                   ; 3C53 _ 7E, C1
        mov     eax, 0                                  ; 3C55 _ B8, 00000000
?_189:  leave                                           ; 3C5A _ C9
        ret                                             ; 3C5B _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 3C5C _ 55
        mov     ebp, esp                                ; 3C5D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3C5F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3C62 _ C7. 40, 04, 00000000
        nop                                             ; 3C69 _ 90
        pop     ebp                                     ; 3C6A _ 5D
        ret                                             ; 3C6B _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 3C6C _ 55
        mov     ebp, esp                                ; 3C6D _ 89. E5
        sub     esp, 4                                  ; 3C6F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3C72 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3C75 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3C78 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C7B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3C7E _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3C81 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3C84 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3C88 _ 88. 42, 0C
        nop                                             ; 3C8B _ 90
        leave                                           ; 3C8C _ C9
        ret                                             ; 3C8D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3C8E _ 55
        mov     ebp, esp                                ; 3C8F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3C91 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C94 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3C97 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C99 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3C9C _ C7. 40, 04, 00000002
        nop                                             ; 3CA3 _ 90
        pop     ebp                                     ; 3CA4 _ 5D
        ret                                             ; 3CA5 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3CA6 _ 55
        mov     ebp, esp                                ; 3CA7 _ 89. E5
        sub     esp, 40                                 ; 3CA9 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3CAC _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3CB4 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3CBB _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3CC0 _ A1, 00000000(d)
        add     eax, 1                                  ; 3CC5 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3CC8 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 3CCD _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3CD1 _ C7. 45, F4, 00000000
        jmp     ?_193                                   ; 3CD8 _ E9, 000000AA

?_190:  mov     eax, dword [ebp-0CH]                    ; 3CDD _ 8B. 45, F4
        shl     eax, 4                                  ; 3CE0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3CE3 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3CE8 _ 8B. 00
        cmp     eax, 2                                  ; 3CEA _ 83. F8, 02
        jne     ?_191                                   ; 3CED _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3CF3 _ 8B. 45, F4
        shl     eax, 4                                  ; 3CF6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3CF9 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3CFE _ 8B. 00
        lea     edx, [eax-1H]                           ; 3D00 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3D03 _ 8B. 45, F4
        shl     eax, 4                                  ; 3D06 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3D09 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 3D0E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3D10 _ 8B. 45, F4
        shl     eax, 4                                  ; 3D13 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3D16 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3D1B _ 8B. 00
        test    eax, eax                                ; 3D1D _ 85. C0
        jnz     ?_191                                   ; 3D1F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 3D21 _ 8B. 45, F4
        shl     eax, 4                                  ; 3D24 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3D27 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3D2C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3D32 _ 8B. 45, F4
        shl     eax, 4                                  ; 3D35 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3D38 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3D3D _ 0F B6. 00
        movzx   eax, al                                 ; 3D40 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 3D43 _ 8B. 55, F4
        shl     edx, 4                                  ; 3D46 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3D49 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 3D4F _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3D51 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3D55 _ 89. 14 24
        call    _fifo8_put                              ; 3D58 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3D5D _ 8B. 45, F4
        shl     eax, 4                                  ; 3D60 _ C1. E0, 04
        add     eax, _timerctl                               ; 3D63 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 3D68 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 3D6B _ A1, 00000000(d)
        cmp     edx, eax                                ; 3D70 _ 39. C2
        jnz     ?_191                                   ; 3D72 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3D74 _ C6. 45, F3, 01
?_191:  cmp     byte [ebp-0DH], 0                       ; 3D78 _ 80. 7D, F3, 00
        jz      ?_192                                   ; 3D7C _ 74, 05
        call    _task_switch                            ; 3D7E _ E8, 00000000(rel)
?_192:  add     dword [ebp-0CH], 1                      ; 3D83 _ 83. 45, F4, 01
?_193:  cmp     dword [ebp-0CH], 499                    ; 3D87 _ 81. 7D, F4, 000001F3
        jle     ?_190                                   ; 3D8E _ 0F 8E, FFFFFF49
        nop                                             ; 3D94 _ 90
        leave                                           ; 3D95 _ C9
        ret                                             ; 3D96 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 3D97 _ B8, 00000000(d)
        ret                                             ; 3D9C _ C3
; _getTimerController End of function

        nop                                             ; 3D9D _ 90
        nop                                             ; 3D9E _ 90
        nop                                             ; 3D9F _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3DA0 _ 55
        mov     ebp, esp                                ; 3DA1 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3DA3 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_194                                   ; 3DAA _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3DAC _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3DB3 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3DB6 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3DB9 _ 89. 45, 0C
?_194:  mov     eax, dword [ebp+0CH]                    ; 3DBC _ 8B. 45, 0C
        mov     edx, eax                                ; 3DBF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DC1 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3DC4 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3DC7 _ 8B. 45, 10
        mov     edx, eax                                ; 3DCA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DCC _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3DCF _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3DD3 _ 8B. 45, 10
        sar     eax, 16                                 ; 3DD6 _ C1. F8, 10
        mov     edx, eax                                ; 3DD9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DDB _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3DDE _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3DE1 _ 8B. 45, 14
        mov     edx, eax                                ; 3DE4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DE6 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3DE9 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3DEC _ 8B. 45, 0C
        shr     eax, 16                                 ; 3DEF _ C1. E8, 10
        and     eax, 0FH                                ; 3DF2 _ 83. E0, 0F
        mov     edx, eax                                ; 3DF5 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3DF7 _ 8B. 45, 14
        sar     eax, 8                                  ; 3DFA _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3DFD _ 83. E0, F0
        or      eax, edx                                ; 3E00 _ 09. D0
        mov     edx, eax                                ; 3E02 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E04 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3E07 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3E0A _ 8B. 45, 10
        shr     eax, 24                                 ; 3E0D _ C1. E8, 18
        mov     edx, eax                                ; 3E10 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E12 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3E15 _ 88. 50, 07
        nop                                             ; 3E18 _ 90
        pop     ebp                                     ; 3E19 _ 5D
        ret                                             ; 3E1A _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 3E1B _ 55
        mov     ebp, esp                                ; 3E1C _ 89. E5
        sub     esp, 16                                 ; 3E1E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3E21 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3E27 _ 8B. 55, 08
        mov     eax, edx                                ; 3E2A _ 89. D0
        shl     eax, 2                                  ; 3E2C _ C1. E0, 02
        add     eax, edx                                ; 3E2F _ 01. D0
        shl     eax, 2                                  ; 3E31 _ C1. E0, 02
        add     eax, ecx                                ; 3E34 _ 01. C8
        add     eax, 8                                  ; 3E36 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3E39 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 3E3F _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3E45 _ 8B. 55, 08
        mov     eax, edx                                ; 3E48 _ 89. D0
        shl     eax, 2                                  ; 3E4A _ C1. E0, 02
        add     eax, edx                                ; 3E4D _ 01. D0
        shl     eax, 2                                  ; 3E4F _ C1. E0, 02
        add     eax, ecx                                ; 3E52 _ 01. C8
        add     eax, 12                                 ; 3E54 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3E57 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3E5D _ C7. 45, FC, 00000000
        jmp     ?_196                                   ; 3E64 _ EB, 21

?_195:  mov     ecx, dword [_taskctl]                   ; 3E66 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3E6C _ 8B. 55, FC
        mov     eax, edx                                ; 3E6F _ 89. D0
        add     eax, eax                                ; 3E71 _ 01. C0
        add     eax, edx                                ; 3E73 _ 01. D0
        shl     eax, 3                                  ; 3E75 _ C1. E0, 03
        add     eax, ecx                                ; 3E78 _ 01. C8
        add     eax, 16                                 ; 3E7A _ 83. C0, 10
        mov     dword [eax], 0                          ; 3E7D _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3E83 _ 83. 45, FC, 01
?_196:  cmp     dword [ebp-4H], 2                       ; 3E87 _ 83. 7D, FC, 02
        jle     ?_195                                   ; 3E8B _ 7E, D9
        nop                                             ; 3E8D _ 90
        leave                                           ; 3E8E _ C9
        ret                                             ; 3E8F _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 3E90 _ 55
        mov     ebp, esp                                ; 3E91 _ 89. E5
        sub     esp, 40                                 ; 3E93 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3E96 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3E9B _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 3E9E _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 3EA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3EA9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3EAC _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3EB1 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3EB6 _ C7. 45, F4, 00000000
        jmp     ?_198                                   ; 3EBD _ E9, 00000088

?_197:  mov     edx, dword [_taskctl]                   ; 3EC2 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3EC8 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3ECB _ 69. C0, 00000094
        add     eax, edx                                ; 3ED1 _ 01. D0
        add     eax, 72                                 ; 3ED3 _ 83. C0, 48
        mov     dword [eax], 0                          ; 3ED6 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3EDC _ 8B. 45, F4
        add     eax, 7                                  ; 3EDF _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 3EE2 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3EE8 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3EEF _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3EF2 _ 69. C0, 00000094
        add     eax, ecx                                ; 3EF8 _ 01. C8
        add     eax, 68                                 ; 3EFA _ 83. C0, 44
        mov     dword [eax], edx                        ; 3EFD _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3EFF _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3F05 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3F08 _ 69. C0, 00000094
        add     eax, 96                                 ; 3F0E _ 83. C0, 60
        add     eax, edx                                ; 3F11 _ 01. D0
        add     eax, 16                                 ; 3F13 _ 83. C0, 10
        mov     ecx, eax                                ; 3F16 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 3F18 _ 8B. 45, F4
        add     eax, 7                                  ; 3F1B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3F1E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3F25 _ 8B. 45, F0
        add     eax, edx                                ; 3F28 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 3F2A _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3F32 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3F36 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3F3E _ 89. 04 24
        call    _set_segmdesc                           ; 3F41 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 3F46 _ 83. 45, F4, 01
?_198:  cmp     dword [ebp-0CH], 4                      ; 3F4A _ 83. 7D, F4, 04
        jle     ?_197                                   ; 3F4E _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 3F54 _ C7. 45, F4, 00000000
        jmp     ?_200                                   ; 3F5B _ EB, 0F

?_199:  mov     eax, dword [ebp-0CH]                    ; 3F5D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3F60 _ 89. 04 24
        call    _init_task_level                        ; 3F63 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 3F68 _ 83. 45, F4, 01
?_200:  cmp     dword [ebp-0CH], 2                      ; 3F6C _ 83. 7D, F4, 02
        jle     ?_199                                   ; 3F70 _ 7E, EB
        call    _task_alloc                             ; 3F72 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 3F77 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3F7A _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3F7D _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3F84 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 3F87 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 3F8E _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 3F91 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 3F98 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 3F9B _ 89. 04 24
        call    _task_add                               ; 3F9E _ E8, 0000003A
        call    _task_switchsub                         ; 3FA3 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 3FA8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3FAB _ 8B. 00
        mov     dword [esp], eax                        ; 3FAD _ 89. 04 24
        call    _load_tr                                ; 3FB0 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 3FB5 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3FBA _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3FBF _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3FC2 _ 8B. 40, 08
        mov     edx, eax                                ; 3FC5 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3FC7 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3FCC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3FD0 _ 89. 04 24
        call    _timer_settime                          ; 3FD3 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3FD8 _ 8B. 45, EC
        leave                                           ; 3FDB _ C9
        ret                                             ; 3FDC _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 3FDD _ 55
        mov     ebp, esp                                ; 3FDE _ 89. E5
        sub     esp, 16                                 ; 3FE0 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3FE3 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3FE9 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3FEC _ 8B. 50, 0C
        mov     eax, edx                                ; 3FEF _ 89. D0
        shl     eax, 2                                  ; 3FF1 _ C1. E0, 02
        add     eax, edx                                ; 3FF4 _ 01. D0
        shl     eax, 2                                  ; 3FF6 _ C1. E0, 02
        add     eax, ecx                                ; 3FF9 _ 01. C8
        add     eax, 8                                  ; 3FFB _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3FFE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4001 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4004 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4006 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4009 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 400C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4010 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4013 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4015 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4018 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 401B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 401D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4020 _ C7. 40, 04, 00000002
        nop                                             ; 4027 _ 90
        leave                                           ; 4028 _ C9
        ret                                             ; 4029 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 402A _ 55
        mov     ebp, esp                                ; 402B _ 89. E5
        sub     esp, 16                                 ; 402D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4030 _ C7. 45, FC, 00000000
        jmp     ?_203                                   ; 4037 _ E9, 000000F7

?_201:  mov     edx, dword [_taskctl]                   ; 403C _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4042 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4045 _ 69. C0, 00000094
        add     eax, edx                                ; 404B _ 01. D0
        add     eax, 72                                 ; 404D _ 83. C0, 48
        mov     eax, dword [eax]                        ; 4050 _ 8B. 00
        test    eax, eax                                ; 4052 _ 85. C0
        jne     ?_202                                   ; 4054 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 405A _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4060 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4063 _ 69. C0, 00000094
        add     eax, 64                                 ; 4069 _ 83. C0, 40
        add     eax, edx                                ; 406C _ 01. D0
        add     eax, 4                                  ; 406E _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 4071 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 4074 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 4077 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 407E _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 4081 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4088 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 408B _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4092 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4095 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 409C _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 409F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 40A6 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 40A9 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 40B0 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 40B3 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 40BA _ 8B. 45, FC
        add     eax, 1                                  ; 40BD _ 83. C0, 01
        shl     eax, 9                                  ; 40C0 _ C1. E0, 09
        mov     edx, eax                                ; 40C3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 40C5 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 40C8 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 40CB _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 40CE _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 40D5 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 40D8 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 40DF _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 40E2 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 40E9 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 40EC _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 40F6 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 40F9 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4103 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4106 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4110 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4113 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 411D _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4120 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 412A _ 8B. 45, F8
        jmp     ?_204                                   ; 412D _ EB, 13

?_202:  add     dword [ebp-4H], 1                       ; 412F _ 83. 45, FC, 01
?_203:  cmp     dword [ebp-4H], 4                       ; 4133 _ 83. 7D, FC, 04
        jle     ?_201                                   ; 4137 _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 413D _ B8, 00000000
?_204:  leave                                           ; 4142 _ C9
        ret                                             ; 4143 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4144 _ 55
        mov     ebp, esp                                ; 4145 _ 89. E5
        sub     esp, 24                                 ; 4147 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 414A _ 83. 7D, 0C, 00
        jns     ?_205                                   ; 414E _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4150 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4153 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4156 _ 89. 45, 0C
?_205:  cmp     dword [ebp+10H], 0                      ; 4159 _ 83. 7D, 10, 00
        jle     ?_206                                   ; 415D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 415F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4162 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4165 _ 89. 50, 08
?_206:  mov     eax, dword [ebp+8H]                     ; 4168 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 416B _ 8B. 40, 04
        cmp     eax, 2                                  ; 416E _ 83. F8, 02
        jnz     ?_207                                   ; 4171 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4173 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4176 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4179 _ 39. 45, 0C
        jz      ?_207                                   ; 417C _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 417E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4181 _ 89. 04 24
        call    _task_remove                            ; 4184 _ E8, 0000002E
?_207:  mov     eax, dword [ebp+8H]                     ; 4189 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 418C _ 8B. 40, 04
        cmp     eax, 2                                  ; 418F _ 83. F8, 02
        jz      ?_208                                   ; 4192 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4194 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4197 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 419A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 419D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41A0 _ 89. 04 24
        call    _task_add                               ; 41A3 _ E8, FFFFFE35
?_208:  mov     eax, dword [_taskctl]                   ; 41A8 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 41AD _ C7. 40, 04, 00000001
        nop                                             ; 41B4 _ 90
        leave                                           ; 41B5 _ C9
        ret                                             ; 41B6 _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 41B7 _ 55
        mov     ebp, esp                                ; 41B8 _ 89. E5
        sub     esp, 16                                 ; 41BA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 41BD _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 41C3 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 41C6 _ 8B. 50, 0C
        mov     eax, edx                                ; 41C9 _ 89. D0
        shl     eax, 2                                  ; 41CB _ C1. E0, 02
        add     eax, edx                                ; 41CE _ 01. D0
        shl     eax, 2                                  ; 41D0 _ C1. E0, 02
        add     eax, ecx                                ; 41D3 _ 01. C8
        add     eax, 8                                  ; 41D5 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 41D8 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 41DB _ C7. 45, FC, 00000000
        jmp     ?_211                                   ; 41E2 _ EB, 23

?_209:  mov     eax, dword [ebp-8H]                     ; 41E4 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 41E7 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 41EA _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 41EE _ 39. 45, 08
        jnz     ?_210                                   ; 41F1 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 41F3 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 41F6 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 41F9 _ C7. 44 90, 08, 00000000
        jmp     ?_212                                   ; 4201 _ EB, 0E

?_210:  add     dword [ebp-4H], 1                       ; 4203 _ 83. 45, FC, 01
?_211:  mov     eax, dword [ebp-8H]                     ; 4207 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 420A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 420C _ 39. 45, FC
        jl      ?_209                                   ; 420F _ 7C, D3
?_212:  mov     eax, dword [ebp-8H]                     ; 4211 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4214 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4216 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4219 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 421C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 421E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4221 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4224 _ 39. 45, FC
        jge     ?_213                                   ; 4227 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4229 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 422C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 422F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4232 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4235 _ 89. 50, 04
?_213:  mov     eax, dword [ebp-8H]                     ; 4238 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 423B _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 423E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4241 _ 8B. 00
        cmp     edx, eax                                ; 4243 _ 39. C2
        jl      ?_214                                   ; 4245 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4247 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 424A _ C7. 40, 04, 00000000
?_214:  mov     eax, dword [ebp+8H]                     ; 4251 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4254 _ C7. 40, 04, 00000001
        jmp     ?_216                                   ; 425B _ EB, 1B

?_215:  mov     eax, dword [ebp-4H]                     ; 425D _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 4260 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 4263 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 4266 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 426A _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 426D _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 4270 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 4274 _ 83. 45, FC, 01
?_216:  mov     eax, dword [ebp-8H]                     ; 4278 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 427B _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 427D _ 39. 45, FC
        jl      ?_215                                   ; 4280 _ 7C, DB
        nop                                             ; 4282 _ 90
        leave                                           ; 4283 _ C9
        ret                                             ; 4284 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4285 _ 55
        mov     ebp, esp                                ; 4286 _ 89. E5
        sub     esp, 40                                 ; 4288 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 428B _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4291 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4296 _ 8B. 10
        mov     eax, edx                                ; 4298 _ 89. D0
        shl     eax, 2                                  ; 429A _ C1. E0, 02
        add     eax, edx                                ; 429D _ 01. D0
        shl     eax, 2                                  ; 429F _ C1. E0, 02
        add     eax, ecx                                ; 42A2 _ 01. C8
        add     eax, 8                                  ; 42A4 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 42A7 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 42AA _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 42AD _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 42B0 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 42B3 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 42B7 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 42BA _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 42BD _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 42C0 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 42C3 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 42C6 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 42C9 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 42CC _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 42CF _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 42D2 _ 8B. 00
        cmp     edx, eax                                ; 42D4 _ 39. C2
        jnz     ?_217                                   ; 42D6 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 42D8 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 42DB _ C7. 40, 04, 00000000
?_217:  mov     eax, dword [_taskctl]                   ; 42E2 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 42E7 _ 8B. 40, 04
        test    eax, eax                                ; 42EA _ 85. C0
        jz      ?_218                                   ; 42EC _ 74, 24
        call    _task_switchsub                         ; 42EE _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 42F3 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 42F9 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 42FE _ 8B. 10
        mov     eax, edx                                ; 4300 _ 89. D0
        shl     eax, 2                                  ; 4302 _ C1. E0, 02
        add     eax, edx                                ; 4305 _ 01. D0
        shl     eax, 2                                  ; 4307 _ C1. E0, 02
        add     eax, ecx                                ; 430A _ 01. C8
        add     eax, 8                                  ; 430C _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 430F _ 89. 45, F4
?_218:  mov     eax, dword [ebp-0CH]                    ; 4312 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4315 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4318 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 431B _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 431F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4322 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4325 _ 8B. 40, 08
        mov     edx, eax                                ; 4328 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 432A _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 432F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4333 _ 89. 04 24
        call    _timer_settime                          ; 4336 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 433B _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 433E _ 3B. 45, F0
        jz      ?_219                                   ; 4341 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4343 _ 83. 7D, EC, 00
        jz      ?_219                                   ; 4347 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4349 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 434C _ 8B. 00
        mov     dword [esp+4H], eax                     ; 434E _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4352 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4359 _ E8, 00000000(rel)
        nop                                             ; 435E _ 90
?_219:  nop                                             ; 435F _ 90
        leave                                           ; 4360 _ C9
        ret                                             ; 4361 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4362 _ 55
        mov     ebp, esp                                ; 4363 _ 89. E5
        sub     esp, 40                                 ; 4365 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4368 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 436F _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4376 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4379 _ 8B. 40, 04
        cmp     eax, 2                                  ; 437C _ 83. F8, 02
        jnz     ?_220                                   ; 437F _ 75, 51
        call    _task_now                               ; 4381 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4386 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4389 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 438C _ 89. 04 24
        call    _task_remove                            ; 438F _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4394 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 439B _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 439E _ 3B. 45, F0
        jnz     ?_220                                   ; 43A1 _ 75, 2F
        call    _task_switchsub                         ; 43A3 _ E8, 0000002F
        call    _task_now                               ; 43A8 _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 43AD _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 43B0 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 43B7 _ 83. 7D, F0, 00
        jz      ?_220                                   ; 43BB _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 43BD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 43C0 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 43C2 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 43C6 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 43CD _ E8, 00000000(rel)
?_220:  mov     eax, dword [ebp-0CH]                    ; 43D2 _ 8B. 45, F4
        leave                                           ; 43D5 _ C9
        ret                                             ; 43D6 _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 43D7 _ 55
        mov     ebp, esp                                ; 43D8 _ 89. E5
        sub     esp, 16                                 ; 43DA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 43DD _ C7. 45, FC, 00000000
        jmp     ?_222                                   ; 43E4 _ EB, 22

?_221:  mov     ecx, dword [_taskctl]                   ; 43E6 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 43EC _ 8B. 55, FC
        mov     eax, edx                                ; 43EF _ 89. D0
        shl     eax, 2                                  ; 43F1 _ C1. E0, 02
        add     eax, edx                                ; 43F4 _ 01. D0
        shl     eax, 2                                  ; 43F6 _ C1. E0, 02
        add     eax, ecx                                ; 43F9 _ 01. C8
        add     eax, 8                                  ; 43FB _ 83. C0, 08
        mov     eax, dword [eax]                        ; 43FE _ 8B. 00
        test    eax, eax                                ; 4400 _ 85. C0
        jg      ?_223                                   ; 4402 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4404 _ 83. 45, FC, 01
?_222:  cmp     dword [ebp-4H], 2                       ; 4408 _ 83. 7D, FC, 02
        jle     ?_221                                   ; 440C _ 7E, D8
        jmp     ?_224                                   ; 440E _ EB, 01

?_223:  nop                                             ; 4410 _ 90
?_224:  mov     eax, dword [_taskctl]                   ; 4411 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4416 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4419 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 441B _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4420 _ C7. 40, 04, 00000000
        nop                                             ; 4427 _ 90
        leave                                           ; 4428 _ C9
        ret                                             ; 4429 _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 442A _ 55
        mov     ebp, esp                                ; 442B _ 89. E5
        sub     esp, 16                                 ; 442D _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4430 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4436 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 443B _ 8B. 10
        mov     eax, edx                                ; 443D _ 89. D0
        shl     eax, 2                                  ; 443F _ C1. E0, 02
        add     eax, edx                                ; 4442 _ 01. D0
        shl     eax, 2                                  ; 4444 _ C1. E0, 02
        add     eax, ecx                                ; 4447 _ 01. C8
        add     eax, 8                                  ; 4449 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 444C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 444F _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4452 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4455 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4458 _ 8B. 44 90, 08
        leave                                           ; 445C _ C9
        ret                                             ; 445D _ C3
; _task_now End of function

        nop                                             ; 445E _ 90
        nop                                             ; 445F _ 90



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

?_225:  db 00H                                          ; 0102 _ .

?_226:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2349:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2396:                                           ; byte
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

_closebtn.2516:                                         ; byte
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



?_227:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_228:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_229:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_230:                                                  ; byte
        db 41H, 00H                                     ; 0017 _ A.

?_231:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0019 _ 3[sec].

?_232:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0020 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0028 _ sk b.

?_233:                                                  ; byte
        db 42H, 00H                                     ; 002D _ B.

?_234:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 002F _ page is:
        db 20H, 00H                                     ; 0037 _  .

?_235:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0039 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0041 _ L: .

?_236:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0045 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 004D _ H: .

?_237:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0051 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0059 _ w: .

?_238:                                                  ; byte
        db 3EH, 00H, 00H                                ; 005D _ >..



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

?_239:  resw    1                                       ; 000C

?_240:  resw    1                                       ; 000E

_keyinfo:                                               ; byte
        resb    24                                      ; 0010

?_241:  resd    1                                       ; 0028

_mouseinfo:                                             ; byte
        resb    52                                      ; 002C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_242:  resd    1                                       ; 010C

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

_task_a.2284:                                           ; dword
        resd    2                                       ; 0278

_tss_a.2283:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2282:                                            ; byte
        resb    104                                     ; 0300

_str.2444:                                              ; byte
        resb    1                                       ; 0368

?_243:  resb    9                                       ; 0369

?_244:  resb    2                                       ; 0372

_task_b.2542:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


