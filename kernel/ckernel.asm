; Disassembly of file: ckernel.o
; Sat Aug 10 23:17:32 2019
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
        call    _initBootInfo                           ; 000F _ E8, 00000F77
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000008(d)
        mov     dword [ebp-20H], eax                    ; 0019 _ 89. 45, E0
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
        mov     dword [ebp-24H], eax                    ; 0064 _ 89. 45, DC
        mov     dword [esp+8H], 10                      ; 0067 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006F _ C7. 44 24, 04, 00000110(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00A5 _ C7. 44 24, 04, 00000110(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00DB _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 00E3 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00E6 _ 89. 04 24
        call    _timer_init                             ; 00E9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00EE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 00F6 _ 8B. 45, D4
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
        call    _init_palette                           ; 0149 _ E8, 00000F00
        call    _init_keyboard                          ; 014E _ E8, 00001469
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
        mov     ecx, dword [_ysize]                     ; 018D _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0193 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 0199 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 019E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A2 _ 89. 54 24, 08
        mov     edx, dword [ebp-20H]                    ; 01A6 _ 8B. 55, E0
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
        call    _init_screen8                           ; 027F _ E8, 0000083F
        mov     dword [esp+4H], 99                      ; 0284 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028C _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0293 _ E8, 00001052
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
        mov     dword [esp+4H], ?_229                   ; 0329 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0331 _ 89. 04 24
        call    _message_box                            ; 0334 _ E8, 000016AE
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
        call    _enable_mouse                           ; 0388 _ E8, 0000126A
        call    _get_addr_code32                        ; 038D _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0392 _ 89. 45, C8
        call    _get_addr_gdt                           ; 0395 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 039A _ 89. 45, C4
        mov     eax, dword [_memman]                    ; 039D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A2 _ 89. 04 24
        call    _task_init                              ; 03A5 _ E8, 00000000(rel)
        mov     dword [_task_a.2295], eax               ; 03AA _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2295]               ; 03AF _ A1, 0000027C(d)
        mov     dword [?_241], eax                      ; 03B4 _ A3, 00000028(d)
        mov     eax, dword [_task_a.2295]               ; 03B9 _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03BE _ A3, 00000278(d)
        mov     eax, dword [_task_a.2295]               ; 03C3 _ A1, 0000027C(d)
        mov     dword [esp+8H], 0                       ; 03C8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03D0 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03D8 _ 89. 04 24
        call    _task_run                               ; 03DB _ E8, 00000000(rel)
        call    _launch_console                         ; 03E0 _ E8, 00002009
        mov     dword [ebp-40H], eax                    ; 03E5 _ 89. 45, C0
        mov     dword [ebp-44H], 0                      ; 03E8 _ C7. 45, BC, 00000000
        mov     dword [ebp-14H], 0                      ; 03EF _ C7. 45, EC, 00000000
        mov     dword [ebp-48H], 0                      ; 03F6 _ C7. 45, B8, 00000000
        mov     dword [ebp-4CH], 0                      ; 03FD _ C7. 45, B4, 00000000
        mov     dword [ebp-18H], 0                      ; 0404 _ C7. 45, E8, 00000000
?_001:  call    _io_cli                                 ; 040B _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0410 _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 0417 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 041C _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 041E _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0425 _ E8, 00000000(rel)
        add     ebx, eax                                ; 042A _ 01. C3
        mov     dword [esp], _timerinfo                 ; 042C _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0433 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0438 _ 01. D8
        test    eax, eax                                ; 043A _ 85. C0
        jnz     ?_002                                   ; 043C _ 75, 0A
        call    _io_sti                                 ; 043E _ E8, 00000000(rel)
        jmp     ?_009                                   ; 0443 _ E9, 0000039D

?_002:  mov     dword [esp], _keyinfo                   ; 0448 _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 044F _ E8, 00000000(rel)
        test    eax, eax                                ; 0454 _ 85. C0
        je      ?_008                                   ; 0456 _ 0F 84, 00000358
        call    _io_sti                                 ; 045C _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0461 _ C7. 04 24, 00000010(d)
        call    _fifo8_get                              ; 0468 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 046D _ 89. 45, BC
        cmp     dword [ebp-44H], 28                     ; 0470 _ 83. 7D, BC, 1C
        jnz     ?_003                                   ; 0474 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 0476 _ 8B. 35, 0000013C(d)
        mov     ebx, dword [_buf_back]                  ; 047C _ 8B. 1D, 00000144(d)
        mov     edx, dword [ebp-14H]                    ; 0482 _ 8B. 55, EC
        mov     eax, edx                                ; 0485 _ 89. D0
        shl     eax, 2                                  ; 0487 _ C1. E0, 02
        add     eax, edx                                ; 048A _ 01. D0
        shl     eax, 2                                  ; 048C _ C1. E0, 02
        mov     edx, eax                                ; 048F _ 89. C2
        mov     eax, dword [ebp-34H]                    ; 0491 _ 8B. 45, CC
        lea     ecx, [edx+eax]                          ; 0494 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 0497 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 049D _ A1, 00000264(d)
        mov     dword [esp+18H], 7                      ; 04A2 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 04AA _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 04AE _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 04B1 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 04B5 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 04B9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04BD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04C1 _ 89. 04 24
        call    _showMemoryInfo                         ; 04C4 _ E8, 00001303
        add     dword [ebp-14H], 1                      ; 04C9 _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 04CD _ 8B. 45, EC
        cmp     eax, dword [ebp-30H]                    ; 04D0 _ 3B. 45, D0
        jle     ?_009                                   ; 04D3 _ 0F 8E, 0000030C
        mov     dword [ebp-14H], 0                      ; 04D9 _ C7. 45, EC, 00000000
        jmp     ?_009                                   ; 04E0 _ E9, 00000300

?_003:  cmp     dword [ebp-44H], 15                     ; 04E5 _ 83. 7D, BC, 0F
        jne     ?_006                                   ; 04E9 _ 0F 85, 00000187
        mov     dword [ebp-1CH], -1                     ; 04EF _ C7. 45, E4, FFFFFFFF
        cmp     dword [ebp-18H], 0                      ; 04F6 _ 83. 7D, E8, 00
        jne     ?_004                                   ; 04FA _ 0F 85, 00000089
        mov     dword [ebp-18H], 1                      ; 0500 _ C7. 45, E8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0507 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 050D _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0512 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_230                   ; 051A _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0522 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0526 _ 89. 04 24
        call    _make_wtitle8                           ; 0529 _ E8, 00001869
        mov     eax, dword [_shtctl]                    ; 052E _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0533 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_231                   ; 053B _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-40H]                    ; 0543 _ 8B. 55, C0
        mov     dword [esp+4H], edx                     ; 0546 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 054A _ 89. 04 24
        call    _make_wtitle8                           ; 054D _ E8, 00001845
        mov     edx, dword [_shtMsgBox]                 ; 0552 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0558 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 055D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0565 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 056D _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0570 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0574 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0578 _ 89. 04 24
        call    _set_cursor                             ; 057B _ E8, 000024E3
        mov     dword [ebp-1CH], 87                     ; 0580 _ C7. 45, E4, 00000057
        jmp     ?_005                                   ; 0587 _ EB, 59

?_004:  mov     dword [ebp-18H], 0                      ; 0589 _ C7. 45, E8, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0590 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0596 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 059B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_230                   ; 05A3 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05AF _ 89. 04 24
        call    _make_wtitle8                           ; 05B2 _ E8, 000017E0
        mov     eax, dword [_shtctl]                    ; 05B7 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05BC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_231                   ; 05C4 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-40H]                    ; 05CC _ 8B. 55, C0
        mov     dword [esp+4H], edx                     ; 05CF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05D3 _ 89. 04 24
        call    _make_wtitle8                           ; 05D6 _ E8, 000017BC
        mov     dword [ebp-1CH], 88                     ; 05DB _ C7. 45, E4, 00000058
?_005:  mov     eax, dword [_shtMsgBox]                 ; 05E2 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 05E7 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 05EA _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 05F0 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 05F5 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 05FD _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0601 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0609 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0611 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0615 _ 89. 04 24
        call    _sheet_refresh                          ; 0618 _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 061D _ 8B. 45, C0
        mov     edx, dword [eax+4H]                     ; 0620 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0623 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 0628 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 0630 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0634 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 063C _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-40H]                    ; 0644 _ 8B. 55, C0
        mov     dword [esp+4H], edx                     ; 0647 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 064B _ 89. 04 24
        call    _sheet_refresh                          ; 064E _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 0653 _ 8B. 15, 00000274(d)
        mov     eax, dword [_task_a.2295]               ; 0659 _ A1, 0000027C(d)
        mov     ecx, dword [ebp-1CH]                    ; 065E _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0661 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0665 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0669 _ 89. 04 24
        call    _send_message                           ; 066C _ E8, 00000000(rel)
        jmp     ?_009                                   ; 0671 _ E9, 0000016F

?_006:  cmp     dword [ebp-18H], 0                      ; 0676 _ 83. 7D, E8, 00
        jne     ?_007                                   ; 067A _ 0F 85, 000000EB
        mov     eax, dword [ebp-44H]                    ; 0680 _ 8B. 45, BC
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _transferScanCode                       ; 0686 _ E8, 0000224F
        mov     byte [ebp-4DH], al                      ; 068B _ 88. 45, B3
        cmp     byte [ebp-4DH], 0                       ; 068E _ 80. 7D, B3, 00
        je      ?_009                                   ; 0692 _ 0F 84, 0000014D
        cmp     dword [ebp-44H], 83                     ; 0698 _ 83. 7D, BC, 53
        jg      ?_009                                   ; 069C _ 0F 8F, 00000143
        mov     eax, dword [ebp-44H]                    ; 06A2 _ 8B. 45, BC
        add     eax, _keytable                          ; 06A5 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 06AA _ 0F B6. 00
        test    al, al                                  ; 06AD _ 84. C0
        je      ?_009                                   ; 06AF _ 0F 84, 00000130
        cmp     dword [ebp-0CH], 143                    ; 06B5 _ 81. 7D, F4, 0000008F
        jg      ?_009                                   ; 06BC _ 0F 8F, 00000123
        mov     edx, dword [_shtMsgBox]                 ; 06C2 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06C8 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 06CD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 06D5 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06DD _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06E0 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06E8 _ 89. 04 24
        call    _set_cursor                             ; 06EB _ E8, 00002373
        movzx   eax, byte [ebp-4DH]                     ; 06F0 _ 0F B6. 45, B3
        mov     byte [ebp-56H], al                      ; 06F4 _ 88. 45, AA
        mov     byte [ebp-55H], 0                       ; 06F7 _ C6. 45, AB, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06FB _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 0701 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-56H]                          ; 0707 _ 8D. 45, AA
        mov     dword [esp+14H], eax                    ; 070A _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 070E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0716 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 071E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0721 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0725 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0729 _ 89. 14 24
        call    _showString                             ; 072C _ E8, 0000087B
        add     dword [ebp-0CH], 8                      ; 0731 _ 83. 45, F4, 08
        mov     dword [ebp-4CH], 1                      ; 0735 _ C7. 45, B4, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 073C _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0742 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0747 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 074A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 074E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0756 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0759 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 075D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0761 _ 89. 04 24
        call    _set_cursor                             ; 0764 _ E8, 000022FA
        jmp     ?_009                                   ; 0769 _ EB, 7A

?_007:  mov     eax, dword [ebp-44H]                    ; 076B _ 8B. 45, BC
        mov     dword [esp], eax                        ; 076E _ 89. 04 24
        call    _isSpecialKey                           ; 0771 _ E8, 000022A1
        test    eax, eax                                ; 0776 _ 85. C0
        jnz     ?_009                                   ; 0778 _ 75, 6B
        mov     eax, dword [ebp-44H]                    ; 077A _ 8B. 45, BC
        movzx   eax, al                                 ; 077D _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 0780 _ 8B. 15, 00000274(d)
        add     edx, 16                                 ; 0786 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0789 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 078D _ 89. 14 24
        call    _fifo8_put                              ; 0790 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0795 _ C7. 04 24, 00000010(d)
        call    _fifo8_status                           ; 079C _ E8, 00000000(rel)
        test    eax, eax                                ; 07A1 _ 85. C0
        jnz     ?_009                                   ; 07A3 _ 75, 40
        mov     eax, dword [_task_a.2295]               ; 07A5 _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 07AA _ 89. 04 24
        call    _task_sleep                             ; 07AD _ E8, 00000000(rel)
        jmp     ?_009                                   ; 07B2 _ EB, 31

?_008:  mov     dword [esp], _mouseinfo                 ; 07B4 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 07BB _ E8, 00000000(rel)
        test    eax, eax                                ; 07C0 _ 85. C0
        jz      ?_009                                   ; 07C2 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 07C4 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 07CA _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 07D0 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 07D5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07D9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07DD _ 89. 04 24
        call    _show_mouse_info                        ; 07E0 _ E8, 000006EE
?_009:  mov     dword [esp], _timerinfo                 ; 07E5 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 07EC _ E8, 00000000(rel)
        test    eax, eax                                ; 07F1 _ 85. C0
        je      ?_001                                   ; 07F3 _ 0F 84, FFFFFC12
        call    _io_sti                                 ; 07F9 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 07FE _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 0805 _ E8, 00000000(rel)
        mov     dword [ebp-54H], eax                    ; 080A _ 89. 45, AC
        cmp     dword [ebp-54H], 0                      ; 080D _ 83. 7D, AC, 00
        jz      ?_010                                   ; 0811 _ 74, 24
        mov     dword [esp+8H], 0                       ; 0813 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 081B _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 0823 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 0826 _ 89. 04 24
        call    _timer_init                             ; 0829 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 082E _ C7. 45, F0, 00000000
        jmp     ?_011                                   ; 0835 _ EB, 22

?_010:  mov     dword [esp+8H], 1                       ; 0837 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 083F _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 0847 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 084A _ 89. 04 24
        call    _timer_init                             ; 084D _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0852 _ C7. 45, F0, 00000007
?_011:  mov     dword [esp+4H], 50                      ; 0859 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 0861 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 0864 _ 89. 04 24
        call    _timer_settime                          ; 0867 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 0                      ; 086C _ 83. 7D, E8, 00
        jnz     ?_012                                   ; 0870 _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 0872 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0878 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 087D _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0880 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0884 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 088C _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 088F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0893 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0897 _ 89. 04 24
        call    _set_cursor                             ; 089A _ E8, 000021C4
        jmp     ?_001                                   ; 089F _ E9, FFFFFB67

?_012:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 08A4 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 08AA _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 08AF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 08B7 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 08BF _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 08C2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08C6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08CA _ 89. 04 24
        call    _set_cursor                             ; 08CD _ E8, 00002191
        jmp     ?_001                                   ; 08D2 _ E9, FFFFFB34

_task_b_main:; Function begin
        push    ebp                                     ; 08D7 _ 55
        mov     ebp, esp                                ; 08D8 _ 89. E5
        sub     esp, 104                                ; 08DA _ 83. EC, 68
        mov     edx, dword [_sht_back]                  ; 08DD _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 08E3 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_232                  ; 08E8 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 08F0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 08F8 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0900 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0908 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 090C _ 89. 04 24
        call    _showString                             ; 090F _ E8, 00000698
        mov     dword [ebp-14H], 0                      ; 0914 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 091B _ C7. 45, E8, 00000000
        mov     dword [esp+0CH], 0                      ; 0922 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-40H]                          ; 092A _ 8D. 45, C0
        mov     dword [esp+8H], eax                     ; 092D _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0931 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-38H]                          ; 0939 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 093C _ 89. 04 24
        call    _fifo8_init                             ; 093F _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0944 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0949 _ 89. 45, EC
        mov     dword [esp+8H], 123                     ; 094C _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-38H]                          ; 0954 _ 8D. 45, C8
        mov     dword [esp+4H], eax                     ; 0957 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 095B _ 8B. 45, EC
        mov     dword [esp], eax                        ; 095E _ 89. 04 24
        call    _timer_init                             ; 0961 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0966 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 096E _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0971 _ 89. 04 24
        call    _timer_settime                          ; 0974 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0979 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0980 _ C7. 45, F0, 00000000
?_013:  add     dword [ebp-0CH], 1                      ; 0987 _ 83. 45, F4, 01
        call    _io_cli                                 ; 098B _ E8, 00000000(rel)
        lea     eax, [ebp-38H]                          ; 0990 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 0993 _ 89. 04 24
        call    _fifo8_status                           ; 0996 _ E8, 00000000(rel)
        test    eax, eax                                ; 099B _ 85. C0
        jnz     ?_014                                   ; 099D _ 75, 07
        call    _io_sti                                 ; 099F _ E8, 00000000(rel)
        jmp     ?_013                                   ; 09A4 _ EB, E1
; _task_b_main End of function

?_014:  ; Local function
        lea     eax, [ebp-38H]                          ; 09A6 _ 8D. 45, C8
        mov     dword [esp], eax                        ; 09A9 _ 89. 04 24
        call    _fifo8_get                              ; 09AC _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 09B1 _ 89. 45, E8
        call    _io_sti                                 ; 09B4 _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 123                    ; 09B9 _ 83. 7D, E8, 7B
        jnz     ?_013                                   ; 09BD _ 75, C8
        mov     edx, dword [_sht_back]                  ; 09BF _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 09C5 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_233                  ; 09CA _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 09D2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 09DA _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-10H]                    ; 09E2 _ 8B. 4D, F0
        mov     dword [esp+8H], ecx                     ; 09E5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 09E9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09ED _ 89. 04 24
        call    _showString                             ; 09F0 _ E8, 000005B7
        mov     dword [esp+4H], 100                     ; 09F5 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-14H]                    ; 09FD _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0A00 _ 89. 04 24
        call    _timer_settime                          ; 0A03 _ E8, 00000000(rel)
        add     dword [ebp-10H], 8                      ; 0A08 _ 83. 45, F0, 08
        mov     eax, dword [ebp+8H]                     ; 0A0C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0A0F _ 8B. 00
        mov     dword [esp+18H], 44                     ; 0A11 _ C7. 44 24, 18, 0000002C
        mov     dword [esp+14H], 104                    ; 0A19 _ C7. 44 24, 14, 00000068
        mov     dword [esp+10H], 28                     ; 0A21 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 24                     ; 0A29 _ C7. 44 24, 0C, 00000018
        mov     dword [esp+8H], 8                       ; 0A31 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 144                     ; 0A39 _ C7. 44 24, 04, 00000090
        mov     dword [esp], eax                        ; 0A41 _ 89. 04 24
        call    _boxfill8                               ; 0A44 _ E8, 000006D0
        mov     eax, dword [_shtctl]                    ; 0A49 _ A1, 00000264(d)
        mov     dword [esp+14H], 44                     ; 0A4E _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], 104                    ; 0A56 _ C7. 44 24, 10, 00000068
        mov     dword [esp+0CH], 28                     ; 0A5E _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0A66 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0A6E _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0A71 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A75 _ 89. 04 24
        call    _sheet_refresh                          ; 0A78 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0A7D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0A80 _ 89. 04 24
        call    _intToHexStr                            ; 0A83 _ E8, 00000A7E
        mov     dword [ebp-1CH], eax                    ; 0A88 _ 89. 45, E4
        mov     eax, dword [_shtctl]                    ; 0A8B _ A1, 00000264(d)
        mov     edx, dword [ebp-1CH]                    ; 0A90 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0A93 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0A97 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0A9F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 0AA7 _ C7. 44 24, 08, 00000018
        mov     edx, dword [ebp+8H]                     ; 0AAF _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 0AB2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0AB6 _ 89. 04 24
        call    _showString                             ; 0AB9 _ E8, 000004EE
        jmp     ?_013                                   ; 0ABE _ E9, FFFFFEC4

_init_screen8:; Function begin
        push    ebp                                     ; 0AC3 _ 55
        mov     ebp, esp                                ; 0AC4 _ 89. E5
        push    ebx                                     ; 0AC6 _ 53
        sub     esp, 36                                 ; 0AC7 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0ACA _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0ACD _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0AD0 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0AD3 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0AD6 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0ADA _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0ADE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0AE6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0AEE _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0AF6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AF9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AFD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B00 _ 89. 04 24
        call    _boxfill8                               ; 0B03 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0B08 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0B0B _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0B0E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B11 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B14 _ 8B. 45, 10
        sub     eax, 28                                 ; 0B17 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0B1A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B1E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B22 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B26 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0B2E _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0B36 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B39 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B3D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B40 _ 89. 04 24
        call    _boxfill8                               ; 0B43 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0B48 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0B4B _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0B4E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B51 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B54 _ 8B. 45, 10
        sub     eax, 27                                 ; 0B57 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0B5A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B5E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B62 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B66 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0B6E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B76 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B79 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B7D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B80 _ 89. 04 24
        call    _boxfill8                               ; 0B83 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0B88 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0B8B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0B8E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B91 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B94 _ 8B. 45, 10
        sub     eax, 26                                 ; 0B97 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0B9A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B9E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0BA2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0BA6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0BAE _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0BB6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BB9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BBD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BC0 _ 89. 04 24
        call    _boxfill8                               ; 0BC3 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0BC8 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0BCB _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0BCE _ 8B. 45, 10
        sub     eax, 24                                 ; 0BD1 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0BD4 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0BD8 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0BE0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0BE4 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0BEC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0BF4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BF7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BFB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BFE _ 89. 04 24
        call    _boxfill8                               ; 0C01 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0C06 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C09 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C0C _ 8B. 45, 10
        sub     eax, 24                                 ; 0C0F _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0C12 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0C16 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0C1E _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0C22 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0C2A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C32 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C35 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C39 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C3C _ 89. 04 24
        call    _boxfill8                               ; 0C3F _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0C44 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C47 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C4A _ 8B. 45, 10
        sub     eax, 4                                  ; 0C4D _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0C50 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C54 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C5C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0C60 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0C68 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C70 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C73 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C77 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C7A _ 89. 04 24
        call    _boxfill8                               ; 0C7D _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0C82 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0C85 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0C88 _ 8B. 45, 10
        sub     eax, 23                                 ; 0C8B _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0C8E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C92 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C9A _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0C9E _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0CA6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0CAE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CB1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CB5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CB8 _ 89. 04 24
        call    _boxfill8                               ; 0CBB _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0CC0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CC3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0CC6 _ 8B. 45, 10
        sub     eax, 3                                  ; 0CC9 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0CCC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0CD0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0CD8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0CDC _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0CE4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0CEC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CEF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CF3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CF6 _ 89. 04 24
        call    _boxfill8                               ; 0CF9 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0CFE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D01 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D04 _ 8B. 45, 10
        sub     eax, 24                                 ; 0D07 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0D0A _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0D0E _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0D16 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0D1A _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0D22 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0D2A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D2D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D31 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D34 _ 89. 04 24
        call    _boxfill8                               ; 0D37 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0D3C _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0D3F _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0D42 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D45 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D48 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D4B _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0D4E _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D51 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D54 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D58 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D5C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D60 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0D64 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D6C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D6F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D73 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D76 _ 89. 04 24
        call    _boxfill8                               ; 0D79 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0D7E _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0D81 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0D84 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D87 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D8A _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0D8D _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0D90 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D93 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D96 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D9A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D9E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0DA2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0DA6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0DAE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DB1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DB5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DB8 _ 89. 04 24
        call    _boxfill8                               ; 0DBB _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0DC0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DC3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DC6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0DC9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0DCC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DCF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0DD2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DD5 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0DD8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0DDC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0DE0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0DE4 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0DE8 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DF0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DFA _ 89. 04 24
        call    _boxfill8                               ; 0DFD _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0E02 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0E05 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0E08 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0E0B _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0E0E _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0E11 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0E14 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0E17 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0E1A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E1E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E22 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E26 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0E2A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0E32 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E35 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E39 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E3C _ 89. 04 24
        call    _boxfill8                               ; 0E3F _ E8, 000002D5
        nop                                             ; 0E44 _ 90
        add     esp, 36                                 ; 0E45 _ 83. C4, 24
        pop     ebx                                     ; 0E48 _ 5B
        pop     ebp                                     ; 0E49 _ 5D
        ret                                             ; 0E4A _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0E4B _ 55
        mov     ebp, esp                                ; 0E4C _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0E4E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0E51 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0E54 _ A1, 00000134(d)
        add     eax, edx                                ; 0E59 _ 01. D0
        mov     dword [_mx], eax                        ; 0E5B _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 0E60 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0E63 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0E66 _ A1, 00000138(d)
        add     eax, edx                                ; 0E6B _ 01. D0
        mov     dword [_my], eax                        ; 0E6D _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 0E72 _ A1, 00000134(d)
        test    eax, eax                                ; 0E77 _ 85. C0
        jns     ?_015                                   ; 0E79 _ 79, 0A
        mov     dword [_mx], 0                          ; 0E7B _ C7. 05, 00000134(d), 00000000
?_015:  mov     eax, dword [_my]                        ; 0E85 _ A1, 00000138(d)
        test    eax, eax                                ; 0E8A _ 85. C0
        jns     ?_016                                   ; 0E8C _ 79, 0A
        mov     dword [_my], 0                          ; 0E8E _ C7. 05, 00000138(d), 00000000
?_016:  mov     edx, dword [_xsize]                     ; 0E98 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0E9E _ A1, 00000134(d)
        cmp     edx, eax                                ; 0EA3 _ 39. C2
        jg      ?_017                                   ; 0EA5 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0EA7 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 0EAC _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0EAF _ A3, 00000134(d)
?_017:  mov     edx, dword [_ysize]                     ; 0EB4 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 0EBA _ A1, 00000138(d)
        cmp     edx, eax                                ; 0EBF _ 39. C2
        jg      ?_018                                   ; 0EC1 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0EC3 _ A1, 00000140(d)
        sub     eax, 1                                  ; 0EC8 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0ECB _ A3, 00000138(d)
?_018:  nop                                             ; 0ED0 _ 90
        pop     ebp                                     ; 0ED1 _ 5D
        ret                                             ; 0ED2 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0ED3 _ 55
        mov     ebp, esp                                ; 0ED4 _ 89. E5
        sub     esp, 40                                 ; 0ED6 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0ED9 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 0EDE _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0EE1 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0EE5 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0EEA _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 0EF1 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0EF6 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0EF9 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0EFD _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0F01 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 0F08 _ E8, 00000780
        test    eax, eax                                ; 0F0D _ 85. C0
        jz      ?_019                                   ; 0F0F _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0F11 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 0F19 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F1C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F20 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F23 _ 89. 04 24
        call    _computeMousePosition                   ; 0F26 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0F2B _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 0F31 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 0F36 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0F3A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0F3E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0F41 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F45 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F48 _ 89. 04 24
        call    _sheet_slide                            ; 0F4B _ E8, 00000000(rel)
        mov     eax, dword [?_242]                      ; 0F50 _ A1, 0000010C(d)
        and     eax, 01H                                ; 0F55 _ 83. E0, 01
        test    eax, eax                                ; 0F58 _ 85. C0
        jz      ?_019                                   ; 0F5A _ 74, 2C
        mov     eax, dword [_my]                        ; 0F5C _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 0F61 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0F64 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 0F69 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0F6C _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 0F71 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0F75 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0F79 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F7D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F80 _ 89. 04 24
        call    _sheet_slide                            ; 0F83 _ E8, 00000000(rel)
?_019:  nop                                             ; 0F88 _ 90
        leave                                           ; 0F89 _ C9
        ret                                             ; 0F8A _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0F8B _ 55
        mov     ebp, esp                                ; 0F8C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F8E _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0F91 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0F97 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0F9A _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0FA0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0FA3 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0FA9 _ 90
        pop     ebp                                     ; 0FAA _ 5D
        ret                                             ; 0FAB _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0FAC _ 55
        mov     ebp, esp                                ; 0FAD _ 89. E5
        push    ebx                                     ; 0FAF _ 53
        sub     esp, 68                                 ; 0FB0 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0FB3 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0FB6 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0FB9 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0FBC _ 89. 45, F4
        jmp     ?_021                                   ; 0FBF _ EB, 4B

?_020:  mov     eax, dword [ebp+1CH]                    ; 0FC1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0FC4 _ 0F B6. 00
        movzx   eax, al                                 ; 0FC7 _ 0F B6. C0
        shl     eax, 4                                  ; 0FCA _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0FCD _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0FD3 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0FD7 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0FDA _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0FDD _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0FE0 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0FE2 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0FE6 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0FEA _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0FED _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0FF1 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0FF4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0FF8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0FFC _ 89. 14 24
        call    _showFont8                              ; 0FFF _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 1004 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1008 _ 83. 45, 1C, 01
?_021:  mov     eax, dword [ebp+1CH]                    ; 100C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 100F _ 0F B6. 00
        test    al, al                                  ; 1012 _ 84. C0
        jnz     ?_020                                   ; 1014 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 1016 _ 8B. 45, 14
        add     eax, 16                                 ; 1019 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 101C _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1020 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 1023 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 1027 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 102A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 102E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1031 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1035 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1038 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 103C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 103F _ 89. 04 24
        call    _sheet_refresh                          ; 1042 _ E8, 00000000(rel)
        nop                                             ; 1047 _ 90
        add     esp, 68                                 ; 1048 _ 83. C4, 44
        pop     ebx                                     ; 104B _ 5B
        pop     ebp                                     ; 104C _ 5D
        ret                                             ; 104D _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 104E _ 55
        mov     ebp, esp                                ; 104F _ 89. E5
        sub     esp, 24                                 ; 1051 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2361         ; 1054 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 105C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 1064 _ C7. 04 24, 00000000
        call    _set_palette                            ; 106B _ E8, 00000003
        nop                                             ; 1070 _ 90
        leave                                           ; 1071 _ C9
        ret                                             ; 1072 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 1073 _ 55
        mov     ebp, esp                                ; 1074 _ 89. E5
        sub     esp, 40                                 ; 1076 _ 83. EC, 28
        call    _io_load_eflags                         ; 1079 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 107E _ 89. 45, F0
        call    _io_cli                                 ; 1081 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1086 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 1089 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 108D _ C7. 04 24, 000003C8
        call    _io_out8                                ; 1094 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1099 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 109C _ 89. 45, F4
        jmp     ?_023                                   ; 109F _ EB, 62

?_022:  mov     eax, dword [ebp+10H]                    ; 10A1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 10A4 _ 0F B6. 00
        shr     al, 2                                   ; 10A7 _ C0. E8, 02
        movzx   eax, al                                 ; 10AA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 10AD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 10B1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 10B8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 10BD _ 8B. 45, 10
        add     eax, 1                                  ; 10C0 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 10C3 _ 0F B6. 00
        shr     al, 2                                   ; 10C6 _ C0. E8, 02
        movzx   eax, al                                 ; 10C9 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 10CC _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 10D0 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 10D7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 10DC _ 8B. 45, 10
        add     eax, 2                                  ; 10DF _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 10E2 _ 0F B6. 00
        shr     al, 2                                   ; 10E5 _ C0. E8, 02
        movzx   eax, al                                 ; 10E8 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 10EB _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 10EF _ C7. 04 24, 000003C9
        call    _io_out8                                ; 10F6 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 10FB _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 10FF _ 83. 45, F4, 01
?_023:  mov     eax, dword [ebp-0CH]                    ; 1103 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1106 _ 3B. 45, 0C
        jle     ?_022                                   ; 1109 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 110B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 110E _ 89. 04 24
        call    _io_store_eflags                        ; 1111 _ E8, 00000000(rel)
        nop                                             ; 1116 _ 90
        leave                                           ; 1117 _ C9
        ret                                             ; 1118 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 1119 _ 55
        mov     ebp, esp                                ; 111A _ 89. E5
        sub     esp, 20                                 ; 111C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 111F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1122 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1125 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 1128 _ 89. 45, F8
        jmp     ?_027                                   ; 112B _ EB, 31

?_024:  mov     eax, dword [ebp+14H]                    ; 112D _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 1130 _ 89. 45, FC
        jmp     ?_026                                   ; 1133 _ EB, 1D

?_025:  mov     eax, dword [ebp-8H]                     ; 1135 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 1138 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 113C _ 8B. 55, FC
        add     eax, edx                                ; 113F _ 01. D0
        mov     edx, eax                                ; 1141 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1143 _ 8B. 45, 08
        add     edx, eax                                ; 1146 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1148 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 114C _ 88. 02
        add     dword [ebp-4H], 1                       ; 114E _ 83. 45, FC, 01
?_026:  mov     eax, dword [ebp-4H]                     ; 1152 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 1155 _ 3B. 45, 1C
        jle     ?_025                                   ; 1158 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 115A _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 115E _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 1161 _ 3B. 45, 20
        jle     ?_024                                   ; 1164 _ 7E, C7
        nop                                             ; 1166 _ 90
        leave                                           ; 1167 _ C9
        ret                                             ; 1168 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 1169 _ 55
        mov     ebp, esp                                ; 116A _ 89. E5
        sub     esp, 20                                 ; 116C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 116F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1172 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1175 _ C7. 45, FC, 00000000
        jmp     ?_037                                   ; 117C _ E9, 0000015C

?_028:  mov     edx, dword [ebp-4H]                     ; 1181 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1184 _ 8B. 45, 1C
        add     eax, edx                                ; 1187 _ 01. D0
        movzx   eax, byte [eax]                         ; 1189 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 118C _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 118F _ 80. 7D, FB, 00
        jns     ?_029                                   ; 1193 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 1195 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1198 _ 8B. 45, FC
        add     eax, edx                                ; 119B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 119D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11A1 _ 8B. 55, 10
        add     eax, edx                                ; 11A4 _ 01. D0
        mov     edx, eax                                ; 11A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11A8 _ 8B. 45, 08
        add     edx, eax                                ; 11AB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11AD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B1 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 11B3 _ 0F BE. 45, FB
        and     eax, 40H                                ; 11B7 _ 83. E0, 40
        test    eax, eax                                ; 11BA _ 85. C0
        jz      ?_030                                   ; 11BC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11BE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11C1 _ 8B. 45, FC
        add     eax, edx                                ; 11C4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11C6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11CA _ 8B. 55, 10
        add     eax, edx                                ; 11CD _ 01. D0
        lea     edx, [eax+1H]                           ; 11CF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11D2 _ 8B. 45, 08
        add     edx, eax                                ; 11D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11DB _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 11DD _ 0F BE. 45, FB
        and     eax, 20H                                ; 11E1 _ 83. E0, 20
        test    eax, eax                                ; 11E4 _ 85. C0
        jz      ?_031                                   ; 11E6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11EB _ 8B. 45, FC
        add     eax, edx                                ; 11EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11F0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11F4 _ 8B. 55, 10
        add     eax, edx                                ; 11F7 _ 01. D0
        lea     edx, [eax+2H]                           ; 11F9 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 11FC _ 8B. 45, 08
        add     edx, eax                                ; 11FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1201 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1205 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1207 _ 0F BE. 45, FB
        and     eax, 10H                                ; 120B _ 83. E0, 10
        test    eax, eax                                ; 120E _ 85. C0
        jz      ?_032                                   ; 1210 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1212 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1215 _ 8B. 45, FC
        add     eax, edx                                ; 1218 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 121A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 121E _ 8B. 55, 10
        add     eax, edx                                ; 1221 _ 01. D0
        lea     edx, [eax+3H]                           ; 1223 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1226 _ 8B. 45, 08
        add     edx, eax                                ; 1229 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 122B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 122F _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1231 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1235 _ 83. E0, 08
        test    eax, eax                                ; 1238 _ 85. C0
        jz      ?_033                                   ; 123A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 123C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 123F _ 8B. 45, FC
        add     eax, edx                                ; 1242 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1244 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1248 _ 8B. 55, 10
        add     eax, edx                                ; 124B _ 01. D0
        lea     edx, [eax+4H]                           ; 124D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1250 _ 8B. 45, 08
        add     edx, eax                                ; 1253 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1255 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1259 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 125B _ 0F BE. 45, FB
        and     eax, 04H                                ; 125F _ 83. E0, 04
        test    eax, eax                                ; 1262 _ 85. C0
        jz      ?_034                                   ; 1264 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1266 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1269 _ 8B. 45, FC
        add     eax, edx                                ; 126C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 126E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1272 _ 8B. 55, 10
        add     eax, edx                                ; 1275 _ 01. D0
        lea     edx, [eax+5H]                           ; 1277 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 127A _ 8B. 45, 08
        add     edx, eax                                ; 127D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 127F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1283 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1285 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1289 _ 83. E0, 02
        test    eax, eax                                ; 128C _ 85. C0
        jz      ?_035                                   ; 128E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1290 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1293 _ 8B. 45, FC
        add     eax, edx                                ; 1296 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1298 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 129C _ 8B. 55, 10
        add     eax, edx                                ; 129F _ 01. D0
        lea     edx, [eax+6H]                           ; 12A1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 12A4 _ 8B. 45, 08
        add     edx, eax                                ; 12A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12AD _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 12AF _ 0F BE. 45, FB
        and     eax, 01H                                ; 12B3 _ 83. E0, 01
        test    eax, eax                                ; 12B6 _ 85. C0
        jz      ?_036                                   ; 12B8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 12BA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12BD _ 8B. 45, FC
        add     eax, edx                                ; 12C0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12C2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 12C6 _ 8B. 55, 10
        add     eax, edx                                ; 12C9 _ 01. D0
        lea     edx, [eax+7H]                           ; 12CB _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 12CE _ 8B. 45, 08
        add     edx, eax                                ; 12D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12D7 _ 88. 02
?_036:  add     dword [ebp-4H], 1                       ; 12D9 _ 83. 45, FC, 01
?_037:  cmp     dword [ebp-4H], 15                      ; 12DD _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 12E1 _ 0F 8E, FFFFFE9A
        nop                                             ; 12E7 _ 90
        leave                                           ; 12E8 _ C9
        ret                                             ; 12E9 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 12EA _ 55
        mov     ebp, esp                                ; 12EB _ 89. E5
        sub     esp, 20                                 ; 12ED _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 12F0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 12F3 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 12F6 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 12FD _ E9, 000000B1

?_038:  mov     dword [ebp-4H], 0                       ; 1302 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 1309 _ E9, 00000097

?_039:  mov     eax, dword [ebp-8H]                     ; 130E _ 8B. 45, F8
        shl     eax, 4                                  ; 1311 _ C1. E0, 04
        mov     edx, eax                                ; 1314 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1316 _ 8B. 45, FC
        add     eax, edx                                ; 1319 _ 01. D0
        add     eax, _cursor.2408                       ; 131B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1320 _ 0F B6. 00
        cmp     al, 42                                  ; 1323 _ 3C, 2A
        jnz     ?_040                                   ; 1325 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1327 _ 8B. 45, F8
        shl     eax, 4                                  ; 132A _ C1. E0, 04
        mov     edx, eax                                ; 132D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 132F _ 8B. 45, FC
        add     eax, edx                                ; 1332 _ 01. D0
        mov     edx, eax                                ; 1334 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1336 _ 8B. 45, 08
        add     eax, edx                                ; 1339 _ 01. D0
        mov     byte [eax], 0                           ; 133B _ C6. 00, 00
?_040:  mov     eax, dword [ebp-8H]                     ; 133E _ 8B. 45, F8
        shl     eax, 4                                  ; 1341 _ C1. E0, 04
        mov     edx, eax                                ; 1344 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1346 _ 8B. 45, FC
        add     eax, edx                                ; 1349 _ 01. D0
        add     eax, _cursor.2408                       ; 134B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1350 _ 0F B6. 00
        cmp     al, 79                                  ; 1353 _ 3C, 4F
        jnz     ?_041                                   ; 1355 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1357 _ 8B. 45, F8
        shl     eax, 4                                  ; 135A _ C1. E0, 04
        mov     edx, eax                                ; 135D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 135F _ 8B. 45, FC
        add     eax, edx                                ; 1362 _ 01. D0
        mov     edx, eax                                ; 1364 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1366 _ 8B. 45, 08
        add     eax, edx                                ; 1369 _ 01. D0
        mov     byte [eax], 7                           ; 136B _ C6. 00, 07
?_041:  mov     eax, dword [ebp-8H]                     ; 136E _ 8B. 45, F8
        shl     eax, 4                                  ; 1371 _ C1. E0, 04
        mov     edx, eax                                ; 1374 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1376 _ 8B. 45, FC
        add     eax, edx                                ; 1379 _ 01. D0
        add     eax, _cursor.2408                       ; 137B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1380 _ 0F B6. 00
        cmp     al, 46                                  ; 1383 _ 3C, 2E
        jnz     ?_042                                   ; 1385 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1387 _ 8B. 45, F8
        shl     eax, 4                                  ; 138A _ C1. E0, 04
        mov     edx, eax                                ; 138D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 138F _ 8B. 45, FC
        add     eax, edx                                ; 1392 _ 01. D0
        mov     edx, eax                                ; 1394 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1396 _ 8B. 45, 08
        add     edx, eax                                ; 1399 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 139B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 139F _ 88. 02
?_042:  add     dword [ebp-4H], 1                       ; 13A1 _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 15                      ; 13A5 _ 83. 7D, FC, 0F
        jle     ?_039                                   ; 13A9 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 13AF _ 83. 45, F8, 01
?_044:  cmp     dword [ebp-8H], 15                      ; 13B3 _ 83. 7D, F8, 0F
        jle     ?_038                                   ; 13B7 _ 0F 8E, FFFFFF45
        nop                                             ; 13BD _ 90
        leave                                           ; 13BE _ C9
        ret                                             ; 13BF _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 13C0 _ 55
        mov     ebp, esp                                ; 13C1 _ 89. E5
        push    ebx                                     ; 13C3 _ 53
        sub     esp, 16                                 ; 13C4 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 13C7 _ C7. 45, F4, 00000000
        jmp     ?_048                                   ; 13CE _ EB, 4E

?_045:  mov     dword [ebp-8H], 0                       ; 13D0 _ C7. 45, F8, 00000000
        jmp     ?_047                                   ; 13D7 _ EB, 39

?_046:  mov     eax, dword [ebp-0CH]                    ; 13D9 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 13DC _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 13E0 _ 8B. 55, F8
        add     eax, edx                                ; 13E3 _ 01. D0
        mov     edx, eax                                ; 13E5 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 13E7 _ 8B. 45, 20
        add     eax, edx                                ; 13EA _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 13EC _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 13EF _ 8B. 55, F4
        add     edx, ecx                                ; 13F2 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 13F4 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 13F8 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 13FB _ 8B. 4D, F8
        add     ecx, ebx                                ; 13FE _ 01. D9
        add     edx, ecx                                ; 1400 _ 01. CA
        mov     ecx, edx                                ; 1402 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1404 _ 8B. 55, 08
        add     edx, ecx                                ; 1407 _ 01. CA
        movzx   eax, byte [eax]                         ; 1409 _ 0F B6. 00
        mov     byte [edx], al                          ; 140C _ 88. 02
        add     dword [ebp-8H], 1                       ; 140E _ 83. 45, F8, 01
?_047:  mov     eax, dword [ebp-8H]                     ; 1412 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1415 _ 3B. 45, 10
        jl      ?_046                                   ; 1418 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 141A _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp-0CH]                    ; 141E _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 1421 _ 3B. 45, 14
        jl      ?_045                                   ; 1424 _ 7C, AA
        nop                                             ; 1426 _ 90
        add     esp, 16                                 ; 1427 _ 83. C4, 10
        pop     ebx                                     ; 142A _ 5B
        pop     ebp                                     ; 142B _ 5D
        ret                                             ; 142C _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 142D _ 55
        mov     ebp, esp                                ; 142E _ 89. E5
        sub     esp, 40                                 ; 1430 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 1433 _ A1, 00000008(d)
        mov     dword [ebp-0CH], eax                    ; 1438 _ 89. 45, F4
        movzx   eax, word [?_239]                       ; 143B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1442 _ 98
        mov     dword [ebp-10H], eax                    ; 1443 _ 89. 45, F0
        movzx   eax, word [?_240]                       ; 1446 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 144D _ 98
        mov     dword [ebp-14H], eax                    ; 144E _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 1451 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1459 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1460 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1465 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1469 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1470 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1475 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1478 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 147C _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1480 _ C7. 04 24, 00000010(d)
        call    _fifo8_put                              ; 1487 _ E8, 00000000(rel)
        nop                                             ; 148C _ 90
        leave                                           ; 148D _ C9
        ret                                             ; 148E _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 148F _ 55
        mov     ebp, esp                                ; 1490 _ 89. E5
        sub     esp, 4                                  ; 1492 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1495 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1498 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 149B _ 80. 7D, FC, 09
        jle     ?_049                                   ; 149F _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 14A1 _ 0F B6. 45, FC
        add     eax, 55                                 ; 14A5 _ 83. C0, 37
        jmp     ?_050                                   ; 14A8 _ EB, 07

?_049:  movzx   eax, byte [ebp-4H]                      ; 14AA _ 0F B6. 45, FC
        add     eax, 48                                 ; 14AE _ 83. C0, 30
?_050:  leave                                           ; 14B1 _ C9
        ret                                             ; 14B2 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 14B3 _ 55
        mov     ebp, esp                                ; 14B4 _ 89. E5
        sub     esp, 24                                 ; 14B6 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 14B9 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 14BC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 14BF _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 14C6 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 14CA _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 14CD _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 14D0 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 14D4 _ 89. 04 24
        call    _charToHexVal                           ; 14D7 _ E8, FFFFFFB3
        mov     byte [?_228], al                        ; 14DC _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 14E1 _ 0F B6. 45, EC
        shr     al, 4                                   ; 14E5 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 14E8 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 14EB _ 0F B6. 45, EC
        movsx   eax, al                                 ; 14EF _ 0F BE. C0
        mov     dword [esp], eax                        ; 14F2 _ 89. 04 24
        call    _charToHexVal                           ; 14F5 _ E8, FFFFFF95
        mov     byte [?_227], al                        ; 14FA _ A2, 00000102(d)
        mov     eax, _keyval                            ; 14FF _ B8, 00000100(d)
        leave                                           ; 1504 _ C9
        ret                                             ; 1505 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1506 _ 55
        mov     ebp, esp                                ; 1507 _ 89. E5
        sub     esp, 16                                 ; 1509 _ 83. EC, 10
        mov     byte [_str.2456], 48                    ; 150C _ C6. 05, 00000368(d), 30
        mov     byte [?_243], 88                        ; 1513 _ C6. 05, 00000369(d), 58
        mov     byte [?_244], 0                         ; 151A _ C6. 05, 00000372(d), 00
        mov     dword [ebp-4H], 2                       ; 1521 _ C7. 45, FC, 00000002
        jmp     ?_052                                   ; 1528 _ EB, 0F

?_051:  mov     eax, dword [ebp-4H]                     ; 152A _ 8B. 45, FC
        add     eax, _str.2456                          ; 152D _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 1532 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1535 _ 83. 45, FC, 01
?_052:  cmp     dword [ebp-4H], 9                       ; 1539 _ 83. 7D, FC, 09
        jle     ?_051                                   ; 153D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 153F _ C7. 45, F8, 00000009
        jmp     ?_056                                   ; 1546 _ EB, 42

?_053:  mov     eax, dword [ebp+8H]                     ; 1548 _ 8B. 45, 08
        and     eax, 0FH                                ; 154B _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 154E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1551 _ 8B. 45, 08
        shr     eax, 4                                  ; 1554 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1557 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 155A _ 83. 7D, F4, 09
        jle     ?_054                                   ; 155E _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1560 _ 8B. 45, F4
        add     eax, 55                                 ; 1563 _ 83. C0, 37
        mov     edx, eax                                ; 1566 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1568 _ 8B. 45, F8
        add     eax, _str.2456                          ; 156B _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1570 _ 88. 10
        jmp     ?_055                                   ; 1572 _ EB, 12

?_054:  mov     eax, dword [ebp-0CH]                    ; 1574 _ 8B. 45, F4
        add     eax, 48                                 ; 1577 _ 83. C0, 30
        mov     edx, eax                                ; 157A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 157C _ 8B. 45, F8
        add     eax, _str.2456                          ; 157F _ 05, 00000368(d)
        mov     byte [eax], dl                          ; 1584 _ 88. 10
?_055:  sub     dword [ebp-8H], 1                       ; 1586 _ 83. 6D, F8, 01
?_056:  cmp     dword [ebp-8H], 1                       ; 158A _ 83. 7D, F8, 01
        jle     ?_057                                   ; 158E _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1590 _ 83. 7D, 08, 00
        jnz     ?_053                                   ; 1594 _ 75, B2
?_057:  mov     eax, _str.2456                          ; 1596 _ B8, 00000368(d)
        leave                                           ; 159B _ C9
        ret                                             ; 159C _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 159D _ 55
        mov     ebp, esp                                ; 159E _ 89. E5
        sub     esp, 24                                 ; 15A0 _ 83. EC, 18
?_058:  mov     dword [esp], 100                        ; 15A3 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 15AA _ E8, 00000000(rel)
        and     eax, 02H                                ; 15AF _ 83. E0, 02
        test    eax, eax                                ; 15B2 _ 85. C0
        jz      ?_059                                   ; 15B4 _ 74, 02
        jmp     ?_058                                   ; 15B6 _ EB, EB
; _wait_KBC_sendready End of function

?_059:  ; Local function
        nop                                             ; 15B8 _ 90
        nop                                             ; 15B9 _ 90
        leave                                           ; 15BA _ C9
        ret                                             ; 15BB _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 15BC _ 55
        mov     ebp, esp                                ; 15BD _ 89. E5
        sub     esp, 24                                 ; 15BF _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 15C2 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 15C7 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 15CF _ C7. 04 24, 00000064
        call    _io_out8                                ; 15D6 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 15DB _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 15E0 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 15E8 _ C7. 04 24, 00000060
        call    _io_out8                                ; 15EF _ E8, 00000000(rel)
        nop                                             ; 15F4 _ 90
        leave                                           ; 15F5 _ C9
        ret                                             ; 15F6 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 15F7 _ 55
        mov     ebp, esp                                ; 15F8 _ 89. E5
        sub     esp, 24                                 ; 15FA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 15FD _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1602 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 160A _ C7. 04 24, 00000064
        call    _io_out8                                ; 1611 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1616 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 161B _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1623 _ C7. 04 24, 00000060
        call    _io_out8                                ; 162A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 162F _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1632 _ C6. 40, 03, 00
        nop                                             ; 1636 _ 90
        leave                                           ; 1637 _ C9
        ret                                             ; 1638 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1639 _ 55
        mov     ebp, esp                                ; 163A _ 89. E5
        sub     esp, 40                                 ; 163C _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 163F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1647 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 164E _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1653 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 165B _ C7. 04 24, 00000020
        call    _io_out8                                ; 1662 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1667 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 166E _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1673 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1676 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 167A _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 167E _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 1685 _ E8, 00000000(rel)
        nop                                             ; 168A _ 90
        leave                                           ; 168B _ C9
        ret                                             ; 168C _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 168D _ 55
        mov     ebp, esp                                ; 168E _ 89. E5
        sub     esp, 4                                  ; 1690 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1693 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1696 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1699 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 169C _ 0F B6. 40, 03
        test    al, al                                  ; 16A0 _ 84. C0
        jnz     ?_061                                   ; 16A2 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 16A4 _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 16A8 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 16AA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 16AD _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 16B1 _ B8, 00000000
        jmp     ?_068                                   ; 16B6 _ E9, 0000010F

?_061:  mov     eax, dword [ebp+8H]                     ; 16BB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16BE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 16C2 _ 3C, 01
        jnz     ?_063                                   ; 16C4 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 16C6 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 16CA _ 25, 000000C8
        cmp     eax, 8                                  ; 16CF _ 83. F8, 08
        jnz     ?_062                                   ; 16D2 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 16D4 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 16D7 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 16DB _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 16DD _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 16E0 _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 16E4 _ B8, 00000000
        jmp     ?_068                                   ; 16E9 _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16F1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 16F5 _ 3C, 02
        jnz     ?_064                                   ; 16F7 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 16F9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 16FC _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1700 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1703 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1706 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 170A _ B8, 00000000
        jmp     ?_068                                   ; 170F _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 1714 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1717 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 171B _ 3C, 03
        jne     ?_067                                   ; 171D _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1723 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1726 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 172A _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 172D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1730 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1734 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1737 _ 0F B6. 00
        movzx   eax, al                                 ; 173A _ 0F B6. C0
        and     eax, 07H                                ; 173D _ 83. E0, 07
        mov     edx, eax                                ; 1740 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1742 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1745 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1748 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 174B _ 0F B6. 40, 01
        movzx   eax, al                                 ; 174F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1752 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1755 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1758 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 175B _ 0F B6. 40, 02
        movzx   eax, al                                 ; 175F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1762 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1765 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1768 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 176B _ 0F B6. 00
        movzx   eax, al                                 ; 176E _ 0F B6. C0
        and     eax, 10H                                ; 1771 _ 83. E0, 10
        test    eax, eax                                ; 1774 _ 85. C0
        jz      ?_065                                   ; 1776 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1778 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 177B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 177E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1783 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1785 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1788 _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 178B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 178E _ 0F B6. 00
        movzx   eax, al                                 ; 1791 _ 0F B6. C0
        and     eax, 20H                                ; 1794 _ 83. E0, 20
        test    eax, eax                                ; 1797 _ 85. C0
        jz      ?_066                                   ; 1799 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 179B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 179E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 17A1 _ 0D, FFFFFF00
        mov     edx, eax                                ; 17A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17A8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17AB _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 17AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 17B1 _ 8B. 40, 08
        neg     eax                                     ; 17B4 _ F7. D8
        mov     edx, eax                                ; 17B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17B8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17BB _ 89. 50, 08
        mov     eax, 1                                  ; 17BE _ B8, 00000001
        jmp     ?_068                                   ; 17C3 _ EB, 05

?_067:  mov     eax, 4294967295                         ; 17C5 _ B8, FFFFFFFF
?_068:  leave                                           ; 17CA _ C9
        ret                                             ; 17CB _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 17CC _ 55
        mov     ebp, esp                                ; 17CD _ 89. E5
        sub     esp, 72                                 ; 17CF _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 17D2 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 17D9 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 17E0 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 17E7 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 17EE _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 17F4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17F7 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 17F9 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 17FD _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1800 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1804 _ 89. 04 24
        call    _init_screen8                           ; 1807 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 180C _ 8B. 45, 20
        movsx   eax, al                                 ; 180F _ 0F BE. C0
        mov     dword [esp+14H], ?_234                  ; 1812 _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], eax                    ; 181A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 181E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1821 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1825 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1828 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 182C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 182F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1833 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1836 _ 89. 04 24
        call    _showString                             ; 1839 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 183E _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1841 _ 89. 04 24
        call    _intToHexStr                            ; 1844 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1849 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 184C _ 8B. 45, 20
        movsx   eax, al                                 ; 184F _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1852 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1855 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1859 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 185D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1860 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1864 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1867 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 186B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 186E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1872 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1875 _ 89. 04 24
        call    _showString                             ; 1878 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 187D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1881 _ 8B. 45, 20
        movsx   eax, al                                 ; 1884 _ 0F BE. C0
        mov     dword [esp+14H], ?_235                  ; 1887 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], eax                    ; 188F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1893 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1896 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 189A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 189D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18A1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18A4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18A8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18AB _ 89. 04 24
        call    _showString                             ; 18AE _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 18B3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 18B6 _ 8B. 00
        mov     dword [esp], eax                        ; 18B8 _ 89. 04 24
        call    _intToHexStr                            ; 18BB _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 18C0 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 18C3 _ 8B. 45, 20
        movsx   eax, al                                 ; 18C6 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 18C9 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 18CC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 18D0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18D4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18D7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 18DB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 18DE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18E2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18EC _ 89. 04 24
        call    _showString                             ; 18EF _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 18F4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 18F8 _ 8B. 45, 20
        movsx   eax, al                                 ; 18FB _ 0F BE. C0
        mov     dword [esp+14H], ?_236                  ; 18FE _ C7. 44 24, 14, 0000003C(d)
        mov     dword [esp+10H], eax                    ; 1906 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 190A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 190D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1911 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1914 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1918 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 191B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 191F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1922 _ 89. 04 24
        call    _showString                             ; 1925 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 192A _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 192D _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1930 _ 89. 04 24
        call    _intToHexStr                            ; 1933 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1938 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 193B _ 8B. 45, 20
        movsx   eax, al                                 ; 193E _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1941 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1944 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1948 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 194C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 194F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1953 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1956 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 195A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 195D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1961 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1964 _ 89. 04 24
        call    _showString                             ; 1967 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 196C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1970 _ 8B. 45, 20
        movsx   eax, al                                 ; 1973 _ 0F BE. C0
        mov     dword [esp+14H], ?_237                  ; 1976 _ C7. 44 24, 14, 00000048(d)
        mov     dword [esp+10H], eax                    ; 197E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1982 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1985 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1989 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 198C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1990 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1993 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1997 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 199A _ 89. 04 24
        call    _showString                             ; 199D _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 19A2 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 19A5 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 19A8 _ 89. 04 24
        call    _intToHexStr                            ; 19AB _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 19B0 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 19B3 _ 8B. 45, 20
        movsx   eax, al                                 ; 19B6 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 19B9 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 19BC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19C0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19C4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19C7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 19CB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 19CE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19D2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19D5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19D9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19DC _ 89. 04 24
        call    _showString                             ; 19DF _ E8, FFFFF5C8
        nop                                             ; 19E4 _ 90
        leave                                           ; 19E5 _ C9
        ret                                             ; 19E6 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 19E7 _ 55
        mov     ebp, esp                                ; 19E8 _ 89. E5
        sub     esp, 56                                 ; 19EA _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 19ED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19F0 _ 89. 04 24
        call    _sheet_alloc                            ; 19F3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 19F8 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 19FB _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1A00 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1A08 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1A0B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1A10 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1A13 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1A1B _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1A23 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1A2B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1A2E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1A32 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A35 _ 89. 04 24
        call    _sheet_setbuf                           ; 1A38 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 1A3D _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 1A45 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1A48 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1A4C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A56 _ 89. 04 24
        call    _make_window8                           ; 1A59 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1A5E _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1A66 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1A6E _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1A76 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1A7E _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1A86 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A89 _ 89. 04 24
        call    _make_textbox8                          ; 1A8C _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 1A91 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 1A99 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 1AA1 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1AA4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AA8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AAB _ 89. 04 24
        call    _sheet_slide                            ; 1AAE _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1AB3 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1ABB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1ABE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AC2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AC5 _ 89. 04 24
        call    _sheet_updown                           ; 1AC8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1ACD _ 8B. 45, F4
        leave                                           ; 1AD0 _ C9
        ret                                             ; 1AD1 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1AD2 _ 55
        mov     ebp, esp                                ; 1AD3 _ 89. E5
        push    ebx                                     ; 1AD5 _ 53
        sub     esp, 68                                 ; 1AD6 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1AD9 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1ADC _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1ADF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AE2 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1AE5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1AE8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1AEB _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 1AEE _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 1AF1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1AF4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AF7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AFA _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1AFC _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1B04 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1B08 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B10 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B18 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1B20 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1B23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B27 _ 89. 04 24
        call    _boxfill8                               ; 1B2A _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 1B2F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1B32 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B35 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B38 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1B3A _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1B42 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1B46 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B4E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B56 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1B5E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1B61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B65 _ 89. 04 24
        call    _boxfill8                               ; 1B68 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 1B6D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1B70 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B73 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B76 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B78 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1B7C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1B84 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B8C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B94 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1B9C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1B9F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA3 _ 89. 04 24
        call    _boxfill8                               ; 1BA6 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 1BAB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1BAE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BB1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BB4 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1BB6 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1BBA _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1BC2 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1BCA _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1BD2 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 1BDA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1BDD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BE1 _ 89. 04 24
        call    _boxfill8                               ; 1BE4 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 1BE9 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1BEC _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1BEF _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1BF2 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1BF5 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1BF8 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1BFB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BFE _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C00 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C04 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1C08 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1C10 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1C14 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1C1C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C1F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C23 _ 89. 04 24
        call    _boxfill8                               ; 1C26 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 1C2B _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1C2E _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1C31 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1C34 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1C37 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1C3A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C40 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C42 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C46 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1C4A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1C52 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1C56 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1C5E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1C61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C65 _ 89. 04 24
        call    _boxfill8                               ; 1C68 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 1C6D _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 1C70 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 1C73 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 1C76 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C79 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C7C _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1C7E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1C82 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1C86 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1C8E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1C96 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 1C9E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CA1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CA5 _ 89. 04 24
        call    _boxfill8                               ; 1CA8 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 1CAD _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 1CB0 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1CB3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CB6 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1CB8 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1CC0 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1CC4 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1CCC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1CD4 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 1CDC _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1CDF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CE3 _ 89. 04 24
        call    _boxfill8                               ; 1CE6 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 1CEB _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 1CEE _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 1CF1 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 1CF4 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1CF7 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1CFA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D00 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D02 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D06 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D0A _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1D0E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1D16 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 1D1E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D25 _ 89. 04 24
        call    _boxfill8                               ; 1D28 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 1D2D _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 1D30 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 1D33 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1D36 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1D39 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1D3C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D3F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D42 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D44 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D48 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D4C _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1D50 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1D58 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 1D60 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 1D63 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D67 _ 89. 04 24
        call    _boxfill8                               ; 1D6A _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 1D6F _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1D73 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1D77 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1D7A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1D7E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D81 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D85 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D88 _ 89. 04 24
        call    _make_wtitle8                           ; 1D8B _ E8, 00000007
        nop                                             ; 1D90 _ 90
        add     esp, 68                                 ; 1D91 _ 83. C4, 44
        pop     ebx                                     ; 1D94 _ 5B
        pop     ebp                                     ; 1D95 _ 5D
        ret                                             ; 1D96 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 1D97 _ 55
        mov     ebp, esp                                ; 1D98 _ 89. E5
        push    ebx                                     ; 1D9A _ 53
        sub     esp, 68                                 ; 1D9B _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 1D9E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1DA1 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1DA4 _ 80. 7D, E4, 00
        jz      ?_069                                   ; 1DA8 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1DAA _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 1DAE _ C6. 45, ED, 0C
        jmp     ?_070                                   ; 1DB2 _ EB, 08

?_069:  mov     byte [ebp-12H], 8                       ; 1DB4 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 1DB8 _ C6. 45, ED, 0F
?_070:  mov     eax, dword [ebp+0CH]                    ; 1DBC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DBF _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1DC2 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 1DC5 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 1DC9 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 1DCC _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 1DCF _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1DD2 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 1DD5 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 1DD7 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1DDF _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1DE3 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1DEB _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 1DF3 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1DF7 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1DFB _ 89. 14 24
        call    _boxfill8                               ; 1DFE _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 1E03 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 1E07 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1E0A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1E0E _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1E12 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1E1A _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1E22 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E25 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E29 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E2C _ 89. 04 24
        call    _showString                             ; 1E2F _ E8, FFFFF178
        mov     dword [ebp-10H], 0                      ; 1E34 _ C7. 45, F0, 00000000
        jmp     ?_078                                   ; 1E3B _ E9, 00000084

?_071:  mov     dword [ebp-0CH], 0                      ; 1E40 _ C7. 45, F4, 00000000
        jmp     ?_077                                   ; 1E47 _ EB, 71

?_072:  mov     eax, dword [ebp-10H]                    ; 1E49 _ 8B. 45, F0
        shl     eax, 4                                  ; 1E4C _ C1. E0, 04
        mov     edx, eax                                ; 1E4F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1E51 _ 8B. 45, F4
        add     eax, edx                                ; 1E54 _ 01. D0
        add     eax, _closebtn.2528                     ; 1E56 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 1E5B _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1E5E _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1E61 _ 80. 7D, EF, 40
        jnz     ?_073                                   ; 1E65 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1E67 _ C6. 45, EF, 00
        jmp     ?_076                                   ; 1E6B _ EB, 1C

?_073:  cmp     byte [ebp-11H], 36                      ; 1E6D _ 80. 7D, EF, 24
        jnz     ?_074                                   ; 1E71 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1E73 _ C6. 45, EF, 0F
        jmp     ?_076                                   ; 1E77 _ EB, 10

?_074:  cmp     byte [ebp-11H], 81                      ; 1E79 _ 80. 7D, EF, 51
        jnz     ?_075                                   ; 1E7D _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1E7F _ C6. 45, EF, 08
        jmp     ?_076                                   ; 1E83 _ EB, 04

?_075:  mov     byte [ebp-11H], 7                       ; 1E85 _ C6. 45, EF, 07
?_076:  mov     eax, dword [ebp+0CH]                    ; 1E89 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1E8C _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1E8E _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1E91 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1E94 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E97 _ 8B. 40, 04
        imul    eax, edx                                ; 1E9A _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1E9D _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1EA0 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1EA3 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1EA6 _ 8B. 55, F4
        add     edx, ebx                                ; 1EA9 _ 01. DA
        add     eax, edx                                ; 1EAB _ 01. D0
        lea     edx, [ecx+eax]                          ; 1EAD _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1EB0 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1EB4 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1EB6 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 15                     ; 1EBA _ 83. 7D, F4, 0F
        jle     ?_072                                   ; 1EBE _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1EC0 _ 83. 45, F0, 01
?_078:  cmp     dword [ebp-10H], 13                     ; 1EC4 _ 83. 7D, F0, 0D
        jle     ?_071                                   ; 1EC8 _ 0F 8E, FFFFFF72
        nop                                             ; 1ECE _ 90
        add     esp, 68                                 ; 1ECF _ 83. C4, 44
        pop     ebx                                     ; 1ED2 _ 5B
        pop     ebp                                     ; 1ED3 _ 5D
        ret                                             ; 1ED4 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1ED5 _ 55
        mov     ebp, esp                                ; 1ED6 _ 89. E5
        push    edi                                     ; 1ED8 _ 57
        push    esi                                     ; 1ED9 _ 56
        push    ebx                                     ; 1EDA _ 53
        sub     esp, 44                                 ; 1EDB _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1EDE _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1EE1 _ 8B. 45, 14
        add     eax, edx                                ; 1EE4 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1EE6 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1EE9 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1EEC _ 8B. 45, 18
        add     eax, edx                                ; 1EEF _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1EF1 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1EF4 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1EF7 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1EFA _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1EFD _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1F00 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F03 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1F06 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1F09 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1F0C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F0F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F12 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F15 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F17 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F1B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F1F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F23 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1F27 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1F2F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F33 _ 89. 04 24
        call    _boxfill8                               ; 1F36 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 1F3B _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1F3E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1F41 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1F44 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1F47 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F4A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1F4D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1F50 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1F53 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F56 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F59 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F5C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F5E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F62 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F66 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1F6E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1F76 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F7A _ 89. 04 24
        call    _boxfill8                               ; 1F7D _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 1F82 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1F85 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1F88 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1F8B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1F8E _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1F91 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1F94 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1F97 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1F9A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F9D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FA0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FA3 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1FA5 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FA9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FAD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FB1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1FB5 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1FBD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FC1 _ 89. 04 24
        call    _boxfill8                               ; 1FC4 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 1FC9 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1FCC _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1FCF _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1FD2 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1FD5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1FD8 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1FDB _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1FDE _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1FE1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FE4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FE7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FEA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1FEC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FF0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FF4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FF8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1FFC _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2004 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2008 _ 89. 04 24
        call    _boxfill8                               ; 200B _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 2010 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 2013 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 2016 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2019 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 201C _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 201F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2022 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2025 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2028 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 202B _ 8B. 00
        mov     dword [esp+18H], esi                    ; 202D _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2031 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 2034 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2038 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 203C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2040 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2048 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 204C _ 89. 04 24
        call    _boxfill8                               ; 204F _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 2054 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 2057 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 205A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 205D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 2060 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2063 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2066 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2069 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 206C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 206F _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 2071 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2074 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2078 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 207C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2080 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2084 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 208C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2090 _ 89. 04 24
        call    _boxfill8                               ; 2093 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 2098 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 209B _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 209E _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 20A1 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 20A4 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 20A7 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 20AA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20AD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20B0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20B3 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 20B5 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 20B9 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 20BC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20C0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20C4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 20C8 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 20D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20D4 _ 89. 04 24
        call    _boxfill8                               ; 20D7 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 20DC _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 20DF _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 20E2 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 20E5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 20E8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 20EB _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 20EE _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 20F1 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 20F4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20F7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20FA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20FD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 20FF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2103 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2107 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 210B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 210F _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2117 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 211B _ 89. 04 24
        call    _boxfill8                               ; 211E _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 2123 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 2126 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2129 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 212C _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 212F _ 8B. 45, 1C
        movzx   eax, al                                 ; 2132 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2135 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2138 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 213B _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 213E _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 2140 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 2143 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2147 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 214A _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 214E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2152 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2156 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 215A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 215E _ 89. 14 24
        call    _boxfill8                               ; 2161 _ E8, FFFFEFB3
        nop                                             ; 2166 _ 90
        add     esp, 44                                 ; 2167 _ 83. C4, 2C
        pop     ebx                                     ; 216A _ 5B
        pop     esi                                     ; 216B _ 5E
        pop     edi                                     ; 216C _ 5F
        pop     ebp                                     ; 216D _ 5D
        ret                                             ; 216E _ C3
; _make_textbox8 End of function

_multi_windows:; Function begin
        push    ebp                                     ; 216F _ 55
        mov     ebp, esp                                ; 2170 _ 89. E5
        sub     esp, 88                                 ; 2172 _ 83. EC, 58
        call    _get_addr_code32                        ; 2175 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 217A _ 89. 45, F0
        mov     byte [ebp-2AH], 116                     ; 217D _ C6. 45, D6, 74
        mov     byte [ebp-29H], 97                      ; 2181 _ C6. 45, D7, 61
        mov     byte [ebp-28H], 115                     ; 2185 _ C6. 45, D8, 73
        mov     byte [ebp-27H], 107                     ; 2189 _ C6. 45, D9, 6B
        mov     byte [ebp-26H], 0                       ; 218D _ C6. 45, DA, 00
        mov     byte [ebp-25H], 0                       ; 2191 _ C6. 45, DB, 00
        mov     dword [ebp-0CH], 0                      ; 2195 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 219C _ C7. 45, F4, 00000000
        jmp     ?_080                                   ; 21A3 _ E9, 000001B9

?_079:  mov     eax, dword [_shtctl]                    ; 21A8 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 21AD _ 89. 04 24
        call    _sheet_alloc                            ; 21B0 _ E8, 00000000(rel)
        mov     edx, eax                                ; 21B5 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 21B7 _ 8B. 45, F4
        mov     dword [ebp+eax*4-24H], edx              ; 21BA _ 89. 54 85, DC
        mov     eax, dword [_memman]                    ; 21BE _ A1, 00000000(d)
        mov     dword [esp+4H], 7488                    ; 21C3 _ C7. 44 24, 04, 00001D40
        mov     dword [esp], eax                        ; 21CB _ 89. 04 24
        call    _memman_alloc_4k                        ; 21CE _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 21D3 _ 89. 45, EC
        mov     eax, dword [ebp-0CH]                    ; 21D6 _ 8B. 45, F4
        add     eax, 98                                 ; 21D9 _ 83. C0, 62
        mov     byte [ebp-15H], al                      ; 21DC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 21DF _ 0F B6. 45, EB
        mov     byte [ebp-26H], al                      ; 21E3 _ 88. 45, DA
        mov     eax, dword [ebp-0CH]                    ; 21E6 _ 8B. 45, F4
        mov     eax, dword [ebp+eax*4-24H]              ; 21E9 _ 8B. 44 85, DC
        mov     dword [esp+10H], -1                     ; 21ED _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 52                     ; 21F5 _ C7. 44 24, 0C, 00000034
        mov     dword [esp+8H], 144                     ; 21FD _ C7. 44 24, 08, 00000090
        mov     edx, dword [ebp-14H]                    ; 2205 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2208 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 220C _ 89. 04 24
        call    _sheet_setbuf                           ; 220F _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2214 _ 8B. 45, F4
        mov     ecx, dword [ebp+eax*4-24H]              ; 2217 _ 8B. 4C 85, DC
        mov     edx, dword [_shtctl]                    ; 221B _ 8B. 15, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 2221 _ C7. 44 24, 0C, 00000001
        lea     eax, [ebp-2AH]                          ; 2229 _ 8D. 45, D6
        mov     dword [esp+8H], eax                     ; 222C _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2230 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2234 _ 89. 14 24
        call    _make_window8                           ; 2237 _ E8, FFFFF896
        call    _task_alloc                             ; 223C _ E8, 00000000(rel)
        mov     edx, eax                                ; 2241 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2243 _ 8B. 45, F4
        mov     dword [_task_b.2554+eax*4], edx         ; 2246 _ 89. 14 85, 00000374(d)
        mov     eax, dword [ebp-0CH]                    ; 224D _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2250 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+8CH], 0                      ; 2257 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2261 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2264 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+90H], 1073741824             ; 226B _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-10H]                    ; 2275 _ 8B. 45, F0
        neg     eax                                     ; 2278 _ F7. D8
        lea     edx, [_task_b_main+eax]                 ; 227A _ 8D. 90, 000008D7(d)
        mov     eax, dword [ebp-0CH]                    ; 2280 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2283 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+4CH], edx                    ; 228A _ 89. 50, 4C
        mov     eax, dword [ebp-0CH]                    ; 228D _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2290 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+74H], 0                      ; 2297 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-0CH]                    ; 229E _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22A1 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+78H], 8                      ; 22A8 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-0CH]                    ; 22AF _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22B2 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+7CH], 32                     ; 22B9 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-0CH]                    ; 22C0 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22C3 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+80H], 24                     ; 22CA _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-0CH]                    ; 22D4 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22D7 _ 8B. 04 85, 00000374(d)
        mov     dword [eax+84H], 0                      ; 22DE _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-0CH]                    ; 22E8 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22EB _ 8B. 04 85, 00000374(d)
        mov     dword [eax+88H], 16                     ; 22F2 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-0CH]                    ; 22FC _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 22FF _ 8B. 04 85, 00000374(d)
        mov     edx, dword [eax+64H]                    ; 2306 _ 8B. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 2309 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 230C _ 8B. 04 85, 00000374(d)
        sub     edx, 8                                  ; 2313 _ 83. EA, 08
        mov     dword [eax+64H], edx                    ; 2316 _ 89. 50, 64
        mov     eax, dword [ebp-0CH]                    ; 2319 _ 8B. 45, F4
        mov     edx, dword [ebp+eax*4-24H]              ; 231C _ 8B. 54 85, DC
        mov     eax, dword [ebp-0CH]                    ; 2320 _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2323 _ 8B. 04 85, 00000374(d)
        mov     eax, dword [eax+64H]                    ; 232A _ 8B. 40, 64
        add     eax, 4                                  ; 232D _ 83. C0, 04
        mov     dword [eax], edx                        ; 2330 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2332 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 2335 _ 8D. 50, 01
        mov     eax, edx                                ; 2338 _ 89. D0
        shl     eax, 2                                  ; 233A _ C1. E0, 02
        add     edx, eax                                ; 233D _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 233F _ 8B. 45, F4
        mov     eax, dword [_task_b.2554+eax*4]         ; 2342 _ 8B. 04 85, 00000374(d)
        mov     dword [esp+8H], edx                     ; 2349 _ 89. 54 24, 08
        mov     dword [esp+4H], 1                       ; 234D _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2355 _ 89. 04 24
        call    _task_run                               ; 2358 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 235D _ 83. 45, F4, 01
?_080:  cmp     dword [ebp-0CH], 1                      ; 2361 _ 83. 7D, F4, 01
        jle     ?_079                                   ; 2365 _ 0F 8E, FFFFFE3D
        mov     edx, dword [ebp-24H]                    ; 236B _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 236E _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 2373 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 16                      ; 237B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 2383 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2387 _ 89. 04 24
        call    _sheet_slide                            ; 238A _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 238F _ 8B. 55, DC
        mov     eax, dword [_shtctl]                    ; 2392 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 2397 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 239F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23A3 _ 89. 04 24
        call    _sheet_updown                           ; 23A6 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 23AB _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 23AE _ A1, 00000264(d)
        mov     dword [esp+0CH], 28                     ; 23B3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 160                     ; 23BB _ C7. 44 24, 08, 000000A0
        mov     dword [esp+4H], edx                     ; 23C3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23C7 _ 89. 04 24
        call    _sheet_slide                            ; 23CA _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 23CF _ 8B. 55, E0
        mov     eax, dword [_shtctl]                    ; 23D2 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 23D7 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 23DF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23E3 _ 89. 04 24
        call    _sheet_updown                           ; 23E6 _ E8, 00000000(rel)
        nop                                             ; 23EB _ 90
        leave                                           ; 23EC _ C9
        ret                                             ; 23ED _ C3
; _multi_windows End of function

_launch_console:; Function begin
        push    ebp                                     ; 23EE _ 55
        mov     ebp, esp                                ; 23EF _ 89. E5
        sub     esp, 56                                 ; 23F1 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 23F4 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 23F9 _ 89. 04 24
        call    _sheet_alloc                            ; 23FC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2401 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2404 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 2409 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 2411 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2414 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2419 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 241C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 2424 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 242C _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 2434 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2437 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 243B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 243E _ 89. 04 24
        call    _sheet_setbuf                           ; 2441 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2446 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 244B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_231                   ; 2453 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 245B _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 245E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2462 _ 89. 04 24
        call    _make_window8                           ; 2465 _ E8, FFFFF668
        mov     dword [esp+14H], 0                      ; 246A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 2472 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 247A _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 2482 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 248A _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2492 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2495 _ 89. 04 24
        call    _make_textbox8                          ; 2498 _ E8, FFFFFA38
        call    _task_alloc                             ; 249D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 24A2 _ 89. 45, EC
        call    _get_addr_code32                        ; 24A5 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 24AA _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 24AD _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 24B0 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 24BA _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 24BD _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 24C7 _ 8B. 45, E8
        neg     eax                                     ; 24CA _ F7. D8
        add     eax, _console_task                      ; 24CC _ 05, 000025A5(d)
        mov     edx, eax                                ; 24D1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 24D3 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 24D6 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 24D9 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 24DC _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 24E3 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 24E6 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 24ED _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 24F0 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 24F7 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 24FA _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 2504 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 2507 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 2511 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 2514 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 251E _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 2521 _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 2524 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 2527 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 252A _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 252D _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 2530 _ 8B. 40, 64
        add     eax, 4                                  ; 2533 _ 83. C0, 04
        mov     edx, eax                                ; 2536 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2538 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 253B _ 89. 02
        mov     dword [esp+8H], 5                       ; 253D _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 2545 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 254D _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2550 _ 89. 04 24
        call    _task_run                               ; 2553 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2558 _ A1, 00000264(d)
        mov     dword [esp+0CH], 4                      ; 255D _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 2565 _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 256D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2570 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2574 _ 89. 04 24
        call    _sheet_slide                            ; 2577 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 257C _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 2581 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 2589 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 258C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2590 _ 89. 04 24
        call    _sheet_updown                           ; 2593 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 2598 _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 259B _ A3, 00000274(d)
        mov     eax, dword [ebp-0CH]                    ; 25A0 _ 8B. 45, F4
        leave                                           ; 25A3 _ C9
        ret                                             ; 25A4 _ C3
; _launch_console End of function

_console_task:; Function begin
        push    ebp                                     ; 25A5 _ 55
        mov     ebp, esp                                ; 25A6 _ 89. E5
        sub     esp, 600                                ; 25A8 _ 81. EC, 00000258
        call    _task_now                               ; 25AE _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 25B3 _ 89. 45, EC
        mov     dword [ebp-0CH], 16                     ; 25B6 _ C7. 45, F4, 00000010
        mov     dword [ebp-18H], 28                     ; 25BD _ C7. 45, E8, 0000001C
        mov     dword [ebp-10H], 0                      ; 25C4 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 25CB _ 8B. 45, EC
        lea     edx, [eax+10H]                          ; 25CE _ 8D. 50, 10
        mov     eax, dword [ebp-14H]                    ; 25D1 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 25D4 _ 89. 44 24, 0C
        lea     eax, [ebp-228H]                         ; 25D8 _ 8D. 85, FFFFFDD8
        mov     dword [esp+8H], eax                     ; 25DE _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 25E2 _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 25EA _ 89. 14 24
        call    _fifo8_init                             ; 25ED _ E8, 00000000(rel)
        call    _timer_alloc                            ; 25F2 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 25F7 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 25FA _ 8B. 45, EC
        add     eax, 16                                 ; 25FD _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 2600 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 2608 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 260C _ 8B. 45, E4
        mov     dword [esp], eax                        ; 260F _ 89. 04 24
        call    _timer_init                             ; 2612 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 2617 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-1CH]                    ; 261F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 2622 _ 89. 04 24
        call    _timer_settime                          ; 2625 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 262A _ A1, 00000264(d)
        mov     dword [esp+14H], ?_238                  ; 262F _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], 7                      ; 2637 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 263F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2647 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 264F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2652 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2656 _ 89. 04 24
        call    _showString                             ; 2659 _ E8, FFFFE94E
        mov     dword [ebp-20H], 0                      ; 265E _ C7. 45, E0, 00000000
?_081:  call    _io_cli                                 ; 2665 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 266A _ 8B. 45, EC
        add     eax, 16                                 ; 266D _ 83. C0, 10
        mov     dword [esp], eax                        ; 2670 _ 89. 04 24
        call    _fifo8_status                           ; 2673 _ E8, 00000000(rel)
        test    eax, eax                                ; 2678 _ 85. C0
        jnz     ?_082                                   ; 267A _ 75, 07
        call    _io_sti                                 ; 267C _ E8, 00000000(rel)
        jmp     ?_081                                   ; 2681 _ EB, E2
; _console_task End of function

?_082:  ; Local function
        mov     eax, dword [ebp-14H]                    ; 2683 _ 8B. 45, EC
        add     eax, 16                                 ; 2686 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2689 _ 89. 04 24
        call    _fifo8_get                              ; 268C _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 2691 _ 89. 45, DC
        call    _io_sti                                 ; 2694 _ E8, 00000000(rel)
        cmp     dword [ebp-24H], 1                      ; 2699 _ 83. 7D, DC, 01
        jg      ?_085                                   ; 269D _ 7F, 6E
        cmp     dword [ebp-10H], 0                      ; 269F _ 83. 7D, F0, 00
        js      ?_085                                   ; 26A3 _ 78, 68
        cmp     dword [ebp-24H], 0                      ; 26A5 _ 83. 7D, DC, 00
        jz      ?_083                                   ; 26A9 _ 74, 26
        mov     eax, dword [ebp-14H]                    ; 26AB _ 8B. 45, EC
        add     eax, 16                                 ; 26AE _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 26B1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 26B9 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 26BD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 26C0 _ 89. 04 24
        call    _timer_init                             ; 26C3 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 26C8 _ C7. 45, F0, 00000007
        jmp     ?_084                                   ; 26CF _ EB, 24

?_083:  mov     eax, dword [ebp-14H]                    ; 26D1 _ 8B. 45, EC
        add     eax, 16                                 ; 26D4 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 26D7 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 26DF _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 26E3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 26E6 _ 89. 04 24
        call    _timer_init                             ; 26E9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 26EE _ C7. 45, F0, 00000000
?_084:  mov     dword [esp+4H], 50                      ; 26F5 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-1CH]                    ; 26FD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 2700 _ 89. 04 24
        call    _timer_settime                          ; 2703 _ E8, 00000000(rel)
        jmp     ?_089                                   ; 2708 _ E9, 00000195

?_085:  cmp     dword [ebp-24H], 87                     ; 270D _ 83. 7D, DC, 57
        jnz     ?_086                                   ; 2711 _ 75, 3C
        mov     dword [ebp-10H], 7                      ; 2713 _ C7. 45, F0, 00000007
        mov     eax, dword [ebp-14H]                    ; 271A _ 8B. 45, EC
        add     eax, 16                                 ; 271D _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 2720 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2728 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 272C _ 8B. 45, E4
        mov     dword [esp], eax                        ; 272F _ 89. 04 24
        call    _timer_init                             ; 2732 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 2737 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-1CH]                    ; 273F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 2742 _ 89. 04 24
        call    _timer_settime                          ; 2745 _ E8, 00000000(rel)
        jmp     ?_089                                   ; 274A _ E9, 00000153

?_086:  cmp     dword [ebp-24H], 88                     ; 274F _ 83. 7D, DC, 58
        jnz     ?_087                                   ; 2753 _ 75, 53
        mov     eax, dword [_shtctl]                    ; 2755 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 275A _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-18H]                    ; 2762 _ 8B. 55, E8
        mov     dword [esp+0CH], edx                    ; 2765 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2769 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 276C _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2770 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2773 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2777 _ 89. 04 24
        call    _set_cursor                             ; 277A _ E8, 000002E4
        mov     dword [ebp-10H], -1                     ; 277F _ C7. 45, F0, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 2786 _ A1, 00000278(d)
        mov     dword [esp+8H], 0                       ; 278B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 2793 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 279B _ 89. 04 24
        call    _task_run                               ; 279E _ E8, 00000000(rel)
        jmp     ?_089                                   ; 27A3 _ E9, 000000FA

?_087:  cmp     dword [ebp-24H], 14                     ; 27A8 _ 83. 7D, DC, 0E
        jnz     ?_088                                   ; 27AC _ 75, 63
        cmp     dword [ebp-0CH], 8                      ; 27AE _ 83. 7D, F4, 08
        jle     ?_088                                   ; 27B2 _ 7E, 5D
        mov     eax, dword [_shtctl]                    ; 27B4 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 27B9 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-18H]                    ; 27C1 _ 8B. 55, E8
        mov     dword [esp+0CH], edx                    ; 27C4 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 27C8 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 27CB _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 27CF _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 27D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27D6 _ 89. 04 24
        call    _set_cursor                             ; 27D9 _ E8, 00000285
        sub     dword [ebp-0CH], 8                      ; 27DE _ 83. 6D, F4, 08
        mov     eax, dword [_shtctl]                    ; 27E2 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 27E7 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-18H]                    ; 27EF _ 8B. 55, E8
        mov     dword [esp+0CH], edx                    ; 27F2 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 27F6 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 27F9 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 27FD _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 2800 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2804 _ 89. 04 24
        call    _set_cursor                             ; 2807 _ E8, 00000257
        jmp     ?_089                                   ; 280C _ E9, 00000091

?_088:  mov     eax, dword [ebp-24H]                    ; 2811 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 2814 _ 89. 04 24
        call    _transferScanCode                       ; 2817 _ E8, 000000BE
        mov     byte [ebp-25H], al                      ; 281C _ 88. 45, DB
        cmp     dword [ebp-0CH], 239                    ; 281F _ 81. 7D, F4, 000000EF
        jg      ?_089                                   ; 2826 _ 7F, 7A
        cmp     byte [ebp-25H], 0                       ; 2828 _ 80. 7D, DB, 00
        jz      ?_089                                   ; 282C _ 74, 74
        mov     eax, dword [_shtctl]                    ; 282E _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2833 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-18H]                    ; 283B _ 8B. 55, E8
        mov     dword [esp+0CH], edx                    ; 283E _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 2842 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 2845 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 2849 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 284C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2850 _ 89. 04 24
        call    _set_cursor                             ; 2853 _ E8, 0000020B
        movzx   eax, byte [ebp-25H]                     ; 2858 _ 0F B6. 45, DB
        mov     byte [ebp-22AH], al                     ; 285C _ 88. 85, FFFFFDD6
        mov     byte [ebp-229H], 0                      ; 2862 _ C6. 85, FFFFFDD7, 00
        mov     edx, dword [_shtctl]                    ; 2869 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-22AH]                         ; 286F _ 8D. 85, FFFFFDD6
        mov     dword [esp+14H], eax                    ; 2875 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 2879 _ C7. 44 24, 10, 00000007
        mov     eax, dword [ebp-18H]                    ; 2881 _ 8B. 45, E8
        mov     dword [esp+0CH], eax                    ; 2884 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2888 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 288B _ 89. 44 24, 08
        mov     eax, dword [ebp+8H]                     ; 288F _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2892 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2896 _ 89. 14 24
        call    _showString                             ; 2899 _ E8, FFFFE70E
        add     dword [ebp-0CH], 8                      ; 289E _ 83. 45, F4, 08
?_089:  cmp     dword [ebp-10H], 0                      ; 28A2 _ 83. 7D, F0, 00
        js      ?_081                                   ; 28A6 _ 0F 88, FFFFFDB9
        mov     eax, dword [_shtctl]                    ; 28AC _ A1, 00000264(d)
        mov     edx, dword [ebp-10H]                    ; 28B1 _ 8B. 55, F0
        mov     dword [esp+10H], edx                    ; 28B4 _ 89. 54 24, 10
        mov     edx, dword [ebp-18H]                    ; 28B8 _ 8B. 55, E8
        mov     dword [esp+0CH], edx                    ; 28BB _ 89. 54 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 28BF _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 28C2 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 28C6 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 28C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28CD _ 89. 04 24
        call    _set_cursor                             ; 28D0 _ E8, 0000018E
        jmp     ?_081                                   ; 28D5 _ E9, FFFFFD8B

_transferScanCode:; Function begin
        push    ebp                                     ; 28DA _ 55
        mov     ebp, esp                                ; 28DB _ 89. E5
        sub     esp, 16                                 ; 28DD _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 28E0 _ 83. 7D, 08, 2A
        jnz     ?_090                                   ; 28E4 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 28E6 _ A1, 00000000(d)
        or      eax, 01H                                ; 28EB _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 28EE _ A3, 00000000(d)
?_090:  cmp     dword [ebp+8H], 54                      ; 28F3 _ 83. 7D, 08, 36
        jnz     ?_091                                   ; 28F7 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 28F9 _ A1, 00000000(d)
        or      eax, 02H                                ; 28FE _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 2901 _ A3, 00000000(d)
?_091:  cmp     dword [ebp+8H], 170                     ; 2906 _ 81. 7D, 08, 000000AA
        jnz     ?_092                                   ; 290D _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 290F _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 2914 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 2917 _ A3, 00000000(d)
?_092:  cmp     dword [ebp+8H], 182                     ; 291C _ 81. 7D, 08, 000000B6
        jnz     ?_093                                   ; 2923 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 2925 _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 292A _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 292D _ A3, 00000000(d)
?_093:  cmp     dword [ebp+8H], 58                      ; 2932 _ 83. 7D, 08, 3A
        jnz     ?_095                                   ; 2936 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 2938 _ A1, 00000004(d)
        test    eax, eax                                ; 293D _ 85. C0
        jnz     ?_094                                   ; 293F _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 2941 _ C7. 05, 00000004(d), 00000001
        jmp     ?_095                                   ; 294B _ EB, 0A

?_094:  mov     dword [_caps_lock], 0                   ; 294D _ C7. 05, 00000004(d), 00000000
?_095:  cmp     dword [ebp+8H], 42                      ; 2957 _ 83. 7D, 08, 2A
        jz      ?_096                                   ; 295B _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 295D _ 83. 7D, 08, 36
        jz      ?_096                                   ; 2961 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 2963 _ 81. 7D, 08, 000000AA
        jz      ?_096                                   ; 296A _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 296C _ 81. 7D, 08, 000000B6
        jz      ?_096                                   ; 2973 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 2975 _ 83. 7D, 08, 53
        jg      ?_096                                   ; 2979 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 297B _ 83. 7D, 08, 3A
        jnz     ?_097                                   ; 297F _ 75, 0A
?_096:  mov     eax, 0                                  ; 2981 _ B8, 00000000
        jmp     ?_102                                   ; 2986 _ E9, 0000008A

?_097:  mov     byte [ebp-1H], 0                        ; 298B _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 298F _ A1, 00000000(d)
        test    eax, eax                                ; 2994 _ 85. C0
        jnz     ?_098                                   ; 2996 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 2998 _ 83. 7D, 08, 53
        jg      ?_098                                   ; 299C _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 299E _ 8B. 45, 08
        add     eax, _keytable                          ; 29A1 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 29A6 _ 0F B6. 00
        test    al, al                                  ; 29A9 _ 84. C0
        jz      ?_098                                   ; 29AB _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 29AD _ 8B. 45, 08
        add     eax, _keytable                          ; 29B0 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 29B5 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 29B8 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 29BB _ 80. 7D, FF, 40
        jle     ?_100                                   ; 29BF _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 29C1 _ 80. 7D, FF, 5A
        jg      ?_100                                   ; 29C5 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 29C7 _ A1, 00000004(d)
        test    eax, eax                                ; 29CC _ 85. C0
        jnz     ?_100                                   ; 29CE _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 29D0 _ 0F B6. 45, FF
        add     eax, 32                                 ; 29D4 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 29D7 _ 88. 45, FF
        jmp     ?_100                                   ; 29DA _ EB, 34

?_098:  mov     eax, dword [_key_shift]                 ; 29DC _ A1, 00000000(d)
        test    eax, eax                                ; 29E1 _ 85. C0
        jz      ?_099                                   ; 29E3 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 29E5 _ 83. 7D, 08, 7F
        jg      ?_099                                   ; 29E9 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 29EB _ 8B. 45, 08
        add     eax, _keytable1                         ; 29EE _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 29F3 _ 0F B6. 00
        test    al, al                                  ; 29F6 _ 84. C0
        jz      ?_099                                   ; 29F8 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 29FA _ 8B. 45, 08
        add     eax, _keytable1                         ; 29FD _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 2A02 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 2A05 _ 88. 45, FF
        jmp     ?_101                                   ; 2A08 _ EB, 07

?_099:  mov     byte [ebp-1H], 0                        ; 2A0A _ C6. 45, FF, 00
        jmp     ?_101                                   ; 2A0E _ EB, 01

?_100:  nop                                             ; 2A10 _ 90
?_101:  movzx   eax, byte [ebp-1H]                      ; 2A11 _ 0F B6. 45, FF
?_102:  leave                                           ; 2A15 _ C9
        ret                                             ; 2A16 _ C3
; _transferScanCode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 2A17 _ 55
        mov     ebp, esp                                ; 2A18 _ 89. E5
        sub     esp, 4                                  ; 2A1A _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2A1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A20 _ 89. 04 24
        call    _transferScanCode                       ; 2A23 _ E8, FFFFFEB2
        cmp     dword [ebp+8H], 58                      ; 2A28 _ 83. 7D, 08, 3A
        jz      ?_103                                   ; 2A2C _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 2A2E _ 81. 7D, 08, 000000BA
        jz      ?_103                                   ; 2A35 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 2A37 _ 83. 7D, 08, 2A
        jz      ?_103                                   ; 2A3B _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 2A3D _ 83. 7D, 08, 36
        jz      ?_103                                   ; 2A41 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 2A43 _ 81. 7D, 08, 000000AA
        jz      ?_103                                   ; 2A4A _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 2A4C _ 81. 7D, 08, 000000B6
        jnz     ?_104                                   ; 2A53 _ 75, 07
?_103:  mov     eax, 1                                  ; 2A55 _ B8, 00000001
        jmp     ?_105                                   ; 2A5A _ EB, 05

?_104:  mov     eax, 0                                  ; 2A5C _ B8, 00000000
?_105:  leave                                           ; 2A61 _ C9
        ret                                             ; 2A62 _ C3
; _isSpecialKey End of function

_set_cursor:; Function begin
        push    ebp                                     ; 2A63 _ 55
        mov     ebp, esp                                ; 2A64 _ 89. E5
        push    esi                                     ; 2A66 _ 56
        push    ebx                                     ; 2A67 _ 53
        sub     esp, 32                                 ; 2A68 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2A6B _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 2A6E _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 2A71 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 2A74 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 2A77 _ 8B. 45, 18
        movzx   eax, al                                 ; 2A7A _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2A7D _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2A80 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2A83 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2A86 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 2A88 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 2A8C _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 2A90 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 2A93 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 2A97 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 2A9A _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2A9E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2AA2 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2AA6 _ 89. 14 24
        call    _boxfill8                               ; 2AA9 _ E8, FFFFE66B
        mov     eax, dword [ebp+14H]                    ; 2AAE _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 2AB1 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 2AB4 _ 8B. 45, 10
        add     eax, 8                                  ; 2AB7 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 2ABA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2ABE _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2AC2 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2AC5 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2AC9 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2ACC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2AD0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2AD3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AD7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2ADA _ 89. 04 24
        call    _sheet_refresh                          ; 2ADD _ E8, 00000000(rel)
        nop                                             ; 2AE2 _ 90
        add     esp, 32                                 ; 2AE3 _ 83. C4, 20
        pop     ebx                                     ; 2AE6 _ 5B
        pop     esi                                     ; 2AE7 _ 5E
        pop     ebp                                     ; 2AE8 _ 5D
        ret                                             ; 2AE9 _ C3
; _set_cursor End of function

        nop                                             ; 2AEA _ 90
        nop                                             ; 2AEB _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 2AEC _ 55
        mov     ebp, esp                                ; 2AED _ 89. E5
        sub     esp, 40                                 ; 2AEF _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2AF2 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2AFA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AFD _ 89. 04 24
        call    _memman_alloc_4k                        ; 2B00 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2B05 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 2B08 _ 83. 7D, F0, 00
        jnz     ?_106                                   ; 2B0C _ 75, 0A
        mov     eax, 0                                  ; 2B0E _ B8, 00000000
        jmp     ?_110                                   ; 2B13 _ E9, 0000009D

?_106:  mov     eax, dword [ebp+10H]                    ; 2B18 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2B1B _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2B1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B26 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2B29 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2B2E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2B30 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2B33 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 2B36 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B39 _ 8B. 40, 04
        test    eax, eax                                ; 2B3C _ 85. C0
        jnz     ?_107                                   ; 2B3E _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2B40 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2B43 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2B4B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B4F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B52 _ 89. 04 24
        call    _memman_free_4k                         ; 2B55 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 2B5A _ B8, 00000000
        jmp     ?_110                                   ; 2B5F _ EB, 54

?_107:  mov     eax, dword [ebp-10H]                    ; 2B61 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2B64 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B67 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2B69 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2B6C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2B6F _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2B72 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2B75 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2B78 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 2B7B _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 2B7E _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2B85 _ C7. 45, F4, 00000000
        jmp     ?_109                                   ; 2B8C _ EB, 1B

?_108:  mov     edx, dword [ebp-10H]                    ; 2B8E _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2B91 _ 8B. 45, F4
        add     eax, 33                                 ; 2B94 _ 83. C0, 21
        shl     eax, 5                                  ; 2B97 _ C1. E0, 05
        add     eax, edx                                ; 2B9A _ 01. D0
        add     eax, 16                                 ; 2B9C _ 83. C0, 10
        mov     dword [eax], 0                          ; 2B9F _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2BA5 _ 83. 45, F4, 01
?_109:  cmp     dword [ebp-0CH], 255                    ; 2BA9 _ 81. 7D, F4, 000000FF
        jle     ?_108                                   ; 2BB0 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 2BB2 _ 8B. 45, F0
?_110:  leave                                           ; 2BB5 _ C9
        ret                                             ; 2BB6 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2BB7 _ 55
        mov     ebp, esp                                ; 2BB8 _ 89. E5
        sub     esp, 16                                 ; 2BBA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2BBD _ C7. 45, FC, 00000000
        jmp     ?_113                                   ; 2BC4 _ EB, 5B

?_111:  mov     edx, dword [ebp+8H]                     ; 2BC6 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2BC9 _ 8B. 45, FC
        add     eax, 33                                 ; 2BCC _ 83. C0, 21
        shl     eax, 5                                  ; 2BCF _ C1. E0, 05
        add     eax, edx                                ; 2BD2 _ 01. D0
        add     eax, 16                                 ; 2BD4 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2BD7 _ 8B. 00
        test    eax, eax                                ; 2BD9 _ 85. C0
        jnz     ?_112                                   ; 2BDB _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 2BDD _ 8B. 45, FC
        shl     eax, 5                                  ; 2BE0 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2BE3 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2BE9 _ 8B. 45, 08
        add     eax, edx                                ; 2BEC _ 01. D0
        add     eax, 4                                  ; 2BEE _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 2BF1 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2BF4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BF7 _ 8B. 55, FC
        add     edx, 4                                  ; 2BFA _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2BFD _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2C00 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 2C04 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 2C07 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2C0E _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2C11 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 2C18 _ 8B. 45, F8
        jmp     ?_114                                   ; 2C1B _ EB, 12

?_112:  add     dword [ebp-4H], 1                       ; 2C1D _ 83. 45, FC, 01
?_113:  cmp     dword [ebp-4H], 255                     ; 2C21 _ 81. 7D, FC, 000000FF
        jle     ?_111                                   ; 2C28 _ 7E, 9C
        mov     eax, 0                                  ; 2C2A _ B8, 00000000
?_114:  leave                                           ; 2C2F _ C9
        ret                                             ; 2C30 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 2C31 _ 55
        mov     ebp, esp                                ; 2C32 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C34 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C37 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C3A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C3C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C3F _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2C42 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2C45 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2C48 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2C4B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2C4E _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2C51 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2C54 _ 89. 50, 14
        nop                                             ; 2C57 _ 90
        pop     ebp                                     ; 2C58 _ 5D
        ret                                             ; 2C59 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 2C5A _ 55
        mov     ebp, esp                                ; 2C5B _ 89. E5
        push    edi                                     ; 2C5D _ 57
        push    esi                                     ; 2C5E _ 56
        push    ebx                                     ; 2C5F _ 53
        sub     esp, 60                                 ; 2C60 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2C63 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C66 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2C69 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2C6C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C6F _ 8B. 40, 10
        add     eax, 1                                  ; 2C72 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2C75 _ 39. 45, 10
        jle     ?_115                                   ; 2C78 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2C7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C7D _ 8B. 40, 10
        add     eax, 1                                  ; 2C80 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2C83 _ 89. 45, 10
?_115:  cmp     dword [ebp+10H], -1                     ; 2C86 _ 83. 7D, 10, FF
        jge     ?_116                                   ; 2C8A _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2C8C _ C7. 45, 10, FFFFFFFF
?_116:  mov     eax, dword [ebp+0CH]                    ; 2C93 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C96 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2C99 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2C9C _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2C9F _ 3B. 45, 10
        jle     ?_123                                   ; 2CA2 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2CA8 _ 83. 7D, 10, 00
        js      ?_119                                   ; 2CAC _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2CB2 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2CB5 _ 89. 45, E4
        jmp     ?_118                                   ; 2CB8 _ EB, 34

?_117:  mov     eax, dword [ebp-1CH]                    ; 2CBA _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2CBD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CC0 _ 8B. 45, 08
        add     edx, 4                                  ; 2CC3 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2CC6 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2CCA _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2CCD _ 8B. 55, E4
        add     edx, 4                                  ; 2CD0 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2CD3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2CD7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2CDA _ 8B. 55, E4
        add     edx, 4                                  ; 2CDD _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CE0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2CE4 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2CE7 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2CEA _ 83. 6D, E4, 01
?_118:  mov     eax, dword [ebp-1CH]                    ; 2CEE _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2CF1 _ 3B. 45, 10
        jg      ?_117                                   ; 2CF4 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2CF6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2CF9 _ 8B. 55, 10
        add     edx, 4                                  ; 2CFC _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2CFF _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2D02 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 2D06 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2D09 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2D0C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D0F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D12 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D15 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D18 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D1B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D1E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D21 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D24 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D27 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D2A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D2D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D30 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D33 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 2D36 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2D3A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2D3E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2D42 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2D46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D4D _ 89. 04 24
        call    _sheet_refreshmap                       ; 2D50 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2D55 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2D58 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2D5B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D5E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D61 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D64 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D67 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D6A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D6D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D70 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D73 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D76 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D79 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D7C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D7F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D82 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2D85 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2D88 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2D8C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2D90 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2D94 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2D98 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2D9C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DA0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DA3 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2DA6 _ E8, 00000465
        jmp     ?_130                                   ; 2DAB _ E9, 0000027D

?_119:  mov     eax, dword [ebp+8H]                     ; 2DB0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DB3 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2DB6 _ 39. 45, E0
        jge     ?_122                                   ; 2DB9 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 2DBB _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2DBE _ 89. 45, E4
        jmp     ?_121                                   ; 2DC1 _ EB, 34

?_120:  mov     eax, dword [ebp-1CH]                    ; 2DC3 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2DC6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DC9 _ 8B. 45, 08
        add     edx, 4                                  ; 2DCC _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2DCF _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DD3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2DD6 _ 8B. 55, E4
        add     edx, 4                                  ; 2DD9 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2DDC _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DE0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2DE3 _ 8B. 55, E4
        add     edx, 4                                  ; 2DE6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DE9 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2DED _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2DF0 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2DF3 _ 83. 45, E4, 01
?_121:  mov     eax, dword [ebp+8H]                     ; 2DF7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DFA _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2DFD _ 39. 45, E4
        jl      ?_120                                   ; 2E00 _ 7C, C1
?_122:  mov     eax, dword [ebp+8H]                     ; 2E02 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E05 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2E08 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E0B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E0E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E11 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E14 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E17 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E1A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E1D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E20 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E23 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E26 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E29 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E2C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E2F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E32 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E35 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E38 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 2E3B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2E43 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2E47 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2E4B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2E4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E56 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2E59 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2E5E _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2E61 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2E64 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E67 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E6A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E6D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E70 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E73 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E76 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E79 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E7C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E7F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E82 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E85 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E88 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E8B _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2E8E _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2E92 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2E9A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2E9E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2EA2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2EA6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EAA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EAD _ 89. 04 24
        call    _sheet_refreshsub                       ; 2EB0 _ E8, 0000035B
        jmp     ?_130                                   ; 2EB5 _ E9, 00000173

?_123:  mov     eax, dword [ebp-20H]                    ; 2EBA _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2EBD _ 3B. 45, 10
        jge     ?_130                                   ; 2EC0 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2EC6 _ 83. 7D, E0, 00
        js      ?_126                                   ; 2ECA _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2ECC _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2ECF _ 89. 45, E4
        jmp     ?_125                                   ; 2ED2 _ EB, 34

?_124:  mov     eax, dword [ebp-1CH]                    ; 2ED4 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2ED7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EDA _ 8B. 45, 08
        add     edx, 4                                  ; 2EDD _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2EE0 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EE4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2EE7 _ 8B. 55, E4
        add     edx, 4                                  ; 2EEA _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2EED _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EF1 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2EF4 _ 8B. 55, E4
        add     edx, 4                                  ; 2EF7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EFA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2EFE _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2F01 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2F04 _ 83. 45, E4, 01
?_125:  mov     eax, dword [ebp-1CH]                    ; 2F08 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2F0B _ 3B. 45, 10
        jl      ?_124                                   ; 2F0E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2F10 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F13 _ 8B. 55, 10
        add     edx, 4                                  ; 2F16 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2F19 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2F1C _ 89. 4C 90, 04
        jmp     ?_129                                   ; 2F20 _ EB, 6C

?_126:  mov     eax, dword [ebp+8H]                     ; 2F22 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F25 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 2F28 _ 89. 45, E4
        jmp     ?_128                                   ; 2F2B _ EB, 3A

?_127:  mov     eax, dword [ebp-1CH]                    ; 2F2D _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 2F30 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 2F33 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2F36 _ 8B. 55, E4
        add     edx, 4                                  ; 2F39 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2F3C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2F40 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 2F43 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2F46 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 2F4A _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2F4D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F50 _ 8B. 45, 08
        add     edx, 4                                  ; 2F53 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F56 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2F5A _ 8B. 55, E4
        add     edx, 1                                  ; 2F5D _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2F60 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2F63 _ 83. 6D, E4, 01
?_128:  mov     eax, dword [ebp-1CH]                    ; 2F67 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2F6A _ 3B. 45, 10
        jge     ?_127                                   ; 2F6D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2F6F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F72 _ 8B. 55, 10
        add     edx, 4                                  ; 2F75 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2F78 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2F7B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2F7F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F82 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2F85 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F88 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F8B _ 89. 50, 10
?_129:  mov     eax, dword [ebp+0CH]                    ; 2F8E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F91 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F94 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F97 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F9A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F9D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2FA0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2FA3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2FA6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2FA9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2FAC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FAF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FB2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FB5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2FB8 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2FBB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FBF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FC3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2FC7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2FCB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FCF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FD2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2FD5 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 2FDA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FDD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FE0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2FE3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2FE6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2FE9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2FEC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2FEF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2FF2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2FF5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2FF8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FFB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FFE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3001 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3004 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3007 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 300B _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 300E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3012 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3016 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 301A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 301E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3022 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3025 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3028 _ E8, 000001E3
?_130:  nop                                             ; 302D _ 90
        add     esp, 60                                 ; 302E _ 83. C4, 3C
        pop     ebx                                     ; 3031 _ 5B
        pop     esi                                     ; 3032 _ 5E
        pop     edi                                     ; 3033 _ 5F
        pop     ebp                                     ; 3034 _ 5D
        ret                                             ; 3035 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3036 _ 55
        mov     ebp, esp                                ; 3037 _ 89. E5
        push    edi                                     ; 3039 _ 57
        push    esi                                     ; 303A _ 56
        push    ebx                                     ; 303B _ 53
        sub     esp, 60                                 ; 303C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 303F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3042 _ 8B. 40, 18
        test    eax, eax                                ; 3045 _ 85. C0
        js      ?_131                                   ; 3047 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3049 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 304C _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 304F _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 3052 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3055 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3058 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 305B _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 305E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3061 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3064 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3067 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 306A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 306D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3070 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3073 _ 8B. 45, 14
        add     edx, eax                                ; 3076 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3078 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 307B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 307E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3081 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3084 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3087 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 308B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 308F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3093 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3097 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 309B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 309F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30A2 _ 89. 04 24
        call    _sheet_refreshsub                       ; 30A5 _ E8, 00000166
?_131:  mov     eax, 0                                  ; 30AA _ B8, 00000000
        add     esp, 60                                 ; 30AF _ 83. C4, 3C
        pop     ebx                                     ; 30B2 _ 5B
        pop     esi                                     ; 30B3 _ 5E
        pop     edi                                     ; 30B4 _ 5F
        pop     ebp                                     ; 30B5 _ 5D
        ret                                             ; 30B6 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 30B7 _ 55
        mov     ebp, esp                                ; 30B8 _ 89. E5
        push    esi                                     ; 30BA _ 56
        push    ebx                                     ; 30BB _ 53
        sub     esp, 48                                 ; 30BC _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 30BF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 30C2 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 30C5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 30C8 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 30CB _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 30CE _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 30D1 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 30D4 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 30D7 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 30DA _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 30DD _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 30E0 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30E3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30E6 _ 8B. 40, 18
        test    eax, eax                                ; 30E9 _ 85. C0
        js      ?_132                                   ; 30EB _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 30F1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 30F4 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 30F7 _ 8B. 45, F0
        add     edx, eax                                ; 30FA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 30FC _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 30FF _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 3102 _ 8B. 45, F4
        add     eax, ecx                                ; 3105 _ 01. C8
        mov     dword [esp+14H], 0                      ; 3107 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 310F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3113 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3117 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 311A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 311E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3121 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3125 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3128 _ 89. 04 24
        call    _sheet_refreshmap                       ; 312B _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 3130 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3133 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3136 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3139 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 313C _ 8B. 45, 14
        add     edx, eax                                ; 313F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3141 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3144 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 3147 _ 8B. 45, 10
        add     eax, ebx                                ; 314A _ 01. D8
        mov     dword [esp+14H], ecx                    ; 314C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3150 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3154 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3158 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 315B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 315F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3162 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3166 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3169 _ 89. 04 24
        call    _sheet_refreshmap                       ; 316C _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3171 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3174 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3177 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 317A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 317D _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3180 _ 8B. 45, F0
        add     edx, eax                                ; 3183 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3185 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3188 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 318B _ 8B. 45, F4
        add     eax, ebx                                ; 318E _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3190 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3194 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 319C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 31A0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 31A4 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 31A7 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 31AB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 31AE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31B2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31B5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 31B8 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 31BD _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 31C0 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 31C3 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 31C6 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 31C9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 31CC _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 31CF _ 8B. 45, 14
        add     edx, eax                                ; 31D2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 31D4 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 31D7 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 31DA _ 8B. 45, 10
        add     eax, esi                                ; 31DD _ 01. F0
        mov     dword [esp+18H], ebx                    ; 31DF _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 31E3 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 31E7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 31EB _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 31EF _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 31F2 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 31F6 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 31F9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31FD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3200 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3203 _ E8, 00000008
?_132:  nop                                             ; 3208 _ 90
        add     esp, 48                                 ; 3209 _ 83. C4, 30
        pop     ebx                                     ; 320C _ 5B
        pop     esi                                     ; 320D _ 5E
        pop     ebp                                     ; 320E _ 5D
        ret                                             ; 320F _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3210 _ 55
        mov     ebp, esp                                ; 3211 _ 89. E5
        sub     esp, 48                                 ; 3213 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3216 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3219 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 321B _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 321E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3221 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3224 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3227 _ 83. 7D, 0C, 00
        jns     ?_133                                   ; 322B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 322D _ C7. 45, 0C, 00000000
?_133:  cmp     dword [ebp+10H], 8                      ; 3234 _ 83. 7D, 10, 08
        jg      ?_134                                   ; 3238 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 323A _ C7. 45, 10, 00000000
?_134:  mov     eax, dword [ebp+8H]                     ; 3241 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3244 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3247 _ 39. 45, 14
        jle     ?_135                                   ; 324A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 324C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 324F _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3252 _ 89. 45, 14
?_135:  mov     eax, dword [ebp+8H]                     ; 3255 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3258 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 325B _ 39. 45, 18
        jle     ?_136                                   ; 325E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3260 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3263 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3266 _ 89. 45, 18
?_136:  mov     eax, dword [ebp+1CH]                    ; 3269 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 326C _ 89. 45, FC
        jmp     ?_143                                   ; 326F _ E9, 0000010F

?_137:  mov     eax, dword [ebp+8H]                     ; 3274 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3277 _ 8B. 55, FC
        add     edx, 4                                  ; 327A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 327D _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3281 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3284 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3287 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3289 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 328C _ 8B. 45, 08
        add     eax, 1044                               ; 328F _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3294 _ 8B. 55, E8
        sub     edx, eax                                ; 3297 _ 29. C2
        mov     eax, edx                                ; 3299 _ 89. D0
        sar     eax, 5                                  ; 329B _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 329E _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 32A1 _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 32A8 _ E9, 000000C3

?_138:  mov     eax, dword [ebp-18H]                    ; 32AD _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 32B0 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 32B3 _ 8B. 45, F4
        add     eax, edx                                ; 32B6 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 32B8 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 32BB _ C7. 45, F8, 00000000
        jmp     ?_141                                   ; 32C2 _ E9, 00000096

?_139:  mov     eax, dword [ebp-18H]                    ; 32C7 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 32CA _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 32CD _ 8B. 45, F8
        add     eax, edx                                ; 32D0 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 32D2 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 32D5 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 32D8 _ 3B. 45, D8
        jg      ?_140                                   ; 32DB _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 32DD _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 32E0 _ 3B. 45, 14
        jge     ?_140                                   ; 32E3 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 32E5 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 32E8 _ 3B. 45, DC
        jg      ?_140                                   ; 32EB _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 32ED _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 32F0 _ 3B. 45, 18
        jge     ?_140                                   ; 32F3 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 32F5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 32F8 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 32FB _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 32FF _ 8B. 55, F8
        add     eax, edx                                ; 3302 _ 01. D0
        mov     edx, eax                                ; 3304 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3306 _ 8B. 45, E4
        add     eax, edx                                ; 3309 _ 01. D0
        movzx   eax, byte [eax]                         ; 330B _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 330E _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3311 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3314 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3317 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 331B _ 8B. 55, D8
        add     eax, edx                                ; 331E _ 01. D0
        mov     edx, eax                                ; 3320 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3322 _ 8B. 45, EC
        add     eax, edx                                ; 3325 _ 01. D0
        movzx   eax, byte [eax]                         ; 3327 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 332A _ 38. 45, E3
        jnz     ?_140                                   ; 332D _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 332F _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3333 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3336 _ 8B. 52, 14
        cmp     eax, edx                                ; 3339 _ 39. D0
        jz      ?_140                                   ; 333B _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 333D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3340 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3343 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3347 _ 8B. 55, D8
        add     eax, edx                                ; 334A _ 01. D0
        mov     edx, eax                                ; 334C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 334E _ 8B. 45, F0
        add     edx, eax                                ; 3351 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3353 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3357 _ 88. 02
?_140:  add     dword [ebp-8H], 1                       ; 3359 _ 83. 45, F8, 01
?_141:  mov     eax, dword [ebp-18H]                    ; 335D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3360 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3363 _ 39. 45, F8
        jl      ?_139                                   ; 3366 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 336C _ 83. 45, F4, 01
?_142:  mov     eax, dword [ebp-18H]                    ; 3370 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3373 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3376 _ 39. 45, F4
        jl      ?_138                                   ; 3379 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 337F _ 83. 45, FC, 01
?_143:  mov     eax, dword [ebp-4H]                     ; 3383 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3386 _ 3B. 45, 20
        jle     ?_137                                   ; 3389 _ 0F 8E, FFFFFEE5
        nop                                             ; 338F _ 90
        leave                                           ; 3390 _ C9
        ret                                             ; 3391 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3392 _ 55
        mov     ebp, esp                                ; 3393 _ 89. E5
        sub     esp, 64                                 ; 3395 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3398 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 339B _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 339E _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 33A1 _ 83. 7D, 0C, 00
        jns     ?_144                                   ; 33A5 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 33A7 _ C7. 45, 0C, 00000000
?_144:  cmp     dword [ebp+10H], 0                      ; 33AE _ 83. 7D, 10, 00
        jns     ?_145                                   ; 33B2 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 33B4 _ C7. 45, 10, 00000000
?_145:  mov     eax, dword [ebp+8H]                     ; 33BB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33BE _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 33C1 _ 39. 45, 14
        jle     ?_146                                   ; 33C4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 33C6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33C9 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 33CC _ 89. 45, 14
?_146:  mov     eax, dword [ebp+8H]                     ; 33CF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33D2 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 33D5 _ 39. 45, 18
        jle     ?_147                                   ; 33D8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 33DA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33DD _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 33E0 _ 89. 45, 18
?_147:  mov     eax, dword [ebp+1CH]                    ; 33E3 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 33E6 _ 89. 45, FC
        jmp     ?_158                                   ; 33E9 _ E9, 00000139

?_148:  mov     eax, dword [ebp+8H]                     ; 33EE _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 33F1 _ 8B. 55, FC
        add     edx, 4                                  ; 33F4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 33F7 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 33FB _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 33FE _ 8B. 45, 08
        add     eax, 1044                               ; 3401 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3406 _ 8B. 55, DC
        sub     edx, eax                                ; 3409 _ 29. C2
        mov     eax, edx                                ; 340B _ 89. D0
        sar     eax, 5                                  ; 340D _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3410 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3413 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3416 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3418 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 341B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 341E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3421 _ 8B. 55, 0C
        sub     edx, eax                                ; 3424 _ 29. C2
        mov     eax, edx                                ; 3426 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3428 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 342B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 342E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3431 _ 8B. 55, 10
        sub     edx, eax                                ; 3434 _ 29. C2
        mov     eax, edx                                ; 3436 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3438 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 343B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 343E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3441 _ 8B. 55, 14
        sub     edx, eax                                ; 3444 _ 29. C2
        mov     eax, edx                                ; 3446 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3448 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 344B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 344E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3451 _ 8B. 55, 18
        sub     edx, eax                                ; 3454 _ 29. C2
        mov     eax, edx                                ; 3456 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3458 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 345B _ 83. 7D, F0, 00
        jns     ?_149                                   ; 345F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3461 _ C7. 45, F0, 00000000
?_149:  cmp     dword [ebp-14H], 0                      ; 3468 _ 83. 7D, EC, 00
        jns     ?_150                                   ; 346C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 346E _ C7. 45, EC, 00000000
?_150:  mov     eax, dword [ebp-24H]                    ; 3475 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3478 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 347B _ 39. 45, E8
        jle     ?_151                                   ; 347E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3480 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3483 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3486 _ 89. 45, E8
?_151:  mov     eax, dword [ebp-24H]                    ; 3489 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 348C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 348F _ 39. 45, E4
        jle     ?_152                                   ; 3492 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3494 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3497 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 349A _ 89. 45, E4
?_152:  mov     eax, dword [ebp-14H]                    ; 349D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 34A0 _ 89. 45, F4
        jmp     ?_157                                   ; 34A3 _ EB, 76

?_153:  mov     eax, dword [ebp-24H]                    ; 34A5 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 34A8 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 34AB _ 8B. 45, F4
        add     eax, edx                                ; 34AE _ 01. D0
        mov     dword [ebp-30H], eax                    ; 34B0 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 34B3 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 34B6 _ 89. 45, F8
        jmp     ?_156                                   ; 34B9 _ EB, 54

?_154:  mov     eax, dword [ebp-24H]                    ; 34BB _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 34BE _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 34C1 _ 8B. 45, F8
        add     eax, edx                                ; 34C4 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 34C6 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 34C9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 34CC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 34CF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 34D3 _ 8B. 55, F8
        add     eax, edx                                ; 34D6 _ 01. D0
        mov     edx, eax                                ; 34D8 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 34DA _ 8B. 45, D4
        add     eax, edx                                ; 34DD _ 01. D0
        movzx   eax, byte [eax]                         ; 34DF _ 0F B6. 00
        movzx   eax, al                                 ; 34E2 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 34E5 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 34E8 _ 8B. 52, 14
        cmp     eax, edx                                ; 34EB _ 39. D0
        jz      ?_155                                   ; 34ED _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 34EF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 34F2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 34F5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 34F9 _ 8B. 55, CC
        add     eax, edx                                ; 34FC _ 01. D0
        mov     edx, eax                                ; 34FE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3500 _ 8B. 45, E0
        add     edx, eax                                ; 3503 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3505 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3509 _ 88. 02
?_155:  add     dword [ebp-8H], 1                       ; 350B _ 83. 45, F8, 01
?_156:  mov     eax, dword [ebp-8H]                     ; 350F _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3512 _ 3B. 45, E8
        jl      ?_154                                   ; 3515 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3517 _ 83. 45, F4, 01
?_157:  mov     eax, dword [ebp-0CH]                    ; 351B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 351E _ 3B. 45, E4
        jl      ?_153                                   ; 3521 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3523 _ 83. 45, FC, 01
?_158:  mov     eax, dword [ebp+8H]                     ; 3527 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 352A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 352D _ 39. 45, FC
        jle     ?_148                                   ; 3530 _ 0F 8E, FFFFFEB8
        nop                                             ; 3536 _ 90
        leave                                           ; 3537 _ C9
        ret                                             ; 3538 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3539 _ 90
        nop                                             ; 353A _ 90
        nop                                             ; 353B _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 353C _ 55
        mov     ebp, esp                                ; 353D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 353F _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3542 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3548 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 354B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3552 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3555 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 355C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 355F _ C7. 40, 0C, 00000000
        nop                                             ; 3566 _ 90
        pop     ebp                                     ; 3567 _ 5D
        ret                                             ; 3568 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3569 _ 55
        mov     ebp, esp                                ; 356A _ 89. E5
        sub     esp, 16                                 ; 356C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 356F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3576 _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 357D _ EB, 14

?_159:  mov     eax, dword [ebp+8H]                     ; 357F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3582 _ 8B. 55, FC
        add     edx, 2                                  ; 3585 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3588 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 358C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 358F _ 83. 45, FC, 01
?_160:  mov     eax, dword [ebp+8H]                     ; 3593 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3596 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3598 _ 39. 45, FC
        jc      ?_159                                   ; 359B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 359D _ 8B. 45, F8
        leave                                           ; 35A0 _ C9
        ret                                             ; 35A1 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 35A2 _ 55
        mov     ebp, esp                                ; 35A3 _ 89. E5
        sub     esp, 16                                 ; 35A5 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 35A8 _ C7. 45, FC, 00000000
        jmp     ?_164                                   ; 35AF _ E9, 00000083

?_161:  mov     eax, dword [ebp+8H]                     ; 35B4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35B7 _ 8B. 55, FC
        add     edx, 2                                  ; 35BA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 35BD _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 35C1 _ 39. 45, 0C
        ja      ?_163                                   ; 35C4 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 35C6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35C9 _ 8B. 55, FC
        add     edx, 2                                  ; 35CC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 35CF _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 35D2 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 35D5 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35D8 _ 8B. 55, FC
        add     edx, 2                                  ; 35DB _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 35DE _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 35E1 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 35E4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 35E7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35EA _ 8B. 55, FC
        add     edx, 2                                  ; 35ED _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 35F0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 35F3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35F6 _ 8B. 55, FC
        add     edx, 2                                  ; 35F9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 35FC _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3600 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3603 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3606 _ 8B. 4D, FC
        add     ecx, 2                                  ; 3609 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 360C _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3610 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3613 _ 8B. 55, FC
        add     edx, 2                                  ; 3616 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3619 _ 8B. 44 D0, 04
        test    eax, eax                                ; 361D _ 85. C0
        jnz     ?_162                                   ; 361F _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 3621 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3624 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3626 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3629 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 362C _ 89. 10
?_162:  mov     eax, dword [ebp-8H]                     ; 362E _ 8B. 45, F8
        jmp     ?_165                                   ; 3631 _ EB, 17

?_163:  add     dword [ebp-4H], 1                       ; 3633 _ 83. 45, FC, 01
?_164:  mov     eax, dword [ebp+8H]                     ; 3637 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 363A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 363C _ 39. 45, FC
        jc      ?_161                                   ; 363F _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 3645 _ B8, 00000000
?_165:  leave                                           ; 364A _ C9
        ret                                             ; 364B _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 364C _ 55
        mov     ebp, esp                                ; 364D _ 89. E5
        push    ebx                                     ; 364F _ 53
        sub     esp, 16                                 ; 3650 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3653 _ C7. 45, F8, 00000000
        jmp     ?_167                                   ; 365A _ EB, 15

?_166:  mov     eax, dword [ebp+8H]                     ; 365C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 365F _ 8B. 55, F8
        add     edx, 2                                  ; 3662 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3665 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 3668 _ 39. 45, 0C
        jc      ?_168                                   ; 366B _ 72, 10
        add     dword [ebp-8H], 1                       ; 366D _ 83. 45, F8, 01
?_167:  mov     eax, dword [ebp+8H]                     ; 3671 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3674 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3676 _ 39. 45, F8
        jl      ?_166                                   ; 3679 _ 7C, E1
        jmp     ?_169                                   ; 367B _ EB, 01

?_168:  nop                                             ; 367D _ 90
?_169:  cmp     dword [ebp-8H], 0                       ; 367E _ 83. 7D, F8, 00
        jle     ?_171                                   ; 3682 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 3688 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 368B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 368E _ 8B. 45, 08
        add     edx, 2                                  ; 3691 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 3694 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 3697 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 369A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 369D _ 8B. 45, 08
        add     edx, 2                                  ; 36A0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 36A3 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 36A7 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 36A9 _ 39. 45, 0C
        jne     ?_171                                   ; 36AC _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 36B2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 36B5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 36B8 _ 8B. 45, 08
        add     edx, 2                                  ; 36BB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 36BE _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 36C2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 36C5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 36C8 _ 8B. 45, 10
        add     ecx, eax                                ; 36CB _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 36CD _ 8B. 45, 08
        add     edx, 2                                  ; 36D0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 36D3 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 36D7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 36DA _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 36DC _ 39. 45, F8
        jge     ?_170                                   ; 36DF _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 36E1 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 36E4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 36E7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 36EA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 36ED _ 8B. 55, F8
        add     edx, 2                                  ; 36F0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 36F3 _ 8B. 04 D0
        cmp     ecx, eax                                ; 36F6 _ 39. C1
        jnz     ?_170                                   ; 36F8 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 36FA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 36FD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3700 _ 8B. 45, 08
        add     edx, 2                                  ; 3703 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 3706 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 370A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 370D _ 8B. 55, F8
        add     edx, 2                                  ; 3710 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3713 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 3717 _ 8B. 55, F8
        sub     edx, 1                                  ; 371A _ 83. EA, 01
        add     ecx, eax                                ; 371D _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 371F _ 8B. 45, 08
        add     edx, 2                                  ; 3722 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3725 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 3729 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 372C _ 8B. 00
        lea     edx, [eax-1H]                           ; 372E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3731 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3734 _ 89. 10
?_170:  mov     eax, 0                                  ; 3736 _ B8, 00000000
        jmp     ?_177                                   ; 373B _ E9, 0000011C

?_171:  mov     eax, dword [ebp+8H]                     ; 3740 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3743 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3745 _ 39. 45, F8
        jge     ?_172                                   ; 3748 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 374A _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 374D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3750 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3753 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3756 _ 8B. 55, F8
        add     edx, 2                                  ; 3759 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 375C _ 8B. 04 D0
        cmp     ecx, eax                                ; 375F _ 39. C1
        jnz     ?_172                                   ; 3761 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3763 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3766 _ 8B. 55, F8
        add     edx, 2                                  ; 3769 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 376C _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 376F _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3772 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3775 _ 8B. 55, F8
        add     edx, 2                                  ; 3778 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 377B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 377F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3782 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3785 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3788 _ 8B. 55, F8
        add     edx, 2                                  ; 378B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 378E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3792 _ B8, 00000000
        jmp     ?_177                                   ; 3797 _ E9, 000000C0

?_172:  mov     eax, dword [ebp+8H]                     ; 379C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 379F _ 8B. 00
        cmp     eax, 4095                               ; 37A1 _ 3D, 00000FFF
        jg      ?_176                                   ; 37A6 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 37AC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37AF _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 37B1 _ 89. 45, F4
        jmp     ?_174                                   ; 37B4 _ EB, 28

?_173:  mov     eax, dword [ebp-0CH]                    ; 37B6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 37B9 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 37BC _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 37BF _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 37C2 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 37C5 _ 8B. 45, 08
        add     edx, 2                                  ; 37C8 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 37CB _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 37CE _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 37D0 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 37D3 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 37D6 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 37DA _ 83. 6D, F4, 01
?_174:  mov     eax, dword [ebp-0CH]                    ; 37DE _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 37E1 _ 3B. 45, F8
        jg      ?_173                                   ; 37E4 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 37E6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37E9 _ 8B. 00
        lea     edx, [eax+1H]                           ; 37EB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37EE _ 8B. 45, 08
        mov     dword [eax], edx                        ; 37F1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 37F3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37F6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37FC _ 8B. 00
        cmp     edx, eax                                ; 37FE _ 39. C2
        jge     ?_175                                   ; 3800 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3802 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3805 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3807 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 380A _ 89. 50, 04
?_175:  mov     eax, dword [ebp+8H]                     ; 380D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3810 _ 8B. 55, F8
        add     edx, 2                                  ; 3813 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 3816 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 3819 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 381C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 381F _ 8B. 55, F8
        add     edx, 2                                  ; 3822 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 3825 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 3828 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 382C _ B8, 00000000
        jmp     ?_177                                   ; 3831 _ EB, 29

?_176:  mov     eax, dword [ebp+8H]                     ; 3833 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3836 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 3839 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 383C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 383F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3842 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3845 _ 8B. 40, 08
        mov     edx, eax                                ; 3848 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 384A _ 8B. 45, 10
        add     eax, edx                                ; 384D _ 01. D0
        mov     edx, eax                                ; 384F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3851 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3854 _ 89. 50, 08
        mov     eax, 4294967295                         ; 3857 _ B8, FFFFFFFF
?_177:  add     esp, 16                                 ; 385C _ 83. C4, 10
        pop     ebx                                     ; 385F _ 5B
        pop     ebp                                     ; 3860 _ 5D
        ret                                             ; 3861 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 3862 _ 55
        mov     ebp, esp                                ; 3863 _ 89. E5
        sub     esp, 24                                 ; 3865 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3868 _ 8B. 45, 0C
        add     eax, 4095                               ; 386B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3870 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 3875 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 3878 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 387B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 387F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3882 _ 89. 04 24
        call    _memman_alloc                           ; 3885 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 388A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 388D _ 8B. 45, FC
        leave                                           ; 3890 _ C9
        ret                                             ; 3891 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 3892 _ 55
        mov     ebp, esp                                ; 3893 _ 89. E5
        sub     esp, 28                                 ; 3895 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3898 _ 8B. 45, 10
        add     eax, 4095                               ; 389B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 38A0 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 38A5 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 38A8 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 38AB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 38AF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 38B2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38B9 _ 89. 04 24
        call    _memman_free                            ; 38BC _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 38C1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 38C4 _ 8B. 45, FC
        leave                                           ; 38C7 _ C9
        ret                                             ; 38C8 _ C3
; _memman_free_4k End of function

        nop                                             ; 38C9 _ 90
        nop                                             ; 38CA _ 90
        nop                                             ; 38CB _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 38CC _ 55
        mov     ebp, esp                                ; 38CD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 38CF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 38D2 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 38D5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 38D8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 38DB _ 8B. 55, 10
        mov     dword [eax], edx                        ; 38DE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 38E0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 38E3 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 38E6 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 38E9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 38EC _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 38F3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 38F6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 38FD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3900 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3907 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 390A _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 390D _ 89. 50, 18
        nop                                             ; 3910 _ 90
        pop     ebp                                     ; 3911 _ 5D
        ret                                             ; 3912 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 3913 _ 55
        mov     ebp, esp                                ; 3914 _ 89. E5
        sub     esp, 40                                 ; 3916 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 3919 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 391C _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 391F _ 83. 7D, 08, 00
        jnz     ?_178                                   ; 3923 _ 75, 0A
        mov     eax, 4294967295                         ; 3925 _ B8, FFFFFFFF
        jmp     ?_182                                   ; 392A _ E9, 000000AB

?_178:  mov     eax, dword [ebp+8H]                     ; 392F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3932 _ 8B. 40, 10
        test    eax, eax                                ; 3935 _ 85. C0
        jnz     ?_179                                   ; 3937 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 3939 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 393C _ 8B. 40, 14
        or      eax, 01H                                ; 393F _ 83. C8, 01
        mov     edx, eax                                ; 3942 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3944 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3947 _ 89. 50, 14
        mov     eax, 4294967295                         ; 394A _ B8, FFFFFFFF
        jmp     ?_182                                   ; 394F _ E9, 00000086

?_179:  mov     eax, dword [ebp+8H]                     ; 3954 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3957 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3959 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 395C _ 8B. 40, 04
        add     edx, eax                                ; 395F _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3961 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3965 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3967 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 396A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 396D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3970 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3973 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3976 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3979 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 397C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 397F _ 8B. 40, 0C
        cmp     edx, eax                                ; 3982 _ 39. C2
        jnz     ?_180                                   ; 3984 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3986 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3989 _ C7. 40, 04, 00000000
?_180:  mov     eax, dword [ebp+8H]                     ; 3990 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3993 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3996 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3999 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 399C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 399F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 39A2 _ 8B. 40, 18
        test    eax, eax                                ; 39A5 _ 85. C0
        jz      ?_181                                   ; 39A7 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 39A9 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 39AC _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 39AF _ 8B. 40, 04
        cmp     eax, 2                                  ; 39B2 _ 83. F8, 02
        jz      ?_181                                   ; 39B5 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 39B7 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 39BA _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 39BD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 39C5 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 39CD _ 89. 04 24
        call    _task_run                               ; 39D0 _ E8, 00000000(rel)
?_181:  mov     eax, 0                                  ; 39D5 _ B8, 00000000
?_182:  leave                                           ; 39DA _ C9
        ret                                             ; 39DB _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 39DC _ 55
        mov     ebp, esp                                ; 39DD _ 89. E5
        sub     esp, 16                                 ; 39DF _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 39E2 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 39E5 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 39E8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39EB _ 8B. 40, 0C
        cmp     edx, eax                                ; 39EE _ 39. C2
        jnz     ?_183                                   ; 39F0 _ 75, 07
        mov     eax, 4294967295                         ; 39F2 _ B8, FFFFFFFF
        jmp     ?_185                                   ; 39F7 _ EB, 51

?_183:  mov     eax, dword [ebp+8H]                     ; 39F9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 39FC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 39FE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A01 _ 8B. 40, 08
        add     eax, edx                                ; 3A04 _ 01. D0
        movzx   eax, byte [eax]                         ; 3A06 _ 0F B6. 00
        movzx   eax, al                                 ; 3A09 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3A0C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3A0F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A12 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3A15 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3A18 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3A1B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3A1E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3A21 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3A24 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A27 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3A2A _ 39. C2
        jnz     ?_184                                   ; 3A2C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 3A2E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3A31 _ C7. 40, 08, 00000000
?_184:  mov     eax, dword [ebp+8H]                     ; 3A38 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A3B _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3A3E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3A41 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3A44 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3A47 _ 8B. 45, FC
?_185:  leave                                           ; 3A4A _ C9
        ret                                             ; 3A4B _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 3A4C _ 55
        mov     ebp, esp                                ; 3A4D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3A4F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3A52 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3A55 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A58 _ 8B. 40, 10
        sub     edx, eax                                ; 3A5B _ 29. C2
        mov     eax, edx                                ; 3A5D _ 89. D0
        pop     ebp                                     ; 3A5F _ 5D
        ret                                             ; 3A60 _ C3
; _fifo8_status End of function

        nop                                             ; 3A61 _ 90
        nop                                             ; 3A62 _ 90
        nop                                             ; 3A63 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3A64 _ 55
        mov     ebp, esp                                ; 3A65 _ 89. E5
        sub     esp, 40                                 ; 3A67 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3A6A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3A72 _ C7. 04 24, 00000043
        call    _io_out8                                ; 3A79 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 3A7E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3A86 _ C7. 04 24, 00000040
        call    _io_out8                                ; 3A8D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 3A92 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3A9A _ C7. 04 24, 00000040
        call    _io_out8                                ; 3AA1 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3AA6 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3AB0 _ C7. 45, F4, 00000000
        jmp     ?_187                                   ; 3AB7 _ EB, 26

?_186:  mov     eax, dword [ebp-0CH]                    ; 3AB9 _ 8B. 45, F4
        shl     eax, 4                                  ; 3ABC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3ABF _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3AC4 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3ACA _ 8B. 45, F4
        shl     eax, 4                                  ; 3ACD _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 3AD0 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 3AD5 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3ADB _ 83. 45, F4, 01
?_187:  cmp     dword [ebp-0CH], 499                    ; 3ADF _ 81. 7D, F4, 000001F3
        jle     ?_186                                   ; 3AE6 _ 7E, D1
        nop                                             ; 3AE8 _ 90
        leave                                           ; 3AE9 _ C9
        ret                                             ; 3AEA _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3AEB _ 55
        mov     ebp, esp                                ; 3AEC _ 89. E5
        sub     esp, 16                                 ; 3AEE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3AF1 _ C7. 45, FC, 00000000
        jmp     ?_190                                   ; 3AF8 _ EB, 36

?_188:  mov     eax, dword [ebp-4H]                     ; 3AFA _ 8B. 45, FC
        shl     eax, 4                                  ; 3AFD _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3B00 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3B05 _ 8B. 00
        test    eax, eax                                ; 3B07 _ 85. C0
        jnz     ?_189                                   ; 3B09 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3B0B _ 8B. 45, FC
        shl     eax, 4                                  ; 3B0E _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3B11 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3B16 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3B1C _ 8B. 45, FC
        shl     eax, 4                                  ; 3B1F _ C1. E0, 04
        add     eax, _timerctl                               ; 3B22 _ 05, 00000000(d)
        add     eax, 4                                  ; 3B27 _ 83. C0, 04
        jmp     ?_191                                   ; 3B2A _ EB, 12

?_189:  add     dword [ebp-4H], 1                       ; 3B2C _ 83. 45, FC, 01
?_190:  cmp     dword [ebp-4H], 499                     ; 3B30 _ 81. 7D, FC, 000001F3
        jle     ?_188                                   ; 3B37 _ 7E, C1
        mov     eax, 0                                  ; 3B39 _ B8, 00000000
?_191:  leave                                           ; 3B3E _ C9
        ret                                             ; 3B3F _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 3B40 _ 55
        mov     ebp, esp                                ; 3B41 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B43 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3B46 _ C7. 40, 04, 00000000
        nop                                             ; 3B4D _ 90
        pop     ebp                                     ; 3B4E _ 5D
        ret                                             ; 3B4F _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 3B50 _ 55
        mov     ebp, esp                                ; 3B51 _ 89. E5
        sub     esp, 4                                  ; 3B53 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3B56 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3B59 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3B5C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B5F _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3B62 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3B65 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3B68 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 3B6C _ 88. 42, 0C
        nop                                             ; 3B6F _ 90
        leave                                           ; 3B70 _ C9
        ret                                             ; 3B71 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3B72 _ 55
        mov     ebp, esp                                ; 3B73 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B75 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B78 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3B7B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B7D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3B80 _ C7. 40, 04, 00000002
        nop                                             ; 3B87 _ 90
        pop     ebp                                     ; 3B88 _ 5D
        ret                                             ; 3B89 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 3B8A _ 55
        mov     ebp, esp                                ; 3B8B _ 89. E5
        sub     esp, 40                                 ; 3B8D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3B90 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3B98 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3B9F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3BA4 _ A1, 00000000(d)
        add     eax, 1                                  ; 3BA9 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 3BAC _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 3BB1 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3BB5 _ C7. 45, F4, 00000000
        jmp     ?_195                                   ; 3BBC _ E9, 000000AA

?_192:  mov     eax, dword [ebp-0CH]                    ; 3BC1 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BC4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3BC7 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3BCC _ 8B. 00
        cmp     eax, 2                                  ; 3BCE _ 83. F8, 02
        jne     ?_193                                   ; 3BD1 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3BD7 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BDA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3BDD _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3BE2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3BE4 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3BE7 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BEA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3BED _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 3BF2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3BF4 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BF7 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3BFA _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 3BFF _ 8B. 00
        test    eax, eax                                ; 3C01 _ 85. C0
        jnz     ?_193                                   ; 3C03 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 3C05 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C08 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3C0B _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3C10 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3C16 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C19 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3C1C _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3C21 _ 0F B6. 00
        movzx   eax, al                                 ; 3C24 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 3C27 _ 8B. 55, F4
        shl     edx, 4                                  ; 3C2A _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3C2D _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 3C33 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3C35 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3C39 _ 89. 14 24
        call    _fifo8_put                              ; 3C3C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3C41 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C44 _ C1. E0, 04
        add     eax, _timerctl                               ; 3C47 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 3C4C _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 3C4F _ A1, 00000000(d)
        cmp     edx, eax                                ; 3C54 _ 39. C2
        jnz     ?_193                                   ; 3C56 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3C58 _ C6. 45, F3, 01
?_193:  cmp     byte [ebp-0DH], 0                       ; 3C5C _ 80. 7D, F3, 00
        jz      ?_194                                   ; 3C60 _ 74, 05
        call    _task_switch                            ; 3C62 _ E8, 00000000(rel)
?_194:  add     dword [ebp-0CH], 1                      ; 3C67 _ 83. 45, F4, 01
?_195:  cmp     dword [ebp-0CH], 499                    ; 3C6B _ 81. 7D, F4, 000001F3
        jle     ?_192                                   ; 3C72 _ 0F 8E, FFFFFF49
        nop                                             ; 3C78 _ 90
        leave                                           ; 3C79 _ C9
        ret                                             ; 3C7A _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 3C7B _ B8, 00000000(d)
        ret                                             ; 3C80 _ C3
; _getTimerController End of function

        nop                                             ; 3C81 _ 90
        nop                                             ; 3C82 _ 90
        nop                                             ; 3C83 _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3C84 _ 55
        mov     ebp, esp                                ; 3C85 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3C87 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_196                                   ; 3C8E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3C90 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3C97 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3C9A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3C9D _ 89. 45, 0C
?_196:  mov     eax, dword [ebp+0CH]                    ; 3CA0 _ 8B. 45, 0C
        mov     edx, eax                                ; 3CA3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CA5 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3CA8 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3CAB _ 8B. 45, 10
        mov     edx, eax                                ; 3CAE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CB0 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3CB3 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3CB7 _ 8B. 45, 10
        sar     eax, 16                                 ; 3CBA _ C1. F8, 10
        mov     edx, eax                                ; 3CBD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CBF _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3CC2 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3CC5 _ 8B. 45, 14
        mov     edx, eax                                ; 3CC8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CCA _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3CCD _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3CD0 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3CD3 _ C1. E8, 10
        and     eax, 0FH                                ; 3CD6 _ 83. E0, 0F
        mov     edx, eax                                ; 3CD9 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3CDB _ 8B. 45, 14
        sar     eax, 8                                  ; 3CDE _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3CE1 _ 83. E0, F0
        or      eax, edx                                ; 3CE4 _ 09. D0
        mov     edx, eax                                ; 3CE6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CE8 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3CEB _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3CEE _ 8B. 45, 10
        shr     eax, 24                                 ; 3CF1 _ C1. E8, 18
        mov     edx, eax                                ; 3CF4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CF6 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3CF9 _ 88. 50, 07
        nop                                             ; 3CFC _ 90
        pop     ebp                                     ; 3CFD _ 5D
        ret                                             ; 3CFE _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 3CFF _ 55
        mov     ebp, esp                                ; 3D00 _ 89. E5
        sub     esp, 16                                 ; 3D02 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3D05 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3D0B _ 8B. 55, 08
        mov     eax, edx                                ; 3D0E _ 89. D0
        shl     eax, 2                                  ; 3D10 _ C1. E0, 02
        add     eax, edx                                ; 3D13 _ 01. D0
        shl     eax, 2                                  ; 3D15 _ C1. E0, 02
        add     eax, ecx                                ; 3D18 _ 01. C8
        add     eax, 8                                  ; 3D1A _ 83. C0, 08
        mov     dword [eax], 0                          ; 3D1D _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 3D23 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 3D29 _ 8B. 55, 08
        mov     eax, edx                                ; 3D2C _ 89. D0
        shl     eax, 2                                  ; 3D2E _ C1. E0, 02
        add     eax, edx                                ; 3D31 _ 01. D0
        shl     eax, 2                                  ; 3D33 _ C1. E0, 02
        add     eax, ecx                                ; 3D36 _ 01. C8
        add     eax, 12                                 ; 3D38 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3D3B _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3D41 _ C7. 45, FC, 00000000
        jmp     ?_198                                   ; 3D48 _ EB, 21

?_197:  mov     ecx, dword [_taskctl]                   ; 3D4A _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 3D50 _ 8B. 55, FC
        mov     eax, edx                                ; 3D53 _ 89. D0
        add     eax, eax                                ; 3D55 _ 01. C0
        add     eax, edx                                ; 3D57 _ 01. D0
        shl     eax, 3                                  ; 3D59 _ C1. E0, 03
        add     eax, ecx                                ; 3D5C _ 01. C8
        add     eax, 16                                 ; 3D5E _ 83. C0, 10
        mov     dword [eax], 0                          ; 3D61 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3D67 _ 83. 45, FC, 01
?_198:  cmp     dword [ebp-4H], 2                       ; 3D6B _ 83. 7D, FC, 02
        jle     ?_197                                   ; 3D6F _ 7E, D9
        nop                                             ; 3D71 _ 90
        leave                                           ; 3D72 _ C9
        ret                                             ; 3D73 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 3D74 _ 55
        mov     ebp, esp                                ; 3D75 _ 89. E5
        sub     esp, 40                                 ; 3D77 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3D7A _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3D7F _ 89. 45, F0
        mov     dword [esp+4H], 628                     ; 3D82 _ C7. 44 24, 04, 00000274
        mov     eax, dword [ebp+8H]                     ; 3D8A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D8D _ 89. 04 24
        call    _memman_alloc_4k                        ; 3D90 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3D95 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3D9A _ C7. 45, F4, 00000000
        jmp     ?_200                                   ; 3DA1 _ E9, 00000088

?_199:  mov     edx, dword [_taskctl]                   ; 3DA6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3DAC _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3DAF _ 69. C0, 00000094
        add     eax, edx                                ; 3DB5 _ 01. D0
        add     eax, 72                                 ; 3DB7 _ 83. C0, 48
        mov     dword [eax], 0                          ; 3DBA _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3DC0 _ 8B. 45, F4
        add     eax, 7                                  ; 3DC3 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 3DC6 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3DCC _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3DD3 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3DD6 _ 69. C0, 00000094
        add     eax, ecx                                ; 3DDC _ 01. C8
        add     eax, 68                                 ; 3DDE _ 83. C0, 44
        mov     dword [eax], edx                        ; 3DE1 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3DE3 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3DE9 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 3DEC _ 69. C0, 00000094
        add     eax, 96                                 ; 3DF2 _ 83. C0, 60
        add     eax, edx                                ; 3DF5 _ 01. D0
        add     eax, 16                                 ; 3DF7 _ 83. C0, 10
        mov     ecx, eax                                ; 3DFA _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 3DFC _ 8B. 45, F4
        add     eax, 7                                  ; 3DFF _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3E02 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3E09 _ 8B. 45, F0
        add     eax, edx                                ; 3E0C _ 01. D0
        mov     dword [esp+0CH], 137                    ; 3E0E _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3E16 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3E1A _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3E22 _ 89. 04 24
        call    _set_segmdesc                           ; 3E25 _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 3E2A _ 83. 45, F4, 01
?_200:  cmp     dword [ebp-0CH], 4                      ; 3E2E _ 83. 7D, F4, 04
        jle     ?_199                                   ; 3E32 _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 3E38 _ C7. 45, F4, 00000000
        jmp     ?_202                                   ; 3E3F _ EB, 0F

?_201:  mov     eax, dword [ebp-0CH]                    ; 3E41 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3E44 _ 89. 04 24
        call    _init_task_level                        ; 3E47 _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 3E4C _ 83. 45, F4, 01
?_202:  cmp     dword [ebp-0CH], 2                      ; 3E50 _ 83. 7D, F4, 02
        jle     ?_201                                   ; 3E54 _ 7E, EB
        call    _task_alloc                             ; 3E56 _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 3E5B _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3E5E _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3E61 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 3E68 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 3E6B _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 3E72 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 3E75 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 3E7C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 3E7F _ 89. 04 24
        call    _task_add                               ; 3E82 _ E8, 0000003A
        call    _task_switchsub                         ; 3E87 _ E8, 0000042F
        mov     eax, dword [ebp-14H]                    ; 3E8C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3E8F _ 8B. 00
        mov     dword [esp], eax                        ; 3E91 _ 89. 04 24
        call    _load_tr                                ; 3E94 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 3E99 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 3E9E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 3EA3 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 3EA6 _ 8B. 40, 08
        mov     edx, eax                                ; 3EA9 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 3EAB _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3EB0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EB4 _ 89. 04 24
        call    _timer_settime                          ; 3EB7 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3EBC _ 8B. 45, EC
        leave                                           ; 3EBF _ C9
        ret                                             ; 3EC0 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 3EC1 _ 55
        mov     ebp, esp                                ; 3EC2 _ 89. E5
        sub     esp, 16                                 ; 3EC4 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 3EC7 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 3ECD _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3ED0 _ 8B. 50, 0C
        mov     eax, edx                                ; 3ED3 _ 89. D0
        shl     eax, 2                                  ; 3ED5 _ C1. E0, 02
        add     eax, edx                                ; 3ED8 _ 01. D0
        shl     eax, 2                                  ; 3EDA _ C1. E0, 02
        add     eax, ecx                                ; 3EDD _ 01. C8
        add     eax, 8                                  ; 3EDF _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3EE2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3EE5 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3EE8 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3EEA _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3EED _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3EF0 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3EF4 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3EF7 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3EF9 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3EFC _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3EFF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3F01 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3F04 _ C7. 40, 04, 00000002
        nop                                             ; 3F0B _ 90
        leave                                           ; 3F0C _ C9
        ret                                             ; 3F0D _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 3F0E _ 55
        mov     ebp, esp                                ; 3F0F _ 89. E5
        sub     esp, 16                                 ; 3F11 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F14 _ C7. 45, FC, 00000000
        jmp     ?_205                                   ; 3F1B _ E9, 000000F7

?_203:  mov     edx, dword [_taskctl]                   ; 3F20 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3F26 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 3F29 _ 69. C0, 00000094
        add     eax, edx                                ; 3F2F _ 01. D0
        add     eax, 72                                 ; 3F31 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3F34 _ 8B. 00
        test    eax, eax                                ; 3F36 _ 85. C0
        jne     ?_204                                   ; 3F38 _ 0F 85, 000000D5
        mov     edx, dword [_taskctl]                   ; 3F3E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3F44 _ 8B. 45, FC
        imul    eax, eax, 148                           ; 3F47 _ 69. C0, 00000094
        add     eax, 64                                 ; 3F4D _ 83. C0, 40
        add     eax, edx                                ; 3F50 _ 01. D0
        add     eax, 4                                  ; 3F52 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 3F55 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 3F58 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 3F5B _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 3F62 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 3F65 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 3F6C _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 3F6F _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F76 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 3F79 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F80 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 3F83 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F8A _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 3F8D _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F94 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3F97 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F9E _ 8B. 45, FC
        add     eax, 1                                  ; 3FA1 _ 83. C0, 01
        shl     eax, 9                                  ; 3FA4 _ C1. E0, 09
        mov     edx, eax                                ; 3FA7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3FA9 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 3FAC _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 3FAF _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 3FB2 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FB9 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 3FBC _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FC3 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 3FC6 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FCD _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 3FD0 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FDA _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 3FDD _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FE7 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 3FEA _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 3FF4 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 3FF7 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4001 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4004 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 400E _ 8B. 45, F8
        jmp     ?_206                                   ; 4011 _ EB, 13

?_204:  add     dword [ebp-4H], 1                       ; 4013 _ 83. 45, FC, 01
?_205:  cmp     dword [ebp-4H], 4                       ; 4017 _ 83. 7D, FC, 04
        jle     ?_203                                   ; 401B _ 0F 8E, FFFFFEFF
        mov     eax, 0                                  ; 4021 _ B8, 00000000
?_206:  leave                                           ; 4026 _ C9
        ret                                             ; 4027 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4028 _ 55
        mov     ebp, esp                                ; 4029 _ 89. E5
        sub     esp, 24                                 ; 402B _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 402E _ 83. 7D, 0C, 00
        jns     ?_207                                   ; 4032 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4034 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4037 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 403A _ 89. 45, 0C
?_207:  cmp     dword [ebp+10H], 0                      ; 403D _ 83. 7D, 10, 00
        jle     ?_208                                   ; 4041 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4043 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4046 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4049 _ 89. 50, 08
?_208:  mov     eax, dword [ebp+8H]                     ; 404C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 404F _ 8B. 40, 04
        cmp     eax, 2                                  ; 4052 _ 83. F8, 02
        jnz     ?_209                                   ; 4055 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4057 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 405A _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 405D _ 39. 45, 0C
        jz      ?_209                                   ; 4060 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4062 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4065 _ 89. 04 24
        call    _task_remove                            ; 4068 _ E8, 0000002E
?_209:  mov     eax, dword [ebp+8H]                     ; 406D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4070 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4073 _ 83. F8, 02
        jz      ?_210                                   ; 4076 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4078 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 407B _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 407E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4081 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4084 _ 89. 04 24
        call    _task_add                               ; 4087 _ E8, FFFFFE35
?_210:  mov     eax, dword [_taskctl]                   ; 408C _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 4091 _ C7. 40, 04, 00000001
        nop                                             ; 4098 _ 90
        leave                                           ; 4099 _ C9
        ret                                             ; 409A _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 409B _ 55
        mov     ebp, esp                                ; 409C _ 89. E5
        sub     esp, 16                                 ; 409E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 40A1 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 40A7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 40AA _ 8B. 50, 0C
        mov     eax, edx                                ; 40AD _ 89. D0
        shl     eax, 2                                  ; 40AF _ C1. E0, 02
        add     eax, edx                                ; 40B2 _ 01. D0
        shl     eax, 2                                  ; 40B4 _ C1. E0, 02
        add     eax, ecx                                ; 40B7 _ 01. C8
        add     eax, 8                                  ; 40B9 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 40BC _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 40BF _ C7. 45, FC, 00000000
        jmp     ?_213                                   ; 40C6 _ EB, 23

?_211:  mov     eax, dword [ebp-8H]                     ; 40C8 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 40CB _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 40CE _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 40D2 _ 39. 45, 08
        jnz     ?_212                                   ; 40D5 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 40D7 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 40DA _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 40DD _ C7. 44 90, 08, 00000000
        jmp     ?_214                                   ; 40E5 _ EB, 0E

?_212:  add     dword [ebp-4H], 1                       ; 40E7 _ 83. 45, FC, 01
?_213:  mov     eax, dword [ebp-8H]                     ; 40EB _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 40EE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 40F0 _ 39. 45, FC
        jl      ?_211                                   ; 40F3 _ 7C, D3
?_214:  mov     eax, dword [ebp-8H]                     ; 40F5 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 40F8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 40FA _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 40FD _ 8B. 45, F8
        mov     dword [eax], edx                        ; 4100 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 4102 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4105 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4108 _ 39. 45, FC
        jge     ?_215                                   ; 410B _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 410D _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4110 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 4113 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4116 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4119 _ 89. 50, 04
?_215:  mov     eax, dword [ebp-8H]                     ; 411C _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 411F _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 4122 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4125 _ 8B. 00
        cmp     edx, eax                                ; 4127 _ 39. C2
        jl      ?_216                                   ; 4129 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 412B _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 412E _ C7. 40, 04, 00000000
?_216:  mov     eax, dword [ebp+8H]                     ; 4135 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4138 _ C7. 40, 04, 00000001
        jmp     ?_218                                   ; 413F _ EB, 1B

?_217:  mov     eax, dword [ebp-4H]                     ; 4141 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 4144 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 4147 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 414A _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 414E _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4151 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 4154 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 4158 _ 83. 45, FC, 01
?_218:  mov     eax, dword [ebp-8H]                     ; 415C _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 415F _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4161 _ 39. 45, FC
        jl      ?_217                                   ; 4164 _ 7C, DB
        nop                                             ; 4166 _ 90
        leave                                           ; 4167 _ C9
        ret                                             ; 4168 _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4169 _ 55
        mov     ebp, esp                                ; 416A _ 89. E5
        sub     esp, 40                                 ; 416C _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 416F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4175 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 417A _ 8B. 10
        mov     eax, edx                                ; 417C _ 89. D0
        shl     eax, 2                                  ; 417E _ C1. E0, 02
        add     eax, edx                                ; 4181 _ 01. D0
        shl     eax, 2                                  ; 4183 _ C1. E0, 02
        add     eax, ecx                                ; 4186 _ 01. C8
        add     eax, 8                                  ; 4188 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 418B _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 418E _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4191 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4194 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4197 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 419B _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 419E _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 41A1 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 41A4 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 41A7 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 41AA _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 41AD _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 41B0 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 41B3 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 41B6 _ 8B. 00
        cmp     edx, eax                                ; 41B8 _ 39. C2
        jnz     ?_219                                   ; 41BA _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 41BC _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 41BF _ C7. 40, 04, 00000000
?_219:  mov     eax, dword [_taskctl]                   ; 41C6 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 41CB _ 8B. 40, 04
        test    eax, eax                                ; 41CE _ 85. C0
        jz      ?_220                                   ; 41D0 _ 74, 24
        call    _task_switchsub                         ; 41D2 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 41D7 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 41DD _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 41E2 _ 8B. 10
        mov     eax, edx                                ; 41E4 _ 89. D0
        shl     eax, 2                                  ; 41E6 _ C1. E0, 02
        add     eax, edx                                ; 41E9 _ 01. D0
        shl     eax, 2                                  ; 41EB _ C1. E0, 02
        add     eax, ecx                                ; 41EE _ 01. C8
        add     eax, 8                                  ; 41F0 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 41F3 _ 89. 45, F4
?_220:  mov     eax, dword [ebp-0CH]                    ; 41F6 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 41F9 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 41FC _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 41FF _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4203 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4206 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4209 _ 8B. 40, 08
        mov     edx, eax                                ; 420C _ 89. C2
        mov     eax, dword [_task_timer]                       ; 420E _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4213 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4217 _ 89. 04 24
        call    _timer_settime                          ; 421A _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 421F _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4222 _ 3B. 45, F0
        jz      ?_221                                   ; 4225 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4227 _ 83. 7D, EC, 00
        jz      ?_221                                   ; 422B _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 422D _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4230 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4232 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4236 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 423D _ E8, 00000000(rel)
        nop                                             ; 4242 _ 90
?_221:  nop                                             ; 4243 _ 90
        leave                                           ; 4244 _ C9
        ret                                             ; 4245 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4246 _ 55
        mov     ebp, esp                                ; 4247 _ 89. E5
        sub     esp, 40                                 ; 4249 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 424C _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4253 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 425A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 425D _ 8B. 40, 04
        cmp     eax, 2                                  ; 4260 _ 83. F8, 02
        jnz     ?_222                                   ; 4263 _ 75, 51
        call    _task_now                               ; 4265 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 426A _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 426D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4270 _ 89. 04 24
        call    _task_remove                            ; 4273 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4278 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 427F _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4282 _ 3B. 45, F0
        jnz     ?_222                                   ; 4285 _ 75, 2F
        call    _task_switchsub                         ; 4287 _ E8, 0000002F
        call    _task_now                               ; 428C _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4291 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4294 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 429B _ 83. 7D, F0, 00
        jz      ?_222                                   ; 429F _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 42A1 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 42A4 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 42A6 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 42AA _ C7. 04 24, 00000000
        call    _farjmp                                 ; 42B1 _ E8, 00000000(rel)
?_222:  mov     eax, dword [ebp-0CH]                    ; 42B6 _ 8B. 45, F4
        leave                                           ; 42B9 _ C9
        ret                                             ; 42BA _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 42BB _ 55
        mov     ebp, esp                                ; 42BC _ 89. E5
        sub     esp, 16                                 ; 42BE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 42C1 _ C7. 45, FC, 00000000
        jmp     ?_224                                   ; 42C8 _ EB, 22

?_223:  mov     ecx, dword [_taskctl]                   ; 42CA _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 42D0 _ 8B. 55, FC
        mov     eax, edx                                ; 42D3 _ 89. D0
        shl     eax, 2                                  ; 42D5 _ C1. E0, 02
        add     eax, edx                                ; 42D8 _ 01. D0
        shl     eax, 2                                  ; 42DA _ C1. E0, 02
        add     eax, ecx                                ; 42DD _ 01. C8
        add     eax, 8                                  ; 42DF _ 83. C0, 08
        mov     eax, dword [eax]                        ; 42E2 _ 8B. 00
        test    eax, eax                                ; 42E4 _ 85. C0
        jg      ?_225                                   ; 42E6 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 42E8 _ 83. 45, FC, 01
?_224:  cmp     dword [ebp-4H], 2                       ; 42EC _ 83. 7D, FC, 02
        jle     ?_223                                   ; 42F0 _ 7E, D8
        jmp     ?_226                                   ; 42F2 _ EB, 01

?_225:  nop                                             ; 42F4 _ 90
?_226:  mov     eax, dword [_taskctl]                   ; 42F5 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 42FA _ 8B. 55, FC
        mov     dword [eax], edx                        ; 42FD _ 89. 10
        mov     eax, dword [_taskctl]                   ; 42FF _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4304 _ C7. 40, 04, 00000000
        nop                                             ; 430B _ 90
        leave                                           ; 430C _ C9
        ret                                             ; 430D _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 430E _ 55
        mov     ebp, esp                                ; 430F _ 89. E5
        sub     esp, 16                                 ; 4311 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4314 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 431A _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 431F _ 8B. 10
        mov     eax, edx                                ; 4321 _ 89. D0
        shl     eax, 2                                  ; 4323 _ C1. E0, 02
        add     eax, edx                                ; 4326 _ 01. D0
        shl     eax, 2                                  ; 4328 _ C1. E0, 02
        add     eax, ecx                                ; 432B _ 01. C8
        add     eax, 8                                  ; 432D _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4330 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4333 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4336 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4339 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 433C _ 8B. 44 90, 08
        leave                                           ; 4340 _ C9
        ret                                             ; 4341 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4342 _ 55
        mov     ebp, esp                                ; 4343 _ 89. E5
        sub     esp, 24                                 ; 4345 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4348 _ 8B. 45, 10
        movzx   eax, al                                 ; 434B _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 434E _ 8B. 55, 0C
        add     edx, 16                                 ; 4351 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4354 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4358 _ 89. 14 24
        call    _fifo8_put                              ; 435B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4360 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4363 _ 89. 04 24
        call    _task_sleep                             ; 4366 _ E8, FFFFFEDB
        nop                                             ; 436B _ 90
        leave                                           ; 436C _ C9
        ret                                             ; 436D _ C3
; _send_message End of function

        nop                                             ; 436E _ 90
        nop                                             ; 436F _ 90



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

?_227:  db 00H                                          ; 0102 _ .

?_228:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2361:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2408:                                           ; byte
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

_closebtn.2528:                                         ; byte
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



?_229:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_230:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_231:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_232:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0017 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 001F _ sk b.

?_233:                                                  ; byte
        db 42H, 00H                                     ; 0024 _ B.

?_234:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0026 _ page is:
        db 20H, 00H                                     ; 002E _  .

?_235:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0030 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0038 _ L: .

?_236:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0044 _ H: .

?_237:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0048 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0050 _ w: .

?_238:                                                  ; byte
        db 3EH, 00H, 00H, 00H                           ; 0054 _ >...



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

_task_main:                                             ; dword
        resd    1                                       ; 0278

_task_a.2295:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2294:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2293:                                            ; byte
        resb    104                                     ; 0300

_str.2456:                                              ; byte
        resb    1                                       ; 0368

?_243:  resb    9                                       ; 0369

?_244:  resb    2                                       ; 0372

_task_b.2554:                                           ; dword
        resd    3                                       ; 0374

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


